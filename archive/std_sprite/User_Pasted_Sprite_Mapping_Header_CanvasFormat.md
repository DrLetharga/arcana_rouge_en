## 📘 Purpose

## 🎙️ Voice Macro Mapping

## 🧠 Voice & Emotion Tagging Guide

This guide leverages reconstructed sprite context to assign metadata tags for voice model training, using `[vo_*]` macros and surrounding sprite configuration to infer emotional tone.

### 📊 Inference Inputs

Tags like `{emote:pleasure}`, `{emote:fear}`, `{emote:cry}`, `{emote:broken}`, etc. are inferred using:

- **Face ID** (see Face ID Definitions)
- **Blush** (`ho`, `hoho` = heightened arousal or embarrassment)
- **Semen flag** (`eki` = presence of ejaculation → higher emotional intensity)
- **Pose** (`p2`, `p3` = more dramatic)
- **Overlay presence** (e.g., `seieki_add`, hands, ribbons)
- **Character-specific expression context** (e.g., Mei’s `f14` = smirk vs Aoi’s `f14` = tearful)

... (truncated for brevity in preview)