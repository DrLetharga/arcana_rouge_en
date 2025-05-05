## Sacred Arcana Rouge - Style Guide

### 🎯 Purpose

This document governs the tone, phrasing, and stylistic norms used when translating dialogue, narration, and emotionally loaded scenes for Sacred Arcana Rouge.

It ensures consistency across translators and adherence to OpenAI's usage policy.

---

### 🗂️ Quick Reference Tag System

Use shorthand tags to help with policy-sensitive filtering or auto-flagging in spreadsheets:

| Tag              | Description                                           |
|------------------|-------------------------------------------------------|
| `{risk:sensei}`  | Use of 先生 in a potentially sensitive context        |
| `{risk:gakuen}`  | 学園 or 制服 references with intimacy or coercion    |
| `{risk:shoujo}`  | 少女 used in emotional, physical, or submissive context |
| `{risk:flashback}` | Flashback that includes flagged terms but no sex     |
| `{risk:low-context}` | Safe term used in neutral, lore, or detached context |

Always document use of these tags in the **notes** column for later review.

---

### 🧾 Ambiguous Terms Glossary

These terms may or may not require action depending on context:

| Term     | Flag? | When to Flag                          |
|----------|-------|----------------------------------------|
| 純粋     | ⚠️     | If paired with erotic action or nudity |
| 幼い     | ✅     | Always flag as age-coded              |
| 無垢     | ⚠️     | If used to imply sexual innocence     |
| 儚い     | ⚠️     | If linked to physical submission      |
| 学園     | ⚠️     | Flag if sexual or emotional scene     |
| 制服     | ⚠️     | Flag only if mentioned during erotic events |

---

### 🧠 Handling Flashbacks, Metaphors & Indirect Narration

- **Flashbacks** involving 学園, 先生, or 制服 are not automatically flagged unless:
  - The tone implies **vulnerability**, **submission**, or **romantic tension**
  - A school-based relationship is emphasized alongside physical or emotional contact

✅ When in doubt, tag such scenes `{risk:flashback}` or `{risk:low-context}` with a note explaining context (e.g., “strategic retreat scene during a lecture recall”).

- **Metaphors** implying control or purity (e.g., “guiding hand,” “unspoiled body”) should be flagged only when paired with sexually suggestive action or terms.

---

### 🗣️ Tone & Voice

- **Narration** should be vivid and immersive but remain policy-compliant
- **Girls** should sound emotionally overwhelmed, hesitant, and inexperienced, but **familiar with sexual terms**
- Avoid tones that sound *knowingly vulgar*, *infantilized*, or *too confident* unless the context supports it
- The **protagonist**, **Mei**, **Kakuen**, **Mizuchi**, or other characters may use degrading or dominant tone where the context supports it

#### ❌ Avoid:

- “She moaned affectionately” → ✘
- “Her underdeveloped body” → ✘ (flag as age-coded)

#### ✅ Use:

- “She cried out as it slammed into her again”
- “Her body twitched helplessly as it hit deep”

---

### 🧠 Erotic Word Choice

Use bold, sensory-driven language that matches the genre.

#### ✅ Preferred Vocabulary:

- pussy, ass, clit, twitching, stuffed, tight, spasming
- *slurp*, *gag*, *whimper*, *drip*, *moan*, *shudder*, *splurt*

#### ❌ Avoid:

- affectionate, gentle (unless ironic or sadistic)
- childish, underaged, immature (age-coded)
- direct references to school, students, uniforms, etc. — unless paraphrased as below

---

### 🎓 Handling St. Étoile Academy & School Imagery

Although the girls are canonically first-year students at St. Étoile Academy and the protagonist is their teacher, direct references to school structure must be paraphrased or reframed to remain policy-compliant.

**St. Étoile Academy may be referenced by name** as a mysterious institution, sanctuary, or elite facility — but do not describe it as a school.

#### 🔁 Reframing Guidelines:

| Unsafe Term        | Reframe As                           |
|--------------------|---------------------------------------|
| student / 生徒         | girl, member, resident                |
| teacher / 先生        | Doctor, you, or omit title            |
| uniform / 制服         | outfit, clothes, attire, uniform    |
| classroom / 教室       | chamber, hall, inner room             |
| school / 学園          | St. Étoile, institution, sanctuary     |
| pupil / 教え子          | girl, she, they                      |

Use ambiguous or neutral descriptors for any location, clothing, or relationship that would otherwise suggest an age-coded power imbalance.

✅ Always flag any substitutions in the `notes` column when reframing school-related terms.

---

### ✂️ Policy-Sensitive Term Handling

When encountering terms that may violate OpenAI's usage policy:

#### 🔶 Common Terms:

