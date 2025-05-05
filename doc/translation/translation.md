# KS_Translation_Template

This document defines the rules used to translate `.ks` and `.tjs` script files in KiriKiri and KiriKiri Z projects, while preserving formatting, macros, and compatibility. It reflects all refinements observed from practical translation cases, including macro preservation, comment alignment, fallback behavior, iscript handling, `.tjs` handling, and robust post-processing QA.

---

## 🧭 General Guidelines

- Translate **all Japanese comment lines** (`;`, `;;`, or `//`)
- Translate **visible player text** inside `'...'` or `"..."` quotes
- Do **not** translate:
  - Macro names or identifiers (`[eval]`, `[layopt]`, `[jump]`, etc.)
  - Variable or label names unless shown to the player
- Preserve:
  - Semicolons, indentation, line breaks, macro formatting
  - Line-by-line alignment with the original

---

## 🔒 Do Not Overwrite Executable Code

#
- 🔥 **Do not replace executable code lines with translated comments.**  
  If the original line contains code (not a comment), the translated line must contain that same code **unaltered**, with an optional translated comment on the **same line or above/below**.


## 🔁 Mixed Code + Comment Lines

#### 🔹 `.tjs` Files and `@iscript` Blocks
- In `.tjs` files and inside `@iscript`, treat `//` and `/* ... */` comments exactly like in `.ks` files.
- Translate **only** the comment part. All code must remain byte-identical.
- Translate string literals only if they are shown to the player (e.g., `System.inform("...")`, `dm("...")`).

#### 🔹 Inline Code Comments Must Be Checked for Japanese
- If a line contains both code and a comment (e.g., `var x = 0; // 説明`), the **comment must be fully translated**, even if it's mid-line.
- The code portion must remain **byte-identical**.

✅ Example:
```ks
var mouseDown = false; // True if mouse is down, false otherwise
```

❌ Wrong:
```ks
var mouseDown = false; // マウスダウン中なら真、そうでなければ偽
```

📌 *Even font names or string literals (e.g., `"ＭＳ ゴシック"`) should be preserved only if they are not player-facing text.*
  
- If a line contains **both executable code and a Japanese comment**, translate **only the comment**.
- Do **not** remove or reformat the code portion.

✅ Example:  
```ks
var x = 0; // 初期化  
→ var x = 0; // Initialization  
```



- Do **not** replace or modify lines containing `[eval]`, `[rclick]`, `[if]`, `[er]`, or similar macros
- Executable lines must remain **byte-identical** unless translating visible strings inside them
- If clarification is needed, place a translated comment **above or below**, not on the macro line

### ✅ Correct:
```ks
; Handles loop playback
[eval exp="sf.loop = true"]
```

### ❗ Exception:
If a comment line contains both a macro and a Japanese description, **only translate the Japanese portion**.

✅ Example:
```ks
; [jump storage="scene.ks"] ; シーン遷移
→ ; [jump storage="scene.ks"] ; Scene transition
```

### 🔹 🛡 Rule: Preserve Macro Execution Lines

- Never insert comments **in place of executable macro lines**, even if surrounded by comment headers
- If a macro line is next to a Japanese comment, translate the **comment only**
- Macro calls like `[eval]`, `[jump]`, `[layopt]`, `[return]`, `[call]`, etc. must remain **verbatim**

✅ Correct:
```ks
; 全前景レイヤ表画面を非表示
→ ; Hide all foreground layer front displays
[eval exp="tf.sub_i = 0"]
```

❌ Wrong:
```ks
[eval exp="tf.sub_i = 0"]
→ ; Hide all foreground layer front displays
```


---

## 🔁 Structural Alignment & Line Integrity

#

- 🔥 **Preserve brace and block structure.**  
  Braces (`{` and `}`) **must appear on the exact same line** as in the original. Do not:
  - Add or remove braces
  - Move a brace to the next/previous line
  - Precede a brace with a translated comment on the same line

- If the original has:
  ```ks
  function example() {
  ```
  Do **not** separate this into:
  ```ks
  function example()
  {
  ```


## 🔠 Indentation and Whitespace  
- All **indentation must be preserved exactly**, including tabs, spaces, and alignment.
- **Do not** normalize indentation or reflow comment spacing.

✅ Example:  
```ks
    ; This line has four spaces
→     ; This line has four spaces
```

### 🛠️ No Line Deletion, Even for Redundant Code  
- Never delete lines, even if they appear to be unused macros, commented-out sections, or extra separators.
- The final output **must match the line count and order of the original**.



