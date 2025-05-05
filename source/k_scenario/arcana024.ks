;//arcana024
*TOP
[eval exp="f.l_s024 = 1"][name_allreset]

[ANTEN blk]

;//背景：繁華街歩道・夜消灯
[bg storage="bg014d"][trans_c ruf_lr]


;[bgm009]
[bgm001]

;//立ち絵：下級冥魔Ａ
[std_zaA m ce][trans_c cross time=300]

*1443|
[fc]
[【下級Ａ】 name=下級冥魔]
「殺してやる……人間どもも、魔法少女もっ！」[pcms]

;//フェイスのみ：茜・魔法服

[std_aka m ma p1 f01 ce off]

*1444|
[fc]
[vo_aka s="akane_0132"]
[【茜】]
「そんなこと……絶対させないっ！」[pcms]

;//下級冥魔Ａ立ち絵消す

;//立ち絵：茜・魔法服
[std_aka m ma p1 f02 ce][trans_c cross time=300]

*1445|
[fc]
[vo_aka s="akane_0133"]
[【茜】]
「[技_エリュプシオン・デ・クラテール]！」[pcms]

[movie_Magic_エリュプシオン]

;//フェイスのみ・下級冥魔Ａ
[std_zaA m ce off]

[se buf=0 storage="SE1420"]

*1446|
[fc]
[【下級Ａ】 name=下級冥魔]
「うがあああああっ？　身体が燃えるうううッ！」[pcms]

[std_aka m ma p2 f01 ce][trans_c cross time=300]

*1447|
[fc]
[vo_aka s="akane_0134"]
[【茜】]
「ふう……」[pcms]

*1448|
[fc]
俺が結界内に入ったのと、茜が魔法で下級冥魔を焼き尽くして始末したのは、ほぼ同じタイミングだったようだ。[pcms]

[stopse buf=0]

*1449|
[fc]
[【主人公】]
「冥魔を倒したか。お手柄だぞ茜」[pcms]

[std_aka m ma p2 f04 ce][trans_c cross time=300]

*1450|
[fc]
[vo_aka s="akane_0135"]
[【茜】]
「うん、先生のおかげでパワーアップできたからだよ」[pcms]

*1451|
[fc]
[【主人公】]
「それは良かった。じゃあ、明日はちゃんと登校するんだぞ茜」[pcms]

;//演出：変身解除
[movie_hensin_off aka]

;//立ち絵：茜・制服
[std_aka m se p1 f01 ce][trans_c cross time=0]

*1452|
[fc]
[vo_aka s="akane_0136"]
[【茜】]
「うん。わかったよ先生」[pcms]

*1453|
[fc]
変身を解いて制服姿に戻ると、茜は素直に返事をしてくれた。[pcms]

;//背景：空・夜
[bg storage="bg001c"][trans_c cross time=1000]

*1454|
[fc]
そのまま俺は茜と二、三言葉をかわしたあと、帰宅した。[pcms]

;//→arcana016　へ
[ANTEN blk]
[jump storage="arcana016.ks" target=*TOP]

