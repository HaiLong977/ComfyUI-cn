@echo off
title ComfyUI - 127.0.0.1:8188
cd /d "%~dp0"

set "VENV_DIR="
if exist ".venv\Scripts\python.exe" set "VENV_DIR=.venv"
if not defined VENV_DIR if exist "..\ComfyUI\.venv\Scripts\python.exe" set "VENV_DIR=..\ComfyUI\.venv"

if not defined VENV_DIR (
    echo [错误] 未找到虚拟环境 .venv，请先重新部署环境。
    pause
    exit /b 1
)

for %%I in ("%VENV_DIR%") do set "VENV_DIR=%%~fI"
set "VIRTUAL_ENV=%VENV_DIR%"
set "PATH=%VENV_DIR%\Scripts;%PATH%"

set "DEVICE_ARG="
where nvidia-smi >nul 2>nul
if errorlevel 1 goto USE_CPU
nvidia-smi >nul 2>nul
if errorlevel 1 goto USE_CPU
goto START

:USE_CPU
set "DEVICE_ARG=--cpu"

:START
echo ============================================
echo   ComfyUI 正在启动...
echo   服务地址: http://127.0.0.1:8188
echo   虚拟环境: %VENV_DIR%
if defined DEVICE_ARG echo   未检测到 NVIDIA 显卡，使用 CPU 模式
echo   启动完成后会自动打开浏览器
echo   关闭此窗口即可停止服务
echo ============================================
echo.

python main.py --listen 127.0.0.1 --port 8188 --auto-launch %DEVICE_ARG%

echo.
echo ComfyUI 已退出。
pause