- Maintain **exact line count and order**
- Do **not** insert, remove, or reflow lines
- Preserve empty lines, comment dividers (`;-----`), and spacing
- If the original has repeated or "unused" lines, keep them

---

## 🏷️ Label Declarations (Lines Beginning with `*`)

- Never translate or modify label lines
- These control jumps, saves, and logic
```ks
*ＣＧとサムネ設定01 ; ❌ Do NOT translate
```

---

## 🧾 Quoted Strings

- Translate quoted text if **shown to the player**
- Do **not** translate quoted variables or labels used in macros

Example:
```ks
[eval exp="f.voice = '音声1'"] ; Do NOT translate
'セーブしますか？' ; Translate: 'Would you like to save?'
```

---

## 📝 Comment Translation


### 🔍 Rule: Multiline Block Comments
- Any Japanese text found inside `/* ... */` comment blocks **must be translated**
- Even if surrounded by inactive code, treat it like standard developer documentation
- Any line found between `/* ... */` does not need to begin with `;` or `//` to be considered for translation

✅ Correct:
```ks
/*  
// 指定したレイヤーのみを揺らす
→ // Shakes only the specified layer
*/
```

❌ Wrong:
```ks
/*  
// 指定したレイヤーのみを揺らす
*/
```

### 🔍 Rule: Consecutive Line Comment Blocks
- If a block of 2 or more consecutive lines begins with `//` or `;`, treat them as a **logical comment block**.
- These must be:
  - Fully translated
  - Preserved in structure and spacing
  - Reviewed as a group, not just individually

🚫 If any line in the block contains Japanese, the entire block must be considered for translation and QA flagged.

### 🔍 Rule: Unquoted Player-Facing Text
- Any Japanese text outside of macros that appears in `.ks` script lines **and is clearly meant to be shown to the player** must be translated.
- This applies even if the text is not enclosed in `'...'` or `"..."`.

✅ Correct:
```ks
てくてくします。[l][r]
→ I'm walking along. [l][r]
```

### 🔸 Additional Rule: Developer-Style Comments Must Be Translated
- Parameter blocks (e.g., `; 属性：`, `; 備考：`) must be fully translated.
- Do not leave Japanese terms like `右クリックサブルーチン` or `等幅フォントであること` untranslated.
- Translate all technical usage notes, assumptions, and macro hints.

🚫 Even if a comment appears purely supplemental or instructional, it must be translated in full.
### 🔥 Rule: Eliminate Mixed-Language Comment Fragments

- Do not allow comments that mix English and Japanese elements (e.g., `の`, `を`, `に`, `位置`, etc.)
- Fully translate such lines into natural, grammatical English
- Reconstruct the sentence rather than substituting words piecemeal

✅ Correct:
```ks
//   spline : Whether to perform spline interpolation
```

❌ Wrong:
```ks
//   spline : Spline interpolationをするか
```

### 🔍 Rule: Inline Japanese in Code, Paths, and Strings

- Strings passed to `System.inform(...)`, `dm(...)`, or `throw new Exception(...)` must be translated.
- If they span multiple lines or are concatenated, merge and translate the full message.
- If any of the following are found, **reject the file**:
  - `"..."` or `'...'` strings that contain Japanese and are not part of macros or system variables
  - Inline comments like `// 変換行列パラメータ`, `// 停止`, `// ハンドラ`
  - Comments mixing English and Japanese grammar

Do **not** allow:
- Japanese nouns in dev comments (e.g., `描画`, `設定`, `行列`, `補完`, `時間`, `実行`)
- Half-translated tech descriptions like `pathを分解`
- Mixed noun/adjective fragments such as `positionの設定`

### 🔍 Rule: Logging/Debug Function Translations
- Any Japanese passed to the following functions **must be translated** as visible output:
  - `dm("...")`
  - `System.inform("...")`
  - `throw new Exception("...")`
  - `print("...")`, `puts("...")`, `log("...")`
- These functions are considered visible or semi-visible output.
- All such strings must be translated — even if partially concatenated.

### 🔍 Rule: Path Strings and Folder Labels

- Any quoted string containing Japanese folder names, filenames, or path elements must be translated into appropriate English terms.
- These must be documented and logged by any automated tools.

Examples:
```tjs
Storages.addAutoPath("k_scenario/01前半/");
→ Storages.addAutoPath("k_scenario/01_first_half/");

"ボイスフォルダ"
→ "voice folder"
```


