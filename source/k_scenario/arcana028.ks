;//arcana028
*TOP
[eval exp="f.l_s028 = 1"][name_allreset]

[ANTEN blk]

;//背景：繁華街歩道・夜消灯
[bg storage="bg014d"][trans_c ruf_lr]

[bgm001]

;//立ち絵：下級冥魔Ａ
[std_zaA m ce][trans_c cross time=300]


*1467|
[fc]
[【下級Ａ】 name=下級冥魔]
「殺してやる……人間どもも、魔法少女もっ！」[pcms]

;//フェイスのみ：ミア・魔法服
[std_mia m ma p1 f11 ce off]
*1468|
[fc]
[vo_mia s="mia_0129"]
[【ミア】 name=ブラン]
「それは無理よ。だってあなたじゃ、わたしを殺せないし、その前に、そっちが死ぬもの」[pcms]

;mm 変身中だから名前変更？

;//下級冥魔Ａ立ち絵消す

;//立ち絵：ミア・魔法服
[std_mia m ma p1 f02 ce][trans_c cross time=300]

*1469|
[fc]
[vo_mia s="mia_0130"]
[【ミア】 name=ブラン]
「[技_ラミ・ドゥ・リュミエール]！」[pcms]

;//フェススのみ・下級冥魔Ａ
[std_zaA m ce off]
[se buf=0 storage="SE1420"]

*1470|
[fc]
[【下級Ａ】 name=下級冥魔]
「うがあああああっ？　光の剣が俺の身体をッ！」[pcms]

[std_mia m ma p1 f01 ce][trans_c cross time=300]

*1471|
[fc]
[vo_mia s="mia_0131"]
[【ミア】 name=ブラン]
「……ま、こんなものね。楽勝、楽勝♪」[pcms]

*1472|
[fc]
俺が結界内に入ったのと、ミアが魔法で下級冥魔を仕留めたのは、ほぼ同じタイミングだったようだ。[pcms]

[stopse buf=0]

*1473|
[fc]
[【主人公】]
「冥魔を倒したのか。お手柄だぞミア」[pcms]

[std_mia m ma p1 f04 ce][trans_c cross time=300]

*1474|
[fc]
[vo_mia s="mia_0132"]
[【ミア】 name=ブラン]
「いちおー、先生のおかげでパワーアップできたからって言ってあげるから、感謝してよね」[pcms]

*1475|
[fc]
[【主人公】]
「まあ、それはそれとしだ、明日はちゃんと登校しろよミア？」[pcms]


;mm 変身解除したから名前リセット
[movie_hensin_off mia]
;//立ち絵：ミア・制服
[std_mia m se p1 f01 ce][trans_c cross time=0]

*1476|
[fc]
[vo_mia s="mia_0133"]
[【ミア】 reset]
「気が向いたら、検討してあげてもいいよ、せんせー」[pcms]

*1477|
[fc]
変身を解いて制服姿に戻ると、ミアはふざけた返事をしてくれた。[pcms]

;//背景：空・夜
[bg storage="bg001c"][trans_c cross time=1000]

*1478|
[fc]
この日はそこでミアと別れのあいさつを交わして帰宅した。[pcms]

;//→arcana016　へ
[ANTEN blk]
[jump storage="arcana016.ks" target=*TOP]


