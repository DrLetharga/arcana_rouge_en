;//arcana116
*TOP
[eval exp="f.l_s116 = 1"][name_allreset]

[bgm004]
;//背景：学園資料室・日中
[bg storage="bg007a"][trans_c cross time=1000]

*9566|
[fc]
あれから数日、冥魔の影はなりをひそめ、平和な日々が戻ってきた。[pcms]

*9567|
[fc]
とはいえ、茜やミア、葵は今日も資料室に来て楽しく遊んでいる。[pcms]

;//立ち絵：茜・制服
;//立ち絵：葵・制服
;//立ち絵：ミア・制服
[std_aoi m se p1 f01 le]
[std_aka m se p1 f01 ce]
[std_mia m se p1 f01 ri][trans_c cross time=300]

*9568|
[fc]
[vo_aka s="akane_0778"]
[【茜】]
「ミアちゃん、帰りにクレープ屋さん寄っていかない？　新しいメニューが追加されたらしいよ」[pcms]

[std_mia m se p1 f04 ri][trans_c cross time=300]

*9569|
[fc]
[vo_mia s="mia_0819"]
[【ミア】]
「いいわね、茜も最近そういう話題に敏感になったじゃない」[pcms]

*9570|
[fc]
[vo_aka s="akane_0779"]
[【茜】]
「ふっふっふ、あたしだってアンテナを高くしないとね」[pcms]

[std_aka m se p1 f04 ce][trans_c cross time=300]

*9571|
[fc]
[vo_aka s="akane_0780"]
[【茜】]
「葵ちゃんもどう？　帰りにクレープ屋さん」[pcms]

[std_aoi m se p1 f09 le][trans_c cross time=300]

*9572|
[fc]
[vo_aoi s="aoi_0770"]
[【葵】]
「えっ？　あ……うん、行こうかな」[pcms]

[std_aka m se p1 f09 ce][trans_c cross time=300]

*9573|
[fc]
[vo_aka s="akane_0781"]
[【茜】]
「よし、決定！」[pcms]

*9574|
[fc]
三人は相変わらず仲が良くて、話を片手間に聞いているだけでもほっこりする。[pcms]

;//ＳＥ：スマホの着信音
[se buf=0 storage="seC005"]

*9575|
[fc]
手元に置いてあったスマホが着信を知らせてくる。[pcms]

*9576|
[fc]
画面を見ると葵の妹、藍からだ。[pcms]

[stopse buf=0]
;[se buf=0 storage="seC002"]

*9577|
[fc]
[【主人公】]
「もしもし藍か。どうした？」[pcms]

;//このシーンの話者：冥は藍で

;mm 立ちキャラはメイをシルエットで。加算でやっちゃうか画像を別途つくるかは保留

[std_mei m si p1 f01 ce off]

*9578|
[fc]
[vo_mei s="mei_0897"]
[【冥】 name=藍]
「あ、お兄さん。土曜日空いてる？　お兄さんのところに遊びに行きたいんだけど」[pcms]

;//電話越し　音声加工

*9579|
[fc]
[【主人公】]
「土曜？　まあいいけど。でも、うちに来ても大して何もないぞ？」[pcms]

[std_mei m si p1 f04 ce off]

*9580|
[fc]
[vo_mei s="mei_0898"]
[【冥】 name=藍]
「いいよ、お兄さんと遊ぶのが目的なんだし」[pcms]

;//電話越し　音声加工

[std_aka m se p1 f04 ce][trans_c cross time=300]

*9581|
[fc]
[vo_aka s="akane_0782"]
[【茜】]
「えっ、藍ちゃん、先生の家に遊びに行くの？　あたしも行きたい！」[pcms]

[std_mia m se p1 f01 ri][trans_c cross time=300]

*9582|
[fc]
[vo_mia s="mia_0820"]
[【ミア】]
「わたしも行くわよ。先生を独り占めなんてさせないんだからね！」[pcms]

[std_aoi m se p1 f04 le][trans_c cross time=300]

*9583|
[fc]
[vo_aoi s="aoi_0771"]
[【葵】]
「…………」[pcms]

[chara_int_le][trans_c cross time=300]
[std_mei m si p1 f09 ce off]

*9584|
[fc]
[vo_mei s="mei_0899"]
[【冥】 name=藍]
「それじゃ、土曜日楽しみにしてるね」[pcms]

;//電話越し　音声加工

*9585|
[fc]
藍との電話が終わると、茜とミアは土曜日何をするかの話に花を咲かせ始める。[pcms]

*9586|
[fc]
電話している最中、葵が静かに出て行ったのを見ていた俺は、その様子がどうにも気になった。[pcms]

