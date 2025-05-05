# Considerations for Training TTS on Japanese Adult Visual Novels

## 1. Contextual Delivery
Japanese VNs often rely on emotional subtext: hesitation, breathiness, embarrassment, and submissiveness.

**Suggestion:** Annotate or tag lines where emotional tone is key (e.g., *shameful moan*, *fearful*, *sultry*) so they can be used in tone-specific model training or fed into an emotion-conditioned model.

Example format:
```
akane_0043.wav|*embarrassed* No... not there...
```

---

## 2. Avoid English-Specific Vocal Tics in Translation
Phrases like "Ugh", "Shit", "Oh my god!" are often out-of-place culturally.

**Suggestion:** Maintain reactions that match the original tone:
- Use *"Ngh..."*, *"Ah..."*, *"No... please..."*
- Avoid inserting modern or culturally misaligned phrases unless intentionally localizing tone.

---

## 3. Female Character Age, Diction & Vocabulary
Often voiced as naive, high-pitched, or childlike characters.

**Suggestion:**
- Keep sentence structure simple and vocabulary innocent.
- Avoid baby talk unless it's canonically appropriate.

---

## 4. Breath Control and Pauses
Erotic lines often include pauses for breath, panting, or stuttering.

**Suggestion:** Use commas and ellipses to model rhythm and pace:
- `"N-No... please... don’t..."`
- `"Ahh... ngh... I-I can’t...!”`

---

## 5. Name Macros and Internal Formatting
VN scripts use macros like `[vo_xxx]` or `【Akane】`.

**Suggestion:** Strip all macros and system tags before training.
- Only feed raw spoken lines into the TTS engine.

---

## 6. File Naming and Reuse
Voice files may be reused across routes or contexts with different text.

**Suggestion:** 
- Avoid training on duplicated filenames with mismatched text.
- Use file hashes to validate duplicates.

---

## 7. Sound Effects Overlap
Sex scenes often mix moans with slaps, squelches, and other SFX.

**Suggestion:**
- Exclude these files from training.
- Build a separate sound effect layer or library to layer on top of generated voices.

---

## Summary Checklist

| Consideration                     | Action                                 |
|-----------------------------------|----------------------------------------|
| Emotional tone clarity            | Add optional emotion tags              |
| English phrasing realism          | Avoid Americanisms unless localized    |
| Age/archetype voice match         | Simplify phrasing, not infantilize     |
| Gagged/moaning separation         | Exclude from main model                |
| Macros & tags                     | Strip before training                  |
| Duplicate filename check          | Match text to hash of audio            |
| Background SFX                    | Avoid in training audio                |