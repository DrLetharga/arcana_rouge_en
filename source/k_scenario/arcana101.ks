;//arcana101
*TOP
[eval exp="f.l_s101 = 1"][name_allreset]

;//暗転

[bgm010]

;//このシーンは指示があるまで三人称

;//背景：冥魔たちのアジト
[bg storage="bg029a"][trans_c cross time=1000]

;//立ち絵：茜・制服
;//立ち絵：葵・制服
;//立ち絵：ミア・制服
;//立ち絵：冥・私服

[chara_int_all]
[std_aoi m se p1 f06 le]
[std_aka m se p2 f06 lc x=80]
[std_mia m se p2 f06 rc x=-80 index=1]
[std_mei m si p1 f06 ri][trans_c cross time=300]

*7890|
[fc]
迎えに来たカクエンに連れられ、茜達は冥魔達のアジトへとやってきていた。[pcms]

*7891|
[fc]
立ち並ぶ不気味な白骨像は常にこちらを見ているように見えて、どうしても足が遅くなってしまう。[pcms]

;//立ち絵：カクエン・オーラあり
[chara_int_all]
[std_kak m ce o1][trans_c cross time=300]

*7892|
[fc]
[【カクエン】]
「おら、さっさと歩け魔法少女ども。愛しの先生に会いたいんだろう？」[pcms]

[chara_int_all]
[std_mia m se p2 f02 lc][std_kak s rc o1 index=1][trans_c cross time=300]

*7893|
[fc]
[vo_mia s="mia_0716"]
[【ミア】]
「ちょっと押さないでよ、乱暴なんだから」[pcms]

*7894|
[fc]
[【カクエン】]
「はっ、何を今更。今ここでてめぇらを犯してやってもいいんだぜ？」[pcms]

*7895|
[fc]
カクエンの言葉に苦虫を噛みつぶしたような顔になりながら、暗い道を歩いて行く。[pcms]

*7896|
[fc]
しばらくすると、見覚えのある顔が見えてきた。[pcms]

[chara_int_all]
[std_miz m ce o1][trans_c cross time=300]

*7897|
[fc]
[【ミズチ】]
「よく来たな、魔法少女よ」[pcms]

[chara_int_all]
[std_aoi m se p1 f02 lc][std_miz s rc o1 index=1][trans_c cross time=300]

*7898|
[fc]
[vo_aoi s="aoi_0634"]
[【葵】]
「ミズチ……先生はどこにいるんですか！」[pcms]

*7899|
[fc]
[【ミズチ】]
「ククク……そんなに会いたいか。ならば会わせてやるとしようぞ」[pcms]

;//立ち絵：主人公・シルエット
[chara_int_all]
[std_aoi m se p1 f02 le index=3]
[std_syu m se ce index=2]
[std_miz s rc o1 index=1][trans_c cross time=300]

*7900|
[fc]
ミズチの背後からゆらりと現れた彼の姿は、表情が失われていた。[pcms]

[std_mia m se p1 f02 le index=3][trans_c cross time=300]

*7901|
[fc]
[vo_mia s="mia_0717"]
[【ミア】]
「先生！　ちょっと、先生に何をしたの！」[pcms]

*7902|
[fc]
[【ミズチ】]
「ククク……なに、傀儡にしただけよ。いまやオマエ達のことは忘れ、ワシの言うがままよ」[pcms]

[std_aka m se p1 f07 le index=3][trans_c cross time=300]

*7903|
[fc]
[vo_aka s="akane_0606"]
[【茜】]
「そんな……先生！　あたしだよ、茜だよ！　ねぇ、先生返事して！」[pcms]

*7904|
[fc]
茜は必死に懇願するものの、彼は眉一つ動かさない。[pcms]

*7905|
[fc]
まるで人の姿をした人形を見ているような気分になり、茜は息が詰まる思いだった。[pcms]

*7906|
[fc]
[【ミズチ】]
「信じられぬというのなら、証明してやろう。奴らの衣装を剥ぎ、犯して魔法力を食らい尽くしてやるがいい」[pcms]

[chara_int_all]
[std_aka l se p1 f01 lc index=3]
[std_syu l rc index=2][trans_c cross time=300]

*7907|
[fc]
ミズチの言葉に反応し、茜達の前へと近付いていく。[pcms]

*7908|
[fc]
何も感じていないかのような表情に怯えつつも、彼女達は口々に言葉をかけた。[pcms]

[std_aoi l se p1 f03 lc index=3][trans_c cross time=300]

*7909|
[fc]
[vo_aoi s="aoi_0635"]
[【葵】]
「先生、葵です！　ミズチなんかに負けないで下さい！」[pcms]

;//ＳＥ：服を破る音
[se buf=0 storage="SE1451"]

;//立ち絵：葵・全裸
[std_aoi l ha p1 f12 lc index=3][trans_c cross time=300]

*7910|
[fc]
[vo_aoi s="aoi_0636"]
[【葵】]
「いやぁぁぁぁっ！」[pcms]

*7911|
[fc]
葵の肩を掴むと、人の力とは思えない膂力で制服を引き裂く。[pcms]

*7912|
[fc]
葵はみるみるうちに裸にされ、その場にうずくまる。[pcms]

[chara_int_all][std_mia l se p2 f02 le index=3][std_syu l rc index=2][trans_c cross time=300]

*7913|
[fc]
[vo_mia s="mia_0718"]
[【ミア】]
「ちょっと先生！　教え子にこんなことしていいと思ってるの？」[pcms]

;//ＳＥ：服を破る音
[se buf=1 storage="SE1450"]

;//立ち絵：ミア・全裸
[std_mia l ha p2 f13 le index=3][trans_c cross time=300]

*7914|
[fc]
[vo_mia s="mia_0719"]
[【ミア】]
「きゃぁぁぁぁっ！」[pcms]

*7915|
[fc]
今度は文句を言ったミアに手を伸ばし、乱雑に制服を引き裂く。[pcms]

*7916|
[fc]
さらに冥と茜にも手を伸ばし、あっという間に彼女達の制服を引きちぎってしまった。[pcms]

;//ＳＥ：服を破る音
[se buf=0 storage="SE1451"]
[se buf=1 storage="SE1450"]

;//立ち絵：冥・全裸
;//立ち絵：茜・全裸

[chara_int_all]
[std_aoi m ha p1 f07 le]
[std_aka m ha p2 f06 lc x=80]
[std_mia m ha p2 f06 rc x=-80 index=1]
[std_mei m ha p1 f12 ri][trans_c cross time=300]

*7917|
[fc]
[vo_mei s="mei_0655"]
[【冥】]
「くっ……お兄さん、やっぱり洗脳されてるみたいね」[pcms]

*7918|
[fc]
[vo_mia s="mia_0720"]
[【ミア】]
「それじゃ……あれをやるしかないかな」[pcms]

*7919|
[fc]
[vo_aka s="akane_0607"]
[【茜】]
「うん……そうだね」[pcms]

*7920|
[fc]
[vo_aoi s="aoi_0637"]
[【葵】]
「ちょっと気が引けるんですけどね……」[pcms]

[std_mei m ha p1 f02 ri][trans_c cross time=300]

*7921|
[fc]
[vo_mei s="mei_0656"]
[【冥】]
「お姉ちゃん、遠慮は禁物だよ。思いっきり叫ばないと助けられないんだから」[pcms]

[se buf=0 storage="seA061"]
[std_aoi m ha p1 f11 le magan][trans_c cross time=300]

*7922|
[fc]
絶望した様子のない魔法少女四人に、ミズチは首を傾げる。[pcms]

