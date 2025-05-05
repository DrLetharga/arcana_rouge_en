;//arcana093
*TOP
[eval exp="f.l_s096 = 1"][name_allreset]

;//暗転

;//このシーンは三人称

;//背景：病室・日中
[bg storage="bg008a"][trans_c rl time=300]

;//ＳＥ：勢いよく引き戸を開ける音
[se buf=0 storage="seA004"]

;//立ち絵：茜・制服
;//立ち絵：葵・制服
;//立ち絵：ミア・制服

[std_aoi m se p1 f07 le]
[std_aka m se p1 f07 ce]
[std_mia m se p1 f08 ri][trans_c cross time=300]

*7514|
[fc]
[vo_aka s="akane_0595"]
[【茜】]
「はぁっ、はぁっ……先生！」[pcms]

*7515|
[fc]
[vo_aoi s="aoi_0535"]
[【葵】]
「いない……やっぱりミズチと……」[pcms]

[std_mia m se p1 f06 ri][trans_c cross time=300]

*7516|
[fc]
[vo_mia s="mia_0706"]
[【ミア】]
「もうっ、分かるけどいくらなんでも判断早すぎでしょ！」[pcms]

*7517|
[fc]
彼からのメッセージを受け取った三人は、すぐに踵を返して病室へと戻ってきた。[pcms]

*7518|
[fc]
だが、彼の姿はもちろん冥魔の姿もなく、あるのはメッセージを送ったであろうスマホが無造作にベッドの上に置かれているだけだ。[pcms]

[std_aka m se p2 f03 ce][trans_c cross time=300]

*7519|
[fc]
[vo_aka s="akane_0596"]
[【茜】]
「ミズチからの交換条件で、冥を解放してもらえるから行ってくるって……罠だったらどうするのよ、もうっ！」[pcms]

[std_aoi m se p1 f03 le][trans_c cross time=300]

*7520|
[fc]
[vo_aoi s="aoi_0536"]
[【葵】]
「でも、もし私が先生と同じ立場なら、同じことをしてると思う……」[pcms]

[std_mia m se p1 f02 ri][trans_c cross time=300]

*7521|
[fc]
[vo_mia s="mia_0707"]
[【ミア】]
「よりにもよって、わたし達が帰った後にやってくるなんて卑怯じゃない！」[pcms]

*7522|
[fc]
茜達に送られてきたメッセージは、至極簡潔なものだった。[pcms]

*7523|
[fc]
『冥を助ける為にミズチの交換条件に乗った。後を頼む』[pcms]

[std_aka m se p2 f08 ce][trans_c cross time=300]

*7524|
[fc]
[vo_aka s="akane_0597"]
[【茜】]
「後を頼むって言われても、どうすればいいの？」[pcms]

[std_mia m se p1 f08 ri][trans_c cross time=300]

*7525|
[fc]
[vo_mia s="mia_0708"]
[【ミア】]
「それは……先生の居場所を探し出して取り返すしか」[pcms]

[std_aoi m se p1 f08 le][trans_c cross time=300]

*7526|
[fc]
[vo_aoi s="aoi_0537"]
[【葵】]
「せめて行き先が分かれば……」[pcms]

*7527|
[fc]
悔しさに三人とも拳を握りしめるが、いち早く立ち直ったのは茜だった。[pcms]

[std_aka m se p1 f11 ce][trans_c cross time=300]

*7528|
[fc]
[vo_aka s="akane_0598"]
[【茜】]
「だめかもしれないけど、辺りを探してみようよ。冥魔の痕跡がどこかに残ってるかもしれない」[pcms]

[std_aoi m se p1 f01 le][trans_c cross time=300]

*7529|
[fc]
[vo_aoi s="aoi_0538"]
[【葵】]
「そうね。ここでじっとしていても何も解決しないし」[pcms]

[std_mia m se p2 f11 ri][trans_c cross time=300]

*7530|
[fc]
[vo_mia s="mia_0709"]
[【ミア】]
「それじゃ、手分けして探しましょ。何かあったら、すぐに連絡すること！」[pcms]

*7531|
[fc]
三人は大きく頷き、病室を駆けだしていった。[pcms]

;//条件分岐発生（四択）
;//『arcana049を通過している』→arcana120
;//『arcana057を通過している』→arcana123
;//『arcana065を通過している』→arcana126
;//『それ以外の場合』→arcana097

[ANTEN blk]

[if    exp="f.l_s049 == 1"][jump storage="arcana120.ks" target=*TOP]
[elsif exp="f.l_s057 == 1"][jump storage="arcana123.ks" target=*TOP]
[elsif exp="f.l_s065 == 1"][jump storage="arcana126.ks" target=*TOP]
[endif]
[jump storage="arcana097.ks" target=*TOP]