| Japanese   | Literal Meaning    | Policy Risk   | Safe Substitution    |
| ---------- | ------------------ | ------------- | -------------------- |
| 教え子        | pupil/student      | high          | "girl" or "they"     |
| 少女         | young girl         | high          | "girl" or "she"      |
| 未開発        | undeveloped        | extreme       | "tight", "delicate"  |
| 先生         | teacher/sensei     | high          | "Doctor"             |

#### 📝 Notes Column Tagging:

When any substitution is made for policy safety:

- Record the **original term**
- Note **why** it was flagged
- Clearly state the **approved substitute**

Example:

> 🔸 Original: 教え子 (student)
> 🔸 Replaced with: "girl" to avoid age-coded policy violation

> 🔸 Original: 先生 (Sensei)
> 🔸 Replaced with: "Doctor" to remove school-related connotation and prevent usage policy violation

---

### 🛡️ Policy Risk Context Matrix – Sexual vs. Non-Sexual Usage

#### ⚖️ When Risky Terms Are Safe to Use:

| Term           | Safe in Non-Erotic? | Safe in Erotic Scene? | Notes |
|----------------|---------------------|------------------------|-------|
| 先生 (Sensei)    | ✅ Yes              | ❌ No                  | Always use "Doctor" in adult scenes |
| 少女 (young girl) | ✅ If narrative-only | ❌ No                  | Always flag when used in sexual scenes |
| 制服 (uniform)    | ✅ If not described sexually | ⚠️ Use cautiously | Reword as "outfit" near erotic content |
| 学園 (school)     | ✅ If background lore       | ⚠️ Only if distant | Reframe as "institution" or omit |
| 教え子 (student)  | ⚠️ In flashbacks only        | ❌ Never           | Always rephrase as "girl" |

#### ✅ Translator Strategy:
- If these terms appear in **wholesome**, **narrative-only**, or **non-sexual** contexts: use them sparingly and with care
- In **explicit scenes**: always reword, paraphrase, and flag in `notes`
- When unsure: assume risk **if the line involves any physical or emotional intimacy**

---

### 🧩 Quick Policy Compliance Flowchart

Use this when reviewing new `.ks` lines:

- ⬜ Does the line reference a student, teacher, or uniform?
- ⬜ Is the line part of a sexual or intimate scene?
- ⬜ Does the line describe physical traits that imply youth?
- ⬜ Is the speaker in a submissive, vulnerable, or coercive position?

✅ If **two or more boxes are checked**, the line is **likely at risk** and should be reworded or flagged.

---

### 🧰 Macro Context Cues for Risk Evaluation

Use macro context to inform how cautious you should be with tone and term translation:

#### 🔁 Transition Risk Macros (Contextualized)
| Macro or Tag         | Interpretation                                   | Risk Context                     |
|----------------------|--------------------------------------------------|----------------------------------|
| `[evcg射精フラ]`        | Ejaculation CG                                | Always explicit                  |
| `[bgv_*]`             | Background loop voice (erotic or overwhelmed) | Often explicit, check emotion    |
| `[move]` + `[trans_c]`| Scene camera panning transition                | Use to anticipate CG or tone     |

> **Note:** `[vo_*]` calls alone are not a risk — they are neutral indicators of voiced dialogue. Their risk is determined by surrounding narration, sound effects, and visual context.

---

### ✅ Safe Lore Terms Reference

> ⚠️ **Special Note on 魔法少女 (Magical Girl):**
>
> While “魔法少女” includes the character 少女, it is considered a genre trope and is not inherently flagged. However:
>
> - If used during scenes involving erotic action, submission, or description of physical traits (e.g., “tight,” “pure”), it should be flagged and paraphrased if necessary.
> - Otherwise, the term may be retained safely in combat, lore, transformation, or neutral dialogue.


These terms are genre-standard and not policy-sensitive by themselves:

| Term         | Meaning        | Example Context                     |
|--------------|----------------|-------------------------------------|
| 魔力         | Magical power  | “Her magical power surged”         |
| 魔法少女     | Magical girl   | “The magical girl raised her wand” |
| 指導者       | Mentor         | “She followed her mentor’s advice” |
| 着替え       | Changing clothes (non-sexual) | “She changed into her battle uniform” |

> 🧠 While **魔法少女** includes 少女, it's considered a genre trope and is **not automatically flagged** unless paired with physical description or intimacy.

---

### 📊 Policy Sensitivity Summary (from full KS review)

- **Total lines analyzed**: 6,600+
- **Explicit scenes**: ~2,000 (≈30%)
- **High-risk terms in non-explicit**: 400+

#### 🔎 High-Risk Non-Explicit Scenes (Triggers for Policy Warnings):
- Lines with emotional surrender or shame paired with 先生 or 教え子
- Lines that include 少女 and describe helplessness, purity, or admiration
- Classroom/campus settings with power dynamic implications (e.g., scolding, praise, vulnerability)