*7923|
[fc]
とはいえ、彼女達にこの事態を変えられるなどとつゆほどにも思っていなかった。[pcms]

[std_aka m ha p2 f06 lc x=80][trans_c cross time=300]

*7924|
[fc]
[vo_aka s="akane_0608"]
[【茜】]
「それじゃ行くよ！」[pcms]

[chara_int_all]
[std_aoi l ha p1 f11 le x=-200]
[std_aka l ha p2 f06 lc x=130]
[std_mia l ha p2 f06 rc x=-100 index=1]
[std_mei l ha p1 f02 ri x=150 magan][trans_c cross time=300]

*7925|
[fc]
四人は裸のまま、彼の元に駆け寄り強く抱きつく。[pcms]

*7926|
[fc]
そして彼の顔を見つめ、息を合わせて叫んだ。[pcms]
;
;	*7927|
;	[fc]
;	[vo_aka s="akane_0609"]
;	[【茜】]
;	「起きなさい！　このヘンタイ教師～～っ！！」[pcms]
;
;	*7928|
;	[fc]
;	[vo_aoi s="aoi_0638"]
;	[【葵】]
;	「起きなさい！　このヘンタイ教師～～っ！！」[pcms]
;
;	*7929|
;	[fc]
;	[vo_mia s="mia_0721"]
;	[【ミア】]
;	「起きなさい！　このヘンタイ教師～～っ！！」[pcms]
;
;	*7930|
;	[fc]
;	[vo_mei s="mei_0657"]
;	[【冥】]
;	「起きなさい！　このヘンタイ教師～～っ！！」[pcms]
;
;	;//全員の声を合わせて１ワードに　音声合成

*7927|
[fc]
;mm バッファは茜ので再生させる。バックログの名前に袋括弧ついたっけか？　←ついてたレガート佐藤
[vo_aka s="mix_0002"]
[ns]茜＆葵＆ミア＆冥[nse]
「「「「起きなさい！　このヘンタイ教師～～っ！！」」」」[pcms]

;レガート佐藤 魔法 魔眼の能力発動こんなのでいいのだろうか

;//背景：白
;ANTENだとボイスも止まるからここは個別処理
;[ANTEN wht wave00]
[top wht wave00 winoff]
[fadeoutbgm time=1000][wb canskip=true]
[wait time=1000]


;//ここから一人称

;//背景：冥魔たちのアジト
[bg storage="bg029a"]
[std_aoi l ha p1 f11 le x=-200]
[std_aka l ha p2 f06 lc x=130]
[std_mia l ha p2 f06 rc x=-100 index=1]
[std_mei l ha p1 f02 ri x=150 magan][trans_c wave00 time=1000]

;//立ち絵：茜・裸
;//立ち絵：葵・裸
;//立ち絵：ミア・裸
;//立ち絵：冥・裸

*7931|
[fc]
[【主人公】]
「ぐぁぁぁぁぁっ！？」[pcms]

*7932|
[fc]
突然、頭の中に強烈な痛みが走った。[pcms]

*7933|
[fc]
脳内をかき回されるような激痛にうなったものの、その痛みはすぐに消えてしまう。[pcms]

[bgm002]

*7934|
[fc]
[【主人公】]
「ここは……なっ、お前達！？」[pcms]

*7935|
[fc]
何か温かいものに包まれている感覚を覚えて下を見ると、茜達が裸で抱きついている光景が目に飛び込んできた。[pcms]

*7936|
[fc]
[【主人公】]
「な、なにやってるんだ一体！」[pcms]

[std_aka l ha p2 f01 lc x=130][trans_c cross time=300]

*7937|
[fc]
[vo_aka s="akane_0610"]
[【茜】]
「なにって、酷いなぁ……。先生の洗脳を解いてあげたのに」[pcms]

[std_aoi l ha p1 f01 le x=-200][trans_c cross time=300]

*7938|
[fc]
[vo_aoi s="aoi_0639"]
[【葵】]
「良かった……先生、元に戻ったんですね」[pcms]

[std_mia l ha p2 f01 rc x=-100 index=1][trans_c cross time=300]

*7939|
[fc]
[vo_mia s="mia_0722"]
[【ミア】]
「先生、わたし達に裸で抱きつかれて、興奮してるんじゃないの？」[pcms]

*7940|
[fc]
[【主人公】]
「バカ言うな。いいから離れろ！」[pcms]

;//立ち絵：ミズチ・オーラあり
;//立ち絵：カクエン・オーラあり

[chara_int_all]
[std_kak s rc o1]
[std_miz s lc o1][trans_c cross time=300]

*7941|
[fc]
[【カクエン】]
「おい、どうなってやがる！　洗脳は完璧じゃなかったのかよ！」[pcms]

*7942|
[fc]
[【ミズチ】]
「そのはずじゃ……ぐっ、ノワールか。やってくれおったな！」[pcms]

[bgm001]

[chara_int_all]
[std_mei m ha p1 f02 ce magan][trans_c cross time=300][trans_c cross time=300]

*7943|
[fc]
[vo_mei s="mei_0658"]
[【冥】]
「今更気付いても遅いわよ。ほら、みんな行くわよ！　目ざめよ、我が内に眠る常闇の印。オープンアルカナ！」[pcms]

[movie_hensin mei]

[std_aka m ha p1 f02 ce][trans_c cross time=300][trans_c cross time=300]

;//印の読みはしるし
*7944|
[fc]
[vo_aka s="akane_0611"]
[【茜】]
「目ざめよ、我が内に眠る情熱の印。オープンアルカナ！」[pcms]

[movie_hensin aka]

[std_aoi m ha p2 f02 ce][trans_c cross time=300][trans_c cross time=300]

;//印の読みはしるし
*7945|
[fc]
[vo_aoi s="aoi_0640"]
[【葵】]
「目ざめよ、我が内に眠る希望の印。オープンアルカナ！」[pcms]

[movie_hensin aoi]

[std_mia m ha p2 f02 ce][trans_c cross time=300][trans_c cross time=300]

;//印の読みはしるし
*7946|
[fc]
[vo_mia s="mia_0723"]
[【ミア】]
「目ざめよ、我が内に眠る陽光の印。オープンアルカナ！」[pcms]

[movie_hensin mia]

;//立ち絵：茜・魔法服
;//立ち絵：葵・魔法服
;//立ち絵：ミア・魔法服
;//立ち絵：冥・魔法服・武器あり

[chara_int_all]
[std_aoi m ma p2 f01 le]
[std_aka m ma p1 f01 lc x=80]
[std_mia m ma p2 f01 rc x=-80 index=1]
[std_mei m ma p2 f01 ri magan][trans_c cross time=300]

*7947|
[fc]
四人は一斉に変身し、冥魔達と向かい合った。[pcms]

*7948|
[fc]
[【主人公】]
「冥、無事に解放されたんだな」[pcms]

[std_mei m ma p2 f04 ri magan][trans_c cross time=300]

;//ここから話者：冥はノワールで
*7949|
[fc]
[vo_mei s="mei_0659"]
[【冥】 name=ノワール]
「まあね。それで、お姉ちゃん達とお兄さんを助けにきたってわけ」[pcms]

*7950|
[fc]
[【主人公】]
「そうか……助け方に若干違和感はあるが、とにかくありがとう」[pcms]

[std_mia m ma p2 f09 rc x=-80 index=1][trans_c cross time=300]

;//ここから話者：ミアはブランで
*7951|
[fc]
[vo_mia s="mia_0724"]
[【ミア】 name=ブラン]
「先生、一気にここでカタをつけちゃうから、支援よろしく！」[pcms]

*7952|
[fc]
[【主人公】]
「分かった！　みんな、俺の手を握ってくれ」[pcms]

