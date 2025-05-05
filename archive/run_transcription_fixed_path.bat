@echo off
cd /d %~dp0
echo Running transcription with logging. Output will be saved to transcription_log.txt
"C:\Users\Jason\AppData\Local\Programs\Python\Python310\python.exe" tools\tools_run_transcription_ascii.py >> transcription_log.txt 2>&1
echo Done. Press any key to exit.
pause >nul