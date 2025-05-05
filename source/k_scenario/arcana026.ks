;//arcana026
*TOP
[eval exp="f.l_s026 = 1"][name_allreset]

[ANTEN blk]

;//背景：繁華街歩道・夜消灯
[bg storage="bg014d"][trans_c ruf_lr]

[bgm001]

;//立ち絵：下級冥魔Ａ
[std_zaA m ce][trans_c cross time=300]

*1455|
[fc]
[【下級Ａ】 name=下級冥魔]
「殺してやる……人間どもも、魔法少女もっ！」[pcms]

;//フェイスのみ：葵・魔法服
[std_aoi m ma p1 f11 ce off]

*1456|
[fc]
[vo_aoi s="aoi_0111"]
[【葵】 name=ヴィオレ]
「そんなこと……させませんっ！」[pcms]

;mm ここは名前変更？

;//下級冥魔Ａ立ち絵消す

;//立ち絵：葵・魔法服
[std_aoi m ma p2 f02 ce][trans_c cross time=300]

*1457|
[fc]
[vo_aoi s="aoi_0112"]
[【葵】 name=ヴィオレ]
「[技_アメシスト・イクラティ]！」[pcms]

[movie_Magic_イクラティ]

;//フェススのみ・下級冥魔Ａ
[std_zaA m ce off]
[se buf=0 storage="SE1420"]

*1458|
[fc]
[【下級Ａ】 name=下級冥魔]
「うがあああああっ？　宝石の石つぶてが俺の身体をッ！」[pcms]

[std_aoi m ma p1 f04 ce][trans_c cross time=300]

*1459|
[fc]
[vo_aoi s="aoi_0113"]
[【葵】 name=ヴィオレ]
「……私だけで、なんとか倒せた」[pcms]

*1460|
[fc]
俺が結界内に入ったのと、葵が魔法で下級冥魔を魔法で処分したのは、ほぼ同じタイミングだったようだ。[pcms]

[stopse buf=0]

*1461|
[fc]
[【主人公】]
「冥魔を倒したのか。お手柄だな葵」[pcms]

[std_aoi m ma p1 f09 ce][trans_c cross time=300]

*1462|
[fc]
[vo_aoi s="aoi_0114"]
[【葵】 name=ヴィオレ]
「はい、これも先生のおかげでパワーアップできたからです」[pcms]

*1463|
[fc]
[【主人公】]
「それは良かった。じゃあ、明日はちゃんと登校するんだぞ葵」[pcms]

;//演出：変身解除
[movie_hensin_off aoi]
;mm 解除だから名前リセットか？

;//立ち絵：葵・制服

[std_aoi m se p1 f01 ce][trans_c cross time=0]

*1464|
[fc]
[vo_aoi s="aoi_0115"]
[【葵】 reset]
「は、はい先生……ありがとうございます」[pcms]

*1465|
[fc]
変身を解いて制服姿に戻ると、葵は素直に返事をしてくれた。[pcms]

;//背景：空・夜
[bg storage="bg001c"][trans_c cross time=1000]

*1466|
[fc]
この日、俺は葵と二、三の言葉をかわしたあとに帰宅した。[pcms]

;//→arcana016　へ
[ANTEN blk]
[jump storage="arcana016.ks" target=*TOP]

