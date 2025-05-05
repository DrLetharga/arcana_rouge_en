;//arcana097
*TOP
[eval exp="f.l_s097 = 1"][name_allreset]

;//背景：黒背景
[bgm003]

;//ＳＥ：足音
[se buf=0 storage="SE0183_2"]
;//フェードイン

;//背景：通学路・夕方
[bg storage="bg011b"]
[std_aoi m se p1 f01 ce][trans_c cross time=1000]

;//立ち絵：葵・制服

;//葵、ため息お願いします。

*7532|
[fc]
[vo_aoi s="aoi_0539"]
[【葵】]
「……ふぅ」[pcms]

*7533|
[fc]
足取りも重く帰路についた葵の横顔に、夕日が影を落とす。[pcms]

*7534|
[fc]
考えることは、山ほどある。[pcms]

*7535|
[fc]
同じ魔法少女である仲間のこと。敵対している冥魔のこと。そして妹である藍のこと……。[pcms]

*7536|
[fc]
どれも、心弾む内容ではない。葵ならずともため息が出るというものだ。[pcms]

;//ＳＥ：ザッと前に立ちふさがる音
[se buf=0 storage="SE0180"]

*7537|
[fc]
その時、葵の行く手を遮るものがあった。[pcms]

;//立ち絵：冥・上着あり私服

[chara_int_all]
[std_aoi m se p1 f01 lc]
[std_mei m ja p1 f14 rc][trans_c cross time=300]

*7538|
[fc]
[vo_mei s="mei_0563"]
[【冥】]
「もう夜になるよ。良い子ちゃんはさっさと帰りなよ」[pcms]

[quake_chara ch=aoi vmax=0 hmax=20 time=80 count=1]
[std_aoi m se p1 f05 lc][trans_c cross time=300]

*7539|
[fc]
[vo_aoi s="aoi_0540"]
[【葵】]
「あ……藍！？」[pcms]

*7540|
[fc]
葵は、自分の目を疑った。[pcms]

*7541|
[fc]
藍だ。藍がいる。不敵な表情は、今まで葵が知らなかったものだが、間違いない。妹の藍が、今目の前にいる。[pcms]

*7542|
[fc]
[vo_aoi s="aoi_0541"]
[【葵】]
「良かった……！　帰ってきてくれたのね！」[pcms]

*7543|
[fc]
喜んで駆け寄ろうとした葵を、藍は手を突き出し制する。[pcms]

;//冥のセリフは、全体的にぶっきらぼうにお願いします。
[std_mei m ja p1 f06 rc][trans_c cross time=300]

*7544|
[fc]
[vo_mei s="mei_0564"]
[【冥】]
「私、まだお姉ちゃんに見捨てられたこと、恨んでるよ」[pcms]

[std_aoi m se p1 f03 lc][trans_c cross time=300]

*7545|
[fc]
[vo_aoi s="aoi_0542"]
[【葵】]
「あ……」[pcms]

*7546|
[fc]
葵の脳裏を、過去の忌まわしい思い出が去来する。[pcms]

[std_mei m ja p1 f07 rc][trans_c cross time=300]

*7547|
[fc]
[vo_mei s="mei_0565"]
[【冥】]
「絶対に許さないとも思ってる。だけどお兄さんが……」[pcms]

[std_aoi m se p1 f07 lc][trans_c cross time=300]

*7548|
[fc]
[vo_aoi s="aoi_0543"]
[【葵】]
「せ、先生が……？」[pcms]

*7549|
[fc]
葵にとって、ここで男の名が出てきたのは意外だった。が、考えてみれば藍との接点は他にない。[pcms]

[std_mei m ja p1 f11 rc][trans_c cross time=300]

*7550|
[fc]
[vo_mei s="mei_0566"]
[【冥】]
「お兄さんが、自分と交換だっていうから……。お姉ちゃんのところに戻れって言ったから、仕方なく来てあげたの。それだけ」[pcms]

