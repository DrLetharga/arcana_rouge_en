;//arcana072
*TOP
[eval exp="f.l_s072 = 1"][name_allreset]

;//背景：空・夕
[bg storage="bg001b"][trans_c cross time=1000]

;//ＳＥ：学園チャイム
[se buf1 storage="seC054"]

*4974|
[fc]
放課後になり、俺に引率されての課外活動という体裁で、魔法少女によるパトロール活動が始まる。[pcms]


[bgm003]

;//背景：学園校庭・夕方
[bg storage="bg003b"]
[std_aoi m se p1 f01 le]
[std_aka m se p1 f08 ce]
[std_mia m se p1 f01 ri][trans_c cross time=1000]

;//立ち絵：茜・制服
;//立ち絵：葵・制服
;//立ち絵：ミア・制服

*4975|
[fc]
[vo_aka s="akane_0443"]
[【茜】]
「なんだかお腹空いちゃった」[pcms]

[std_aoi m se p1 f04 le][trans_c cross time=300]

*4976|
[fc]
[vo_aoi s="aoi_0413"]
[【葵】]
「どこかでおやつを買うのがいいと思います」[pcms]

[std_mia m se p1 f04 ri][trans_c cross time=300]

*4977|
[fc]
[vo_mia s="mia_0533"]
[【ミア】]
「駅前に新しいパン屋さんができたらしいよ？」[pcms]

*4978|
[fc]
[【主人公】]
「……休憩も買い食いもかまわんが、あくまでパトロールが主体だと忘れないように」[pcms]

[std_aka m se p1 f09 ce][trans_c cross time=300]

*4979|
[fc]
[vo_aka s="akane_0444"]
[【茜】]
「はーい♪」[pcms]

;//背景：学園正門・夕方
[bg storage="bg002b"][trans_c cross time=1000]

*4980|
[fc]
なんだか遠足の引率をするような気分になりながら、俺は魔法少女たちを引き連れ、学園を後にするのだった。[pcms]

;//条件分岐発生
;//arcana070を経過している→arcana073
;//※arcana069で『冥と約束する』を選択した場合、arcana070を通過してarcana073（冥バッドエンド系）へ
;//上記以外の場合→arcana077
;//※arcana069で『今日は無理だと伝える』を選択した場合、arcana071を通過してarcana077へ

[if    exp="f.l_s070 == 1"][jump storage="arcana073.ks" target=*TOP][endif]

;[ANTEN blk]
[jump storage="arcana077.ks" target=*TOP]

