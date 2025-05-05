@echo off
cd /d %~dp0
echo Running transcription. Output will be logged to transcription_log.txt
python tools\tools_run_transcription.py >> transcription_log.txt 2>&1
echo Done. Press any key to exit.
pause >nul