[std_aoi m se p1 f10 lc][trans_c cross time=300]

*7551|
[fc]
葵の眼から、一筋の涙がこぼれた。二筋、三筋……。涙はとめどなく流れ、後から後から溢れてくる。[pcms]

*7552|
[fc]
男のことは、もう葵の頭の中にはなかった。いるのはただひとり、目の前の妹だけ。[pcms]

*7553|
[fc]
[vo_aoi s="aoi_0544"]
[【葵】]
「藍……！」[pcms]

;//ＳＥ：葵が冥に駆け寄る音

;//ＳＥ：葵が冥を抱きしめる音

[move_chara ch=aoi x=280 time=100 accel=1 wm]

*7554|
[fc]
葵は反射的に冥に抱きつき、大声で泣きだした。[pcms]

;//葵、涙ながらの台詞でお願いします。

*7555|
[fc]
[vo_aoi s="aoi_0545"]
[【葵】]
「藍……ううっ、藍……っ！」[pcms]

[std_mei m ja p1 f07 rc][trans_c cross time=300]

*7556|
[fc]
[vo_mei s="mei_0567"]
[【冥】]
「ちょ、ちょっと……！」[pcms]

*7557|
[fc]
[vo_aoi s="aoi_0546"]
[【葵】]
「よ、良かった……生きていてくれて……ううっ、藍、藍、あいぃぃぃっ！！」[pcms]

*7558|
[fc]
普段はおとなしい姉の[ruby_c t="滂沱" r="ぼうだ"]たる涙に、冥は辟易した表情を隠せない。[pcms]

*7559|
[fc]
[vo_aoi s="aoi_0547"]
[【葵】]
「も、もう私、一生恨まれてもいい……憎んでくれていい……。藍が……藍が生きて帰ってきてくれた……」[pcms]

*7560|
[fc]
[vo_aoi s="aoi_0548"]
[【葵】]
「それだけで私……嬉しい……嬉しいの、藍……ううっ……」[pcms]

;//冥、小さくため息お願いします。

[std_mei m ja p1 f03 rc][trans_c cross time=300]

*7561|
[fc]
[vo_mei s="mei_0568"]
[【冥】]
「……ふぅ」[pcms]

*7562|
[fc]
大泣きする葵と対象的に、冥は小さなため息を漏らした。[pcms]

[std_mei m ja p1 f11 rc][trans_c cross time=300]

*7563|
[fc]
[vo_mei s="mei_0569"]
[【冥】]
「……お姉ちゃん、チョロすぎ」[pcms]

[chara_int_lc][std_aoi m se p1 f03 ce x=60][trans_c cross time=300]

*7564|
[fc]
[vo_aoi s="aoi_0549"]
[【葵】]
「え？」[pcms]

*7565|
[fc]
葵が妹を見つめ直した、その瞬間だった。[pcms]

*7566|
[fc]
[vo_mei s="mei_0570"]
[【冥】]
「眠れ。ぬばたまの[ruby_c t="繭" r="まゆ"]に閉ざされし[ruby_c t="眼" r="まなこ"]」[pcms]

;//『眼』は『まなこ』と読んでください。

;//ＳＥ：冥の魔法が発動する音

;レガート佐藤 魔法 スリープ

[std_aoi m se p1 f07 ce x=60][trans_c cross time=300]

*7567|
[fc]
[vo_aoi s="aoi_0550"]
[【葵】]
「あ……」[pcms]

;//立ち絵：葵消失
[chara_int_ce][trans_c cross time=300]

;//ＳＥ：葵がその場に倒れる音
[se buf=0 storage="seB017"]

*7568|
[fc]
冥の呪文に囚われ、葵はその場に崩れ落ちた。[pcms]

[std_mei m ja p1 f03 rc][trans_c cross time=300]

;//演技指導　淡々とというか、少し悲しいくらいな感じで。
*7569|
[fc]
;欠番	[vo_aoi s="aoi_0551"]
;	[【葵】]
[【冥】]
[vo_mei s="mei_add0002"]
「……ホント、チョロい」[pcms]