[chara_int_all]
[std_aoi l ma p1 f01 le x=-200]
[std_aka l ma p2 f01 lc x=130]
[std_mia l ma p2 f09 rc x=-100 index=1]
[std_mei l ma p2 f04 ri x=150 magan][trans_c wave00 time=300]

*7953|
[fc]
俺の言葉に四人が再び集まり、俺の手を握る。[pcms]

*7954|
[fc]
それどころか密着してきて、さっきの裸での姿を思いだしてしまう。[pcms]

*7955|
[fc]
そのせいで、正面から抱きついている茜の身体に膨らんだ股間が当たってしまった。[pcms]

[std_aka l ma p2 f06 lc ho x=130][trans_c wave00 time=300]

;//ここから話者：茜はルージュで
*7956|
[fc]
[vo_aka s="akane_0612"]
[【茜】 name=ルージュ]
「もうっ、先生のエッチ！」[pcms]

*7957|
[fc]
[【主人公】]
「し、仕方ないだろ！　とにかく、これで頼む！」[pcms]

;レガート佐藤 魔法 魔法力を送る？主人公の支援能力

*7958|
[fc]
少しでも彼達の力になればと念じ、魔法力を送り込む。[pcms]

[chara_int_all]
[std_aoi m ma p2 f04 le]
[std_aka m ma p1 f04 lc x=80]
[std_mia m ma p2 f09 rc x=-80 index=1]
[std_mei m ma p2 f04 ri magan][trans_c cross time=300]

*7959|
[fc]
しばらくすると、四人はそっと俺から離れた。[pcms]

[chara_int_all]
[std_kak s lc o1]
[std_miz s rc o1][trans_c cross time=300]

*7960|
[fc]
[【ミズチ】]
「仕方あるまい、こうなったらこの場でお前達全員との決着をつけてやろうぞ！」[pcms]

*7961|
[fc]
[【カクエン】]
「ああ、今までの借り、全部ここで返してやるぜ！」[pcms]

[chara_int_all]
[std_aoi m ma p1 f02 lc]
[std_mei m maw p2 f02 rc magan index=2][trans_c cross time=300]

*7962|
[fc]
[vo_mei s="mei_0660"]
[【冥】 name=ノワール]
「ふん、お姉ちゃん、カクエンをやるよ！」[pcms]

;//ここから話者：葵はヴィオレで
*7963|
[fc]
[vo_aoi s="aoi_0641"]
[【葵】 name=ヴィオレ]
「藍……ええ、私がサポートするわ！」[pcms]

[chara_int_all]
[std_aoi m ma p1 f02 le]
[std_mei m maw p1 f02 lc magan]
[std_kak s rc o1 index=1]
[trans_c cross time=300]

*7964|
[fc]
[【カクエン】]
「ハッ、姉妹ならオレに勝てるとでも思ってるのか？　返り討ちにしてやるぜ！」[pcms]

[chara_int_all]
[std_aka m ma p1 f01 lc]
[std_mia m ma p1 f02 rc][trans_c cross time=300]

*7965|
[fc]
[vo_aka s="akane_0613"]
[【茜】 name=ルージュ]
「ミアちゃん、あたし達はミズチを！」[pcms]

*7966|
[fc]
[vo_mia s="mia_0725"]
[【ミア】 name=ブラン]
「分かったわ、とっちめてやりましょ！」[pcms]

[chara_int_all]
[std_aka m ma p1 f01 le index=5]
[std_miz s ce]
[std_mia m ma p1 f02 ri index=6][trans_c cross time=300]

*7967|
[fc]
[【ミズチ】]
「よかろう、ワシが二人とも相手にしてやる！」[pcms]

[se buf=0 storage="seD022"]

*7968|
[fc]
ミズチが大量の触手を伸ばし、茜とミアに先制攻撃を仕掛ける。[pcms]

[std_mia m ma p1 f01 ri index=6][trans_c cross time=300]

*7969|
[fc]
[vo_mia s="mia_0726"]
[【ミア】 name=ブラン]
「数で押そうとしても無駄よ！　[技_ラミ・ドゥ・リュミエール]！」[pcms]

[std_aka m ma p1 f11 le index=5][trans_c cross time=300]

*7970|
[fc]
[vo_aka s="akane_0614"]
[【茜】 name=ルージュ]
「[技_バレ・ブルロント]！」[pcms]

[movie_Magic_バレ・ブルロント]

*7971|
[fc]
茜とミアの魔法が触手を穿ち、切り裂く。[pcms]

*7972|
[fc]
今度は二人がミズチへと駆け出し、接近戦を挑んだ。[pcms]

*7973|
[fc]
[vo_aka s="akane_0615"]
[【茜】 name=ルージュ]
「てやぁぁぁぁっ！」[pcms]

;殴って戻って、動きスライドにならないように上下も少し動かす
[std_aka m ma p1 f02 le index=5][trans_c cross time=300]
;leデフォ位置[move_chara ch=aka x=-72 y=205 time=10 accel=1 wm]
[move_chara ch=aka x=250 y=20 time=100 accel=2 wm]

;//ＳＥ：殴る音
[se buf=0 storage="seB008"]
[quake_chara ch=miz vmax=40 hmax=10 time=20 accel=1 count=2 wait=false]

;[move_chara ch=aka pos=le y=205 time=200 accel=2 wm]
[move_chara ch=aka pos=le y=0 time=150 accel=1 wm]

[std_mia m ma p2 f02 ri index=6][trans_c cross time=300]

*7974|
[fc]
[vo_mia s="mia_0727"]
[【ミア】 name=ブラン]
「わたしだっているんだからね！」[pcms]

;riデフォ位置[move_chara ch=mia x=478 y=93 time=100 accel=1 wm]
[move_chara ch=mia x=-200 y=-20 time=100 accel=2 wm]

;//ＳＥ：殴る音
[se buf=0 storage="seB008"]
[quake_chara ch=miz vmax=40 hmax=10 time=20 accel=1 count=2 wait=false]

[move_chara ch=mia pos=ri y=20 time=150 accel=2 wm]

*7975|
[fc]
左右から挟撃する形で仕掛けてくる二人の魔法少女を、触手でいなすミズチ。[pcms]

*7976|
[fc]
逆に触手で反撃しようとすると、さらなる追撃がかかった。[pcms]

[std_aka m ma p1 f11 le index=5][trans_c cross time=300]

*7977|
[fc]
[vo_aka s="akane_0616"]
[【茜】 name=ルージュ]
「[技_フラム・デ・エクスプロージオン]！」[pcms]

[movie_Magic_エクスプロージオン]

[top red wipe time=1000]
[bg storage="bg029a"]
[std_aka m ma p1 f11 le index=5]
[std_miz s ce]
[std_mia m ma p2 f02 ri index=6][trans_c cross time=300]

;//ＳＥ：爆発音
[se buf=0 storage="SE1507"]

*7978|
[fc]
炎の大砲が至近距離で放たれ、無数の触手が焼け焦げる。[pcms]

*7979|
[fc]
再生しようにも焼けた部分がそれを邪魔し、ミズチは顔を歪ませた。[pcms]

*7980|
[fc]
[【ミズチ】]
「ちぃっ、こしゃくな真似を！」[pcms]

[std_mia m ma p1 f04 ri index=6][trans_c cross time=300]

*7981|
[fc]
[vo_mia s="mia_0728"]
[【ミア】 name=ブラン]
「ほらほら、よそ見してていいの？　[技_プリュ・バリアント]！」[pcms]

[movie_Magic_バリアント]

;//ＳＥ：無数の打撃音
[se buf=0 storage="SE1282"]

