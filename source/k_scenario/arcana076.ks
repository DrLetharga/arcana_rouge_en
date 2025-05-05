;//arcana076
*TOP
[eval exp="f.l_s076 = 1"][name_allreset]

; 回想シーン開放フラグ
[eval exp="sf.SRP15 = 1"]
*scene_start
[if exp="tf.scene_mode == 1"]
	;†[scene_exp_init]
[endif]

;//このファイルは途中まで三人称

[bgm019]
[se buf=2 storage="seD026" loop]

;mm 長尺ev46だけ貼った

;//イベント画像指定：ev46i
;mm 901を踏んでたらTV仕様 こうするしかないか
[evcg storage="ev46i" y=0 tvoff cond="f.l_s901 == 0"][evcg storage="ev46i" y=0 tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5448|
[fc]
三人の魔法少女は触手に囚われの身となり、虚ろな目で宙に持ち上げられていた。[pcms]

*5449|
[fc]
その周りには男達がおり、彼女達の悲痛な姿を前のめりに凝視している。[pcms]

;//このシーンの話者：茜はルージュで
*5450|
[fc]
[vo_aka s="akane_0450"]
[【茜】 name=ルージュ]
「あ……やぁ、もう……無理……」[pcms]

[sysbt_meswin clear]
[move layer=0 time=2000 accel=1 path="(0,-450,255)"][wm canskip=true]
[evcg storage="ev46i" y=-450 tvoff cond="f.l_s901 == 0"][evcg storage="ev46i" y=-450 tv cond="f.l_s901 == 1"][trans_c cross time=0]


;//このシーンの話者：葵はヴィオレで
*5451|
[fc]
[vo_aoi s="aoi_0419"]
[【葵】 name=ヴィオレ]
「ひぃ、はぁ……うぅ、お腹、苦しい……」[pcms]

[sysbt_meswin clear]
[move layer=0 time=2000 accel=1 path="(0,-750,255)"][wm canskip=true]
[evcg storage="ev46i" y=-750 tvoff cond="f.l_s901 == 0"][evcg storage="ev46i" y=-750 tv cond="f.l_s901 == 1"][trans_c cross time=0]


;//このシーンの話者：ミアはブランで
*5452|
[fc]
[vo_mia s="mia_0539"]
[【ミア】 name=ブラン]
「許して……もうやだぁ……う、うぅぅ……」[pcms]

*5453|
[fc]
どれほどの精液を浴びせられたのか、柔肌には精液が余すところなくぶちまけられている。[pcms]

*5454|
[fc]
開きっぱなしになっている秘裂からも白濁が垂れ落ち、彼女達の悲惨な現状が露わになっていた。[pcms]

*5455|
[fc]
[【ミズチ】]
「ククク……随分大人しくなったのう。じゃが、宴はこれからじゃ」[pcms]

*5456|
[fc]
[vo_aka s="akane_0451"]
[【茜】 name=ルージュ]
「そんな……もうやめ……」[pcms]

*5457|
[fc]
白濁を吐き出しながら、茜が涙ながらに懇願する。[pcms]

*5458|
[fc]
[【ミズチ】]
「さぁ、者共よ。この娘達を見て自ら犯したいとは思わぬか？　欲望を満たしたいと思う者は、前に出よ」[pcms]

*5459|
[fc]
[ns]男性Ａ[nse]
「マジか！　お、俺は行くぞ！」[pcms]

*5460|
[fc]
[ns]男性Ｂ[nse]
「俺も我慢出来ねぇ！」[pcms]

*5461|
[fc]
周りで見ていた男達は我先にと歩み出て、魔法少女達の元に詰めかける。[pcms]

*5462|
[fc]
彼らを迎えるように、触手は茜達を動かした。[pcms]

[stopse_fadeout buf=2 time=500]

;//イベント画像指定：ev41a
[evcg storage="ev41a" cond="f.l_s901 == 0"][evcg storage="ev41a" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5463|
[fc]
[vo_mia s="mia_0540"]
[【ミア】 name=ブラン]
「う、臭い……こんなのに、何しろって言うの？」[pcms]

*5464|
[fc]
男達の前に並べられたミア達は、触手によって腕を動かされ、ペニスを無理矢理握らされる。[pcms]

*5465|
[fc]
熱を帯びた肉棒の感触は気持ち悪い以外の何物でもなく、三人はこぞって眉をひそめた。[pcms]

*5466|
[fc]
[【ミズチ】]
「彼らに奉仕してやれ、魔法少女。言うまでもないが、断れば……分かっておるじゃろう？」[pcms]

[se buf=0 storage="seD022"]

*5467|
[fc]
ミズチは触手をくゆらせ、男達の背後に鎌首をもたげる。[pcms]

*5468|
[fc]
彼らは自覚していないようだが、茜達に取ってみれば欲望を剥き出しにした人質なのだ。[pcms]

*5469|
[fc]
[vo_aka s="akane_0452"]
[【茜】 name=ルージュ]
「最低……こんなの、断れるわけないじゃない」[pcms]

*5470|
[fc]
彼らの態度は唾棄すべきレベルなのに、彼らの為に奉仕しなければならない。[pcms]

*5471|
[fc]
相反する感情がぶつかりあい、心が軋みを上げる。[pcms]

*5472|
[fc]
[vo_aoi s="aoi_0420"]
[【葵】 name=ヴィオレ]
「奉仕する以外、選択肢はないんですね……んっ、んんっ」[pcms]

[se buf=1 storage="SE4140_2" loop]

*5473|
[fc]
葵は既に心が折れているのか、素直に両手で掴んだペニスをぎこちなく[ruby_c t="扱" r="しご"]き始める。[pcms]

*5474|
[fc]
茜は悔しそうにしながら、ミアは怯えながら同じように肉棒を[ruby_c t="扱" r="しご"]き始めた。[pcms]

*5475|
[fc]
[vo_aka s="akane_0453"]
[【茜】 name=ルージュ]
「く……こんなことして、本当にいいと思ってるの？」[pcms]

*5476|
[fc]
[ns]男性Ａ[nse]
「いいんじゃないか？　ダメだったら、そもそもとっくの昔に止められてるさ」[pcms]

*5477|
[fc]
[vo_mia s="mia_0541"]
[【ミア】 name=ブラン]
「ちゃんと奉仕するから、酷いことしないで……」[pcms]

*5478|
[fc]
[ns]男性Ｂ[nse]
「そうだなぁ、君がちゃんと気持ち良くしてくれたら考えてもいいかな。んっ……そうそう、いい感じ」[pcms]

*5479|
[fc]
[vo_aoi s="aoi_0421"]
[【葵】 name=ヴィオレ]
「んっ、んんっ……ぬるぬるして、気持ち悪い……それに、すごい匂い……」[pcms]

*5480|
[fc]
[ns]男性Ｃ[nse]
「ああ、いいね。こんな可愛い子に奉仕してもらったら、気持ちいいに決まってるじゃないか」[pcms]

*5481|
[fc]
男達の鈴口から我慢汁が溢れ、異臭を突きつけてくる。[pcms]

*5482|
[fc]
グロテスクな見た目に加えて気持ち悪い態度といやな匂いの三重苦を受け、敗北感に打ちひしがれる三人。[pcms]

*5483|
[fc]
白濁にまみれながら奉仕する彼女達の姿に、奉仕を受けていない男達は興奮を抑えきれなくなっていた。[pcms]

*5484|
[fc]
[ns]男性Ｄ[nse]
「ああもう、待ってらんねぇ！　俺には口で奉仕してもらうぜ！」[pcms]

*5485|
[fc]
[ns]男性Ｅ[nse]
「お、俺も！　口でたっぷり舐め回してくれ」[pcms]

;[stopse_fadeout buf=1 time=500]

;//イベント画像指定：ev41b
[evcg storage="ev41b" cond="f.l_s901 == 0"][evcg storage="ev41b" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5486|
[fc]
[vo_aka s="akane_0454"]
[【茜】 name=ルージュ]
「むぐっ、んんんんっ！　ごほっ、げほっ、んむっ、んっ、じゅぶるっ、ぐぶるるるっ！」[pcms]

[bgv_aka fella01]

*5487|
[fc]
[vo_aoi s="aoi_0422"]
[【葵】 name=ヴィオレ]
「んぐぅぅっ！　れるっ、じゅぶるっ、んぶっ、ぐっ、んんんっ……」[pcms]

[bgv_aoi fella01]

*5488|
[fc]
[vo_mia s="mia_0542"]
[【ミア】 name=ブラン]
「んぐっ、んぶっ、んぅぅぅぅっ！　れろっ、じゅぶるっ、ぐぶっ、れろっ、じゅぶるるるっ！」[pcms]

[bgv_mia fella01]

*5489|
[fc]
強引にペニスをねじこまれ、三人はくぐもった悲鳴を上げる。[pcms]

*5490|
[fc]
それもつかの間、すぐにペニスを何度も抽送され、淫らな水音をかき立てさせられる。[pcms]

*5491|
[fc]
[ns]男性Ｄ[nse]
「うぉぉ、口の中最高！　メチャクチャ気持ちいい！」[pcms]

*5492|
[fc]
[ns]男性Ｅ[nse]
「なんだこれ、吸い尽くされそうだ！」[pcms]

*5493|
[fc]
[ns]男性Ｆ[nse]
「舌が絡みついてくる！　ぐっ、今にもイキそう！」[pcms]

*5494|
[fc]
男達は激しくペニスを突き立てながら、彼女達の口内へと我慢汁を塗りたくっていく。[pcms]

*5495|
[fc]
その怒張は激しく痙攣し、今にも爆発寸前だった。[pcms]

*5496|
[fc]
[vo_aka s="akane_0455"]
[【茜】 name=ルージュ]
「んぶっ、ぐぶっ、うぅぅぅっ！　やめれぇっ、じゅぶっ、じゅるっ、じゅぐっ、じゅるるっ！」[pcms]

*5497|
[fc]
[vo_aoi s="aoi_0423"]
[【葵】 name=ヴィオレ]
「れろっ、れるっ、じゅぶるっ……れろっ、れるっ、もう……いやぁ……」[pcms]

*5498|
[fc]
[vo_mia s="mia_0543"]
[【ミア】 name=ブラン]
「じゅるっ、じゅるるっ、じゅぶるるるっ！　んぶぇっ、うぇっ、たすけれぇ……れるっ、じゅるるっ」[pcms]

*5499|
[fc]
[ns]男性Ｄ[nse]
「くっ、ヤバイ出るっ！」[pcms]

*5500|
[fc]
[【ミズチ】]
「遠慮することはない。そやつらの顔に欲望を存分にぶちまけてやるがいい」[pcms]

*5501|
[fc]
ミズチの言葉に背中を押された男達は、我慢することなくその欲望を爆発させた。[pcms]

;//イベント画像指定：ev41c
[evcg射精フラ storage="ev41c" cond="f.l_s901 == 0"][evcg射精フラ storage="ev41c" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[bgvstop_chara01]

*5502|
[fc]
[vo_aka s="akane_0456"]
[【茜】 name=ルージュ]
「きゃぁぁぁぁぁぁっ！　熱いっ、うぶっ、うぁぁぁぁっ！」[pcms]

[se buf=0 storage="se_sex01"]
[白フラ]
[bgvstop_chara02]

*5503|
[fc]
[vo_aoi s="aoi_0424"]
[【葵】 name=ヴィオレ]
「やぁぁっ！　やめっ、汚いっ、ひぃっ、んぁっ、あぁぁぁぁ……」[pcms]

[se buf=0 storage="se_sex01"]
[白フラ]
[bgvstop_chara03]

*5504|
[fc]
[vo_mia s="mia_0544"]
[【ミア】 name=ブラン]
「いやぁぁぁぁっ！　やめてっ、顔にかけないでぇっ、うぁぁぁぁっ！」[pcms]

*5505|
[fc]
引き抜かれたペニスが眼前で射精し、彼女達の顔を白濁で打つ。[pcms]

*5506|
[fc]
飛び散る熱い粘液に顔をしかめて悲鳴を上げる魔法少女達に、周りで見ている男達も興奮を煽られてしまう。[pcms]

*5507|
[fc]
さらに射精を浴びた勢いでつい手に力が入り、手コキをしている男達のペニスを握りしめてしまった。[pcms]

*5508|
[fc]
[ns]男性Ａ[nse]
「ぐっ、俺も出るっ……！」[pcms]

[se buf=0 storage="se_sex01a"]
[白フラ]

;//イベント画像指定：ev41d
[evcg storage="ev41d" cond="f.l_s901 == 0"][evcg storage="ev41d" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5509|
[fc]
手コキをされていた男達が射精し、白濁まみれになった顔にさらなる白が折り重なっていく。[pcms]

*5510|
[fc]
[vo_aka s="akane_0457"]
[【茜】 name=ルージュ]
「うぅぅぅぅっ！　まだかかってっ……やめっ、いやぁぁぁぁぁっ！」[pcms]

*5511|
[fc]
[vo_mia s="mia_0545"]
[【ミア】 name=ブラン]
「もういやっ、かけないでぇっ！　くぅぅぅぅぅぅぅっ！」[pcms]

*5512|
[fc]
少女の悲鳴と男達の射精が異様な空気を醸し出しそれがさらに周りへと伝播していく。[pcms]

*5513|
[fc]
彼らの射精が終わる頃には、辺りにいた男達の射精が降り注いだ。[pcms]

[se buf=0 storage="se_sex01"]
[白フラ]
;//イベント画像指定：ev41e
[evcg storage="ev41e" cond="f.l_s901 == 0"][evcg storage="ev41e" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5514|
[fc]
[vo_aoi s="aoi_0425"]
[【葵】 name=ヴィオレ]
「あ、あぁぁぁぁぁぁっ！　まだ精液が……くぅぅぅっ！　あつぅぅぅぅぅっ！」[pcms]

*5515|
[fc]
[vo_aka s="akane_0458"]
[【茜】 name=ルージュ]
「やめてっ、もうやめてぇっ！　うぅぅぅぅぅぅっ！」[pcms]

*5516|
[fc]
[vo_mia s="mia_0546"]
[【ミア】 name=ブラン]
「溺れるっ、精液でドロドロになっちゃうぅぅぅぅぅぅぅっ！」[pcms]

*5517|
[fc]
代わる代わる男達の精液を浴び、悲鳴を上げ続ける魔法少女達。[pcms]

*5518|
[fc]
悲鳴を上げれば上げるほど周りからの射精は続き、声が弱まると共に射精も収まっていった。[pcms]

;//イベント画像指定：ev41f
[evcg storage="ev41f" cond="f.l_s901 == 0"][evcg storage="ev41f" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5519|
[fc]
[vo_aka s="akane_0459"]
[【茜】 name=ルージュ]
「う、うぁ……うぅぅ……っ、精液、気持ち悪い……」[pcms]

*5520|
[fc]
[vo_aoi s="aoi_0426"]
[【葵】 name=ヴィオレ]
「もう許して下さい……精液は……いやぁ……っ」[pcms]

*5521|
[fc]
[vo_mia s="mia_0547"]
[【ミア】 name=ブラン]
「臭い……汚い……もうやめて……うぅぅ」[pcms]

*5522|
[fc]
白濁にまみれて呆ける茜達を男達は満足そうに見下ろす。[pcms]

*5523|
[fc]
男達の獣欲を彼女達が一身に受け止めたことに満足感を覚えているのか、その顔は魔法少女と正反対に笑顔だった。[pcms]

*5524|
[fc]
[【カクエン】]
「おっと、休んでる暇はないぜ？　まだてめぇらを犯したい奴らは山ほどいるんだからな？」[pcms]

*5525|
[fc]
カクエンの言葉を証明するかのように、別の男達が茜達に襲いかかってきた。[pcms]

[se storage="&sf.SE挿入_人"]
[白フラ]
;//イベント画像指定：ev42a
[evcg storage="ev42a" cond="f.l_s901 == 0"][evcg storage="ev42a" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[se buf=1 storage="&sf.SEピストン_人_速" loop]

*5526|
[fc]
[vo_aka s="akane_0460"]
[【茜】 name=ルージュ]
「ひぐぅぅぅぅっ！　いきなり奥まで……うぁぁぁぁっ！」[pcms]

[bgv_aka toiki03]

*5527|
[fc]
[ns]男性Ｇ[nse]
「くぅっ、これが魔法少女のマンコか、この吸い付きよう、さすがだ！」[pcms]

*5528|
[fc]
[vo_aoi s="aoi_0427"]
[【葵】 name=ヴィオレ]
「んぁっ、ひぎぃぃぃっ！　乱暴にしないで……んぁっ、あっ、あぐぅぅぅっ！」[pcms]

[bgv_aoi toiki03]

*5529|
[fc]
[ns]男性Ｈ[nse]
「こ、こんな気持ちいいのにのんびりなんかしてられるか！　俺のありったけをぶつけてやる！」[pcms]

*5530|
[fc]
[vo_mia s="mia_0548"]
[【ミア】 name=ブラン]
「んぁっ、あぐっ、ひぐぅぅぅっ！　いやっ、犯さないでっ、許してぇぇぇっ！」[pcms]

[bgv_mia toiki03]

*5531|
[fc]
[ns]男性Ｉ[nse]
「いいねぇ、リアルにそんな言葉聞かされたら、燃え上がっちゃうよね！」[pcms]

*5532|
[fc]
男達は嫌がる茜達の姿に興奮し、力任せに腰を振る。[pcms]

*5533|
[fc]
快感などまるで覚えない肉欲にまみれたレイプに、疲弊した彼女達の心と体が犯されていく。[pcms]

*5534|
[fc]
[ns]男性Ｊ[nse]
「早く出せよ、後がつかえてるんだぞ？」[pcms]

*5535|
[fc]
[ns]男性Ｇ[nse]
「分かってるよ。くぅっ、もう出るっ！」[pcms]

*5536|
[fc]
[vo_mia s="mia_0549"]
[【ミア】 name=ブラン]
「いやっ、出さないで！　中は……中はだめぇぇぇっ！」[pcms]

*5537|
[fc]
[vo_aoi s="aoi_0428"]
[【葵】 name=ヴィオレ]
「お願いですっ、外に……中は、中だけは……んぁっ、あぁぁぁっ！」[pcms]

*5538|
[fc]
[ns]男性Ｈ[nse]
「知るか！　俺は中出ししたいんだ、だから中に出すっ！」[pcms]

*5539|
[fc]
[vo_aka s="akane_0461"]
[【茜】 name=ルージュ]
「いやっ、中はいやぁっ！　やめてっ、許してっ、あっ、あっ、あっ、あぁぁぁぁぁぁぁっ！」[pcms]

;//イベント画像指定：ev42b
[evcg射精フラ storage="ev42b" cond="f.l_s901 == 0"][evcg射精フラ storage="ev42b" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[bgvstop_chara01]

*5540|
[fc]
[vo_aka s="akane_0462"]
[【茜】 name=ルージュ]
「あぁぁぁぁっ！　中にっ、中に出てるぅぅぅぅぅっ！」[pcms]

[bgvstop_chara02]

*5541|
[fc]
[vo_aoi s="aoi_0429"]
[【葵】 name=ヴィオレ]
「いやぁぁぁっ！　抜いてっ、抜いてぇぇぇぇぇっ！」[pcms]

[bgvstop_chara03]

*5542|
[fc]
[vo_mia s="mia_0550"]
[【ミア】 name=ブラン]
「だめっ、だめぇぇぇぇっ！　出さないでっ、お願いっ、やだぁぁぁぁぁっ！」[pcms]

*5543|
[fc]
葵達の願いも虚しく、男達は乱暴にペニスを突き立て精液を流し込む。[pcms]

*5544|
[fc]
その勢いに身を震わせるものの、そこに快楽はない。[pcms]

*5545|
[fc]
恥辱と恐怖に怯えているだけで、葵達にとって心地よいものなど何一つなかった。[pcms]

[se buf=0 storage="SE4140"]
[白フラ]

;//イベント画像指定：ev42c
[evcg storage="ev42c" cond="f.l_s901 == 0"][evcg storage="ev42c" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5546|
[fc]
[ns]男性Ｉ[nse]
「はぁっ、はぁっ……ふぅ、気持ち良かった」[pcms]

*5547|
[fc]
[vo_aoi s="aoi_0430"]
[【葵】 name=ヴィオレ]
「う、うぅぅ……酷い……お腹の中に、たくさん……」[pcms]

*5548|
[fc]
ペニスが引き抜かれると、秘裂から精液がどっと溢れ出す。[pcms]

*5549|
[fc]
男達にお尻を向け、精液を垂らす彼女達の姿は実に扇情的で、待っている男達の肉欲をさらにかき立てる。[pcms]

*5550|
[fc]
葵達が荒い息を整える間もなく、次の男達が剛直で彼女達の秘裂を貫いた。[pcms]

[se storage="&sf.SE挿入_人"]
[白フラ]

;//イベント画像指定：ev42d
[evcg storage="ev42d" cond="f.l_s901 == 0"][evcg storage="ev42d" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[se buf=1 storage="&sf.SEピストン_人_速" loop]

*5551|
[fc]
[vo_mia s="mia_0551"]
[【ミア】 name=ブラン]
「んぁぁぁぁぁぁっ！　そんなっ、さっき出されたばかりなのにっ！　んぁっ、あっ、んぁっ、あぐぅぅぅっ！」[pcms]

[bgv_mia toiki03]

*5552|
[fc]
[vo_aka s="akane_0463"]
[【茜】 name=ルージュ]
「ひぐっ、ぎぅぅぅぅっ！　太いぃぃっ！　やだっ、おまんこ、壊れちゃうぅぅぅぅぅっ！」[pcms]

[bgv_aka toiki03]

*5553|
[fc]
[vo_aoi s="aoi_0431"]
[【葵】 name=ヴィオレ]
「やめてぇっ、もう許して下さいっ、許して……んぁぁぁぁぁっ！」[pcms]

[bgv_aoi toiki03]

*5554|
[fc]
ミア達のお尻を掴み、激しく腰を打ち付ける男達。[pcms]

*5555|
[fc]
今まで眺めることしか出来なかった男達は、これまでの欲望を一気に解き放とうとするかのように激しくミア達を犯す。[pcms]

*5556|
[fc]
[vo_mia s="mia_0552"]
[【ミア】 name=ブラン]
「あぐっ、はぐっ、ぎぅぅぅぅっ！　乱暴にっ、しないでぇっ、お願いっ、もう無理っ、ひぐぅぅぅっ！」[pcms]

*5557|
[fc]
[ns]男性Ｊ[nse]
「俺達にさんざんエロい姿を見せておいて、何言ってやがる！」[pcms]

*5558|
[fc]
[ns]男性Ｋ[nse]
「そうだそうだ、責任は取ってもらうからな！」[pcms]

*5559|
[fc]
男達は勝手な理屈を唱え、乱暴に膣穴をかき回す。[pcms]

*5560|
[fc]
抽送は一気に加速し、ミア達に再び危機感がせり上がってくる。[pcms]

*5561|
[fc]
[vo_mia s="mia_0553"]
[【ミア】 name=ブラン]
「い、いやぁっ……もう出さないでぇっ、お腹、パンパンになっちゃう……んぁっ、んぐっ、ぐぅぅぅっ！」[pcms]

*5562|
[fc]
[vo_aka s="akane_0464"]
[【茜】 name=ルージュ]
「痛いっ、いたぁっ！　そんな乱暴にしないでぇっ、いやっ、抜いてっ、もうやめてぇっ！」[pcms]

*5563|
[fc]
[ns]男性Ｌ[nse]
「いいぜ、そろそろ我慢の限界だからな。たっぷり中に出したらやめてやるよ！」[pcms]

*5564|
[fc]
[vo_aoi s="aoi_0432"]
[【葵】 name=ヴィオレ]
「そんなっ！？　もうお腹いっぱいなのに……んぁっ、あっ、あぐぅぅぅっ！」[pcms]

*5565|
[fc]
[vo_mia s="mia_0554"]
[【ミア】 name=ブラン]
「いやっ、やだっ、誰か助けてぇっ！　んぁっ、あっ、ひぃっ！　まだ奥に入ってきてっ、だめっ、もうだめっ、いやっ、あっ、あぁぁぁぁぁぁぁっ！」[pcms]

;//イベント画像指定：ev42e
[evcg射精フラ storage="ev42e" cond="f.l_s901 == 0"][evcg射精フラ storage="ev42e" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5566|
[fc]
ミアの叫びも虚しく、男達は膣奥に向かって欲望を解き放つ。[pcms]

*5567|
[fc]
胎内で脈動するペニスと汚濁液が流し込まれていく感覚を味わわされながら、ミア達は荒いため息をつく。[pcms]

[bgvstop_chara03]

*5568|
[fc]
[vo_mia s="mia_0555"]
[【ミア】 name=ブラン]
「また……中に……いやだって言ったのに、酷い……」[pcms]

[bgvstop_chara01]

*5569|
[fc]
[vo_aka s="akane_0465"]
[【茜】 name=ルージュ]
「んぁっ、はぁっ、はぁっ、うぅぅ……もういやぁ……お腹、苦しい……っ」[pcms]

[bgvstop_chara02]

*5570|
[fc]
[vo_aoi s="aoi_0433"]
[【葵】 name=ヴィオレ]
「先生以外の精液をまたお腹に……うぅぅ、ごめんなさい、ごめんなさい……」[pcms]

*5571|
[fc]
もはや抵抗する気力もなく、項垂れながら呟く魔法少女達。[pcms]

*5572|
[fc]
だが、欲望を満たしていない男達はまだ残っていた。[pcms]

*5573|
[fc]
[ns]男性Ｍ[nse]
「マンコの中、他の奴らの精液まみれじゃないか……だったら、他の穴の方がいいな」[pcms]

*5574|
[fc]
[ns]男性Ｎ[nse]
「そうだな。じゃあ、俺はこっちの女の子にする。お前はあっちの子でいいだろ」[pcms]

*5575|
[fc]
背後から聞こえてくる男達の声はよく聞き取れなかったものの、自然と反応して身体が震える。[pcms]

*5576|
[fc]
そして、その嫌な予感は悲しいかな的中してしまった。[pcms]

[se storage="&sf.SE挿入_人"]
[赤フラ cond="f.l_s901 == 0"]
[白フラ cond="f.l_s901 == 1"]

;//イベント画像指定：ev42f
[evcg storage="ev42f" cond="f.l_s901 == 0"][evcg storage="ev42f" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[se buf=1 storage="&sf.SEピストン_人_速" loop]

*5577|
[fc]
[vo_aka s="akane_0466"]
[【茜】 name=ルージュ]
「ひぐぅぅぅぅぅっ！　い、いたぁぁぁぁぁっ！　痛いっ、だめっ、抜いてぇぇぇぇっ！」[pcms]

[bgv_aka toiki03]

*5578|
[fc]
[ns]男性Ｍ[nse]
「おっ、やっぱりアナルの方がいいな。締まりもキツイし、他の奴らに汚されてないし」[pcms]

*5579|
[fc]
秘唇は二度にわたる凌辱のせいでぱっくりと開き、淫らに精液を零すだけの穴と化していた。[pcms]

*5580|
[fc]
[vo_aoi s="aoi_0434"]
[【葵】 name=ヴィオレ]
「んぐっ、んぁっ、くぅぅぅぅっ！　そこは、違うっ……おちんちん、入れるところじゃない……ぎぅぅぅっ！」[pcms]

[bgv_aoi toiki03]

*5581|
[fc]
[ns]男性Ｎ[nse]
「いいんだよ別に。俺達が気持ち良ければそれでさ！」[pcms]

*5582|
[fc]
[vo_mia s="mia_0556"]
[【ミア】 name=ブラン]
「そんな……ひぐっ、あぐっ、ぐぅぅぅっ！　お尻っ、焼けるぅっ！　ひっ、ひんっ、ひぃんっ！　いじめないでぇっ……」[pcms]

[bgv_mia toiki03]

*5583|
[fc]
すっかり弱ってしまった茜達を、男達は容赦なく剛直を突き立て責め立てる。[pcms]

*5584|
[fc]
度重なる抽送で腰を散々振られたせいで、もう力が入らない。[pcms]

*5585|
[fc]
男達の手で乱暴に腰を前後に揺り動かされながら直腸を犯され、羞恥心と屈辱感、そして肛虐の痛みが絶え間なく脳裏を叩く。[pcms]

*5586|
[fc]
[ns]男性Ｏ[nse]
「ぐっ、くぅぅぅっ！　この締め付けやばいっ！　出すっ、出すぞっ！」[pcms]

*5587|
[fc]
[ns]男性Ｍ[nse]
「俺もだっ！　今まで我慢した分をたっぷりアナルにぶち込んでやる！」[pcms]

*5588|
[fc]
[vo_aka s="akane_0467"]
[【茜】 name=ルージュ]
「や、やめて……そんなところまで犯さないで……んぁっ、うぁっ、んっ、んぐっ、あぐぅぅぅぅっ！」[pcms]

*5589|
[fc]
[vo_aoi s="aoi_0435"]
[【葵】 name=ヴィオレ]
「はひっ、ひっ、ひぃんっ！　んぁっ、いっ、ぎぅぅぅぅっ！　誰か……先生っ……助けて……んぁっ、あぁぁぁぁぁっ！」[pcms]

*5590|
[fc]
[vo_mia s="mia_0557"]
[【ミア】 name=ブラン]
「いやっ、もういやぁっ！　許してっ、犯さないでぇっ、もう痛いのも熱いのもいやぁっ！　あっ、あっ、あっ……わぁぁぁぁぁぁっ！」[pcms]

;//イベント画像指定：ev42g
[evcg射精フラ storage="ev42g" cond="f.l_s901 == 0"][evcg射精フラ storage="ev42g" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5591|
[fc]
三人が同時に腸内射精を受け、顔を反らして泣き叫ぶ。[pcms]

*5592|
[fc]
その様子を見ていた周りの男達からも射精を受け、身体の内と外から穢されていく。[pcms]

[se buf=0 storage="se_sex01"]
[白フラ]

*5593|
[fc]
[vo_aoi s="aoi_0436"]
[【葵】 name=ヴィオレ]
「あぁぁぁぁぁっ！　いやぁぁぁぁぁぁっ！　お腹っ、熱ぃぃっ、ひぃぃぃぃぃぃぃっ！」[pcms]

*5594|
[fc]
[vo_mia s="mia_0558"]
[【ミア】 name=ブラン]
「いやっ、いやぁぁぁぁぁっ！　熱いっ、かけないでぇぇぇぇぇぇぇっ！」[pcms]

*5595|
[fc]
[ns]男性Ｐ[nse]
「そんなエロい格好で俺達を誘惑するのが悪いんだ。そんな奴らにはお似合いの格好にしてやる！」[pcms]

*5596|
[fc]
何度も射精が三人に降り注ぎ、白濁の海に沈んでいく。[pcms]

*5597|
[fc]
[vo_aka s="akane_0468"]
[【茜】 name=ルージュ]
「いや……みんな酷すぎる……やめてよ……お願い……もういやぁぁぁぁぁぁぁぁっ！」[pcms]

[bgvstop_chara01]
[bgvstop_chara02]
[bgvstop_chara03]

[se buf=0 storage="SE4140"]
[白フラ]

;//イベント画像指定：ev42h
[evcg storage="ev42h" cond="f.l_s901 == 0"][evcg storage="ev42h" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5598|
[fc]
ようやく射精が終わり、茜達は男達から解放される。[pcms]

*5599|
[fc]
ペニスが引き抜かれたアナルは大きく穴が空いたままになり、秘裂から溢れ出した精液と共にこぼれ落ちていく。[pcms]

*5600|
[fc]
あまりに無残な様を晒す彼女達を、男達は欲望に満ちた目で見つめていた。[pcms]

*5601|
[fc]
[【カクエン】]
「いい格好になったじゃねぇか、魔法少女。それじゃ、そろそろオレが仕上げをしてやるぜ」[pcms]

*5602|
[fc]
[vo_aka s="akane_0469"]
[【茜】 name=ルージュ]
「う……そ……まだ、犯されるの……？」[pcms]

*5603|
[fc]
[vo_mia s="mia_0559"]
[【ミア】 name=ブラン]
「そんな……やだ、やだよぉ……先生、助けてぇ……っ」[pcms]

*5604|
[fc]
ミア達の懇願に、手を差し伸べる者もいなければ、助けも現れない。[pcms]

*5605|
[fc]
そして、無慈悲にカクエンの腕が茜を掴んだ。[pcms]


;

;mm 長尺座標メモ
;茜   -615
;葵   -1279
;ミア 0
;横は表示範囲に限りがあるから変数のほうがいいんじゃね？
[eval exp="f.ev_x_aka = -615"]
[eval exp="f.ev_x_aoi = -1279"]
[eval exp="f.ev_x_mia = 0"]

;//イベント画像指定：ev45a
[evcg storage="ev45a" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45a" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[se buf=1 storage="&sf.SEピストン_人外" loop]

*5606|
[fc]
[vo_aka s="akane_0470"]
[【茜】 name=ルージュ]
「や……いや……あぐぅぅぅぅぅっ！　ふ、太すぎるぅぅぅっ！」[pcms]

[bgv_aka to01]

*5607|
[fc]
[【カクエン】]
「当たり前だ。オレ様のチンポを人間風情と一緒にすんじゃねぇ」[pcms]

*5608|
[fc]
後ろからカクエンに抱え上げられた茜に、極太ペニスが深く突き刺さる。[pcms]

*5609|
[fc]
男達によってほぐされた膣も、カクエンのペニスを咥え込むにはまだ足りず、濡れた膣内が強引に押し広げられて痛みを訴えかけてきた。[pcms]

;システムボタン＆ウィンドウ消去
[sysbt_meswin clear]
[move layer=0 time=2000 accel=1 path="(-1279,0,255)"][wm canskip=true]
[evcg storage="ev45a" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45a" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=0]


*5610|
[fc]
[vo_aoi s="aoi_0437"]
[【葵】 name=ヴィオレ]
「ひぅぅぅぅっ！　またおまんこにぃぃ……ひぐっ、ひぅっ、ぐぅぅぅっ！」[pcms]

[bgv_aoi to01]

*5611|
[fc]
[【下級Ａ】 name=下級冥魔]
「ヒヒッ、これがアルカナヴィオレのマンコか。なかなか良い具合じゃねぇか」[pcms]

[sysbt_meswin clear]
[move layer=0 time=2000 accel=1 path="(0,0,255)"][wm canskip=true]
[evcg storage="ev45a" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg storage="ev45a" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"][trans_c cross time=0]


*5612|
[fc]
[vo_mia s="mia_0560"]
[【ミア】 name=ブラン]
「んぐっ、ぐっ、うぅぅぅっ！　深く入れすぎぃぃぃっ……いやぁっ、もう、かき回さないでぇ……」[pcms]

[bgv_mia to01]

*5613|
[fc]
[【下級Ａ】 name=下級冥魔]
「ゲヒヒッ、ブランもたまんねぇな。あれだけ犯されたのに、まだキツく締め付けてきやがる」[pcms]

*5614|
[fc]
葵とミアには下級冥魔が持ち上げ、Ｍ字開脚の形に持ち上げて犯される。[pcms]

*5615|
[fc]
いくら裸同然の格好になっているとはいえ、結合部を人々に見せつけるような格好には羞恥心が働いてしまう。[pcms]

*5616|
[fc]
[ns]男性Ｑ[nse]
「おい、手が遊んでるぞ。しっかり俺達のチンポにも奉仕しろよ」[pcms]

;システムボタン＆ウィンドウ消去
[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-1279,0,255)"][wm canskip=true]
[evcg storage="ev45a" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45a" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5617|
[fc]
[vo_aoi s="aoi_0438"]
[【葵】 name=ヴィオレ]
「う、うぅぅ……は、い……んぁっ、あっ、はっ、はんっ、んっ、んんんっ」[pcms]

*5618|
[fc]
葵はもはや抵抗する気力もなく、言われるがまま男達のペニスを握って奉仕を始める。[pcms]

*5619|
[fc]
茜とミアも、両手にペニスを握らされ、いやいや奉仕をさせられていた。[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(0,0,255)"][wm canskip=true]
[evcg storage="ev45a" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg storage="ev45a" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5620|
[fc]
[vo_mia s="mia_0561"]
[【ミア】 name=ブラン]
「はぁっ、はぁっ……んんっ、や……わたしの髪でなにを……あ、あぁぁ……」[pcms]

*5621|
[fc]
[ns]男性Ｒ[nse]
「へへっ、一度髪コキをやってみたかったんだよな。ちょうどいい長さじゃないか」[pcms]

*5622|
[fc]
[vo_mia s="mia_0562"]
[【ミア】 name=ブラン]
「や、やめて……わたしの髪を穢さないで……んぁっ、んぐっ、んぁっ、あっ、あっ、んんんっ！」[pcms]

*5623|
[fc]
[ns]男性Ｒ[nse]
「何言ってるんだ？　今更汚れてないところなんてないだろ？　だったら髪コキしたって変わらないっての」[pcms]

*5624|
[fc]
事実、全身をくまなく白濁に犯されてきたものの、やはり自慢の髪をエロ目的に使われるのはミアの心が軋んでしまう。[pcms]

*5625|
[fc]
[【カクエン】]
「おう、もっとやってやれ。こいつらを徹底的に犯して欲望をぶちまけるんだな」[pcms]

*5626|
[fc]
[ns]男性Ｓ[nse]
「もちろん！　こんな可愛い子を放っておけるわけがない」[pcms]

*5627|
[fc]
嬉々として答える男達に期待などしてはいないが、やはり心が削れる音を聞いてしまう。[pcms]

*5628|
[fc]
自分達が今までやってきたことの結果がこのような形で跳ね返ってきていることに、深く傷ついていく。[pcms]

*5629|
[fc]
[【カクエン】]
「どうだ？　お前らの守ってきた奴らがどんなものか、よく分かっただろ？」[pcms]

*5630|
[fc]
[vo_mia s="mia_0563"]
[【ミア】 name=ブラン]
「う、く……うぅぅ……っ」[pcms]

*5631|
[fc]
ミア達はもはや言い返すだけの気力は残っていなかった。[pcms]

*5632|
[fc]
自分達に向けられた身勝手な性欲が、人々を守るという使命を粉々に打ち砕いていた。[pcms]

*5633|
[fc]
[【カクエン】]
「……そう言えば、まだ口が暇してんじゃねぇか。口も使えよ」[pcms]

*5634|
[fc]
[vo_mia s="mia_0564"]
[【ミア】 name=ブラン]
「い、いや……そんなこと、出来ない……ひぁぁぁっ！」[pcms]

*5635|
[fc]
[【下級Ａ】 name=下級冥魔]
「出来ない、じゃねぇんだよ。カクエン様がああ仰ってるんだから、舐めるんだよ！」[pcms]

*5636|
[fc]
反論したミアは冥魔に膣を激しく荒らされ、涙と愛液を溢れさせる。[pcms]

*5637|
[fc]
そして、諦めたように舌を出した。[pcms]

*5638|
[fc]
その様子を見た茜達も、倣うように舌を出して近くのペニスを舐め始める。[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
;//イベント画像指定：ev45b
[evcg storage="ev45b" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45b" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5639|
[fc]
[vo_mia s="mia_0565"]
[【ミア】 name=ブラン]
「んっ……れるっ、れろっ、ちゅ……れろっ、れるるっ」[pcms]

[bgv_mia fe01]

*5640|
[fc]
[ns]男性Ｒ[nse]
「おおっ、可愛い舌で舐められるの最高だな！」[pcms]

*5641|
[fc]
口の近くに差し出された亀頭を舐めると、目の前でグロテスクな肉棒が大きく震える。[pcms]

*5642|
[fc]
我慢汁を垂らす亀頭を舐めたせいで苦みが口の中に広がり、ミアは泣きながら顔をしかめた。[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
[evcg storage="ev45b" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45b" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=0]


*5643|
[fc]
[vo_aka s="akane_0471"]
[【茜】 name=ルージュ]
「あ……ちゅっ、ちゅぷっ……れろっ、ちゅっ、れるっ、れろろっ」[pcms]

[bgv_aka fe01]

*5644|
[fc]
[ns]男性Ｔ[nse]
「いいねぇ、ルージュちゃん。もっと俺の息子にキスしてくれよ」[pcms]

*5645|
[fc]
[vo_aka s="akane_0472"]
[【茜】 name=ルージュ]
「う、うぅぅ……はい……ちゅっ、ちゅ、れるっ……ちゅぷっ、ちゅっ、れろっ、れるっ、ちゅぅっ」[pcms]

*5646|
[fc]
嫌がることさえ諦め、言われるがまま亀頭に口づけをする茜。[pcms]

*5647|
[fc]
唇に我慢汁がつくのも構わず鱚を繰り返し、時折舌を出してはカリ裏を舐める。[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-1279,0,255)"][wm canskip=true]
[evcg storage="ev45b" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45b" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5648|
[fc]
[vo_aoi s="aoi_0439"]
[【葵】 name=ヴィオレ]
「れろっ、ちゅっ、れろ……れるるっ、んっ、うぅぅ……ちゅむっ、れろっ……はふ、あふぅっ」[pcms]

[bgv_aoi fe01]

*5649|
[fc]
[ns]男性Ｕ[nse]
「ヴィオレちゃん、もっと頑張らないと。二人と比べて全然舐められてないじゃないか」[pcms]

*5650|
[fc]
[vo_aoi s="aoi_0440"]
[【葵】 name=ヴィオレ]
「ごめん、なさい……れろっ、ちゅっ、れるっ……んぁぁっ！　あぅっ、んくっ、んんっ……れるるっ、れろっ、ちゅっ」[pcms]

*5651|
[fc]
体力的にもひ弱な葵は、言われるがまま奉仕するのもままならない。[pcms]

*5652|
[fc]
なんとか奉仕しようとはするものの、舌を伸ばそうとすると冥魔の抽送で身体が揺さぶられて悲鳴を上げてしまう。[pcms]

*5653|
[fc]
それでもなんとか顔を突き出し、奉仕を続けた。[pcms]

*5654|
[fc]
[ns]男性Ｖ[nse]
「はぁ、はぁ……この子達、なんてエロいんだ……。そうだ、スマホスマホ」[pcms]

*5655|
[fc]
欲望に身を任せて射精していた男達は、ふと思いだして次々にスマホを取り出し、茜達の艶姿を収めていく。[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
;//イベント画像指定：ev45c
[evcg storage="ev45c" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45c" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5656|
[fc]
[vo_aka s="akane_0473"]
[【茜】 name=ルージュ]
「いや……やめて……撮らないでぇ……んぁっ、あぐっ、ひぐっ、いやぁぁっ……」[pcms]

*5657|
[fc]
茜が懇願すると、カクエンは股をさらに押し広げ、股間をアピールするように前に突き出す。[pcms]

*5658|
[fc]
羞恥心がさらに煽られると同時に挿入角が変化し、茜はまたうめき声を上げた。[pcms]

*5659|
[fc]
[【カクエン】]
「おう、撮れ撮れ。永久保存版にしてやるんだな。ほら、もっと喘いでやれよ」[pcms]

*5660|
[fc]
[vo_aka s="akane_0474"]
[【茜】 name=ルージュ]
「んぁっ、あっ、あぁぁぁっ！　ひぐっ、あぐっ、んんんんっ！　はひっ、ひっ、れるっ、んっ、ふぁっ……」[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(0,0,255)"][wm canskip=true]
[evcg storage="ev45c" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg storage="ev45c" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5661|
[fc]
[vo_mia s="mia_0566"]
[【ミア】 name=ブラン]
「んぁっ、んっ、んぅぅぅっ！　揺らさないでぇっ、んぁっ、あっ、れろっ、れるっ、うぅぅっ」[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-1279,0,255)"][wm canskip=true]
[evcg storage="ev45c" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45c" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5662|
[fc]
[vo_aoi s="aoi_0441"]
[【葵】 name=ヴィオレ]
「はぁ、はぁ、んんんんっ！　許して……許して下さい……ちゅ、ちゅぷっ、はふっ、れるっ、んんんっ！」[pcms]

*5663|
[fc]
激しくペニスを突き上げられ、肉悦を強制的に引きずり出されながら衆人環視に晒される。[pcms]

*5664|
[fc]
僅かながら残っている羞恥心が膣を収縮させ、冥魔達を喜ばせる。[pcms]

*5665|
[fc]
[【カクエン】]
「ククッ、この期に及んでまだ締め付けてきやがるとはな。いい感じに堕ちたじゃねぇか、アルカナルージュ」[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
[evcg storage="ev45c" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45c" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5666|
[fc]
[vo_aka s="akane_0475"]
[【茜】 name=ルージュ]
「あたし……あたしは……んぁっ、あっ、んんんっ！　はひっ、ひっ、ひぃんっ！」[pcms]

*5667|
[fc]
何をどう答えていいかも分からず、されるがままに犯される茜達。[pcms]

*5668|
[fc]
加速していく抽送に導かれるように、スマホを構えている男達が再び勃起したペニスを向ける。[pcms]

*5669|
[fc]
[ns]男性Ｖ[nse]
「くぅっ！　また出るっ！　今度はぶっかけるところを写真に撮ってやる！」[pcms]

*5670|
[fc]
男達の宣言に、もはや反応する余力がない。[pcms]

*5671|
[fc]
ただ、熱さと匂いにまみれて自分がおかしくなっていくことに恐怖を覚えてはいた。[pcms]

*5672|
[fc]
[【カクエン】]
「そら、たっぷりぶちまけてやりな！」[pcms]

*5673|
[fc]
[vo_aka s="akane_0476"]
[【茜】 name=ルージュ]
「んぁっ、あっ、あぁぁぁっ！　ひっ、ひぃんっ、んぁっ、あっ、んっ、んぅぅぅぅぅぅぅっ！」[pcms]


[bgv_aka to02]
[bgv_aoi to02]
[bgv_mia to02]

;//イベント画像指定：ev45d
;[evcg storage="ev45d" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45d" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[evcg射精フラ storage="ev45d" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg射精フラ storage="ev45d" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"]



*5674|
[fc]
再び、周囲から大量の精液が三人に向けて解き放たれる。[pcms]

*5675|
[fc]
肌を焼く粘液に絶頂の記憶が甦り、再び身体が火照りを昂ぶらせていく。[pcms]

[evcg射精フラ storage="ev45d" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg射精フラ storage="ev45d" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"]

*5676|
[fc]
[vo_mia s="mia_0567"]
[【ミア】 name=ブラン]
「うぅぅぅっ、くぅぅぅぅぅぅぅぅっ！」[pcms]

[evcg射精フラ storage="ev45d" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg射精フラ storage="ev45d" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"]

*5677|
[fc]
[vo_aoi s="aoi_0442"]
[【葵】 name=ヴィオレ]
「やぁぁぁっ……また、精液が……んぁっ、あっ、んんんんんんっ！」[pcms]

*5678|
[fc]
むせかえるような匂いがどんどん濃くなり、嗅覚さえも男達に犯されていく。[pcms]

*5679|
[fc]
顔を背ける余力もなく、真正面から精液を受け止めていく彼女達に、もはや抵抗の二文字は存在しない。[pcms]

*5680|
[fc]
[【カクエン】]
「てめぇらもそろそろイキたいだろう？　こんな人間のチンポじゃ満足出来ない身体になってるだろうからな、お前らは」[pcms]

*5681|
[fc]
[【下級Ａ】 name=下級冥魔]
「カクエン様率いる俺達冥魔のチンポじゃないと満足にイケないことを、しっかりと思い知るんだな」[pcms]

[se buf=1 storage="&sf.SEピストン_人外" loop]

*5682|
[fc]
射精を浴びながら抽送が加速し、快感が限界に向かって一気に高まっていく。[pcms]

*5683|
[fc]
[vo_aoi s="aoi_0443"]
[【葵】 name=ヴィオレ]
「あっ、あっ、んぁっ、ふぁっ、んぁぁぁぁぁっ！　イクっ、イクっ、イッちゃうっ、あっ、あぁぁぁぁぁっ！」[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
[evcg storage="ev45d" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45d" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5684|
[fc]
[vo_aka s="akane_0477"]
[【茜】 name=ルージュ]
「だ、だめぇっ……イキたくないっ……先生以外で、イキたく……いや、あ、あぁぁぁぁぁっ！」[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(0,0,255)"][wm canskip=true]
[evcg storage="ev45d" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg storage="ev45d" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5685|
[fc]
[vo_mia s="mia_0568"]
[【ミア】 name=ブラン]
「先生、助けてぇっ、助けてっ、いやっ、いやっ、やぁっ、ふぁぁぁぁぁぁぁぁっ！」[pcms]

;//イベント画像指定：ev45e
[evcg射精フラ storage="ev45e" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg射精フラ storage="ev45e" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"]


;	*5686|
;	[fc]
;	[vo_aka s="akane_0478"]
;	[【茜】 name=ルージュ]
;	「イクぅぅぅぅぅぅぅぅぅぅぅぅぅっ！」[pcms]
;
;	*5687|
;	[fc]
;	[vo_aoi s="aoi_0444"]
;	[【葵】 name=ヴィオレ]
;	「イクぅぅぅぅぅぅぅぅぅぅぅぅぅっ！」[pcms]
;
;	*5688|
;	[fc]
;	[vo_mia s="mia_0569"]
;	[【ミア】 name=ブラン]
;	「イクぅぅぅぅぅぅぅぅぅぅぅぅぅっ！」[pcms]

*5686|
[fc]
;[【三人】]
[vo_aka s="mix_0004"]
[ns]ルージュ＆ヴィオレ＆ブラン[nse]
「「「イクぅぅぅぅぅぅぅぅぅぅぅぅぅっ！」」」

;//上記の台詞を合成して下さい。
[bgv_aka to03]
[bgv_aoi to03]
[bgv_mia to03]

[sysbt_meswin clear]
[move layer=0 time=2000 accel=1 path="(-1279,0,255)"][wm canskip=true]
;[evcg storage="ev45e" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=0]

;[sysbt_meswin clear]
[move layer=0 time=2000 accel=1 path="(0,0,255)"][wm canskip=true]
[evcg storage="ev45e" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg storage="ev45e" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"][trans_c cross time=0]


*5689|
[fc]
冥魔が同時に胎内へと射精し、そのタイミングで三人が一斉に限界を超える。[pcms]

*5690|
[fc]
膣道をさらにこじ開け、膣奥を穿ち、それでも入りきらなくなって逆流し、秘裂の僅かな隙間から大量の白濁が噴き出す。[pcms]


*5691|
[fc]
[vo_mia s="mia_0570"]
[【ミア】 name=ブラン]
「ひっ、いっ、いぃぃぃぃぃぃぃぃぃっ！　イクっ、イクイクイクぅぅぅぅぅぅぅっ！」[pcms]

[メスフラ]
[bgv_mia to01]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
[evcg storage="ev45e" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45e" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5692|
[fc]
[vo_aka s="akane_0479"]
[【茜】 name=ルージュ]
「先生っ、先生っ、やだっ、いやぁっ、またイクぅぅぅぅぅぅぅっ！」[pcms]


[メスフラ]
[bgv_aka to01]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-1279,0,255)"][wm canskip=true]
[evcg storage="ev45e" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45e" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=0]


*5693|
[fc]
[vo_aoi s="aoi_0445"]
[【葵】 name=ヴィオレ]
「私もっ、またイッちゃうっ！　先生、ごめん、なさい……イクぅぅぅぅぅぅぅぅぅっ！」[pcms]

[メスフラ]
[bgv_aoi to01]

;//イベント画像指定：ev45f
[evcg storage="ev45f" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45f" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=500]



*5694|
[fc]
何度目かの絶頂の後にペニスが引き抜かれ、ようやく絶頂の波が収まってくる。[pcms]

*5695|
[fc]
三人の膣穴は犯されすぎたせいですっかり緩み、大きく広がっている。[pcms]

*5696|
[fc]
冥魔達に出された精液が壊れた蛇口のように勢いよく垂れ落ちた。[pcms]

*5697|
[fc]
[vo_aoi s="aoi_0446"]
[【葵】 name=ヴィオレ]
「あ……い、いやぁ……もう……イキたくない……」[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(0,0,255)"][wm canskip=true]
[evcg storage="ev45f" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg storage="ev45f" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5698|
[fc]
[vo_mia s="mia_0571"]
[【ミア】 name=ブラン]
「許して……もう……お願い……助けて……」[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
[evcg storage="ev45f" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45f" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5699|
[fc]
[vo_aka s="akane_0480"]
[【茜】 name=ルージュ]
「あ……う、うぁ……せん、せい……たすけ……てぇ……」[pcms]

*5700|
[fc]
彼女達の声はどこにも届かない。[pcms]

*5701|
[fc]
そして、この凌辱の牢獄からも、逃れることは出来ないのだった。[pcms]

[bgvstop_chara01]
[bgvstop_chara02]
[bgvstop_chara03]

;mm ここまでTV?

;//暗転
[bg storage="effect_black" tvoff][trans_c cross time=1000]
;//ここから一人称

;//イベント画像指定：ev39i
[evcg射精フラ storage="ev39i" tvoff]

;//このシーンの話者：冥はノワールで

*5702|
[fc]
[vo_mei s="mei_0373"]
[【冥】 name=ノワール]
「ふふっ、あははっ！　また出ちゃったね……。ねぇ、お兄さん。もっとエッチしようよ」[pcms]

*5703|
[fc]
……いつから、こうしていたのだろう？[pcms]

*5704|
[fc]
そして、俺は何をしているんだろう？[pcms]

*5705|
[fc]
ぼんやりと思い出そうとしてみるものの、頭の中に霧がかかっているかのようによく分からない。[pcms]

*5706|
[fc]
今の俺に分かるのは、目の前に冥がいて、気持ち良くなっているということだ。[pcms]

*5707|
[fc]
[vo_mei s="mei_0374"]
[【冥】 name=ノワール]
「ふふっ、どうしたの？　ぼんやりして。そんなに私の中が良かった？　いいよ、もっと出して……。たくさん出してお兄さんの赤ちゃんを作ろうよ」[pcms]

*5708|
[fc]
[【主人公】]
「ああ、そうだな……そうしよう……」[pcms]

*5709|
[fc]
俺は言葉の意味が半分も分かっていなかったが、何となく肯定する。[pcms]

*5710|
[fc]
なにか、大事なことを忘れているような気がするが、思い出せないんじゃ仕方ない。[pcms]

*5711|
[fc]
それより、今はこの気持ちいい時を満喫していたい……。[pcms]

*5712|
[fc]
[vo_mei s="mei_0375"]
[【冥】 name=ノワール]
「んぁっ、あっ、あんっ、あぁんっ！　お兄さん、激しいっ……ふぁ、あ、あぁぁ……っ！」[pcms]

*5713|
[fc]
[vo_mei s="mei_0376"]
[【冥】 name=ノワール]
「ふふっ、いいよ……もっと激しくして。私はお兄さんさえ一緒にいてくれたら、それでいいんだから」[pcms]

*5714|
[fc]
[【主人公】]
「そうだな……一緒に、ずっと一緒にいよう……」[pcms]

*5715|
[fc]
[vo_mei s="mei_0377"]
[【冥】 name=ノワール]
「そうだよ。他のことなんて全部いらない。何もいらない……お兄さんだけがいればいいの」[pcms]

[se buf=1 storage="&sf.SEピストン_人_遅" loop]

*5716|
[fc]
冥は俺の上で腰を振りながら嬉しそうに笑う。[pcms]

*5717|
[fc]
膣がキツく締まって、また射精しそうになる。[pcms]

*5718|
[fc]
ああ、それでいいじゃないか……俺は冥を抱いて思うがままに中に出して。[pcms]

*5719|
[fc]
それ以外、何があるというんだ……。[pcms]

*5720|
[fc]
頭の片隅に何かが引っかかっているのを感じながらも、俺はそこから目を向け、目の前の情事に耽る。[pcms]

*5721|
[fc]
[vo_mei s="mei_0378"]
[【冥】 name=ノワール]
「ああ、いい、いいよ……お兄さん、すごく気持ちいいっ！　最高に幸せ！　あはっ、あははっ、あはははははっ！」[pcms]

*5722|
[fc]
[【主人公】]
「ははっ、はははっ、はははははははははっ！」[pcms]

*5723|
[fc]
俺も、冥につられて笑い声を上げる。[pcms]

*5724|
[fc]
ああ、この瞬間がずっと、永遠に続けばいい――。[pcms]

; 回想モード中なら、回想モード画面に戻る
[scene_end]

;（バッドエンド２）（冥バッドエンド＊）
;mm 念の為にエンドのグローバルとローカル変数オン
[eval exp="sf.g_end_bad02 = 1"]
[eval exp="f.l_end = 8"]

;//end
[ANTEN blk]
[jump storage="9999.ks" target=*TOP]

