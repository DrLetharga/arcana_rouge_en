## 🎭 Contextual Emotion Guide — Event CG Scenes

This guide explains how to determine emotional tone using surrounding **visual**, **audio**, and **narrative** context in scenes that use `[evcg]`-style macros. It supports consistent use of `{emote:*}`, `{intent:*}`, `{tts:*}`, and `{fx}` tags based on what’s happening in each **event CG**.

_This file was split from the general Contextual Emotion Guide to better isolate examples related to sprite-based vs CG-based staging._

---

### 🧪 Sample Walkthrough: `ev46a` (from `arcana001.ks`)

```ks
[se buf=1 storage="&sf.SE触手ループ" loop]
[evcg storage="ev46a" y="&f.ev_y_aka"]
[trans_c cross time=1000]
[fc]
[vo_aka s="akane_0001"]
[【茜】 off]
「こんなのやだぁ……離してよぉ……」[pcms]
[bgv_aka to01]
```

#### 🔬 Context Breakdown
- Looping sound: `&sf.SE触手ループ` indicates persistent tentacle activity
- CG Macro: `ev46a` is the first visual in the EV46 sequence
- Voice Macro: `akane_0001` includes tearful protest, subdued and begging tone
- Background voice macro `[bgv_aka to01]` suggests emotional instability or persistent distress

#### ✅ Tag Result
```ks
[vo_aka s="akane_0001" metadata="{emote:fear}{emote:shame}"]
```

### 🧪 Sample Walkthrough: `ev46b` (from `arcana001.ks`)

```ks
[se storage="&sf.SE挿入_触手"]
[evcg白フラ storage="ev46b" y=-100]
[fc]
[vo_aka s="akane_0004"]
[【茜】]
「ぎっ！？　あっ！　あぎぃぃぃいいっ！！　いっ、痛い痛い痛いッ！」[pcms]
```

#### 🔬 Context Breakdown
- CG Macro: `[evcg白フラ storage="ev46b"]` represents the initial penetrative moment with a bright flash
- Sound Macro: `se="&sf.SE挿入_触手"` signals tentacle insertion
- Voice Macro: `[vo_aka s="akane_0004"]` corresponds to `akane_0004.ogg`, featuring screaming and repeated cries of pain
- Dialogue includes direct references to pain and intense distress

#### ✅ Tag Result
```ks
[vo_aka s="akane_0004" metadata="{emote:fear}{emote:cry}"]
```

---

### 🧪 Sample Walkthrough: `ev46d` (from `arcana001.ks`)

```ks
[se storage="&sf.SE挿入_触手"]
[evcg白フラ storage="ev46d" y=-100]
[fc]
[vo_aka s="akane_0012"]
[【茜】]
「あ゛！　あ゛――――――んぶっううっ！」[pcms]
[se buf=1 storage="&sf.SEピストン_人外" loop]
```

#### 🔬 Context Breakdown
- CG Macro: `[evcg白フラ storage="ev46d"]` represents intense secondary penetration into the mouth and anus
- Sound Macro: `se="&sf.SE挿入_触手"` indicates tentacle insertion again
- Voice Macro: `[vo_aka s="akane_0012"]` plays `akane_0012.ogg`, which is almost entirely non-verbal and gagged
- Followed by looping piston SFX in `[se buf=1 storage="&sf.SEピストン_人外" loop]`
- Occurs mid-scene as she becomes overwhelmed and speechless

#### ✅ Tag Result
```ks
[vo_aka s="akane_0012" metadata="{emote:broken}{emote:cry}{fx}{tts:skip}"]
```

---

### 🧪 Sample Walkthrough: `ev46f` (from `arcana001.ks`)

```ks
[evcg射精フラ storage="ev46f" y=-100 se="&sf.SE射精_外_人外_長"]
[fc]
[vo_aka s="akane_0019"]
[【茜】]
「ひっ……あ、あああぁぁああぁぁぁああぁあぁ～～～！！！」[pcms]
```

#### 🔬 Context Breakdown
- CG Macro: `[evcg射精フラ storage="ev46f"]` shows the climax moment with external monster ejaculation
- Sound Macro: `se="&sf.SE射精_外_人外_長"` signifies extended ejaculation SFX
- Voice Macro: `[vo_aka s="akane_0019"]` plays a scream-like vocalization, `akane_0019.ogg`
- Line is fully nonverbal, delivered with rising intensity and no structured speech
- Preceding context includes pained and fearful buildup (e.g., `akane_0195`)
- This is the scene’s emotional and physical apex

#### ✅ Tag Result
```ks
[vo_aka s="akane_0019" metadata="{emote:climax}{emote:cry}{emote:broken}{fx}"]
```

---

This guide should be referenced any time `[evcg]`, `[evcg白フラ]`, or `[evcg射精フラ]` macros are used, especially when determining the emotional arc or appropriate use of audio-based tags.