[top wht ruf_tb time=200]
[bg storage="bg029a"]
[std_aka m ma p1 f11 le index=5]
[std_miz s ce]
[std_mia m ma p1 f04 ri index=6][trans_c ruf_tb time=200]

*7982|
[fc]
今度は頭上から光の雨が降り注ぎ、さらに触手やミズチ本体を貫いた。[pcms]

*7983|
[fc]
至近距離での魔法の連射に、ミズチはさらに顔をしかめる。[pcms]

*7984|
[fc]
[【ミズチ】]
「ぐぅぅぅっ！　貴様ら、同士討ちが怖くないのか！」[pcms]

[std_mia m ma p1 f11 ri index=6][trans_c cross time=300]


*7985|
[fc]
[vo_mia s="mia_0729"]
[【ミア】 name=ブラン]
「連携してるんだから、同士討ちなんてするわけないじゃない」[pcms]

[std_aka m ma p1 f01 le index=5][trans_c cross time=300]

*7986|
[fc]
[vo_aka s="akane_0617"]
[【茜】 name=ルージュ]
「それに、あたし達は前より強くなってるんだもん。前みたいに後れを取ったりしないからね！」[pcms]

[std_miz s ce][trans_c cross time=300]

*7987|
[fc]
ミズチは魔法少女から大きく距離をとり、触手で牽制しながら回復を図る。[pcms]

*7988|
[fc]
そうはさせまいと茜とミアは再びミズチの懐へ飛び込もうとしていた。[pcms]

;//暗転
[bg storage="effect_black"][trans_c rl time=500]

;//背景：冥魔たちのアジト
[bg storage="bg029a"]

;//立ち絵：葵・魔法服
;//立ち絵：冥・魔法服・武器あり

[chara_int_all]
[std_aoi m ma p1 f02 le]
[std_mei m maw p1 f02 lc magan]
[std_kak s rc o1 index=1]
[trans_c rl time=300]

*7989|
[fc]
一方の冥と葵の姉妹コンビも、カクエンを押していた。[pcms]

*7990|
[fc]
[vo_mei s="mei_0661"]
[【冥】 name=ノワール]
「くらえ、[技_滅殺暗晦冥闇撃]！」[pcms]
;//（めっさつあんかいめいあんげき）。ルビとは合っていませんが発声はこれです。

[movie_Magic_滅殺暗晦冥闇撃]

;レガート佐藤 魔法 避けにくそうな球状の攻撃？

*7991|
[fc]
闇色の弾が冥から放たれ、カクエンがそれを躱そうとする。[pcms]

*7992|
[fc]
だが、急にカクエンの身体が弾に吸い込まれるように引きつけられ、肩が抉られた。[pcms]

*7993|
[fc]
[【カクエン】]
「ちぃっ、面倒くさい攻撃ばっかりしてきやがって！」[pcms]

[Magic_冥魔豪爆斧 nohit]

[std_mei m maw p1 f11 lc magan][trans_c cross time=0]
[se buf=1 storage="seA083"]
[dash ch=mei x=-300 accel=3 time=100 wm]
[std_mei m maw p1 f11 lc x=-300 magan][trans_c cross time=0]

[quake_bg vmax=0 hmax=40 time=20 accel=1 count=1 wait=true]
[quake_bg vmax=0 hmax=20 time=20 accel=1 count=1 wait=true]
[quake_bg vmax=0 hmax=10 time=20 accel=1 count=1 wait=true]

*7994|
[fc]
攻撃した冥に拳を振り上げ、高速で攻撃を繰り返すカクエン。[pcms]


[Magic_冥魔豪爆斧 nohit]

[se buf=1 storage="seA083"]
[dash ch=mei x=1000 accel=3 time=100 wm]
[std_mei m maw p1 f11 lc x=700 magan][trans_c cross time=0]

[quake_bg vmax=0 hmax=40 time=20 accel=1 count=1 wait=true]
[quake_bg vmax=0 hmax=20 time=20 accel=1 count=1 wait=true]
[quake_bg vmax=0 hmax=10 time=20 accel=1 count=1 wait=true]

[Magic_冥魔豪爆斧 nohit]

[se buf=1 storage="seA083"]
[dash ch=mei x=-400 accel=3 time=100 wm]
[std_mei m maw p1 f11 lc x=0 magan][trans_c cross time=0]

[quake_bg vmax=0 hmax=40 time=20 accel=1 count=1 wait=true]
[quake_bg vmax=0 hmax=20 time=20 accel=1 count=1 wait=true]
[quake_bg vmax=0 hmax=10 time=20 accel=1 count=1 wait=true]


;動かしたはいいけどあんまりかっこよくなってない気がする
;mm う、うーん
;[move_chara ch=mei x=-200 y=-35 time=200 accel=2 wm]
;[wait time=300]
;[move_chara ch=mei x=-200 y=35 time=100 accel=2 wm]
;[wait time=300]
;[move_chara ch=mei x=280 time=100 accel=2 wm]
;[wait time=500]
;[move_chara ch=mei pos=lc y=0 time=200 accel=2 wm]


*7995|
[fc]
冥もそれを軽いステップで躱していくものの、途中で着地に失敗してバランスを崩した。[pcms]

[se buf=1 storage="seB013"]
[quake_chara ch=mei vmax=8 hmax=0 time=20 accel=1 count=1 wait=true]

[std_mei m maw p2 f13 lc y=120 magan][trans_c cross time=300]
[quake_chara ch=mei vmax=4 hmax=4 time=20 accel=1 count=4 wait=false]

*7996|
[fc]
[vo_mei s="mei_0662"]
[【冥】 name=ノワール]
「えっ、やばっ！」[pcms]

*7997|
[fc]
[【カクエン】]
「バカめ、その腹に一撃お見舞いしてやるぜ！」[pcms]

[stop_quake_chara ch=mei]
[move_chara ch=aoi x=240 y=0 time=200 accel=2 wm]
[std_aoi m ma p2 f11 le x=240 index=5][trans_c cross time=300]

*7998|
[fc]
[vo_aoi s="aoi_0642"]
[【葵】 name=ヴィオレ]
「[技_アメシスト・ブークリエ]！」[pcms]

[movie_Magic_ブークリエ]

;レガート佐藤 魔法 盾
;//ＳＥ：弾く音
[se buf=0 storage="SE1280"]

*7999|
[fc]
[【カクエン】]
「なにぃ！？」[pcms]

*8000|
[fc]
冥の前に割り込んできた葵が、水晶の盾で攻撃を防ぐ。[pcms]

*8001|
[fc]
それでも威力を殺しきれず後退するものの、拳が冥に届くことはなかった。[pcms]

[std_aoi m ma p2 f02 le x=240 index=5][trans_c cross time=300]

*8002|
[fc]
[vo_aoi s="aoi_0643"]
[【葵】 name=ヴィオレ]
「今度こそ私は藍を守ってみせる！」[pcms]

[move_chara ch=mei x=140 y=-600 time=300 accel=1 wm]
[move_chara ch=mei x=180 y=-200 time=200 accel=2 wm]

;[se buf=0 storage="SE1066"]
[se buf=0 storage="SE1063_2"]

[quake_chara ch=kak vmax=40 hmax=10 time=20 accel=1 count=2 wait=false]

[std_aoi m ma p2 f02 le x=240 index=2]
[std_mei m maw p2 f01 lc x=200 magan index=3]
[std_kak s rc o1 index=1][trans_c cross time=300]

*8003|
[fc]
[vo_mei s="mei_0663"]
[【冥】 name=ノワール]
「お姉ちゃん……。そういう台詞、クサいわよ！」[pcms]

