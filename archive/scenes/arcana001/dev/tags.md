## Translation Refinement Tags

These tags are applied to mark lines that need revision for specific tone, effect, or kink alignment. They are NOT part of in-game metadata and are only used for review workflow.

### `{jazz}`

Use when the line is awkward, overly verbose, or lacks natural flow. Should be rewritten for rhythm and tone without losing emotional nuance.

### `{noboner}`

Use when a line is failing to appeal to the intended straight male audience with relevant fetishes or kinks. Should be made more stimulating.

### `{penis}`

Use when a line should emphasize something that evokes penetration, phallic presence, or a sexual focus that needs to land harder.

---

## Metadata Tags (for voice macros)

These tags are applied inside the `metadata=` attribute of `[vo_*]` macros to control audio routing and training behavior.

### Emotions (`{emote:*}`)

| Tag              | Meaning                                   |
|------------------|-------------------------------------------|
| `{emote:beg}`    | Pleading, submissive                      |
| `{emote:climax}` | Orgasmic or peak arousal                  |
| `{emote:cry}`    | Crying or sobbing                         |
| `{emote:mocking}`| Teasing or condescending                  |
| `{emote:shame}`  | Flustered or embarrassed                  |
| `{emote:pleasure}`| Moaning with arousal but no climax       |
| `{emote:fear}`   | Panic, terror, or helplessness            |
| `{emote:apologetic}` | Guilt or whimpering apologies         |
| `{emote:broken}` | Mind-broken or emotionally numb           |
| `{emote:forced_moan}` | Moaning under duress                 |
| `{emote:neutral}`| Emotionless or blank                      |

### Special Tags

| Tag         | Use                                               |
|-------------|----------------------------------------------------|
| `{fx}`      | Non-verbal sounds only (moan, gasp, etc.)          |
| `{tts:skip}`| Exclude this line from TTS dataset                 |

### Intent (`{intent:*}`)

| Tag                    | Meaning                                   |
|------------------------|-------------------------------------------|
| `{intent:dialogue}`    | Spoken aloud                              |
| `{intent:inner_monologue}` | Internal thoughts (usually in ())     |
| `{intent:narration}`   | Narrated story, not character-bound       |

### Language (`{lang:*}`)

| Tag         | Description                          |
|-------------|--------------------------------------|
| `{lang:ja}` | Japanese (default)                   |
| `{lang:en}` | English phrases in original          |
| `{lang:fr}` | French phrases or interjections      |
| `{lang:zh}` | Chinese characters or title references |