;//ＳＥ：風の音

;//立ち絵：冥消失
[se buf=0 storage="SE1202"]
[黒フラ]
[chara_int_all][trans_c wipe_r time=300]

*7570|
[fc]
そして生ぬるい風とともに、二人の姿はどこにも見えなくなった。[pcms]

;//フェードアウト

;//背景：黒背景
[ANTEN blk]

;//ＳＥ：水滴が垂れる音（イメージです）
;//↑ＳＥ、もし合わないようならオミットか別の音で

*7571|
[fc]
[vo_aoi s="aoi_0552"]
[【葵】]
「う……ううん……」[pcms]

;//フェードイン
[bgm007]
;//背景：冥の隠れ家・夜照明
[bg storage="bg026a"]
[std_mei m si p1 f14 ce][trans_c cross time=1000]

;//立ち絵：冥・私服

;//冥の口調、クールにお願いします。

*7572|
[fc]
[vo_mei s="mei_0571"]
[【冥】]
「おはよう、お姉ちゃん」[pcms]

;//ＳＥ：葵が身体を起こす音
[chara_int_ce]
[std_aoi m se p1 f01 lc][std_mei m si p1 f14 rc][trans_c cross time=300]

*7573|
[fc]
葵は、重い頭を振り切って身体を起こした。[pcms]

*7574|
[fc]
見知らぬ部屋。見知らぬ景色。[pcms]

*7575|
[fc]
[vo_aoi s="aoi_0553"]
[【葵】]
「ここは……」[pcms]

[std_mei m si p1 f06 rc][trans_c cross time=300]

*7576|
[fc]
[vo_mei s="mei_0572"]
[【冥】]
「私の部屋。本当は連れてきたくなんかなかったけど、お姉ちゃんぐーすか寝ちゃってたから」[pcms]

*7577|
[fc]
冥の言葉で、葵はようやく状況を飲み込む。[pcms]

[std_aoi m se p1 f02 lc][trans_c cross time=300]

*7578|
[fc]
[vo_aoi s="aoi_0554"]
[【葵】]
「藍！　どうして私を眠らせたりしたの！？」[pcms]

[std_mei m si p1 f07 rc][trans_c cross time=300]

*7579|
[fc]
[vo_mei s="mei_0573"]
[【冥】]
「お兄さんを助けたいから」[pcms]

[std_aoi m se p1 f08 lc][trans_c cross time=300]

*7580|
[fc]
[vo_aoi s="aoi_0555"]
[【葵】]
「え……？」[pcms]

*7581|
[fc]
意味がよくわからない。葵は首をかしげる。[pcms]

[std_mei m si p1 f01 rc][trans_c cross time=300]

*7582|
[fc]
[vo_mei s="mei_0574"]
[【冥】]
「お兄さん、お人好しだからさ。ミズチに騙されて、捕まっちゃったんだよ。人質になっちゃったんだよね」[pcms]

[std_aoi m se p1 f05 lc][trans_c cross time=300]

*7583|
[fc]
[vo_aoi s="aoi_0556"]
[【葵】]
「え……ええええっ！？」[pcms]

*7584|
[fc]
葵の驚きをよそに、冥は淡々と続ける。[pcms]

[std_mei m si p1 f11 rc][trans_c cross time=300]

*7585|
[fc]
[vo_mei s="mei_0575"]
[【冥】]
「で、お兄さんを殺されたくなかったら、魔法少女を捕まえて来いって言われたの」[pcms]

*7586|
[fc]
[vo_mei s="mei_0576"]
[【冥】]
「どう考えても、私が行って一番油断してくれそうなのは、お姉ちゃんじゃない？　だから捕まえた。それだけ」[pcms]

[std_aoi m se p1 f03 lc][trans_c cross time=300]

*7587|
[fc]
[vo_aoi s="aoi_0557"]
[【葵】]
「そんなことって……」[pcms]