### 🔍 Rule: Concatenated Japanese String Fragments
- Scan for any **consecutive lines** containing string concatenation (e.g., `"..." + "..."`, or multiple `"..."` segments across lines).  
- If any part of a concatenated or multi-line string contains Japanese characters, the **entire message must be merged and translated as one sentence**.
- Reject if:
  - `"..."` followed by `"..."` contains Japanese in either segment
  - Any line contains `+` joining Japanese strings
  - A line contains `"..."` and ends in a dangling `+`

✅ Example:
```tjs
throw new Exception("CDDA ではクロスフェードを行えません。"
                    "doubleBuffered = false に設定してください。");
→ throw new Exception("Crossfade cannot be used with CDDA. Please set doubleBuffered = false.");
```


### 🔍 Rule: Multi-Line String Literal Merging

- Any visible string (e.g., `System.inform(...)`, `dm(...)`) that spans **multiple quoted segments or multiple lines** must be:
  - Merged into a single readable sentence
  - Fully translated — no Japanese may remain in any portion

✅ Correct:
```tjs
System.inform("system/Config.tjs not found. Please rename the file.");
```
❌ Wrong:
```
System.inform("system/Config.tjs not found."
    "Config.~new ファイルを Config.tjs に改名してください。");
```

- Also applies to string concatenation like:
```
"日本語1" + "日本語2"
→ "English 1 English 2"
```

### 🔹 Standard Comments

- Translate clearly and naturally
- Preserve the tone, intent, and casual structure of the original
- If vague, preserve ambiguity

### 🔹 Developer Notes

- Reflect uncertainty, jokes, or frustration in casual English
```ks
### ✅ Rule: Developer Comment Tone
; フラグオンオフだけでif文で使われないけど、どうしたかったんだ俺？
→ ; It only toggles the flag and isn’t used in an if statement — what was I even trying to do?
```

### 🔹 Multi-Semicolon and Embedded Comments

- Treat all comment prefixes (`;`, `;;`, etc.) the same
- Preserve any commented-out macros or commands, translating only the Japanese
```ks
### 🔹 Multi-semicolon and Embedded Comments
; [jump storage="scene.ks"] ; 遷移処理
→ ; [jump storage="scene.ks"] ; Scene transition
```

### 🔹 🧭 Rule: Contextual Comment Lock

- Each translated comment line **must match the meaning and purpose** of its Japanese counterpart.
- Do not:
  - Replace Japanese comments with unrelated summaries from other sections
  - Inject generic labels like `; Notes:` unless the original says `; 注意事項：`
- When translating groups of comment lines, **preserve order and context**
- Use a line-by-line approach; **do not merge or split lines**

✅ Correct:
```ks
; 注意事項：
→ ; Notes:
; 前景レイヤの透明度は完全不透明（255）に変更する
→ ; Foreground layer opacity will be set to fully opaque (255)
```

❌ Wrong:
```ks
; 注意事項：
→ ; Return to the title screen
; 前景レイヤの透明度は完全不透明（255）に変更する
→ ; [missing or changed meaning]
```


---

## 🧱 Macro-Aware Comments

### 🔁 Multi-line Macros  
- If a macro or assignment spans multiple lines (e.g., `%[ ... ]`), preserve its original format and indentation.
- **Do not collapse** multi-line structures into a single line unless explicitly instructed.



> Rule: **Only translate Japanese outside the macro**

Example:
```ks
### ✅ Rule: Macro-Aware Comments
; [eval exp="someFunc()"] ; ループ設定用
→ ; [eval exp="someFunc()"] ; For loop settings
```

---

## 🔡 Furigana and Ruby Tags

- For `[ruby]` or `[macro name="ruby_c"]`, **remove the macro structure**
- Reflect the intended tone/meaning in plain English
- Include original reading in a comment if helpful

```ks
[ruby text=しょうがくせい][ch text=小学生]
→ "elementary school student"
; Original reading was 'しょうがくせい'
```

---

## 🧃 iscript Blocks

- These rules also apply directly to `.tjs` files.

### ✅ `.tjs` Examples:

```tjs
// キャラの位置をリセット
→ // Reset character position

/* 各種変数の初期化 */
→ /* Initialize all variables */

System.inform("セーブしますか？")
→ System.inform("Would you like to save?");
```


- Only translate comments (`//`) inside `@iscript ... @endscript`
- Do not translate function names or assignments
- Maintain exact spacing and structure

```ks
@iscript
// キャラのボイス再生
function PlayVoice(id) {
```