*8004|
[fc]
そう言いながら、冥は葵の頭上を飛び越え、カクエンを切りつける。[pcms]

*8005|
[fc]
その顔は少しはにかんでいるように見えた。[pcms]

*8006|
[fc]
[【カクエン】]
「ちっ、攻防のバランスが取れて面倒くさいことになってやがるな……どっちか片方だけなら楽勝なのによ」[pcms]

[std_aoi m ma p2 f02 le x=240 index=2]
[std_mei m maw p1 f04 lc x=200 magan index=3]
[std_kak s rc o1 index=1]
[trans_c cross time=300]

*8007|
[fc]
[vo_mei s="mei_0664"]
[【冥】 name=ノワール]
「なに言ってるのよ｡あんたなんてわたし一人でも十分なんだから！　[技_絶対断絶弾劾迷宮]！」[pcms]
;//（ぜったいだんぜつだんがいめいきゅう）。ルビとは合っていませんが発声はこれです。

;レガート佐藤 魔法 冥の重力魔法

[move_chara ch=kak y=170 time=3000 accel=1 wm]

*8008|
[fc]
冥の放った魔法が発動すると同時に、カクエンは膝を突いた。[pcms]

[std_kak s rc o1 y=170 index=1][trans_c cross time=300]

*8009|
[fc]
立ち上がろうとするものの、さらに手を突かされる。[pcms]

*8010|
[fc]
[【カクエン】]
「ぐぉぉぉぉぉぉっ！　重力が以前よりも強くなってやがる！」[pcms]

[std_mei m maw p1 f01 lc x=200 magan][std_kak s rc o1 y=170 index=1][trans_c cross time=300]

*8011|
[fc]
[vo_mei s="mei_0665"]
[【冥】 name=ノワール]
「ふふん、パワーアップしてしまえば、あんたなんて雑魚なんだからね」[pcms]

[std_aoi m ma p2 f11 le x=240][std_kak s rc o1 y=170 index=1][trans_c cross time=300]

*8012|
[fc]
[vo_aoi s="aoi_0644"]
[【葵】 name=ヴィオレ]
「油断しないで、藍！　まだ決着はついてないわ！」[pcms]

*8013|
[fc]
さすがは姉妹、攻防という意味でも積極性でもバランスが取れている。[pcms]

*8014|
[fc]
このまま行けば、あの二体を倒すのは時間の問題じゃないか？[pcms]

*8015|
[fc]
[【ミズチ】]
「カクエン、先に奴をやれ！」[pcms]

*8016|
[fc]
[【カクエン】]
「どうやらそうするしかないらしいな」[pcms]

[std_mei m maw p1 f02 lc x=200 magan][std_kak s rc o1 y=170 index=1][trans_c cross time=300]

*8017|
[fc]
[vo_mei s="mei_0666"]
[【冥】 name=ノワール]
「お兄さんのところになんか行かせないわよ！　はぁぁぁぁぁっ！」[pcms]

;レガート佐藤 魔法 冥の重力魔法
[movie_Magic_滅殺暗晦冥闇撃]

*8018|
[fc]
冥はさらに重力をかけ、カクエンを地面に縛り付ける。[pcms]

*8019|
[fc]
そんな中、カクエンは俺に視線を向けて笑みを浮かべた。[pcms]

*8020|
[fc]
[【カクエン】]
「はっ……オレが近接戦闘しか出来ないバカだと思うなよ！」[pcms]

;レガート佐藤 魔法 カクエンの元気玉
;[Magic_冥魔豪爆斧]
;mm まだ撃ってないのか
[se buf=0 storage="seB108"]

*8021|
[fc]
カクエンの頭上に突然巨大な球体が現れ、それが渦を巻き始める。[pcms]

;mm ミズチの攻撃サキに出そう
[Magic_冥魔傀儡陣]
[se buf=0 storage="seD022"]

*8022|
[fc]
間違いなく俺を狙ってることに気付いて逃げようとした瞬間、足に激痛が走った。[pcms]

;レガート佐藤 場面転換も兼ねた赤フラにしちゃったほうがスムーズか

[top red time=50]
[bg storage="bg029a"]
;[std_aoi m ma p2 f11 le x=240]
;[std_mei m maw p1 f02 lc x=200 magan]
;[std_kak s rc o1 y=200 index=1]
[trans_c cross time=300]

*8023|
[fc]
[【主人公】]
「ぐぅっ！？　これは……ミズチの触手か？」[pcms]

*8024|
[fc]
茜に引きちぎられた触手が俺の足を掠め、地面に突き刺さっていた。[pcms]

*8025|
[fc]
それでもなんとか走ろうとするものの、足に激痛が走ってその場にくずおれてしまう。[pcms]

[bg storage="effect_black"][trans_c rl time=300]

;//背景：冥魔たちのアジト
[bg storage="bg029a"]
[std_aka m ma p1 f13 le index=5]
[std_miz s ce]
[std_mia m ma p1 f02 ri index=6][trans_c rl time=300]

*8026|
[fc]
[vo_aka s="akane_0618"]
[【茜】 name=ルージュ]
「先生、逃げてぇっ！」[pcms]

*8027|
[fc]
[vo_mia s="mia_0730"]
[【ミア】 name=ブラン]
「ミズチ、邪魔よ！　そこをどきなさいよ！」[pcms]

*8028|
[fc]
[【ミズチ】]
「貴様らを救出に行かせるものか！　ここでお前達の先生とやらが死ぬのを見届けるがいい！」[pcms]

*8029|
[fc]
[【カクエン】]
「死ねぇぇぇぇぇぇぇぇっ！」[pcms]

[chara_int_all]
[std_aoi l ma p3 f11 ce][trans_c cross time=300]

*8030|
[fc]
[vo_aoi s="aoi_0645"]
[【葵】 name=ヴィオレ]
「先生も私が守ります！　紫紺の輝きよ、盾となりて我を守りたまえ！　アメシスト・ブークリエ！」[pcms]

[movie_Magic_ブークリエ]

;レガート佐藤 魔法 盾
[se buf=0 storage="SE1280"]

*8031|
[fc]
渦巻く巨大な球体は葵の盾にぶつかり、激しい音を立てる。[pcms]

*8032|
[fc]
地面を削り、さらに葵の盾をも削りながら、さらに俺の方へと葵を押していく。[pcms]

[std_aoi l ma p3 f12 ce][trans_c cross time=300]

*8033|
[fc]
[vo_aoi s="aoi_0646"]
[【葵】 name=ヴィオレ]
「く……うぅぅぅぅぅっ！」[pcms]

*8034|
[fc]
[【カクエン】]
「どうしたノワール。早く魔法を解かないとやばいんじゃねぇのか？」[pcms]

*8035|
[fc]
[vo_mei s="mei_0667"]
[【冥】 name=ノワール]
「う、うるさいっ！」[pcms]

*8036|
[fc]
冥はカクエンを重力で抑えつけるのが精一杯で動けない。[pcms]

*8037|
[fc]
葵は必死に弾を止めようとしているが、盾がさらに削られひび割れていく。[pcms]

*8038|
[fc]
[vo_aoi s="aoi_0647"]
[【葵】 name=ヴィオレ]
「だめ、これ以上耐えられない……っ！」[pcms]

*8039|
[fc]
[【主人公】]
「葵ーーー！」[pcms]

;//ＳＥ：切り裂く音
[se buf=0 storage="SE1282"]

[top wht time=30]

*8040|
[fc]
[vo_aka s="akane_0619"]
[【茜】 name=ルージュ]
「葵ちゃん！」[pcms]

