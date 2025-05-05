;//arcana078
*TOP
[eval exp="f.l_s078 = 1"][name_allreset]

;//このシーンは三人称

[bgm012]

;//背景：駅前・夕方
[bg storage="bg012b"]

;//立ち絵：茜・制服
;//立ち絵：葵・制服
;//立ち絵：ミア・制服

[std_aoi m se p1 f08 le]
[std_aka m se p2 f08 ce]
[std_mia m se p1 f03 ri][trans_c cross time=1000]

*5853|
[fc]
[vo_aka s="akane_0490"]
[【茜】]
「先生……大丈夫だよね？」[pcms]

*5854|
[fc]
[vo_aoi s="aoi_0457"]
[【葵】]
「魔法で止血できたから、致命傷だけは避けられたと思うけど……あの出血量はちょっと危ないかも」[pcms]

*5855|
[fc]
[vo_mia s="mia_0580"]
[【ミア】]
「大丈夫だって。わたし達の先生がそう簡単に死ぬわけないじゃない」[pcms]

[std_aoi m se p1 f07 le]
[std_aka m se p2 f07 ce][trans_c cross time=1000]

*5856|
[fc]
元気づけるように言ったつもりだったが、死という言葉に反応して二人の顔が青ざめる。[pcms]

[std_mia m se p1 f08 ri][trans_c cross time=300]

*5857|
[fc]
[vo_mia s="mia_0581"]
[【ミア】]
「ごめん、迂闊だったわ……」[pcms]

*5858|
[fc]
遊園地からここまで、三人は口を開くことが出来なかった。[pcms]

*5859|
[fc]
ようやく口を開けたと思ったらこの有様である。[pcms]

*5860|
[fc]
葵に至っては、今も頭の中が混乱していて整理が出来ていない。[pcms]

[std_aoi m se p1 f07 le][trans_c cross time=1000]

*5861|
[fc]
[vo_aoi s="aoi_0458"]
[【葵】]
「藍も……魔法少女になってたんだ。なのに、どうして冥魔少女だなんて」[pcms]

*5862|
[fc]
[vo_aoi s="aoi_0459"]
[【葵】]
「やっぱり、あの時私が藍の手を離してしまったのが全部悪いんだ……」[pcms]

[std_aka m se p1 f01 ce][trans_c cross time=300]

*5863|
[fc]
[vo_aka s="akane_0491"]
[【茜】]
「でも、藍ちゃんが生きてたってことは事実なんだし、そこは喜んだ方がいいよ」[pcms]

[std_mia m se p1 f07 ri][trans_c cross time=300]

*5864|
[fc]
[vo_mia s="mia_0582"]
[【ミア】]
「でも、敵になってるってことは、とても喜べる状況じゃないけどね」[pcms]

*5865|
[fc]
再び静寂が訪れると、こうして三人でいること自体が辛く感じてしまう。[pcms]

*5866|
[fc]
魔法少女が三人もいながら、大事な人を守ることが出来なかったという事実は、彼女達の心に重くのしかかっていた。[pcms]

*5867|
[fc]
そして誰からともなく、それぞれ別の方向に向けて歩き出すのだった。[pcms]

;//条件分岐発生（四択）
;//『arcana052を通過している』→arcana082
;//『arcana060を通過している』→arcana085
;//『arcana068を通過している』→arcana088
;//『それ以外の場合』→arcana079

[ANTEN blk]

[if    exp="f.l_s052 == 1"][jump storage="arcana082.ks" target=*TOP]
[elsif exp="f.l_s060 == 1"][jump storage="arcana085.ks" target=*TOP]
[elsif exp="f.l_s068 == 1"][jump storage="arcana088.ks" target=*TOP]
[endif]
[jump storage="arcana079.ks" target=*TOP]