---

## 🔁 Navigation, Scene, and Flow

- Translate comments about navigation and structure clearly
```ks
; 選択肢から戻る処理 → ; Return handling after choice selection
### 🎮 Scene and Choice Handling
; シーン回想開始 → ; Begin scene replay
### ✅ Rule: Standardize Navigation Terminology
; systembutton.ksで記録してる現在のファイルとラベルにリターン！
→ ; Return to the current file and label recorded in systembutton.ks!
```

---

## 🧩 Short, Redundant, or Ambiguous Comments

- Use plain English when content is minimal or vague
```ks
### ✅ Rule: Minimal Fallback Translation
; 使用してない → ; Unused
; これいらないよね？ → ; We probably don’t need this, right?
```

---

## ❗ Forbidden Actions (Triggers Rejection)

- Inline Japanese comments left untranslated on code lines (e.g., `var x = 0; // 初期化`) will **trigger rejection**


- Executable lines overwritten with comments or translations
- Label lines translated or moved
- Inserted comments where none existed before (unless marked helpful)
- Collapsing or reflowing lines
- Deleted empty lines or separators

---

## 🧪 Post-QA Scan Logic

### 🔍 Rule: Global Japanese Comment Detection
- Scan the **entire file** for any Japanese characters using the following Unicode ranges:
  - Hiragana: `\u3040-\u309F`
  - Katakana: `\u30A0-\u30FF`
  - Kanji: `\u4E00-\u9FFF`
  - Full-width Katakana: `\uFF66-\uFF9D`
- Any line that includes Japanese characters in:
  - Full-line comments (`//`, `;`, `;;`)
  - Inline comments (e.g., `var x = 0; // コメント`)
  - Multi-semicolon or macro comments
  must be fully translated.

🚨 This rule overrides all previous checks: **if Japanese is detected in any comment context, the file fails.**

### 🔍 Rule: QA:COMMENT_BLOCK — Untranslated Multiline Comment Blocks
- If 2 or more consecutive lines begin with `//` or `;`, treat them as a **comment block**.
- If **any line in that block contains Japanese**, the **entire block fails QA** unless fully translated.
- Intended to catch developer notes, behavior explanations, and comment-mode documentation often missed when scanning line-by-line.

⚠️ Recommended detection threshold: any block of 3 or more contiguous single-line comments.

📌 Example:
```tjs
// Move begins here
// キャラの向きを変える
// Start movement
→ All three lines must be reviewed as a unit. If one is left untranslated, QA should fail with [QA:COMMENT_BLOCK].
```

### 🔍 Rule: Mixed-Language Fragment Detection
- Flag lines containing:
  - English followed by `の`, `を`, `に`, or `が`
  - Embedded Japanese nouns like `位置`, `実行`, `補完`, etc.
  - Katakana/kanji/romaji mixtures like `layerー`, `Move中`
- These lines must be rewritten in plain English to pass QA

### 🔍 Rule: Executable Code with Japanese Comments
- Flag any line matching `^.*;.*[\u3040-\u30FF\u4E00-\u9FFF]` or `^.*//.*[\u3040-\u30FF\u4E00-\u9FFF]`
- This detects executable code followed by untranslated Japanese inline comments
- These lines must be rewritten to preserve code and translate the comment

### 🚫 Structural Desync Fallback  
- If the line count no longer matches after translation or macro formatting changes unexpectedly, halt output and raise a QA failure.
- This prevents delivering a file with dropped code or malformed macros.



Automated tools may scan for:

- Japanese Unicode characters
- Placeholder tags like `[TODO]`, `[EN]`, `[TRANSLATED]`
- Altered macro expressions (`[eval]`, `[jump]`, etc.)
- Untranslated `@iscript` comments
- Unbalanced macro tags

### 🔍 Rule: UTF-16 QA Verification

- When QA falsely flags "Untranslated Japanese characters" on fully translated lines:
  - Re-encode those lines using raw ASCII
  - If false flags persist, log as **QA false positive** and override only after byte-level inspection
- Add tooling that compares **normalized Unicode forms** instead of raw byte scan alone


### 🔍 Rule: Inline Developer Comments
- Any code line with a trailing Japanese comment **must be translated** in full:
```ks
var lastTick = 0; // 前回ハンドラが描画開始した時間
→ var lastTick = 0; // The time when the handler last began rendering
```