*8041|
[fc]
[vo_mia s="mia_0731"]
[【ミア】 name=ブラン]
「そんな、葵……」[pcms]

*8042|
[fc]
[【カクエン】]
「はははっ、ざまあみやがれ！　まずはこれで一人……ん？」[pcms]

[bg storage="bg029a"]
[std_aoi l ma p3 f12 ce][trans_c cross time=300]

*8043|
[fc]
[vo_aoi s="aoi_0648"]
[【葵】 name=ヴィオレ]
「…………」[pcms]

*8044|
[fc]
渦巻く弾に飲み込まれたはずの葵は、無傷でその場に立ち尽くしていた。[pcms]

*8045|
[fc]
俺は傷ついた足を引きずり、なんとか葵の下にたどり着く。[pcms]

[std_aoi l ma p1 f12 ce][trans_c cross time=300]

*8046|
[fc]
[【主人公】]
「葵、無事か！」[pcms]

*8047|
[fc]
[vo_aoi s="aoi_0649"]
[【葵】 name=ヴィオレ]
「あ……あぁぁ……私、また……そんな……」[pcms]

[std_aoi xl ma p1 f10 ce][trans_c cross time=300]

*8048|
[fc]
葵は声を震わせながらその場に座り込んでしまう。[pcms]

;[chara_int_all][trans_c cross time=300]

*8049|
[fc]
その足元には、無残な姿を晒した冥の姿があった。[pcms]

*8050|
[fc]
[【主人公】]
「冥！？　まさか、葵をかばって……」[pcms]

*8051|
[fc]
[vo_aoi s="aoi_0650"]
[【葵】 name=ヴィオレ]
「いや……いやぁっ！　藍、死なないで、お願い！」[pcms]

;レガート佐藤 魔法 回復

*8052|
[fc]
葵は両手をかざし回復魔法を必死にかけるが、冥はピクリとも動かない。[pcms]

*8053|
[fc]
傷は塞がっていく様子を見るとまだ息はあるのかもしれないが、出血はかなり激しい。[pcms]

*8054|
[fc]
俺は冥の手を取り握ると、もう片方の手で葵の手を握った。[pcms]

*8055|
[fc]
[【主人公】]
「葵、妹を助けたい、無事に戻ってきて欲しいと強く願うんだ」[pcms]

*8056|
[fc]
何故、そんなことを言ったのか自分にも分からなかった。[pcms]

*8057|
[fc]
だが、不思議とそう言うべきだと思ったのだ。[pcms]

*8058|
[fc]
[vo_aoi s="aoi_0651"]
[【葵】 name=ヴィオレ]
「先生……はい、分かりました」[pcms]

[chara_int_all]
[std_aka m ma p1 f02 lc]
[std_mia m ma p2 f02 rc][trans_c cross time=300]

*8059|
[fc]
[vo_aka s="akane_0620"]
[【茜】 name=ルージュ]
「ミアちゃん、あたしと二人で葵ちゃん達を守るよ！」[pcms]

*8060|
[fc]
[vo_mia s="mia_0732"]
[【ミア】 name=ブラン]
「当然！　さあ、今度はわたしが相手よ！」[pcms]

*8061|
[fc]
茜がカクエンの前に立ちふさがり、ミアがミズチと相対する。[pcms]

*8062|
[fc]
俺は二人を信じ、葵と共に冥の無事を必死に祈った。[pcms]

*8063|
[fc]
すると突然、冥の眼帯から光が漏れ始め、俺と葵を包み込んでいく。[pcms]

*8064|
[fc]
そして身体が浮き上がる感覚を覚えると同時に、意識がふわりと軽くなった。[pcms]

;//背景：白
[ANTEN wht wave]

[bgm014]

;//背景：崩落事故後の屋内・日中
[bg storage="bg030a"][trans_c wave time=1000]

*8065|
[fc]
[【主人公】]
（これは……二年前の光景か？）[pcms]

*8066|
[fc]
俺は崩れたビルの中にいた。[pcms]

*8067|
[fc]
それが二年前だとすぐに分かったのは、あの時の光景が目に焼き付いているからかもしれない。[pcms]

[std_aoi m ma p1 f01 le off]

;//フェイスのみ：葵・魔法服
*8068|
[fc]
[vo_aoi s="aoi_0652"]
[【葵】 name=ヴィオレ]
（先生、ここはもしかして……藍の精神世界じゃないでしょうか）[pcms]

;//心の声　音声加工

*8069|
[fc]
[【主人公】]
（ああ、もしかしたら、そうかもしれないな）[pcms]

*8070|
[fc]
葵の姿はやはり見えないが、手を握っている感覚が残っているおかげで、彼女がすぐそばにいるのが分かった。[pcms]

;//ここから話者：主人公は？？？で

*8071|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
（そうだ……ここは二年前、冥魔と魔法少女の戦いが繰り広げられた場所だ）[pcms]

*8072|
[fc]
冥魔のやり方が肌が合わなかったオレは、魔法少女達と共にこの街にいた。[pcms]

*8073|
[fc]
だが、それを嗅ぎ付けた冥魔によって戦いが生じ、ここまでの大惨事になってしまった。[pcms]

*8074|
[fc]
激しい戦闘の末に冥魔が勝利し、魔法少女達はその尊い命を奪われてしまった。[pcms]

*8075|
[fc]
そしてオレもビルの崩落に巻き込まれ、重傷を負ってしまった。[pcms]

*8076|
[fc]
冥魔がオレを見付けるのも時間の問題……さすがにこうも身体が損傷してしまっては、逃げることもままならない。[pcms]

*8077|
[fc]
あいつらに利用されるのは癪だが、肉体の再生はおろか転生する魔法力も残っていない。[pcms]

*8078|
[fc]
せめて、精神だけでも転生を試みてみるか。[pcms]

;//ＳＥ：倒れる音
[se buf=0 storage="SE320_2"]

*8079|
[fc]
そんなことを考えていると、上から何かが落ちてきた。[pcms]

;レガート佐藤 昔のシーンなので必要なのは「制服姿・目が通常・眼帯無し・左目から流血」のため服装・目が問題
;フェイスウィンドウ非表示で対処
;[std_mei m ha p2 f10 le magan off]

;//ここから話者：冥は藍で
[std_ai m p1 ce][trans_c cross time=300]


*8080|
[fc]
[vo_mei s="mei_0668"]
;[【冥】 name=藍]
[【藍】]
「あぐっ！　う、うぅ……痛い、痛いよぉ……」[pcms]

*8081|
[fc]
どうやら、崩落事故に巻き込まれた少女らしい。[pcms]

*8082|
[fc]
無数の瓦礫と共に上から落ちてきたらしく、床に激突してうめき声を上げていた。[pcms]

*8083|
[fc]
落ちる時に左目を負傷したのか、目から血が流れ出していた。[pcms]

*8084|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「すまない、どうやら巻き込んでしまったようだ」[pcms]


*8085|
[fc]
[vo_mei s="mei_0669"]
;[【冥】 name=藍]
[【藍】]
「痛い、痛いよぉ……左目が痛くて死んじゃう……誰か、誰か助けて……」[pcms]

*8086|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「分かった。とはいえ、君の身体を再生するほどの余力は今のオレにはない……。そうだな、このくらいなら出来そうだ」[pcms]

[top red blood1]
[bg storage="bg030a"][trans_c cross time=1000]

*8087|
[fc]
瞬間、オレの左目に激痛が走り、涙が溢れ出る。[pcms]

*8088|
[fc]
いや、涙だけではなく、血も流れ出したようだ。[pcms]

[std_ai m p1 ce][trans_c cross time=300]

