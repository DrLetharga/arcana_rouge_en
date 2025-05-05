# Translation Workflow & Guidelines

This document outlines the translation guidelines used in this project, with special attention to tone and formatting conventions.

## Encoding & File Structure
- Scripts should be converted to UTF-16 LE BOM.
- Preserve folder and filename structure where possible.
- Use `translation/_scripts/` for working `.ks` and `.tjs` files.

## Formatting Macros
- Retain `[nor]`, `[pcms]`, and other KiriKiri control tags.
- `ruby_c` macros may be translated into plain text, but the furigana meaning must be reflected.
- Example: 
> [ruby_c r="せいえき" t="精液"] → semen  ; ruby: "せいえき"

## Tone & Style

- Girls should sound emotionally inexperienced, overwhelmed, but familiar with terms like "pussy" and "ass."
- Girls should avoid vulgar overconfidence unless they are clearly corrupted and dialogue calls for it.
- Avoid infantilizing language unless its language from another directed at the girls, but preserve a sense of submission, naivete, and vulnerability.
- Adjectives like "affectionate" are to be avoided in erotic contexts where the girls are being dominated and violated unless used to mock the girls.
- Prefer "dark red tentacles" over unnatural-sounding phrases like "red-black tentacles."
- Avoid clinical language and gore in sexual situations.

## Narration-Driven Emotion Inference

Use the following table to map narration cues to emotional tags when the speaker's dialogue is absent or unclear:

| Japanese Phrase                 | Contextual Meaning               | Recommended Emotes                  |
|--------------------------------|----------------------------------|-------------------------------------|
| 体がフワフワしている            | Dissociation, fainting           | {emote:broken}, {emote:overwhelm}   |
| 頭が真っ白になる                | Loss of thought, mental overload | {emote:climax}, {emote:delirium}    |
| 全身の穴という穴が犯される      | Complete loss of bodily control  | {emote:despair}, {emote:cry}        |

## Voice Files
- When translating, analyze accompanying voice files found in `source/s_voice/` 
- Voice files are referenced by `[vo_xxx s="filename"]` in the `.ks` scripts.
- Voice files are always referred to by the filename without the file extension in the following structure :
> *92| → the label  
> [fc] → formatting macro  
> [vo_aka s="akane_0014"] → akane_0014 is the voice file  
> [【茜】] → name formatting macro  
> 「んぶっ！　じゅっ！　じゅぶうぅぅっ！　んぶっ！　んぶぁあぁっ！　あ、ああぁあぁ！」[pcms] → dialogue
- Tags may be attached using `meta` attributes or hidden comment blocks for TTS processing.
  - Example:
    ```ks
    [vo_aka s="akane_0043" meta="{gagged}{fx}{emote:beg}"]
	[【茜】]
    「Nnngh... *slurp* N-not there... ahh...」[pcms]
    ```
    or:
    ```ks
    「Nnngh... *slurp* N-not there... ahh...」[pcms] <!-- {gagged}{fx} -->
    ```

### Purpose
Image files are used to verify character actions, emotional state, and physical context during scripted events. They assist with emotional accuracy and help inform tone and language choices.

### Usage Guidelines

- **Scene Matching**: 
  - Match `[evcg storage="evXX"]` tags in `.ks` scripts with corresponding CG image files.
  - Example: `[evcg storage="ev46e"]` → matches `ev46e.png`.

- **Character Position Reference** (for arcana001):
  - **Top Center**: Akane (red)
  - **Bottom Left**: Mia (yellow)
  - **Bottom Right**: Aoi (violet)

- **Tone and Emotion Calibration**:
  - Use expressions, body language, and visual cues to calibrate tone.
  - Example cues: tears, flushed cheeks, arched backs, limp posture, vaginal distension, etc.

- **Narration Verification**:
  - Use CGs to verify that the narration is supported visually (e.g., "stomach bulged," "collapsed breathless").