### 🔍 Rule: Player-Facing Strings
- All strings containing visible Japanese, even if they include symbols like `■`, `：`, or `〜`, must be translated:
```ks
dm("■affine実行時間 :"+ ...)
→ dm("■Affine execution time: "+ ...)
```

### 🔍 Rule: Concatenated Japanese String Fragments

- Any **multi-line**, **split**, or **concatenated** string literals that contain Japanese must be fully merged and translated.
- Japanese may not appear in:
  - `"..."` followed by `"..."` on the next line (implicit continuation)
  - `"..." + "..."` joined with `+`
  - Any string split across lines, even if not explicitly concatenated

#### 🚫 Reject the file if:
- A Japanese string is found inside **any part** of a string that spans multiple lines
- A line ends in `+` and the next line contains a Japanese string
- `"..."` segments appear in sequence and any contain Japanese

#### ✅ Example (Correct Translation):

```tjs
throw new Exception("Crossfade cannot be used with CDDA. Please set doubleBuffered = false.");
```

#### ❌ Example (Should Fail QA):

```tjs
throw new Exception("CDDA ではクロスフェードを行えません。"
                    "doubleBuffered = false に設定してください。");
```

#### 🔍 Automated Check Suggestion:
- Use QA scripts to search for:
  - `"\s*\+\s*"` followed by Japanese
  - `"[^"]*[\u3040-\u30FF\u4E00-\u9FFF][^"]*"` inside any quoted segment
  - Lines that end in `" +` or `"+` or contain multiple `"..."` segments

---

## 🔍 Final QA & Output Validation

#
- 🔁 **Structural Conformance Check**:  
  Compare line-for-line against the original:
  - If a line contains code in the original, the same code must appear in the translated line.
  - If the original line is blank, the translated line must be blank.
  - Braces and block boundaries must occur in the same positions.


## 🔒 Enforcement: Line-by-Line Japanese Comment Audit
- Final QA must perform a strict sweep:
  - If any Japanese characters appear **in any comment context**, the file must be rejected.
  - Even if earlier QA checks passed, this scan supersedes them.

### ✅ Translation Integrity
- All Japanese content translated
- No placeholders remain
- Developer tone is preserved

### ✅ Structural Validity
- Line count exactly matches original
- Macros and labels untouched
- No malformed sequences

### ✅ Output Requirements
- Encoding: **UTF-16 LE with BOM**
- Line endings: **CRLF (Windows-style)**
  - Output files must use `

` line endings.
  - If the original used CRLF, your returned file must match this exactly.
  - If line endings are incorrect, the file fails QA.
  - To verify CRLF via PowerShell:
    ```powershell
    Get-Content.ile.ks -Raw | Select-String "`r`n" -NotMatch
    ```
    This should return nothing if the file uses CRLF properly.
- At least one line must differ from the original.
- If no translation was needed, explain this explicitly.

### 🚫 Examples That Must Trigger QA Failure
These must be rewritten fully — no exceptions:
```ks
var actionFunc; // Movement path計算関数
→ var actionFunc; // Movement calculation function

dm("■affine実行時間 :"+ ...) 
→ dm("Affine execution time: "+ ...)

stop(); // 停止
→ stop(); // Stop

switch(type)// Layer.typeを判定
→ switch(type) // Determine Layer.type
```

---

## ✅ Final Translator Checklist

Before submitting, confirm the following:
- [ ] No Japanese remains in any comment, including fragments like `位置`, `行列`, `設定`, `描画`, `時間`
- [ ] All visible string literals containing Japanese are translated (unless decorative)
- [ ] Inline comments on code lines have been reviewed and rewritten in plain English
- [ ] The translated file matches the original line-for-line in structure
- [ ] All Japanese terms in developer notes, variable descriptions, or parameter blocks have been replaced naturally
- [ ] You can explain the purpose of each translated line

---

## 🏷️ Optional Review Tags (Must Be Removed Before Delivery)

- `;[TODO: Clarify]` → Needs more context
- `;[GLOSSARY: Recheck]` → Term usage uncertain
- `;[ORIGINAL]` → Intentionally untranslated

---

This template is optimized for production translation workflows, especially for adult or story-heavy `.ks` visual novels. It ensures fidelity, tone, and compatibility across multiple translators or QA stages.

---


