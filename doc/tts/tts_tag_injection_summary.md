# TTS Tag Injection Capabilities – Summary

This document summarizes what I (ChatGPT) can reliably inject into your `.ks` files based on your translation and localization pipeline for your visual novel.

---

## ✅ What Can Be Injected Automatically

### `meta={...}` Tags on `[vo_xxx]`
I can detect and inject:
- `{gagged}` – For muffled, oral, or distorted lines
- `{fx}` – Based on sound effects like `じゅる`, `んぶっ`, `ぐちゅ`
- `{tts:skip}` – For non-verbal or FX-only lines
- `{multi}` – If multiple characters yell or act at once
- `{lang:fr}`, `{lang:zh}`, `{lang:en}` – Based on language cues in dialogue
- `{emote:cry}`, `{emote:climax}`, `{emote:beg}`, etc. – Based on tone and content

#### Example:
```ks
[vo_aka s="akane_0055" meta="{gagged}{fx}{emote:climax}"]
[【茜】]
「んぶっ！　じゅぶっ！　ぢゅるっ……あっ、んっ、んんんぅぅ～っ……！」[pcms]
```

---

## ✅ Expression-Based Emotion Inference
I can use image and sprite tags to help inform emotional tagging:
- `[evcg storage="ev46e"]` (event CG context)
- `[chara_show storage="aoi_surprised"]`
- Expressions like `face=crying`, `face=embarrassed`

These help me apply or confirm tags like:
- `{emote:cry}`
- `{emote:climax}`
- `{emote:shame}`

---

## ✅ Scene/Narrative-Based Emotion Detection
From surrounding narration and script tone, I can infer and tag lines based on:
- Submission → `{emote:beg}`
- Fear → `{emote:fear}`
- Numb/passive tone → `{emote:broken}`
- Teasing/corruption → `{emote:mocking}`

---

## 🔄 What I Need From You
1. `.ks` script with `[vo_xxx]` tags, dialogue, and narration
2. Reference to any visual tags used (`[evcg]`, `[bg]`, `[chara_show]`)
3. Consistent naming convention for voice files (e.g., `akane_0034`)

Optional: Image folders referenced in-line

---

## 🚦 Limitations
| Scenario                     | Handling                             |
|------------------------------|--------------------------------------|
| Tone ambiguity               | Fallback to `{emote:neutral}`        |
| Out-of-order voice line use  | Tagged by surrounding dialogue       |
| No visual context available  | Inferred from narration + content    |
| FX-only or minimal lines     | Routed to `{fx}` or `{tts:skip}`     |

---

## ✅ Conclusion
With well-structured `.ks` files, I can:
- Accurately inject TTS tags (`meta={}` or `<!-- -->`)
- Use context, voice ID, and CG references to guide tagging
- Support your emotion-aware TTS training pipeline with minimal manual cleanup

Upload a `.ks` file when you're ready to begin.