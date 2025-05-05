@echo off
setlocal
cd /d %~dp0

REM === Define paths ===
set VENV_DIR=tts\whisper-env
set PYTHON_EXE=%VENV_DIR%\Scripts\python.exe
set SCRIPT_PATH=tools\tools_drama_transcribe_faster_ascii_winfix2.py

REM === Check if virtual environment exists ===
if not exist %PYTHON_EXE% (
    echo [*] Creating virtual environment at %VENV_DIR%...
    python -m venv %VENV_DIR%
)

REM === Upgrade pip and install dependencies ===
echo [*] Ensuring pip and dependencies are installed...
%PYTHON_EXE% -m pip install --upgrade pip
%PYTHON_EXE% -m pip install faster-whisper psutil

REM === Run the transcription script ===
start cmd /k "%PYTHON_EXE% %SCRIPT_PATH%"