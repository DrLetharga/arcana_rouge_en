@echo off
cd /d %~dp0
start cmd /k "tts\whisper-env\Scripts\python.exe tools\tools_drama_transcribe_faster_ascii_winfix2.py"