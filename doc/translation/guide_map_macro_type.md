
# 📋 Macro Type Map QA Checklist

Use this checklist during `.ks` script indexing to ensure full compliance with the Macro Type Mapping standards.

---

## ✅ Basic Checks (Every Script Pass)

- [ ] Confirm that **every line** is processed sequentially without skipping.
- [ ] Check that **every macro** (`[xxx]`) is logged.
- [ ] Check that **labels** (`*LabelName`) are separately logged as `Type = Label`.
- [ ] Check that **dialogue text** is separately logged as `Type = Dialogue`.

---

## ✅ Macro Type Validation

- [ ] For every logged macro:
  - [ ] Confirm that the Macro string matches an entry in the **Macro Type Map**.
  - [ ] If it matches, verify that the **Type assignment** is correct.
  - [ ] If it does **NOT match**, temporarily log it as `Type = Unknown`.
  - [ ] Flag all Unknowns for manual review at end of script pass.

---

## ✅ Special Handling Cases

- [ ] If an `[evcg]` macro contains a `se="..."`:
  - [ ] Split into two rows: one `CG`, one `SE`.
- [ ] If an `[evcg]` macro shares a line with `[trans_c]`:
  - [ ] Split into two rows: one `CG`, one `Move`.
- [ ] Ensure `[fc]` is logged as `Structure`, with Notes: "System/UI reset before player-facing text."
- [ ] Ensure `[wm]` is logged as `Move` (Waits for auto movement to finish).

---

## ✅ Metadata Tagging Reminders

- [ ] No `{intent:spoken}` or `{intent:inner_monologue}` assigned to `Structure` or `Move` Types.
- [ ] Only tag emotional metadata (`{emote:*}`) on true Dialogue lines.

---

## 🚩 Unknown Handling Procedure

- [ ] Log macro as-is.
- [ ] Mark `Type = Unknown`.
- [ ] In Notes, write: "Needs Macro Type assignment review."
- [ ] Review against full KiriKiri Tag Reference or Project Macros after initial indexing pass.

---

## 🛠️ Manual Follow-up Items

- [ ] At end of each `.ks` file, compile a list of macros marked Unknown.
- [ ] Confirm whether they should be appended to the Master Macro Type Map.
- [ ] Reclassify all confirmed new macros before proceeding to emotional tagging.

---

# ✅ Golden Rule

> **Never assume a macro is irrelevant just because it "looks decorative."**
>
> **If it's a macro, it must be logged, typed, and handled according to protocol. Always.**
