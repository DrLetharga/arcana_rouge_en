## 🧠 Purpose & Tagging Guide

This guide leverages reconstructed sprite context to assign metadata tags for voice model training. It uses `[vo_*]` macros and surrounding sprite configuration to infer emotional tone. These tags support automatic emotional labeling, line filtering for erotic vs neutral content, and the creation of specialized TTS variants such as clean or climax-focused models.

---

// Full content would continue...

## 👹 Mob & Wide Character Sprite Mapping

### 👤 Protagonist (`ch05`)

```
ch05_<size>_base.png
```

Macro Example:

```
[std_syu m ce]
```

...

### 👧 Ai (`ch11`)

```
ch11_<size>_base_d0_p<pose>.png
```

Macro Example:

```
[std_ai m p1 ce]
```
