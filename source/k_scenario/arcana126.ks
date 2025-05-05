;//arcana126
*TOP
[eval exp="f.l_s126 = 1"][name_allreset]

[bgm006]

;//背景：空・夕
[bg storage="bg001b"][trans_c cross time=1000]

;//フェイスのみ：ミア・制服
[std_mia m se p1 f03 ce off]

*10592|
[fc]
[vo_mia s="mia_0880"]
[【ミア】]
（せんせー……わたし、せんせーにすごく会いたい）[pcms]

*10593|
[fc]
茜や葵と別れたミアは不安な気持ちのまま、彼女の大切な人の姿を探し続けた。[pcms]

;//背景：駅前繁華街・夕方
[bg storage="bg013b"]
[std_mia m se p1 f08 ce][trans_c bt time=1000]

;//立ち絵：ミア・制服

*10594|
[fc]
[vo_mia s="mia_0881"]
[【ミア】]
「せんせー……」[pcms]

*10595|
[fc]
駅前のバスターミナルに向かうその途中、繁華街の一角にあるファミレスの前で彼女は足を止めていた。[pcms]

[std_mia m se p1 f07 ce][trans_c cross time=300]

*10596|
[fc]
[vo_mia s="mia_0882"]
[【ミア】]
「せんせーっ？」[pcms]

*10597|
[fc]
彼の姿がガラス越しの向こう側に見えたからだった。[pcms]

;//背景：ファミレス店内
;mm 時間不明なので前後のシーンに合わせて下さい
[bg storage="bg016b"][trans_c cross time=1000]

;//ＳＥ：走って迫ってくる足音
[se buf=0 storage="SE0183_2"]

;//立ち絵：ミア・制服
[std_mia m se p1 f04 ce][trans_c cross time=300]

*10598|
[fc]
[vo_mia s="mia_0883"]
[【ミア】]
「せんせーっ！」[pcms]

;//フェイスのみ：ミア・制服
[std_mia xl se p1 f02 ce][trans_c cross time=300]

*10599|
[fc]
[vo_mia s="mia_0884"]
[【ミア】]
「心配したんだから！　逃げてきたなら、どうしてすぐ連絡しないのよ！」[pcms]

*10600|
[fc]
感激して抱きついたミアだったが、愛する彼の獣じみたうめきと、不気味なまでに静寂そのものを保つ周囲の環境に、違和感を抱く。[pcms]

*10601|
[fc]
[【主人公】]
「ハアっ……フシュ……っ……ンぐるううっ…！」[pcms]

[std_mia l se p1 f11 ce][trans_c cross time=300]

*10602|
[fc]
[vo_mia s="mia_0885"]
[【ミア】]
（周りに……誰もいない……それに先生のこの呼吸……普通じゃない……まさか冥魔の罠？）[pcms]

[top red cross time=50]
[bg storage="bg016b"]
[std_mia l se p1 f11 ce][trans_c cross time=300]

*10603|
[fc]
そう思った瞬間、首筋の後ろを何かに刺された。[pcms]

[std_mia m se p1 f12 ce][trans_c cross time=300]

*10604|
[fc]
[vo_mia s="mia_0886"]
[【ミア】]
「っ？」[pcms]

[std_mia m se p2 f12 ce][trans_c cross time=300]
[quake_bg vmax=10 hmax=10 time=20 accel=1 count=2 wait=false]

*10605|
[fc]
敵の攻撃だ、と直感で察したミアは思わず『せんせー』を突き飛ばすと同時に魔法少女に変身していた。[pcms]

[movie_hensin mia]
;//立ち絵：ミア・魔法服

[std_mia m ma p2 f08 ce][trans_c cross time=300]

*10606|
[fc]
[vo_mia s="mia_0887"]
[【ミア】 name=ブラン]
「ごめん、せんせー。でも今のはっ？」[pcms]

*10607|
[fc]
首筋の後ろを、針のような何かで突き刺され、注射されてしまった……ミアにわかるのは、それだけだった。[pcms]

;//立ち絵：ミズチ・オーラなし
[std_miz s le]
[std_kak s ce]
[std_mia m ma p2 f11 ri index=4][trans_c cross time=300]

*10608|
[fc]
[【ミズチ】]
「ワシが調合した活動抑制剤じゃよ」[pcms]

;//立ち絵：カクエン・オーラなし

*10609|
[fc]
[【カクエン】]
「よう、アルカナブラン。また楽しませてもらうぜェ」[pcms]

[std_mia m ma p2 f02 ri index=4][trans_c cross time=300]

*10610|
[fc]
[vo_mia s="mia_0888"]
[【ミア】 name=ブラン]
「ミズチっ……カクエンっ……せんせーに何をしたのよ！　元に戻しなさい！」[pcms]

*10611|
[fc]
マネキン人形のように無表情な主人公を見て怒鳴るミアだったが、その瞬間、身体の制御を失い、床に崩れ落ちてしまう。[pcms]

;//ＳＥ：人間が倒れる音
[se buf=0 storage="SE320_2"]
[chara_int_ri][trans_c cross time=300]

;//フェイスのみ：ミア・魔法服
[std_mia m ma p2 f12 ri off]

*10612|
[fc]
[vo_mia s="mia_0889"]
[【ミア】 name=ブラン]
「か、からだの自由……が……利かない？」[pcms]

*10613|
[fc]
[【ミズチ】]
「クカカカカカっ！　活動抑制剤を注入したと先刻、教えてやったはずじゃがのう……ククククっ！」[pcms]

*10614|
[fc]
[【カクエン】]
「ブラン、てめえの大好きな先生とやらは、ミズチの精神操作魔法で俺たちの忠実な下僕になった。そいつの目の前で犯してやる」[pcms]

*10615|
[fc]
[【ミズチ】]
「おいカクエン、まずはたっぷりと調教して、魔法少女からその魔法力を吸い上げるのが先じゃと事前に……」[pcms]

*10616|
[fc]
[【カクエン】]
「いいからやらせろよミズチ。新冥王なんだから手下で副冥王の俺にほうびをくれよ？」[pcms]

*10617|
[fc]
[【ミズチ】]
「やむを得まい……好きにせよ。いや、ワシも立ち会わせてもらうぞい。吸い上げる魔法力を独り占めされてはかなわぬ」[pcms]

*10618|
[fc]
[【カクエン】]
「へへっ、そうこなっくちゃな。さてブラン、確か前は俺のガキなんぞ孕みたくねェとか泣き言わめいてたっけな」[pcms]

[std_mia m ma p2 f13 ri off]

*10619|
[fc]
[vo_mia s="mia_0890"]
[【ミア】 name=ブラン]
「あ……ああ……」[pcms]

*10620|
[fc]
両手両足の感覚はありながらも満足に動かせなくなっているミアは抵抗しようもなかった。[pcms]

;mm 飛び先抜け
[ANTEN blk]
[jump storage="arcana127.ks" target=*TOP]