*9587|
[fc]
[【主人公】]
「ちょっとトイレに行ってくる」[pcms]

;//ＳＥ：ドアを開ける音
[se buf=0 storage="SE0203"]

;//背景：学園廊下・日中
[bg storage="bg005a"][trans_c c_lr time=1000]

*9588|
[fc]
二人を置いて廊下にでると、葵はちょうど階段の辺りにいた。[pcms]

*9589|
[fc]
そのまま階段を上がっていくのが見えて、俺はその背中を追い掛けていく。[pcms]

*9590|
[fc]
葵は俺に気付かないまま、そのまま屋上に行ってしまった。[pcms]

;//背景：学園屋上・日中
[bg storage="bg009a"][trans_c cross time=1000]

;//ＳＥ：屋上のドアを開ける音
[se buf=0 storage="SE0214_3"]

*9591|
[fc]
屋上に出ると、気持ちいい風が頬を撫でる。[pcms]

*9592|
[fc]
葵はベンチに一人座っていて、他には誰もいない。[pcms]

*9593|
[fc]
どうやら、俺が追い掛けてきたことも気付いていないようだ。[pcms]

[std_aoi s se p1 f06 ce][trans_c cross time=300]

*9594|
[fc]
[vo_aoi s="aoi_0772"]
[【葵】]
「はぁっ……」[pcms]

*9595|
[fc]
[【主人公】]
「隣、座っていいか？」[pcms]

[std_aoi m se p1 f05 ce][trans_c cross time=300]

[quake_chara ch=aoi vmax=0 hmax=20 time=80 count=1]

*9596|
[fc]
[vo_aoi s="aoi_0773"]
[【葵】]
「ふぇっ、先生！？　……あ、はい。どうぞ」[pcms]

[move_chara ch=aoi pos=lc time=500 accel=1 wm]
[chara_int_all]
[std_aoi m se p1 f04 lc][trans_c cross time=300]

*9597|
[fc]
葵が少し席を移動し、隣を開けてくれる。[pcms]

*9598|
[fc]
俺が隣に座ると、葵は俯いて黙り込んでしまった。[pcms]

[std_aoi l se p1 f07 lc][trans_c cross time=300]

*9599|
[fc]
[【主人公】]
「今日……というか、最近ちょっと暗いじゃないか。藍と何かあったのか？」[pcms]

[std_aoi l se p1 f08 lc][trans_c cross time=300]

*9600|
[fc]
[vo_aoi s="aoi_0774"]
[【葵】]
「藍は……あんまり関係ないです」[pcms]

*9601|
[fc]
あんまり？　ということは、全く関係していないということか。[pcms]

*9602|
[fc]
[【主人公】]
「良かったら話を聞くぞ。今なら俺以外誰もいないし」[pcms]

[std_aoi l se p1 f01 lc][trans_c cross time=300]

*9603|
[fc]
[vo_aoi s="aoi_0775"]
[【葵】]
「……はい」[pcms]

*9604|
[fc]
小さく頷いて、俺の服の袖をちょんと掴む。[pcms]

*9605|
[fc]
そして、ゆっくりと話し始めた。[pcms]

[std_aoi l se p1 f03 lc][trans_c cross time=300]

*9606|
[fc]
[vo_aoi s="aoi_0776"]
[【葵】]
「先生……最近、茜ちゃん達や藍と話してばっかりだから……」[pcms]

*9607|
[fc]
[【主人公】]
「そうだったか？　……そうか、言われてみるとそうかもしれないな」[pcms]

[std_aoi l se p1 f07 lc][trans_c cross time=300]

*9608|
[fc]
[vo_aoi s="aoi_0777"]
[【葵】]
「私、茜ちゃんみたいに積極的になれないですし……」[pcms]

*9609|
[fc]
なるほど、それでさっき資料室をそっと出て行ってしまったのか。[pcms]

*9610|
[fc]
[【主人公】]
「葵は、甘えたいけど甘えられなくて拗ねてたんだな」[pcms]

[std_aoi l se p1 f08 ho lc][trans_c cross time=300]

*9611|
[fc]
[vo_aoi s="aoi_0778"]
[【葵】]
「あぅ……」[pcms]

*9612|
[fc]
袖がさらに強く引っ張られ、顔が真っ赤に染まる。[pcms]

*9613|
[fc]
まったく、可愛いな……。[pcms]

*9614|
[fc]
[【主人公】]
「それじゃ、俺が積極的になる魔法をかけてあげようか」[pcms]

*9615|
[fc]
そう言って、俺はそっと葵の肩に手を置いた。[pcms]

;//→arcana117
[ANTEN blk]
[jump storage="arcana117.ks" target=*TOP]