## 🧪 Sample QA Script: Japanese Comment Detection (PowerShell)
```powershell
Get-Content .\file.ks | ForEach-Object {
    $line = $_
    if ($line -match '[\u3040-\u30FF\u4E00-\u9FFF\uFF66-\uFF9D]' -and ($line -match '^\s*;|^\s*//|//|;')) {
        Write-Host "Line contains untranslated Japanese: $line"
    }
}

# Detect where code was overwritten by comments
Get-Content .\translated.ks -Raw | Select-String '^\s*//.*' | ForEach-Object {
    $lineNum = $_.LineNumber
    $orig = (Get-Content .\original.ks)[$lineNum - 1]
    if ($orig -notmatch '^\s*//|^\s*;|^\s*$' -and $_ -match '^\s*//') {
        Write-Host "⚠️ Executable code replaced by comment on line $lineNum: $($_.Line)"
    }
}

```

## 🛠 QA Automation: PowerShell Checks

To detect untranslated Japanese in quoted strings and split literals, use:

```powershell
# Find Japanese inside double-quoted strings
Select-String '"[^"]*[\u3040-\u30FF\u4E00-\u9FFF][^"]*"' .\\translated.tjs

# Detect broken/split quoted strings
Select-String '"[^"]*"\\s*\\+\\s*"[^"]*[\u3040-\u30FF\u4E00-\u9FFF]' .\\translated.tjs

# Detect Japanese inside multi-line or concatenated strings
Select-String '"[^"]*[぀-ヿ一-鿿][^"]*"' .\translated.tjs

# Detect lines ending in "+" with next line containing Japanese
Select-String '"[^"]*"\s*\+\s*"' .\translated.tjs | ForEach-Object {
    $nextLine = (Get-Content .\translated.tjs)[$_.LineNumber]
    if ($nextLine -match '[\u3040-\u30FF\u4E00-\u9FFF]') {
        Write-Host "Possible split Japanese string near line $($_.LineNumber): $($_.Line)"
    }
}

# Detect long blocks of untranslated Japanese comments
$lines = Get-Content .\translated.tjs
for ($i = 0; $i -lt $lines.Count; $i++) {
    if ($lines[$i] -match '^\s*//.*[\u3040-\u30FF\u4E00-\u9FFF]') {
        $blockStart = $i
        while ($i+1 -lt $lines.Count -and $lines[$i+1] -match '^\s*//') { $i++ }
        $blockEnd = $i
        Write-Host "Untranslated comment block: Lines $($blockStart+1) to $($blockEnd+1)"
    }
}
```

## 📖 Appendix: Common Phrase Translations
| Japanese                                      | English Translation                                  |
|----------------------------------------------|------------------------------------------------------|
| 全前景レイヤ表画面を非表示                   | Hide all foreground layer front displays             |
| 全メッセージレイヤ表画面を非表示             | Hide all message layer front displays                |
| 全メッセージレイヤ表画面、全前景レイヤ表画面を非表示にする | Hide all message and foreground layer front displays |
| 前景レイヤの透明度は完全不透明（255）に変更する | Foreground layer opacity will be set to opaque (255) |
| 使用している変数：                          | Variables used:                                      |
| Move中に呼ばれる                      | Called during movement                      |
| pathの分解                            | Break down the path                         |
| 位置 moved to                         | Move to the position                        |
| 実行時間                              | Execution time                              |
| Spline interpolationをするか         | Whether to perform spline interpolation     |
| 注意事項：                                  | Notes:                                               |
| 使い方：                                     | Usage:                                               |
---

## 📦 Tagging & Resource References

When translating lines—especially those that follow dialogue or narration patterns—ensure tagging follows the guidelines defined in the workflow.

Lines must be tagged accurately when they represent:
- **Dialogue** (spoken aloud by a character)
- **Inner Monologue** (character thinking silently, often denoted by parentheses)
- **Narration** (descriptive lines not attributed to a character)

Use these reference documents and files to ensure consistent tagging:

- 📘 `workflow.md`: Tag structure, speaker intent, audio tagging logic, and confidence scoring
- 🧠 `tts_emotions.json`: Full list of supported `{emote:*}` tags, `{fx}`, `{tts:skip}`, and emotion metadata
- 🗣️ `character.md`: Voice style guidance for clean, gagged, and internal monologue models
- 🎙️ `tts_models.json`: Declares model IDs used per character and intent
- 🏷️ `tags.md`: Optional glossary or tag expansion notes

Tags should be added within the `metadata=` field of voice macros like so:

```ks
[vo_aka s="akane_0045" metadata="{emote:fear}{intent:inner_monologue}{lang:ja}"]
```

> ⚠️ Note: The tagging system expects lines of translated dialogue to retain macro structure and be tagged contextually based on speaker, tone, and function.