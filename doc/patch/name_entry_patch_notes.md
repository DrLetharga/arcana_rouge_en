## ✍️ Name Entry Screen — Localization & Enhancement Summary

### ✅ Overview
The protagonist name entry screen has been fully localized and enhanced to better support English-language players, improve flexibility, and maintain UI consistency across resolutions.

---

### 🔧 Changes Made

**1. Default Name Localization**
- Original Japanese: `主人公` (“Protagonist”)
- English Default: `Hiro` — chosen as a phonetic nod to “Hero” and a natural Japanese-style name

```ks
[eval exp="sf.name2 = 'Hiro'"]
; Default protagonist name "主人公" localized as "Hiro" — preserves pun while sounding natural
```

---

**2. Increased Character Limit**
- Raised max name length from **5** to **10** characters to support longer English first names like "Sebastian" or "Charlotte"

```ks
[eval exp="tf.edit_text_max = 10"]
; Increased character limit to 10 for full first-name support
```

---

**3. Dynamic OK Button Alignment**
- OK button now auto-centers under the resized input box, adjusting dynamically based on `edit_text_max`

```ks
[eval exp="tf.edit_OK_x = 50 + (tf.edit_text_max - 5) * tf.edit_text_size / 2, tf.edit_OK_y = 90"]
; Repositions OK button to remain centered under input box across all resolutions
```

---

**4. UI Compatibility Confirmed**
- ✅ Name fits properly in:
  - Dialogue nameplate
  - Message window
  - All resolution modes (960×540, 1280×720, fullscreen)
- ✅ No clipping or layout issues observed with 10-character names
- ✅ OK button remains visually aligned at all tested lengths

---

### 📌 Notes
This enhancement balances localization fidelity and player flexibility while preserving the integrity of the original layout. Future increases (e.g., 12+ characters) may require UI rescaling or nameplate expansion.

