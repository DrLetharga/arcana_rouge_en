;//arcana069
*TOP
[eval exp="f.l_s069 = 1"][name_allreset]

;//背景：学園資料室・日中
[bg storage="bg007a"][trans_c cross time=1000]

[bgm004]

*4918|
[fc]
昼休みになって資料室に行くと、すでに魔法少女兼教え子たちが集まって和んでいた。[pcms]

;//立ち絵：茜・制服
;//立ち絵：葵・制服
;//立ち絵：ミア・制服
[chara_int_all]
[std_aoi m se p1 f01 le]
[std_aka m se p1 f01 ce]
[std_mia m se p1 f01 ri][trans_c cross time=300]

*4919|
[fc]
[【主人公】]
「あー、和んでいるところ悪いが、俺からみんなに注意事項だ。話を聞いてくれ」[pcms]


*4920|
[fc]
[vo_aka s="akane_0438"]
[【茜】]
「どうしたの先生？」[pcms]

*4921|
[fc]
[【主人公】]
「今後は冥魔や結界を発見しても、俺や他の子と連絡をした上で行動してほしいんだ」[pcms]

[std_mia m se p1 f08 ri][trans_c cross time=300]

*4922|
[fc]
[vo_mia s="mia_0529"]
[【ミア】]
「えー？　そんなのめんどくさくないー？」[pcms]

*4923|
[fc]
[【主人公】]
「いや、なるべく単独行動は避けたほうが良いかなって俺は思う。パワーアップして強くなったとは言え、ミズチやカクエンが出てくるとキツイんじゃないか？」[pcms]

[std_aoi m se p1 f11 le][trans_c cross time=300]

*4924|
[fc]
[vo_aoi s="aoi_0408"]
[【葵】]
「……確かに先生の言う通り、一人だと危険かもしれないですね」[pcms]

*4925|
[fc]
[【主人公】]
「そういうことだ。よろしく頼むよ。さしあたって今日の放課後はみんな一緒にパトロールしてみよう」[pcms]

[std_mia m se p1 f01 ri][trans_c cross time=300]

*4926|
[fc]
[vo_mia s="mia_0530"]
[【ミア】]
「うーん……せんせーにそうまで言われたら仕方ないか。りょーかいっ！」[pcms]

[std_aka m se p1 f01 ce][trans_c cross time=300]

*4927|
[fc]
[vo_aka s="akane_0439"]
[【茜】]
「ところで先生、お昼ごはんはもう食べたの？」[pcms]

*4928|
[fc]
[【主人公】]
「購買部でやきそばパンと牛乳を買ってきた。これから食べる」[pcms]

[std_aoi m se p1 f08 le][trans_c cross time=300]

*4929|
[fc]
[vo_aoi s="aoi_0409"]
[【葵】]
「それだけじゃ栄養が偏りませんか？」[pcms]

*4930|
[fc]
[【主人公】]
「晩メシは肉野菜炒めと冷奴にしてパランスを取るよ」[pcms]

[std_mia m se p1 f05 ri][trans_c cross time=300]

*4931|
[fc]
[vo_mia s="mia_0531"]
[【ミア】]
「あ、もしかして葵はお料理しますとか言って、押しかけ女房する口実で聞いたでしょー？」[pcms]

[std_aoi m se p1 f05 le][trans_c cross time=300]

*4932|
[fc]
[vo_aoi s="aoi_0410"]
[【葵】]
「そ、そんなこと考えてないです！」[pcms]

[std_aka m se p1 f11 ce][trans_c cross time=300]

*4933|
[fc]
[vo_aka s="akane_0440"]
[【茜】]
「そっか、そういうのもアリなんだ……！」[pcms]

[std_aoi m se p1 f03 le][trans_c cross time=300]

*4934|
[fc]
[vo_aoi s="aoi_0411"]
[【葵】]
「はううう……茜ちゃんまでからかわないでぇ……」[pcms]

[std_aka m se p1 f05 ce][trans_c cross time=300]

*4935|
[fc]
[vo_aka s="akane_0441"]
[【茜】]
「えっ？　ほんとにいいアイディアだと思ったんだけど」[pcms]