*7588|
[fc]
冥は三日月のように唇を吊り上げ、不敵な笑いを見せる。[pcms]

[std_mei m si p1 f06 rc][trans_c cross time=300]

*7589|
[fc]
[vo_mei s="mei_0577"]
[【冥】]
「そんなこと？　ふふっ。何がそんなことなの？　私、悪いことしたなんて思ってないよ。お姉ちゃんよりお兄さんを取っただけ」[pcms]

[std_aoi m se p1 f07 lc][trans_c cross time=300]

*7590|
[fc]
[vo_aoi s="aoi_0558"]
[【葵】]
「悪いこと……」[pcms]

*7591|
[fc]
今度は葵が落ち着く番だった。さっきまで見せていた動揺の色は、もはや影を潜めている。[pcms]

[std_aoi m se p1 f06 lc][trans_c cross time=300]

*7592|
[fc]
[vo_aoi s="aoi_0559"]
[【葵】]
「じゃあ、どうしてそんな風にいちいち言い訳してるの？」[pcms]

[std_mei m si p1 f08 rc][trans_c cross time=300]

*7593|
[fc]
[vo_mei s="mei_0578"]
[【冥】]
「い、言い訳！？」[pcms]

[std_aoi m se p1 f11 lc][trans_c cross time=300]

*7594|
[fc]
[vo_aoi s="aoi_0560"]
[【葵】]
「そう、言い訳。藍は、自分が何をしてるか、本当はちゃんと理解しているから」[pcms]

*7595|
[fc]
[vo_aoi s="aoi_0561"]
[【葵】]
「もしも本当に悪いことなんかしてないって思ってるなら、言い訳なんかしない。藍は自分で自分に言い聞かせてるのよ」[pcms]

[std_mei m si p1 f02 rc][trans_c cross time=300]

*7596|
[fc]
[vo_mei s="mei_0579"]
[【冥】]
「藍って呼ぶな！！」[pcms]

*7597|
[fc]
鋭い怒声が爆発する。[pcms]

*7598|
[fc]
[vo_mei s="mei_0580"]
[【冥】]
「私は……私の名前は、四堂冥！　藍なんて名前、とっくに捨てたの！！　いつまでもお姉ちゃん面しないで！　図々しい！！」[pcms]

*7599|
[fc]
いつも以上に、冥の怒りは激しい。姉である葵を前にして、歯止めが利かなくなっているのだ。[pcms]

*7600|
[fc]
冥は、拳と唇を震わせながらも続ける。[pcms]

[std_mei m si p1 f12 rc][trans_c cross time=300]

*7601|
[fc]
[vo_mei s="mei_0581"]
[【冥】]
「大体、どうしてあの時手を離したの！？　ビルが崩れて、私は不安で、怖くて……」[pcms]

[std_mei m si p1 f10 rc][trans_c cross time=300]

*7602|
[fc]
[vo_mei s="mei_0582"]
[【冥】]
「ずっと手を握っててほしかったのに！　助けてほしかったのに！　私は、私は、私は――」[pcms]

*7603|
[fc]
他人が聞けば、ただの八つ当たりでしかないだろう。だが、冥にとってはそれが全てだ。姉を恨む理由にほかならない。[pcms]

*7604|
[fc]
[vo_mei s="mei_0583"]
[【冥】]
「お姉ちゃんなんて……お姉ちゃんなんて……！！」[pcms]

*7605|
[fc]
爆発した怒りは収まらない。冥にも、もう何を言っているかわからない。ただ闇雲に『お姉ちゃんなんて』を繰り返すだけだ。[pcms]

[std_aoi m se p1 f10 lc][trans_c cross time=300]

*7606|
[fc]
[vo_aoi s="aoi_0562"]
[【葵】]
「ごめん……ごめんなさい……」[pcms]

*7607|
[fc]
そんな妹を前に、葵はただ謝ることしか出来ない。涙を流すことしか出来ない。[pcms]

