;//arcana010
*TOP
[eval exp="f.l_s010 = 1"][name_allreset]

;//このシーンの話者：ミアはブランで

;//背景：学園正門・夜照明
;[bg storage="bg002c"][trans_c cross time=1000]

*920|
[fc]
これは……ミアの気配だろうか。[pcms]

*921|
[fc]
覚えのある感覚に、俺の足は自然とその方向へと向かっていた。[pcms]

;//背景：駅前繁華街・夜照明
[bg storage="bg013c"][trans_c ruf_lr]

*922|
[fc]
気配がはっきりしてくるにつれて、胸騒ぎが大きくなっていく。[pcms]

;//ＳＥ：水滴が水面に落ちる音
[HAMON storage="bg013c"]

*923|
[fc]
突然、プールに飛び込んだ時のような肌感覚の変化を覚える。[pcms]

*924|
[fc]
例の結界の中に入ったということか……つまり、ここでミアが冥魔と戦っているということだ。[pcms]

;[stopbgm]

;//ＳＥ：吹き飛ばされる音
[se buf=0 storage="seB013"]

*925|
[fc]
物陰から何かが飛んできて地面を転がる。[pcms]

*926|
[fc]
だがそれはすぐに立ち上がって、吹き飛ばされた方を睨み付けていた。[pcms]

;//立ち絵：ミア・魔法服・破損
[std_mia m mad p2 f12 ce][trans_c cross time=300]

*927|
[fc]
[vo_mia s="mia_0067"]
[【ミア】 name=ブラン]
「こ、この程度で勝ったと思ったら大間違いなんだから！」[pcms]

*928|
[fc]
[【主人公】]
「落ち着けミア！」[pcms]

[std_mia m mad p2 f05 ce][trans_c cross time=300]

*929|
[fc]
[vo_mia s="mia_0068"]
[【ミア】 name=ブラン]
「せんせー？　いつの間に？」[pcms]

*930|
[fc]
ミアの姿はあちこち衣装が破れ、肌が露出している。[pcms]

*931|
[fc]
[【主人公】]
「す、すまない！」[pcms]

*932|
[fc]
ちらりと見えた薄い胸板と乳首に思わずドキリとし、目をそらしてしまう。[pcms]

[std_mia m mad p2 f02 ce][trans_c cross time=300]

*933|
[fc]
[vo_mia s="mia_0069"]
[【ミア】 name=ブラン]
「きゃー！　せんせーのエッチ！　ヘンタイ！　ってそんな場合じゃないわっ！」[pcms]


[bgm009]

;//立ち絵：カクエン・オーラなし
[std_kak m ce][trans_c cross time=300]

*934|
[fc]
[【カクエン】]
「けっ、お仲間の魔法少女が来たかと楽しみにしてたら、人間の男だけかよ」[pcms]

*935|
[fc]
ミアはカクエンとかいう冥魔と戦っていたのか。いくら魔法の力があるとはいえ、体格差だけでも絶望的だ。[pcms]

*936|
[fc]
[【主人公】]
「逃げるぞミア。走れるか？」[pcms]

[std_mia m mad p1 f03 ce][trans_c cross time=300]

*937|
[fc]
[vo_mia s="mia_0070"]
[【ミア】 name=ブラン]
「さっきふっとばされた時、足をくじいちゃったみたい。もう走れないよ」[pcms]

*938|
[fc]
[【主人公】]
「だったら俺がおとりに……いや待て、そんなことしなくても」[pcms]

[chara_int_all][trans_c cross time=300]

[se buf=0 storage="seD015"]
[赤フラ]


*939|
[fc]
俺は自分の人差し指の根本にかじりつき、その肉を食いちぎった。ずきずきする痛みをこらえながら、それでミアの身体に触れる。[pcms]

*940|
[fc]
次の瞬間、ミアの全身が輝き、みるみる衣装が修復されていくと同時に、その小さな体に魔法力がみなぎってゆくのが、俺にもわかった。[pcms]

[bgm001]

[std_mia m mad p2 f05 ce][trans_c cross time=300]

