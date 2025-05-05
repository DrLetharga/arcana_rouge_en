@echo off
cd /d %~dp0

REM === Remove existing environment if it exists ===
echo [*] Removing old whisper-env...
rmdir /s /q tts\whisper-env

REM === Create new environment ===
echo [*] Creating new virtual environment at tts\whisper-env...
python -m venv tts\whisper-env

REM === Upgrade pip ===
tts\whisper-env\Scripts\python.exe -m pip install --upgrade pip

REM === Install CUDA 11.8 compatible versions of Faster-Whisper and ONNXRuntime ===
echo [*] Installing Faster-Whisper and ONNXRuntime compatible with CUDA 11.8...
tts\whisper-env\Scripts\python.exe -m pip install faster-whisper==1.0.0 onnxruntime-gpu==1.15.1 psutil

REM === Run your transcription script using the correct interpreter ===
start cmd /k "tts\whisper-env\Scripts\python.exe tools\tools_drama_transcribe_faster_ascii_winfix2.py"