*7608|
[fc]
[vo_aoi s="aoi_0563"]
[【葵】]
「ごめんなさい……藍……」[pcms]

[std_mei m si p1 f12 rc][trans_c cross time=300]

*7609|
[fc]
[vo_mei s="mei_0584"]
[【冥】]
「……くっ！」[pcms]

*7610|
[fc]
泣きじゃくる姉を見てしまうと、冥もそれ以上何も言えない。[pcms]

*7611|
[fc]
[vo_aoi s="aoi_0564"]
[【葵】]
「…………」[pcms]

*7612|
[fc]
[vo_mei s="mei_0585"]
[【冥】]
「…………」[pcms]

;mm 修正　聞こえるまで長いからここから
;mm [se buf=0 storage="seC015"]
;mm やりたいことは分かるけど直接関係ない救急車聞こえても不自然なのでやめる.

*7613|
[fc]
重苦しい沈黙が、部屋を支配している。[pcms]

;//ＳＥ：窓の外を通る車のクラクションの音
;//ＳＥ：遠くに聞こえる救急車の音
;[se buf=0 storage="SE0620"]
;[se buf=0 storage="SE0605"]

[std_mei m si p1 f07 rc][trans_c cross time=300]

*7614|
[fc]
[vo_mei s="mei_0586"]
[【冥】]
「…………お兄さん、大丈夫かな……」[pcms]

*7615|
[fc]
長い沈黙をほころばせたのは、冥の小さなつぶやきだった。[pcms]

;mm 修正
[stopse_fadeout buf=0 time=1000]


[std_aoi m se p1 f08 lc][trans_c cross time=300]

*7616|
[fc]
[vo_aoi s="aoi_0565"]
[【葵】]
「お兄さん……。藍は、その人のことが、本当に大好きなんだね」[pcms]

;//冥、むくれて

[std_mei m si p1 f06 rc][trans_c cross time=300]

*7617|
[fc]
[vo_mei s="mei_0587"]
[【冥】]
「悪い？」[pcms]

*7618|
[fc]
冥は唇を尖らせる。心なしか目元が赤いように葵には見えたが、敢えて黙っていることにした。今大事なのは、そこじゃない。[pcms]

[std_mei m si p2 f01 rc][trans_c cross time=300]

*7619|
[fc]
[vo_mei s="mei_0588"]
[【冥】]
「お兄さん、もう大人なのに、騙されやすいっていうか、いい人すぎるっていうか……」[pcms]

*7620|
[fc]
[vo_mei s="mei_0589"]
[【冥】]
「お人好しでお節介で、すぐトラブルに巻き込まれるから、私がついていてあげないとダメなの」[pcms]

*7621|
[fc]
冥の口調は、完全に女のそれだった。自分の男を語る時の、女の口調。[pcms]

*7622|
[fc]
葵は、自分たちがひどく遠くに来てしまったことを知る。[pcms]

*7623|
[fc]
いつも姉の後をくっついて回っていた小さな藍は、もういないのだ。[pcms]

*7624|
[fc]
代わりにここにいるのは、冥。[pcms]

*7625|
[fc]
自分と同じ男を愛する娘……。[pcms]

[std_aoi m se p1 f04 lc][trans_c cross time=300]

*7626|
[fc]
[vo_aoi s="aoi_0566"]
[【葵】]
「そっか……」[pcms]

*7627|
[fc]
葵は花が開くように、ほっこりと微笑む。[pcms]

[std_aoi m se p1 f09 lc][trans_c cross time=300]

*7628|
[fc]
[vo_aoi s="aoi_0567"]
[【葵】]
「私もね……先生が好き」[pcms]

[std_mei m si p1 f06 rc][trans_c cross time=300]

*7629|
[fc]
[vo_mei s="mei_0590"]
[【冥】]
「…………」[pcms]

[std_aoi m se p1 f04 lc ho][trans_c cross time=300]