;//背景：空・日中
;[bg storage="bg001a"][trans_c cross time=1000]

*4936|
[fc]
楽しい時間はあっという間というのは本当で、昼休みが終わる予鈴が鳴ってしまう。[pcms]

;ＳＥ：学園チャイム
[se buf1 storage="seC054"]

;mm 廊下？資料室では。茜たちの見送りにしても背景チャカチャカ変えたくないから資料室のままに
;//背景：学園廊下・昼
[bg storage="bg007a"]
[std_aoi m se p1 f01 le]
[std_aka m se p1 f01 ce]
[std_mia m se p1 f01 ri][trans_c cross time=1000]

*4937|
[fc]
[vo_aka s="akane_0442"]
[【茜】]
「それじゃ先生。放課後に」[pcms]


*4938|
[fc]
[vo_aoi s="aoi_0412"]
[【葵】]
「失礼します」[pcms]


*4939|
[fc]
[vo_mia s="mia_0532"]
[【ミア】]
「まったね～～～～！」[pcms]

[chara_int_all][trans_c cross time=300]
[se buf=0 storage="seA002"]

*4940|
[fc]
と、皆は俺にあいさつして授業に戻っていった。[pcms]

;//ＳＥ：ドア・学校の教室などの引き戸の音

;//背景：学園資料室・日中
;[bg storage="bg007a"][trans_c cross time=1000]

*4941|
[fc]
[【主人公】]
「次の受け持ち授業までは一時間空いてるし、もう少し食休みしてから職員室に行くか……」[pcms]

*4942|
[fc]
少し仮眠でもしようと考えたその時――[pcms]

;ＳＥ：携帯電話コール音
[se buf=0 storage="seC005"]

*4943|
[fc]
[【主人公】]
「昼寝の邪魔するのは誰だよ……って、これは冥の番号か。もしもし俺だ、どうした？」[pcms]

[stopse buf=0]

;//フェイスのみ：冥・上着あり私服
[std_mei m ja p1 f01 ce off]

;//音声加工：電話
*4944|
[fc]
[vo_mei s="mei_0234"]
[【冥】]
「もしもし、お兄さん？」[pcms]

*4945|
[fc]
[【主人公】]
「冥か。元気でやってるか？　俺に食い物をおごって欲しい依頼とかなら、今度は牛丼屋とかどうだ？」[pcms]

[std_mei m ja p1 f02 ce off]

;//音声加工：電話
*4946|
[fc]
[vo_mei s="mei_0235"]
[【冥】]
「私は別に、お兄さんにおごってもらいたいわけじゃないよ」[pcms]

*4947|
[fc]
声音からすると冥はご機嫌斜めらしい。[pcms]

*4948|
[fc]
[【主人公】]
「悪い。茶化してすまなかった。どうしたんだ？」[pcms]

[std_mei m ja p1 f11 ce off]

;//音声加工：電話
*4949|
[fc]
[vo_mei s="mei_0236"]
[【冥】]
「うん……すごく真剣で……大事な話があるの」[pcms]

*4950|
[fc]
[【主人公】]
「……俺で良ければ。何かあったのか？」[pcms]

[std_mei m ja p1 f07 ce off]

;//音声加工：電話
*4951|
[fc]
[vo_mei s="mei_0237"]
[【冥】]
「うん……でもね、すごく大切な話だから、直接会って話がしたいの。仕事が終わったら……少し時間いいかな？」[pcms]

*4952|
[fc]
冥は不機嫌なのではなかった。真剣だったのだと遅まきながら理解する。[pcms]

*4953|
[fc]
しかし参ったな。放課後は茜たちとパトロールの予定があるぞ。[pcms]

*4954|
[fc]
[【主人公】]
（どうする？）[pcms]

;//選択肢分岐発生（２択）
;//『冥と約束する』→		arcana070
;//『今日は無理だと伝える』→	arcana071
*SEL09|冥と約束する／今日は無理だと伝える
[fc]
[sel02 text='冥と約束する'         storage="arcana070.ks" target=*TOP]
[sel04 text='今日は無理だと伝える' storage="arcana071.ks" target=*TOP end]