- **Voice-Image Synchronization**:
  - Check whether the image context matches the tone of the voice clip. If discrepancies arise, defer to tone and consistency across lines.

### Limitations
- Do **not** derive new meaning from an image alone.
- Always triangulate **script + voice + image** for accuracy.
- For reused CGs across different scenes, confirm scene context using dialogue and narration.

## Onomatopoeia
- Sound effects should be handled differently.  As a general rule, they should be handled as is typical in Japanese Hentai Game English translations. 
- Refer to Astericks and Italicize for detailed instructions.
 
## Asterisks
- Sex of some kind is occurring, but only for the sounds from interaction with genitals or erogenous zones and not being vocally made by the character with special handling of oral sex. (Examples: thrusting, wet sounds, impacts, `*schlick*` (OK for fingering), etc)
- If oral sex is occurring, then they should be used for sucking, licking, slurping, swallowing, deepthroating, face-fucking, etc. (Examples: `*suck*`, `*gluck*`, `*glug*`, `*slurp*`, `*schlk*`, `*glurgh*`)
- Coughing, sneezing, gagging, choking, spitting, and vomiting (`*cough*`, `*ptuh*`, `*glrk*`, `*blegh*`)
- Kissing or licking is occurring.  (`*kiss*`, `*lick*`, etc)
- A sound effect not produced by a character occurs. (Examples: `*bang*`, `*boom*`, `*pop*`, etc)
- Examples of what not to surround: `Hya`, `Mmph`, `Pwah`, `Bwah`

## Italicize
- Muffled vocals or exclamations such as hya, mmph, pwah, buah are occurring. (Examples: `Hya`, `Mmph`, `Pwah`, `Bwah`)
- The translation would benefit from it such as when some characters refer to themselves as "me" or "I" in certain dialogue.  This is frequently accompanied by Furigana.
- Any other instance where it would be the most appropriate choice versus using asterisks.

## Comment Translation
- Japanese comments (lines starting with `;//`) should be translated.
- Inline narrative comments must be reflected in English.

## Check-ins
- Translate and commit in batches of 50 lines where a line is defined as a line in the file and not a label. like in *92| 
- Use tags like `{jazz}`, `{penis}`, `{noboner}` to flag lines needing polish as defined in `glossary/tags.md`

## 🎙️ TTS Voice Cloning & Audio Handling

This section outlines how voice-acted dialogue is processed and prepared for training TTS models or final game usage.

### Voice File Location
- All voice-acted dialogue files are located in `source/s_voice`.
- Referenced in `.ks` files using `[vo_xxx s="filename"]`.

### Audio Tagging
You may tag lines using `meta=""` on `[vo_xxx]` or with `<!-- {tag} -->` comments.


| Tag                        | Purpose                                      |
|----------------------------|----------------------------------------------|
| `{fx}`                     | Line includes non-verbal sound effects       |
| `{gagged}`                 | Spoken while gagged or muffled               |
| `{tts:skip}`               | Exclude line from TTS training               |
| `{multi}`                  | Contains multiple speakers                   |
| `{lang:fr}`                | Contains French words or phrases             |
| `{lang:en}`                | Contains English directly in the original    |
| `{lang:zh}`                | Contains Chinese or Chinese-derived phrasing |
| `{emote:beg}`              | Desperate pleading or submissive tone        |
| `{emote:climax}`           | Orgasmic peak or sexual release              |
| `{emote:cry}`              | Whimpering or sobbing                        |
| `{emote:mocking}`          | Teasing or derisive tone                     |
| `{emote:shame}`            | Embarrassed or self-conscious                |
| `{emote:pleasure}`         | Aroused but not climaxing                    |
| `{emote:fear}`             | Terrified, panicked, or in danger            |
| `{emote:apologetic}`       | Whimpering apologies or regret               |
| `{emote:broken}`           | Mind-broken, emotionally numb                |
| `{emote:forced_moan}`      | Moaning under coercion or duress             |
| `{emote:neutral}`          | Flat or non-expressive delivery              |
| `{intent:dialogue}`        | Character is speaking aloud                  |
| `{intent:inner_monologue}` | Character is thinking internally             |
| `{intent:narration}`       | Descriptive narration or exposition          |
| `{emotion_confidence}`     | Score representing certainty of emotion tag  |
| `{quality_score}`          | Utility score for training quality (0–1.0)   |
| `{segment_type}`           | One of `verbal`, `fx`, or `skip` describing how to route the segment |
| `{lang}`                   | ja, en, fr, or zh                            |