*7630|
[fc]
[vo_aoi s="aoi_0568"]
[【葵】]
「私、藍のことで随分悩んでたの。苦しんでた。そんな時に、先生が励ましてくれて……好きになったの」[pcms]

*7631|
[fc]
冥の眼が、鈍い光を帯びる。[pcms]

[std_mei m si p1 f12 rc][trans_c cross time=300]

*7632|
[fc]
[vo_mei s="mei_0591"]
[【冥】]
「それって宣戦布告？」[pcms]

[std_aoi m se p1 f05 lc][trans_c cross time=300]

*7633|
[fc]
[vo_aoi s="aoi_0569"]
[【葵】]
「ち、違うわ。そうじゃなくて！」[pcms]

*7634|
[fc]
葵は慌てて否定する。彼女には、妹と敵対するつもりなど、さらさらないのだ。[pcms]

[std_aoi m se p1 f11 lc][trans_c cross time=300]

*7635|
[fc]
[vo_aoi s="aoi_0570"]
[【葵】]
「同じ人を好きになったのなら、私たち、あの人を助けるために協力できるんじゃないかと思うの」[pcms]

*7636|
[fc]
[vo_aoi s="aoi_0571"]
[【葵】]
「……許してなんて、簡単に言えない。でも、今だけでも、あの人のために協力しあって……」[pcms]

[std_mei m si p1 f07 rc][trans_c cross time=300]

*7637|
[fc]
かなり思い切った提案だと、葵自身も自覚していた。[pcms]

*7638|
[fc]
妹の恨みは、根深い。ちょっとやそっと泣いたり謝ったりしたところで、揺らぐことはない。[pcms]

*7639|
[fc]
[vo_aoi s="aoi_0572"]
[【葵】]
（それでも……先生のためなら……）[pcms]

;//心の声　音声加工

*7640|
[fc]
だが、冥が口にしたのは、意外な言葉だった。[pcms]

[std_mei m si p1 f03 rc][trans_c cross time=300]

*7641|
[fc]
[vo_mei s="mei_0592"]
[【冥】]
「そういうことなら……協力できるかも」[pcms]

[std_aoi m se p1 f04 lc][trans_c cross time=300]

*7642|
[fc]
[vo_aoi s="aoi_0573"]
[【葵】]
「本当！？」[pcms]

*7643|
[fc]
葵の顔が、パッと明るく晴れ渡る。[pcms]

*7644|
[fc]
あの人を助けられる！　妹との絆も戻るかもしれない。救出作戦は、葵にとって最善の道のように思えた。[pcms]

[std_aoi m se p1 f02 lc][trans_c cross time=300]

*7645|
[fc]
[vo_aoi s="aoi_0574"]
[【葵】]
「何か方法がある？　なんでもいって！」[pcms]

[std_mei m si p1 f11 rc][trans_c cross time=300]

*7646|
[fc]
[vo_mei s="mei_0593"]
[【冥】]
「なんでも……？」[pcms]

*7647|
[fc]
[vo_aoi s="aoi_0575"]
[【葵】]
「なんでも！！」[pcms]

*7648|
[fc]
葵は身を乗り出して、冥の答を待つ。[pcms]

*7649|
[fc]
『どんなことをしても、あの人を助けたい。』[pcms]

*7650|
[fc]
葵の声が弾む。妹と同じ想いを抱けたことが、今の葵には何より嬉しい。[pcms]

[std_mei m si p1 f03 rc][trans_c cross time=300]

*7651|
[fc]
[vo_mei s="mei_0594"]
[【冥】]
「……実は、ミズチから特別命令が出てるんだ」[pcms]

[std_aoi m se p1 f08 lc][trans_c cross time=300]

*7652|
[fc]
[vo_aoi s="aoi_0576"]
[【葵】]
「特別命令……？」[pcms]

[std_mei m si p1 f07 rc][trans_c cross time=300]

*7653|
[fc]
[vo_mei s="mei_0595"]
[【冥】]
「そう。目的を達成しないと、お兄さんには会わせないって言われてる……んだけど」[pcms]