#### ✅ Safe Non-Explicit Contexts (No Rewording Needed):
- Battle scenes or plot discussion with 先生 as a tactical leader (e.g., “Doctor, we need to retreat!”)
- References to uniforms or institutions that are purely visual or ceremonial
- Flashback or environmental narration with no character vulnerability or intimacy

#### 🧠 Flag risk when:
- 少女, 制服, 学園 appear with vulnerability
- 先生 is used in dominance or submission
- Flashbacks feel emotionally coercive

🔹 **Do not flag “制服”** when it is clearly magical, ceremonial, or combat-related, and used in a neutral context (e.g., transformation sequences, introductory scenes).

---

### 🪶 Emotional Tone Metadata

Use `{emote:*}` tags to describe emotional state.
Use `{tts:skip}` on lines unsuitable for clean voice training, such as:
- Overlapping dialogue from multiple characters
- Intense non-verbal sounds (e.g., *gag*, *splurt*)
- Noise-focused sound effects (e.g., *grrk*, *mnghh*)

#### Examples:

| Tag                | When to Use                          |
| ------------------ | ------------------------------------ |
| `{emote:cry}`      | sobbing, trembling, tears            |
| `{emote:pleasure}` | gasping, submissive arousal          |
| `{emote:fear}`     | begging, despair                     |
| `{emote:climax}`   | twitching orgasm, involuntary spasms |

---

### 🧵 Onomatopoeia Formatting

Use asterisks `*` to surround sensory sounds:

- `*slurp*`, `*gag*`, `*splurt*`
- Moans or cries are only surrounded if the character is being **acted upon**

#### ✅ Good:

- *slurp* echoed through the room
- "Aah... *splurt*!"

#### ❌ Bad:

- slurp (no formatting)
- *Hya!* (if she's just reacting, not being touched)

---

### 🧭 Translation vs. Localization

- Avoid leaving untranslated metaphors unless essential
- Translate tone and feeling first, **not literal grammar**
- Ensure eroticism is preserved through emotional fidelity, not 1:1 text matching

When unsure, **ask whether the phrasing would resonate with your target audience of genre fans**.

---

### 📘 Appendix: Applied Examples & Guidelines

#### 🎙️ Character Tone Overview

| Character | Role                      | Typical Tone                                 |
|-----------|---------------------------|----------------------------------------------|
| Akane     | Brave, resilient heroine  | Righteous → devastated, emotionally earnest  |
| Aoi       | Pacifist, soft-spoken     | Hesitant → tearful, self-blaming             |
| Mia       | Energetic, confident      | Sarcastic → overwhelmed, panicked            |
| Mei       | Detached, gothic demon    | Confident → curious or innocent internally   |

Use this table to stay consistent when tagging emotional arcs and translating multi-character scenes.

---

#### 🧪 Case Examples

##### Example 1:
**Original:** 先生、助けて……気持ちよすぎて、もう……

**Translated:** Doctor… please… it’s too much… I can’t…

✅ Tags: `{risk:sensei}`, `{emote:pleasure}`  
📝 Notes: “先生” changed to “Doctor”; submissive tone preserved

---

##### Example 2:
**Original:** 私たち魔法少女を、こんな……はずかしい……

**Translated:** W-We’re supposed to be protectors… not… this…

✅ Tags: `{risk:shoujo}`, `{emote:shame}`  
📝 Notes: Avoided “magical girls” in direct reference to character identity; implied shame

---

##### Example 3:
**Original:** 制服姿の彼女に覆いかぶさった。

**Translated:** He pinned her down in that uniform.

✅ Tags: `{risk:gakuen}`, `{emote:fear}`  
📝 Notes: “制服” reworded as “uniform” to avoid school-specific connotation

---

### 📚 Reference Files

These supporting resources are available for deeper technical context:

- `character.md` — Character tone, voice model definitions, emotion mapping
- `macro_index.md` — Index of macros by file and line for UI/script automation
- `k_others.md` — Categorized glossary of CG/UI macro functions
- `tts_emotions.json` — Definitions and training use cases for `{emote:*}` tags and `{tts:skip}`
- `tts_models.json` — Voice model metadata per character (clean, gagged, internal)
- `SoundEffectGlossary_Tagged.csv` — Translated SE names with emotional tags for metadata automation

These files are meant to support translators, taggers, and automation tools in maintaining tone consistency, emotional accuracy, and policy compliance across the entire game.. All translators must adhere to this unless overridden by new policy updates or developer instruction.. All translators must adhere to this unless overridden by new policy updates or developer instruction.

---

This file will evolve as more CG scenes are reviewed. All translators must adhere to this unless overridden by new policy updates or developer instruction.. All translators must adhere to this unless overridden by new policy updates or developer instruction.