> Use `validate_transcription_output.py` to confirm segment metadata completeness and distribution.

### Example Usage
```ks
[vo_mia s="mia_0121" meta="{lang:fr}{emote:beg}"]
「Ooh là là… C’est énorme…」 <!-- {fx} -->
```

### Export Sanitization
- These tags are never shown in-game.
- A sanitization pass will remove all `meta` values and `<!-- {tags} -->` before final script compilation.

### Audio Model Structure
- Lines tagged `{gagged}`, `{fx}`, or `{tts:skip}` are excluded from the **main voice model**.
- You may train separate models using `{gagged}` lines for gagged delivery or process FX-only lines separately.

### Speaker Intent Classification

Lines may be automatically classified into:

| Intent            | Description                                             |
|-------------------|---------------------------------------------------------|
| `dialogue`        | Spoken aloud to another character                      |
| `inner_monologue` | Silent thoughts, often written in parentheses          |
| `narration`       | 3rd-person narrative (typically unvoiced in this game) |

Lines in parentheses (e.g., `（...）`) are auto-classified as `inner_monologue` and routed to a dedicated voice model per character.

### Voice Model Structure

Each girl has multiple voice models, based on tone and delivery type:

| Type              | Model ID Example        | Notes                                     |
|-------------------|-------------------------|-------------------------------------------|
| Clean Dialogue     | `akane_clean`           | Normal voiced lines                       |
| Gagged/Muffled     | `akane_gagged`          | Tagged with `{gagged}`                    |
| Internal Monologue | `akane_internal`        | Lines tagged as `inner_monologue` intent  |
| FX/Moan            | FX-only extracted audio | Non-verbal `{fx}` lines (separate model)  |

Narration lines may be added in future games using a `*_narration` model.
---

### 🧠 Automation Guidelines for Audio Tagging

#### Tag Priority Rules

> - `{tts:skip}` overrides all other tags  
> - `{fx}` overrides emotion/emote tags  
> - `{emote:*}` takes precedence over `{intent:*}` if both are applicable  
> - Tags can be combined: e.g., `{emote:beg}{lang:fr}`  

---

#### Emote Detection Clues

| Emote Tag       | Typical Indicators                                           |
|------------------|-------------------------------------------------------------|
| `beg`            | Phrases like “please,” “やめて,” “お願い,” slow pacing         |
| `climax`         | Onomatopoeia like “いくっ,” “だめぇ,” fast pacing, high pitch |
| `cry`            | Words like “泣,” “涙,” or sobbing sounds                     |
| `mocking`        | Laughter like “ふふ,” “クスクス,” dominant teasing            |
| `forced_moan`    | Moans without speech, flat pitch variance                   |
| `apologetic`     | “ごめん,” “すみません,” often with whimpering tone            |
| `shame`          | “恥ずかしい,” blushing or flustered responses                |
| `pleasure`       | “気持ちいい,” extended vowels, soft arousal sounds           |

---

#### Intent Detection Rules

| Intent              | Triggered When...                                           |
|---------------------|-------------------------------------------------------------|
| `dialogue`          | Default if no other rule matches                            |
| `inner_monologue`   | Line is wrapped in parentheses (e.g., （...） or (...))     |
| `narration`         | Spoken by a 3rd-person narrator, not from a character macro |