*8089|
[fc]
[vo_mei s="mei_0670"]
;[【冥】 name=藍]
[【藍】]
「えっ……目が……痛くない。えっ、お兄さん、怪我してるの！？　左目から血が……」[pcms]

*8090|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「なに、気にすることはない。オレの目と君の目を交換したんだ。ただ、オレの目は強い力を持っている。少し面倒なことになるかもしれない」[pcms]

*8091|
[fc]
[vo_mei s="mei_0671"]
;[【冥】 name=藍]
[【藍】]
「え……頭の中に、何かが浮かんでくる……魔法少女？　なにそれ、わかんないよ！　冥魔ってなに？　えっ、えっ？」[pcms]

*8092|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「そうか、君は魔法少女の素質があったんだな。すまない、君は今日から魔法少女なんだ」[pcms]

*8093|
[fc]
[vo_mei s="mei_0672"]
;[【冥】 name=藍]
[【藍】]
「う……ん。分からないけど、分かったような気がする。ということは、お兄さんは……」[pcms]

;//ＳＥ：倒れる音
[se buf=0 storage="seB017"]

*8094|
[fc]
彼女のすぐそばに、何かがもう一つ落ちてきた。[pcms]

*8095|
[fc]
それもまた彼女と似た背格好の少女だったが、頭と背中に大きな傷があり、大量の血が床に激突した時に飛び散った。[pcms]

*8096|
[fc]
[vo_mei s="mei_0673"]
;[【冥】 name=藍]
[【藍】]
「いやぁぁぁぁっ！　お姉ちゃん、お姉ちゃん！　あの時私をかばって瓦礫を……」[pcms]

*8097|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「彼女は君の姉か？」[pcms]

*8098|
[fc]
[vo_mei s="mei_0674"]
;[【冥】 name=藍]
[【藍】]
「そうなの！　お姉ちゃん、私が落ちそうになったのを助けようとして……でも、瓦礫が降ってきてそれで……」[pcms]

*8099|
[fc]
なるほど、その時に彼女は先に一人で落ちてきたというわけか。[pcms]

*8100|
[fc]
彼女の怪我は左目だけだったが、こちらの女の子はかなりの重傷だ。[pcms]

*8101|
[fc]
おそらく意識もなく、大量に血が出ているのを見るとそう長くはないだろう。[pcms]

[std_aoi m se p1 f12 le off]

*8102|
[fc]
[vo_aoi s="aoi_0653"]
[【葵】]
「あ……い……あなた、だけでも……」[pcms]

*8103|
[fc]
[vo_mei s="mei_0675"]
;[【冥】 name=藍]
[【藍】]
「お姉ちゃん、お姉ちゃん！　やだっ、死んじゃやだぁぁぁぁっ！」[pcms]

*8104|
[fc]
[vo_mei s="mei_0676"]
;[【冥】 name=藍]
[【藍】]
「ねぇ、お姉ちゃんを助けて！　お願い、あなたなら出来るんでしょ？」[pcms]

*8105|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「いや、オレには彼女を助けられるだけの魔法力は残っていない……」[pcms]

*8106|
[fc]
[vo_mei s="mei_0677"]
;[【冥】 name=藍]
[【藍】]
「だったら、私の魔法力を使って！　それならなんとかなるでしょ！」[pcms]

*8107|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「なるほど、それならいけるかもしれない。オレの手を握ってくれ」[pcms]

;レガート佐藤 魔法 魔法力を送る？主人公の支援能力

*8108|
[fc]
彼女がオレの手を強く握ると、彼女の姉を助けたいという想いが強く伝わってくる。[pcms]

*8109|
[fc]
その魔法力を使って、女の子の傷を回復させた。[pcms]

;レガート佐藤 魔法 回復
[se buf=0 storage="SE3603"]
[魔法 白 smag=0 dmag=10 time=1000 消さない]
[chara_int layer=12][trans_c cross time=300]

*8110|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「これで恐らく大丈夫だろう。足りない血液も再生させておいた」[pcms]

*8111|
[fc]
[vo_mei s="mei_0678"]
;[【冥】 name=藍]
[【藍】]
「良かった……ありがとう」[pcms]

*8112|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「なに、気にするな。オレは君の願いに応えただけだ。とはいえ、さすがにそろそろ精神の転生をしないといけないな」[pcms]

*8113|
[fc]
[vo_mei s="mei_0679"]
;[【冥】 name=藍]
[【藍】]
「精神の転生？」[pcms]

*8114|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「ああ。肉体まるごとの転生をする余力はなくてね。幸い……といっていいか分からないが、近くに転生出来そうな肉体がある」[pcms]

*8115|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「そこに精神を転生させて同化すれば、なんとか生きながらえることが出来るはずだ」[pcms]

*8116|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「ただ、新しい肉体に精神が固着するまでは、こちらの肉体も維持しなければならない。それまでの間に冥魔に見つからなければいいが」[pcms]

*8117|
[fc]
[vo_mei s="mei_0680"]
;[【冥】 name=藍]
[【藍】]
「見つかったらどうなるの？」[pcms]

*8118|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「奴らのことだ、何かしら利用方法を見付けてしまうだろう。最悪、肉体を魔力源として食らってしまうかもしれない」[pcms]

*8119|
[fc]
[vo_mei s="mei_0681"]
;[【冥】 name=藍]
[【藍】]
「そんな！　だったら、私があなたの肉体を守る！　私とお姉ちゃんを助けてくれたんだもの！」[pcms]

*8120|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「そうか、もし頼めるならお願いしたいところだ。とはいえ、いつまでも君一人で守り続けるのは難しいだろう……」[pcms]

*8121|
[fc]
[vo_mei s="mei_0682"]
;[【冥】 name=藍]
[【藍】]
「他に魔法少女はいないの？」[pcms]

*8122|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「残念ながら。この戦いで冥魔に滅ぼされてしまった。今いる魔法少女は君だけだ」[pcms]

*8123|
[fc]
[vo_mei s="mei_0683"]
;[【冥】 name=藍]
[【藍】]
「じゃあ、魔法少女は素質さえあれば新しく仲間が増えるってこと？」[pcms]

*8124|
[fc]
彼女の言葉に、オレは一つの閃きを得ていた。[pcms]

*8125|
[fc]
とはいえ、これは新たなる犠牲者を増やすだけかもしれない。[pcms]

*8126|
[fc]
[vo_mei s="mei_0684"]
;[【冥】 name=藍]
[【藍】]
「あなたが何を考えているかは分かるよ。でも、魔法少女がいなければ、この世界は冥魔の思うがままになってしまうもの」[pcms]

*8127|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「確かにそうだな。……都合がいい。近くに先代の魔法少女の残滓がある。それを元に、素質があるものを探してみよう」[pcms]

;レガート佐藤 魔法 探索

*8128|
[fc]
オレは魔法少女の残滓に魔法力を込め、新たなる素質のある者へと向かわせた。[pcms]

*8129|
[fc]
すると、３つの残滓が反応して飛び散っていく。[pcms]

*8130|
[fc]
その一つは、すぐ横で倒れている彼女の姉の体内へと吸収されていった。[pcms]

*8131|
[fc]
[vo_mei s="mei_0685"]
;[【冥】 name=藍]
[【藍】]
「新しい魔法少女が誕生すれば、あなたの肉体を守るのも簡単になるかも」[pcms]

*8132|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「いや、さすがにそれは難しい。残滓から魔法少女が生まれるにはどうしても時間がかかる。恐らくは数年かかるだろう」[pcms]

*8133|
[fc]
[vo_mei s="mei_0686"]
;[【冥】 name=藍]
[【藍】]
「そっか……残念。でも、私一人でもあなたを守ってみせるよ」[pcms]

