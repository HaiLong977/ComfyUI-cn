@echo off
chcp 65001 >nul
title ComfyUI - 127.0.0.1:8188
cd /d "%~dp0"

if not exist ".venv\Scripts\python.exe" (
    echo [错误] 未找到虚拟环境 .venv，请先重新部署环境。
    pause
    exit /b 1
)

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
if defined DEVICE_ARG echo   未检测到 NVIDIA 显卡，使用 CPU 模式
echo   启动完成后会自动打开浏览器
echo   关闭此窗口即可停止服务
echo ============================================
echo.

".venv\Scripts\python.exe" main.py --listen 127.0.0.1 --port 8188 --auto-launch %DEVICE_ARG%

echo.
echo ComfyUI 已退出。
pause