---

#### `{lang:*}` Rules

| Tag         | Trigger Clues                                      |
|-------------|-----------------------------------------------------|
| `{lang:fr}` | Contains French words: “oui,” “mon,” “je,” “merci”  |
| `{lang:en}` | English alphabet strings or known English phrases   |
| `{lang:zh}` | Characters in Unicode Chinese range                 |
| `{lang:ja}` | Default fallback if none of the above match         |

---

#### Example Tagged Voice Macro

```ks
[vo_mia s="mia_0121" metadata="{emote:climax}{intent:inner_monologue}{lang:ja}"]
```
---

## Translation QA Checklist

Use this checklist to verify all emotional tag rows are complete and policy-safe:

- [ ] KS Line # verified against script
- [ ] Only one character per line (or marked {multi})
- [ ] Tags match context, audio, and CG focus
- [ ] `{tts:skip}` applied to distorted or gagged lines
- [ ] Flagged terms like `先生`, `少女`, `未開発` noted and paraphrased
- [ ] Dialogue tone matches the speaker's emotional arc

### 🎧 Voice Line Tagging Checklist

Use this checklist to verify each voice-acted line is tagged accurately:

- [ ] Is there an active CG, sprite, or `[std_*]` macro giving visual tone?
- [ ] Did a `[bgv_*]` macro start before this line?
- [ ] Is a `[se loop]` sound implying sustained physical interaction?
- [ ] Do developer comments indicate a change in tone, transition, or focus?
- [ ] Has the character previously escalated in emotion (e.g., sobbing, climax)?
- [ ] Are facial expressions, blush, or overlays indicating emotional strain?

✅ If two or more conditions apply, assume emotional carryover is present and tagging should reflect that.

Tag accordingly with `{emote:*}`, `{intent:*}`, `{lang:*}`, and `{tts:skip}` if the line is moan-heavy or unsuitable for clean training.

---

## Tagging Protocol

Follow these standards when applying metadata tags:

- `{tts:skip}` → Gagged, moaning, or fragmented delivery
- `{lang:fr}` → Foreign language phrase (e.g., French)
- `{emote:cry}` → Speaker is sobbing, stammering, or emotionally breaking
- `{intent:resist}` → Line includes active rejection or struggle
- `{multi}` → Spoken simultaneously by multiple characters

---

## Additional Dialogue-Adjacent Macros

The following macros frequently appear in `.ks` files near spoken or narrated lines.  
**These do not count as the start of a new spoken line and should not receive a `KS Line #`.**

| Macro     | Purpose                                                                 |
|-----------|-------------------------------------------------------------------------|
| `[fc]`    | Resets UI for dialogue blocks (e.g., message window, buttons)          |
| `[vo_*]`  | Triggers voice playback (e.g., `[vo_mia s="mia_0014"]`)                 |
| `[【Name】]` | Visually displays the speaker’s name                                 |
| `[nor]`   | Signals continuation of narration into the next line                   |
| `[pcms]`  | Marks the end of a dialogue or narration line (always comes last)      |

---

### `[nor]` and `[pcms]` — Continuation and Termination

- `[nor]` is used when narration is split across multiple lines.
- `[pcms]` is the macro that **terminates** the dialogue or narration block.
- Any lines ending in `[nor]` are part of the **same spoken unit** as the line that ends in `[pcms]`.

✅ Always assign the `KS Line #` to the line that ends with `[pcms]`.  
This line is considered the **logical anchor** for the entire narration block.

---

### ✅ Example:
```
……少女は目を涙で潤ませながら懇願する。[nor]         ← part of same line
先生、というのは俺の事だ。だが、俺は……何を頑張ればいい？[pcms]  ← KS Line # is assigned here
```

Even though the first sentence is on its own line, **it is still part of the same block** and should be treated as a single entry for emotional tagging and transcription.
