# Sacred Angel: Arcana Rouge - Documentation Relationship Map

## 📃 Central Guide (Hub)

| File | Purpose | Linked Documents |
|:---|:---|:---|
| **script_macro_voice_tagging_guide.md** | Primary guide for how to classify, split, and tag every line in `.ks` scripts. | → Macro_Type_Map.md, Macro_Indexing_QA_Checklist.md, SoundEffectGlossary_Tagged.csv, styleguide.md, workflow.md, tagging_guide.md, translation_dialogue.md, evcg.md, contextual_emotion_cg.md, contextual_emotion_guide.md, std_sprite.md, character.md, tts_emotions.json |

---

## 📊 Macro Handling (Macro Detection, Typing, Splitting)

| File | Purpose | Linked Documents |
|:---|:---|:---|
| **Macro_Type_Map.md** | Defines what each macro is and its Type (`Voice`, `CG`, `Move`, etc.). | — |
| **Macro_Indexing_QA_Checklist.md** | QA steps for logging and handling macros correctly. | → Macro_Type_Map.md |

---

## 🎹 Voice Line Tagging (Emotions, Context, Rules)

| File | Purpose | Linked Documents |
|:---|:---|:---|
| **tagging_guide.md** | Master list of all `{emote:*}`, `{intent:*}`, `{tts:*}`, `{fx}`, and `{lang:*}` tags. | → tts_emotions.json |
| **tts_emotions.json** | JSON definitions for tags — structured and automation-ready. | — |
| **workflow.md** | Defines voice processing workflow (how to batch process, what rules apply, tagging order). | → tagging_guide.md |
| **styleguide.md** | Tone, phrasing, risk term handling, and macro interpretation standards for translation/tagging. | → character.md |
| **character.md** | Character-by-character voice tone profiles, model IDs, emotional tendencies. | — |

---

## 📖 Translation (Dialogue, Narration, Monologue Rules)

| File | Purpose | Linked Documents |
|:---|:---|:---|
| **translation_dialogue.md** | How to handle player-visible dialogue, narration, and internal monologue in `.ks` files. | → workflow.md, styleguide.md, tagging_guide.md, character.md, evcg.md, std_sprite.md |
| **translation.md** | Deep, technical file handling rules (preserve macros, line counts, structural integrity). | — |

---

## 🎞️ Visual Context (CGs and Sprites Interpretation)

| File | Purpose | Linked Documents |
|:---|:---|:---|
| **evcg.md** | How `[evcg]`, `[evcg射精フラ]`, `[evcg白フラ]` work, emotional inference from Event CGs. | → SoundEffectGlossary_Tagged.csv |
| **contextual_emotion_cg.md** | Special focus guide on Event CG emotional escalation and voice tagging examples. | → evcg.md |
| **contextual_emotion_guide.md** | Broader guide covering both Event CGs and Sprites emotional inference. | → std_sprite.md, evcg.md |
| **std_sprite.md** | Sprite macro logic: body parts, face expressions, overlays, emotion mappings. | — |

---

## 🎶 Audio Context (Sound Effects)

| File | Purpose | Linked Documents |
|:---|:---|:---|
| **SoundEffectGlossary_Tagged.csv** | Full listing of `se=xxx` sound effects and their tagging metadata (e.g., climax, penetration, etc.). | → evcg.md, contextual_emotion_cg.md |

---

# 📌 Diagram Summary

```plaintext
script_macro_voice_tagging_guide.md
├─ Macro_Type_Map.md
├─ Macro_Indexing_QA_Checklist.md
├─ SoundEffectGlossary_Tagged.csv
├─ styleguide.md
│   └─ character.md
├─ workflow.md
│   └─ tagging_guide.md
│       └─ tts_emotions.json
├─ translation_dialogue.md
│   ├─ workflow.md
│   ├─ styleguide.md
│   ├─ tagging_guide.md
│   ├─ character.md
│   ├─ evcg.md
│   └─ std_sprite.md
├─ evcg.md
│   └─ SoundEffectGlossary_Tagged.csv
├─ contextual_emotion_cg.md
│   └─ evcg.md
├─ contextual_emotion_guide.md
│   └─ std_sprite.md
├─ std_sprite.md
├─ character.md
└─ tts_emotions.json
```

