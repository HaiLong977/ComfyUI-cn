@echo off
title ComfyUI - 127.0.0.1:8188
cd /d "%~dp0"
set "PYTHONUTF8=1"

rem ============ 0. 首次运行检查 ============
if not exist "requirements.txt" (
    echo [错误] 未找到 requirements.txt，请把 启动ComfyUI.bat 放在 ComfyUI 项目根目录。
    pause
    exit /b 1
)

rem ============ 1. Python 运行环境（缺失时自动下载便携版 Python 3.12） ============
if exist "python\python.exe" goto CHECK_DEPS

echo ============================================
echo   首次运行，正在搭建便携环境
echo   项目目录: %cd%
echo ============================================
echo.
echo [1/4] 下载 Python 3.12 便携运行时（约 11 MB）...
if not exist python mkdir python

set "PYURL1=https://registry.npmmirror.com/-/binary/python/3.12.10/python-3.12.10-embed-amd64.zip"
set "PYURL2=https://www.python.org/ftp/python/3.12.10/python-3.12.10-embed-amd64.zip"
powershell -NoProfile -Command "$ProgressPreference='SilentlyContinue'; try { Invoke-WebRequest -Uri '%PYURL1%' -OutFile 'python_embed.zip' -UseBasicParsing } catch { try { Invoke-WebRequest -Uri '%PYURL2%' -OutFile 'python_embed.zip' -UseBasicParsing } catch { exit 1 } }"
if errorlevel 1 (
    echo [错误] Python 下载失败。请检查网络连接后重试。
    echo        也可手动下载 python-3.12.10-embed-amd64.zip 放到当前目录再运行本脚本。
    pause
    exit /b 1
)

echo [2/4] 解压并配置 Python...
powershell -NoProfile -Command "Expand-Archive -Path 'python_embed.zip' -DestinationPath 'python' -Force"
del python_embed.zip
if not exist "python\Lib\site-packages" mkdir "python\Lib\site-packages"
if exist "python\python312._pth" (
    powershell -NoProfile -Command "(Get-Content 'python\python312._pth') -replace '#import site','import site' | Set-Content 'python\python312._pth' -Encoding ASCII"
)

echo [3/4] 安装 pip...
powershell -NoProfile -Command "$ProgressPreference='SilentlyContinue'; Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py' -UseBasicParsing"
if errorlevel 1 (
    echo [错误] get-pip.py 下载失败，请检查网络后重试。
    pause
    exit /b 1
)
python\python.exe get-pip.py --no-warn-script-location -q
del get-pip.py
if errorlevel 1 (
    echo [错误] pip 安装失败，请检查网络后重试。
    pause
    exit /b 1
)
echo.

:CHECK_DEPS
rem ============ 2. 依赖检查（缺失时自动安装） ============
echo [4/4] 检查依赖...
python\python.exe -c "import torch, torchvision, yaml, aiohttp, scipy, comfy_kitchen, PIL, psutil" >nul 2>nul
if errorlevel 1 goto INSTALL_DEPS
goto CHECK_GPU_TORCH

:INSTALL_DEPS
echo.
echo 检测到依赖缺失，开始安装（首次安装 torch 约 200MB~2.5GB，取决于网络速度）...
echo.

set "PIP_INDEX=-i https://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com"
where nvidia-smi >nul 2>nul
if errorlevel 1 goto INSTALL_CPU_TORCH

echo [PyTorch] 检测到 NVIDIA 显卡，安装 CUDA 版...
python\python.exe -m pip install torch torchvision --index-url https://download.pytorch.org/whl/cu128 --timeout 120
python\python.exe -c "import torch,sys; sys.exit(0 if torch.cuda.is_available() else 1)" >nul 2>nul
if not errorlevel 1 goto INSTALL_REQ
echo [PyTorch] CUDA 版不可用，改用 CPU 版...
goto INSTALL_CPU_TORCH

:INSTALL_CPU_TORCH
echo [PyTorch] 安装 CPU 版...
python\python.exe -m pip install torch torchvision --index-url https://download.pytorch.org/whl/cpu --timeout 120

:INSTALL_REQ
echo.
echo [依赖] 安装 requirements.txt（使用阿里云镜像）...
python\python.exe -m pip install -r requirements.txt %PIP_INDEX% --timeout 120
echo.
echo [依赖] 官方源补缺...
python\python.exe -m pip install -r requirements.txt --timeout 120
if errorlevel 1 (
    echo.
    echo [错误] 依赖安装失败。可能原因：
    echo        1. 网络不稳定 — 请重试，脚本会跳过已安装的包
    echo        2. 镜像缺个别包 — 官方源会自动补缺
    echo        3. 磁盘空间不足 — 至少需 5 GB 剩余空间
    pause
    exit /b 1
)

:CHECK_GPU_TORCH
rem 有 NVIDIA 显卡但 torch 是 CPU 版时（例如从别的机器拷来），补装 CUDA 版
where nvidia-smi >nul 2>nul
if errorlevel 1 goto DEPS_OK
python\python.exe -c "import torch,sys; sys.exit(0 if torch.cuda.is_available() else 1)" >nul 2>nul
if not errorlevel 1 goto DEPS_OK

echo.
echo [PyTorch] 检测到 NVIDIA 显卡，但当前 torch 是 CPU 版，正在安装 CUDA 版（约 2.5 GB）...
python\python.exe -m pip install --force-reinstall torch torchvision --index-url https://download.pytorch.org/whl/cu128 --timeout 120
python\python.exe -c "import torch,sys; sys.exit(0 if torch.cuda.is_available() else 1)" >nul 2>nul
if not errorlevel 1 (
    echo [PyTorch] CUDA 版安装完成。
) else (
    echo [警告] CUDA 版安装失败或显卡驱动过旧，将使用 CPU 模式启动。
    echo        如需 GPU 加速，请先更新 NVIDIA 显卡驱动后重新运行本脚本。
)

:DEPS_OK
rem ============ 3. 最终校验 ============
python\python.exe -c "import torch, torchvision, yaml, aiohttp, scipy, comfy_kitchen" 2>nul
if errorlevel 1 (
    echo [警告] 依赖校验未通过，尝试继续启动...
)

rem ============ 4. 启动（按 torch 实际能力决定 CPU/GPU，不看显卡是否存在） ============
set "DEVICE_ARG="
set "DEVICE_TEXT=使用 GPU 加速"
python\python.exe -c "import torch,sys; sys.exit(0 if torch.cuda.is_available() else 1)" >nul 2>nul
if not errorlevel 1 goto START
set "DEVICE_ARG=--cpu"
set "DEVICE_TEXT=使用 CPU 模式（未检测到可用的 CUDA）"

:START
cls
echo ============================================
echo   ComfyUI 正在启动...
echo   服务地址: http://127.0.0.1:8188
echo   Python: python\python.exe
echo   运行模式: %DEVICE_TEXT%
echo   启动完成后会自动打开浏览器
echo   关闭此窗口即可停止服务
echo ============================================
echo.

python\python.exe main.py --listen 127.0.0.1 --port 8188 --auto-launch %DEVICE_ARG%

echo.
echo ComfyUI 已退出。
pause
