# TTS Training Strategy

model_structure:
  per_character:
    clean_model: Trained on emotionally expressive dialogue excluding gagged or FX-contaminated
      lines.
    gagged_model: Trained only on lines tagged with {gagged} and/or {fx}.
    emotion_segments: Optional. Group or fine-tune using emotion-tagged subsets.
tag_usage:
  meta: Preferred tagging using meta="{gagged}{emote:cry}" on [vo_xxx] lines.
  inline_comments: Fallback using <!-- {gagged}{emote:cry} -->.
  stripping: All tags are removed before final export.
training_preparation:
  auto_split: Lines are split into folders by type (clean/gagged) and optionally by
    emotion.
  output_format: 'metadata.csv per model in format: filename|transcript|emotion'
future_upgrade:
  style_tokens: If supported, emotional tags can be passed as inference conditions.
  combined_model: Long-term goal may be unified model with multi-emotion conditioning.
