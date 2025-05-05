;//arcana012
*TOP
[eval exp="f.l_s012 = 1"][name_allreset]

;//背景：駅前繁華街・夜
;[bg storage="bg013c"][trans_c cross time=1000]

;//立ち絵：ミア・制服

[std_mia l se p1 f01 ce][trans_c cross time=300]

*1111|
[fc]
[vo_mia s="mia_0125"]
[【ミア】]
「さーて、せんせーはこれで、わたしには絶対服従のヘンタイ教師にクラスチェンジしてくれたわけだけど」[pcms]

*1112|
[fc]
[【主人公】]
「さっきのことは全面的に俺が悪いが、その絶対服従のヘンタイ教師ってのにクラスチェンジなんかしてないぞ！」[pcms]

[std_mia l se p1 f05 ce][trans_c cross time=300]

*1113|
[fc]
[vo_mia s="mia_0126"]
[【ミア】]
「えー？　これからは、わたしのために、流行のお店の行列に並んだり、夏と冬はコスプレに付き合ってくれたりするんでしょ？」[pcms]

*1114|
[fc]
[【主人公】]
「しない！　断じてしないぞ！」[pcms]

[std_mia l se p1 f06 ce][trans_c cross time=300]

*1115|
[fc]
[vo_mia s="mia_0127"]
[【ミア】]
「ちぇーっ、これからは、先生の身体でエッチな漫画とかＢＬ漫画のウソを検証しようと思ってたのに」[pcms]

*1116|
[fc]
[【主人公】]
「それも断る！」[pcms]

[std_mia l se p1 f09 ce][trans_c cross time=300]

*1117|
[fc]
[vo_mia s="mia_0128"]
[【ミア】]
「ざんねーん♪　それじゃおやすみなさい、せんせー♪」[pcms]

[se buf=0 storage="SE0183_2"]
;//ミア立ち絵消す
[chara_int_all][trans_c cross time=300]

*1118|
[fc]
[【主人公】]
「あ……」[pcms]

*1119|
[fc]
俺が返事するよりも早く、ミアは恥ずかしそうに顔を赤らめて、逃げるように走り去っていた。[pcms]

*1120|
[fc]
[【主人公】]
「本当にごめんなミア……」[pcms]

*1121|
[fc]
虚勢を張っていたというよりは、俺に無駄な配慮をさせないためのおどけた態度だったと気付いたのは、彼女が去ってからだった。[pcms]



;//→arcana016
[ANTEN blk]
[jump storage="arcana016.ks" target=*TOP]

