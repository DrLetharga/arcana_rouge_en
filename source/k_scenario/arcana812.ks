;//arcana812
*TOP
[eval exp="f.l_s812 = 1"][name_allreset]

;//このシーンの話者：ミアはブランで
;mm このあと制服だから名前リセットじゃねえのかなぁ

;//背景・黒背景

*11007|
[fc]
[vo_mia s="mia_0981"]
[【ミア】]
「……んせー？　せんせー？」[pcms]

*11008|
[fc]
[【主人公】]
「う……ん……」[pcms]

;//フェードイン
[bgm007]

;//背景：駅前繁華街・夜
[bg storage="bg013c"][trans_c cross time=1000]


*11009|
[fc]
[【主人公】]
「う……うっ……！」[pcms]

*11010|
[fc]
ひどく頭が重い。いや、痛い。まるで、バットで頭を殴られたようだ。喧嘩をした覚えはないのだが……。[pcms]


*11011|
[fc]
[vo_mia s="mia_0982"]
[【ミア】 name=？？？ off]
「目が覚めた、せんせー？」[pcms]

*11012|
[fc]
[【主人公】]
「む……」[pcms]

*11013|
[fc]
聞き覚えのある声が、耳に届く。俺は重い頭をどうにか持ち上げて、声がする方へと顔を向けた。[pcms]

;//立ち絵：ミア・制服

[std_mia l se p1 f01 ce][trans_c cross time=300]

*11014|
[fc]
[【主人公】]
「ミア……？」[pcms]

[std_mia l se p1 f06 ce][trans_c cross time=300]

*11015|
[fc]
[vo_mia s="mia_0983"]
[【ミア】 reset on]
「ふん」[pcms]

*11016|
[fc]
気のせいだろうか。ミアの視線が、やけに冷たい。[pcms]

;//条件分岐
;//『arcana807』を経過→arcana814
;//『arcana810』を経過→arcana814
;//『arcana807』と『arcana810』を経過→arcana814

;[ANTEN blk]
[if    exp="f.l_s807 == 1 && f.l_s810 == 0"][jump storage="arcana814.ks" target=*TOP]
[elsif exp="f.l_s807 == 0 && f.l_s810 == 1"][jump storage="arcana814.ks" target=*TOP]
[elsif exp="f.l_s807 == 1 && f.l_s810 == 1"][jump storage="arcana814.ks" target=*TOP]
[endif]
;mm 上記以外の指定が無いんだが813か？
[jump storage="arcana813.ks" target=*TOP]