*8134|
[fc]
とはいえ、魔法少女を全滅させるほどの力を持った冥魔が相手だ。[pcms]

*8135|
[fc]
彼女一人では荷が重い……ほどなく敗北し、慰み者になるのが関の山だろう。[pcms]

*8136|
[fc]
[vo_mei s="mei_0687"]
;[【冥】 name=藍]
[【藍】]
「……私一人で、守りきれるかな」[pcms]

*8137|
[fc]
彼女も現状を理解したのか、そんな言葉を呟く。[pcms]

*8138|
[fc]
さすがに、こんな無垢な少女に命運を任せ、過酷を押し付けるのは避けたい。[pcms]

*8139|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「一つだけ方法がなくはない。君はオレの僕として、冥魔の一員になるというのはどうだろうか」[pcms]

*8140|
[fc]
[vo_mei s="mei_0688"]
;[【冥】 name=藍]
[【藍】]
「えっ？　私が冥魔の一員に？　それって、潜入スパイみたいな感じになるってこと？」[pcms]

*8141|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「おそらくはそういうことだ。君はオレの肉体を管理、世話する者となり、冥魔の監視下で復活を待っていてほしい」[pcms]

*8142|
[fc]
[vo_mei s="mei_0689"]
;[【冥】 name=藍]
[【藍】]
「そっか、冥魔の仲間のフリをすれば、少なくとも戦わなくていいものね」[pcms]

*8143|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「ただ、極悪非道の冥魔と共に長い時を過ごすには過酷な現実が待ち構えているはずだ」[pcms]

*8144|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「純真な君には耐えられないかもしれない。……もし君が望むなら、記憶の封印と改変で耐えられるようになるかもしれない」[pcms]

*8145|
[fc]
[vo_mei s="mei_0690"]
;[【冥】 name=藍]
[【藍】]
「いいよ、それでも。あなたにはたくさん助けてもらったもの。あなたを助ける為なら、どんな協力でもするから」[pcms]

*8146|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「分かった。では少し君の記憶をいじらせてもらおう。これから君は冥魔少女ノワール・四堂冥だ」[pcms]

*8147|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「彼女は安全な場所に転送しておこう。さすがにここにいては、また巻き込まれるかもしれない」[pcms]

[se buf=0 storage="SE1202"]

*8148|
[fc]
葵の身体が淡い光に包まれ、やがてその姿は風景に溶けるように消えていった。[pcms]

*8149|
[fc]
;[【主人公】 name=？？？]
[ns]？？？[nse]
「そろそろオレも限界が近い。君の記憶を改ざんして、精神の転生をするとしよう」[pcms]

*8150|
[fc]
[vo_mei s="mei_0691"]
;[【冥】 name=藍]
[【藍】]
「うん……それじゃ、またね……」[pcms]

;//暗転
[top blk wave00]
;//ここから話者：主人公は主人公で

[bg storage="bg030a"][trans_c cross time=1000]

*8151|
[fc]
[【主人公】 reset]
「そうか、そういうことだったのか……葵、君は妹を見殺しにしたわけじゃなかったんだ」[pcms]

*8152|
[fc]
[【主人公】]
「きっと落ちてくる瓦礫から庇った時に、手を離してしまったんだよ」[pcms]

;//立ち絵：葵・魔法服
[std_aoi m ma p1 f08 ce][trans_c cross time=300]

*8153|
[fc]
[vo_aoi s="aoi_0654"]
[【葵】 name=ヴィオレ]
「そして、意識を失って落ちてきた私を、藍が助けてくれた……」[pcms]

;//立ち絵：冥・魔法服
[chara_int_all]
[std_aoi m ma p1 f07 lc]
[std_mei m ma p2 f03 rc magan][trans_c cross time=300]

;//ここから話者：冥はノワールで
*8154|
[fc]
[vo_mei s="mei_0692"]
[【冥】 name=ノワール]
「そっか、私……お姉ちゃんに庇ってもらって、あのくらいの傷で済んだんだ」[pcms]

[std_mei m ma p2 f13 rc magan][trans_c cross time=300]

*8155|
[fc]
[vo_mei s="mei_0693"]
[【冥】 name=ノワール]
「それで、私は魔法少女なって……記憶を改ざんされたおかげで、あんな風に……。ごめん、お姉ちゃん」[pcms]

[std_aoi m ma p1 f04 lc][trans_c cross time=300]

*8156|
[fc]
[vo_aoi s="aoi_0655"]
[【葵】 name=ヴィオレ]
「ううん……私の方こそ、藍にお礼を言わなくちゃ。藍に助けられたんだもの」[pcms]

*8157|
[fc]
[【主人公】]
「そして俺は……いや、オレが……あの時、藍に魔眼を渡したんだな」[pcms]

[std_mei m ma p2 f07 rc magan][trans_c cross time=300]

*8158|
[fc]
[vo_mei s="mei_0694"]
[【冥】 name=ノワール]
「そう……なるね。お兄さん。ううん……冥王さま」[pcms]

*8159|
[fc]
俺はあの時、崩落事故に巻き込まれて死んだも同然だった。[pcms]

*8160|
[fc]
そこに冥王の精神が転生してきて、俺との同化を図った。[pcms]

*8161|
[fc]
冥王……いや、オレは俺と同化する際に記憶の混濁が生じ、俺として生きてきたわけだ。[pcms]

*8162|
[fc]
結界の中に入れたのも、魔法少女に力を貸し与えることが出来たのも、俺が冥王だったからか……今なら理解出来る。[pcms]

[std_aoi m ma p1 f08 lc][trans_c cross time=300]

*8163|
[fc]
[vo_aoi s="aoi_0656"]
[【葵】 name=ヴィオレ]
「冥王……冥魔と魔法少女の始祖にして、全ての願いを叶える存在……」[pcms]

[std_mei m ma p2 f03 rc magan][trans_c cross time=300]

*8164|
[fc]
[vo_mei s="mei_0695"]
[【冥】 name=ノワール]
「その強大な力の為に冥魔に付け狙われ、魔法少女にかくまわれていた……」[pcms]

*8165|
[fc]
[【主人公】]
「そして俺は冥魔の手に堕ち、洗脳されたものの、魔法少女によって洗脳を解かれた、というわけか」[pcms]

*8166|
[fc]
ようやく、不思議に思っていたことの全てが繋がった。[pcms]

*8167|
[fc]
あとは、この精神世界から出るだけだ。[pcms]

*8168|
[fc]
[【主人公】]
「帰ろう……ふたりとも。茜達が待っている」[pcms]

[std_aoi m ma p1 f04 lc][trans_c cross time=300]

*8169|
[fc]
[vo_aoi s="aoi_0657"]
[【葵】 name=ヴィオレ]
「はい、先生」[pcms]

[std_mei m ma p2 f01 rc magan][trans_c cross time=300]

*8170|
[fc]
[vo_mei s="mei_0696"]
[【冥】 name=ノワール]
「うん、お姉ちゃん、お兄さん。迎えに来てくれてありがとう」[pcms]

;//条件分岐発生（四択）
;//『arcana100を通過している』→arcana102
;//『上記以外の場合』→arcana104

[ANTEN wht wave]

;[if    exp="f.l_s100 == 1"][jump storage="arcana102.ks" target=*TOP]
;mm ↑はarcana100はカラファイルで、『arcana055』を経過している　葵に声をかけると同義なのでf.l_s055を条件に使う
[if    exp="f.l_s055 == 1"][jump storage="arcana102.ks" target=*TOP]
[endif]
[jump storage="arcana104.ks" target=*TOP]
