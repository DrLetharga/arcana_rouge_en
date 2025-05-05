try:
    from ctranslate2 import list_supported_devices
    devices = list_supported_devices()
    print("Supported devices:", devices)

    if "cuda" in devices:
        print("✅ cuDNN and CUDA are available and detected.")
    else:
        print("⚠️ CUDA not available. Using CPU only.")
except ImportError as e:
    print("❌ CTranslate2 is not installed. Try installing faster-whisper or ctranslate2.")
    print("Error:", e)