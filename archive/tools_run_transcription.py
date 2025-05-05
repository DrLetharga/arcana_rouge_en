#!/usr/bin/env python3
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TOOLS = ROOT / "tools"
SCRIPTS = {
    "1": TOOLS / "tools_batch_voice_transcribe_faster.py",
    "2": TOOLS / "tools_drama_transcribe_faster.py"
}

print("""
=== Transcription Launcher ===

Choose an option:
1. Transcribe all .ogg voice files per character
2. Transcribe full Akane audio drama

""")

choice = input("Enter choice [1/2]: ").strip()

if choice in SCRIPTS:
    print(f"Running: {SCRIPTS[choice].name}")
    subprocess.run(["python3", str(SCRIPTS[choice])])
else:
    print("❌ Invalid choice. Exiting.")