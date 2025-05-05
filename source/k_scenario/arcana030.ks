;//arcana030
*TOP
[eval exp="f.l_s030 = 1"][name_allreset]

;//背景：学園正門・日中
[bg storage="bg002a"][trans_c cross time=1000]

*1486|
[fc]
今日も三人は休みだった。[pcms]

*1487|
[fc]
おそらくは、先日の冥魔との戦いで疲労したせいだろう。[pcms]

*1488|
[fc]
話が聞けるのは明日以降だな……。[pcms]

;//時間経過
[ANTEN blk]

;//背景：学園正門・夜照明
[bg storage="bg002c"][trans_c cross time=1000]

[bgm010]

*1489|
[fc]
夜、仕事を終えて帰ろうとすると、またあの感覚が襲ってきた。[pcms]

*1490|
[fc]
[【主人公】]
「まったく、冥魔という奴は毎日のように現れるんだな……」[pcms]

*1491|
[fc]
昨日と同じように、また魔法少女の反応が不快感に上書きされていく。[pcms]

*1492|
[fc]
俺は意識を集中し、彼女達の下へ向かうことにした。[pcms]



;//選択肢分岐（３択）
;//『茜の下に向かう』→arcana023
;//『葵の下に向かう』→arcana025
;//『ミアの下に向かう』→arcana027

[jump storage="arcana021_022_029_030_sel.ks" target=*TOP]
