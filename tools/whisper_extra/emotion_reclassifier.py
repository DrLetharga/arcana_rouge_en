class EmotionReclassifier:
    def __init__(self):
        self.rules = {
            "climax": ["いく", "イク", "だめぇ", "出る", "漏れ", "こぼれる", "たまら", "イっちゃう", "はぁんっ", "おかしくなっちゃう"],
            "beg": ["お願い", "やめて", "いや", "助けて", "止めて", "もっと", "許して"],
            "cry": ["泣", "うええん", "しくしく", "涙", "嗚咽", "ひくっ", "ぐすっ"],
            "apologetic": ["ごめん", "すみません", "申し訳", "謝っ"],
            "shame": ["恥ずかしい", "赤く", "顔が熱い", "見ないで", "そんな…", "ばか…", "んぅ…"],
            "fear": ["怖い", "助けて", "いや", "やめて", "殺される", "逃げ", "やだ"],
            "broken": ["……", "おかしくな", "感じちゃう", "もうどうでも", "わからない", "もうやだ"],
            "forced_moan": ["あっ", "んっ", "ふぁ", "あぅ", "いやっ", "だめ", "はぅ", "ぅっ"],
            "mocking": ["ふふ", "くす", "クスクス", "あらあら", "笑って", "からかって"],
            "pleasure": ["気持ち", "いい", "好き", "もっとして", "ふぅ", "んん", "とろける"],
        }

    def classify(self, text, pitch_std=None, wps=None):
        lowered = text.lower()
        for label, keywords in self.rules.items():
            if any(k in lowered for k in keywords):
                return label

        # Fallback based on pitch and pacing for moaning or brokenness
        if pitch_std is not None and wps is not None:
            if pitch_std < 8 and wps < 2.0:
                return "broken"
            elif wps < 1.5 and pitch_std > 15:
                return "forced_moan"

        return "neutral"

    def apply(self, df):
        df = df.copy()
        for i, row in df.iterrows():
            if row["emotion"] == "{tts:skip}" or not row["text"].strip():
                continue
            reclassified = self.classify(
                row["text"],
                row.get("pitch_stddev", None),
                row.get("words_per_sec", None)
            )
            df.at[i, "emotion_flagged"] = row["emotion"]
            df.at[i, "emotion"] = reclassified
        return df