*7654|
[fc]
普段の葵なら、いくらか言い淀んでいる冥の口調に気づいただろう。しかし、今は目の前のことしか見えなくなっている。[pcms]

*7655|
[fc]
葵は身体を乗り出し、冥の顔を覗き込んだ。[pcms]

[chara_int_lc]
[std_aoi l se p1 f01 ce]
[std_mei l si p2 f07 rc][trans_c cross time=300]

*7656|
[fc]
[vo_aoi s="aoi_0577"]
[【葵】]
「何をすればいいの……？　教えて、藍」[pcms]

[std_mei l si p2 f13 rc][trans_c cross time=300]

*7657|
[fc]
[vo_mei s="mei_0596"]
[【冥】]
「う……ん、ちょっと言いにくいんだけどね」[pcms]

*7658|
[fc]
冥は困ったように、頭をかく。照れているのかもしれなかった。[pcms]

[std_mei l si p2 f01 rc][trans_c cross time=300]

*7659|
[fc]
[vo_mei s="mei_0597"]
[【冥】]
「私とお姉ちゃんで、エッチなことして、それを記録しろって」[pcms]

;//ＳＥ：冥が水晶玉を取り出す音

*7660|
[fc]
そういうと、冥はどこからか水晶玉を取り出した。美しいが、どこか禍々しい光を放つ、妖しげな魔具だ。[pcms]

[std_aoi l se p1 f07 ce][trans_c cross time=300]

*7661|
[fc]
[vo_aoi s="aoi_0578"]
[【葵】]
「……な、なに？」[pcms]

[move_chara ch=aoi x=-100 time=100 accel=1 wm]

;//ＳＥ：葵が後退る音

*7662|
[fc]
葵は思わず後退る。[pcms]

*7663|
[fc]
[vo_mei s="mei_0598"]
[【冥】]
「私たちのエッチ、ここに記録するの。ちゃんとふたりともイクところまで、全部録れって」[pcms]

[std_aoi l se p1 f08 ce x=-100 ho][trans_c cross time=300]

*7664|
[fc]
[vo_aoi s="aoi_0579"]
[【葵】]
「そ、そんな……藍とエッチだなんて、そんな……」[pcms]

;//ＳＥ：冥が一歩前に進み出る音

*7665|
[fc]
葵はよろめく。[pcms]

*7666|
[fc]
好きな男以外の誰かに、身を委ねるつもりはない。ましてや、相手が妹なのだから、なおさらだ。[pcms]

*7667|
[fc]
考えられない。開けてはいけない禁忌の扉だ。[pcms]

[std_mei l si p2 f06 rc][trans_c cross time=300]

*7668|
[fc]
[vo_mei s="mei_0599"]
[【冥】]
「ダメだよ、お姉ちゃん」[pcms]

[move_chara ch=mei x=-100 time=300 accel=1 wm]

*7669|
[fc]
冥が詰め寄る。[pcms]

;//冥、最後の「なっ！！」で冥を押し倒しています。

*7670|
[fc]
[vo_mei s="mei_0600"]
[【冥】]
「お姉ちゃん、お兄さんのためなら何でもするって言ったよね？　今度はちゃんと、約束守ってほしい――なっ！！」[pcms]

[quake_bg vmax=20 hmax=10 time=20 accel=1 count=2 wait=false]
;//ＳＥ：ベッドに押し倒す音

[std_aoi l se p1 f05 ce x=-100 ho][trans_c cross time=300]

*7671|
[fc]
[vo_aoi s="aoi_0580"]
[【葵】]
「きゃっ！！」[pcms]

;//フェードアウト

;//背景：黒背景
[bg storage="effect_black"][trans_c cross]

*7672|
[fc]
冥は勢いよく葵を押し倒し、二人はそのままベッドへともつれ込んだ。[pcms]

;//→arcana098　へ
[ANTEN blk]
[jump storage="arcana098.ks" target=*TOP]