;魔法服回復
[魔法服回復 mia_p2]

;//立ち絵：ミア・魔法服

[std_mia m ma p2 f04 ce][trans_c bt time=1000]

*941|
[fc]
[vo_mia s="mia_0071"]
[【ミア】 name=ブラン]
「せんせー、ありがとう。後で治してあげるから待ってて」[pcms]

*942|
[fc]
俺の血に触れることで魔法少女たちが飛躍的にパワーアップできるということを思い出すことができて良かった。[pcms]

[std_kak m ce][trans_c cross time=300]

*943|
[fc]
[【カクエン】]
「なッ……またその力かよ？　けど、たった一人だけなら！」[pcms]

*944|
[fc]
カクエンがその巨大な腕を振り回してミアに迫る。[pcms]

[std_mia m ma p2 f11 ce][trans_c cross time=300]

*945|
[fc]
[vo_mia s="mia_0072"]
[【ミア】 name=ブラン]
「[技_ル・ジュジュモン・ドゥ・ジュ]！」[pcms]

[movie_Magic_ジュジュモン]


[se buf=0 storage="SE1279"]

[std_kak m ce][trans_c cross time=300]
[quake_chara ch=kak vmax=20 hmax=20 time=20 accel=1 count=4 wait=false]

*946|
[fc]
だが、ミアが放った魔法は、そのカクエンの巨体をも飲み込むかのような光の槍となって圧倒していく。[pcms]

[std_kak m ce][trans_c cross time=300]

*947|
[fc]
[【カクエン】]
「ちきしょうッ！　次は必ず半殺しにして、犯しまくってやる！」[pcms]


;//カクエン立ち絵消す

[chara_int_all][trans_c cross time=300]
[stop_quake_chara ch=kak]

*948|
[fc]
ダメージを受けながらもカクエンは直撃だけは回避したらしく、いかにも悪役な捨てゼリフを残し、走り去っていった。[pcms]

[fadeoutbgm time=1000]

[std_mia m ma p2 f01 ce][trans_c cross time=300]

*949|
[fc]
[vo_mia s="mia_0073"]
[【ミア】 name=ブラン]
「魔法少女アルカナブランの手にかかれば、あの程度の冥魔は雑魚も同然ね」[pcms]

*950|
[fc]
[【主人公】]
「その雑魚相手に吹っ飛ばされて、おまけに足をくじいた魔法少女がいるらしいな」[pcms]

[std_mia l ma p1 f09 ce][trans_c cross time=300]

*951|
[fc]
[vo_mia s="mia_0074"]
[【ミア】 name=ブラン]
「やだなー、せんせー。細かいことは気にしない、気にしない♪」[pcms]

*952|
[fc]
笑いながらミアは近付いてきて俺の指を回復魔法で治してくれた。間近に迫ったその姿に俺は……奇妙な興奮を覚えてしまった。[pcms]


[se buf=1 storage="seB023" loop]
[赤フラ time=1000]


*953|
[fc]
[【主人公】]
「……ミア」[pcms]

[std_mia l ma p1 f01 ce][trans_c cross time=300]

*954|
[fc]
[vo_mia s="mia_0075"]
[【ミア】 name=ブラン]
「なあに、せんせー？」[pcms]

;//条件分岐
;//『arcana005』を経過→arcana805
;//『arcana011』を経過→arcana805
;//『arcana005』と『arcana011』を経過→arcana805
;//上記以外→arcana804
;//（最初に主人公が犯す場合）

;mm ミアルート以外を踏んでるかどうかだから005か008じゃね？

;[ANTEN blk]
[if    exp="f.l_s005 == 1 && f.l_s008 == 1"][jump storage="arcana805.ks" target=*TOP]
[elsif exp="f.l_s005 == 1 && f.l_s008 == 0"][jump storage="arcana805.ks" target=*TOP]
[elsif exp="f.l_s005 == 0 && f.l_s008 == 1"][jump storage="arcana805.ks" target=*TOP]
[endif]
[jump storage="arcana804.ks" target=*TOP]

