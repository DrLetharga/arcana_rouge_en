;//arcana054
*TOP
[eval exp="f.l_s054 = 1"][name_allreset]

;暗転

;//このシーンは三人称

;//立ち絵：茜・制服
;//立ち絵：葵・制服
;//立ち絵：ミア・制服


[bg storage="bg001c"][trans_c cross time=1000]
[bgm003]
[wait time=1000]

;//背景：通学路・夜照明
[bg storage="bg011c"][trans_c cross time=1000]

*3385|
[fc]
三人は図書室で試験勉強をして、日が暮れてから帰路についていた。[pcms]

[chara_int_all]
[std_aoi m se p1 f01 le]
[std_aka m se p1 f03 ce]
[std_mia m se p1 f01 ri][trans_c cross time=300]

*3386|
[fc]
[vo_aka s="akane_0424"]
[【茜】]
「はぁっ……ほんと、二人ともよくあんな問題解けるよね」[pcms]


*3387|
[fc]
[vo_mia s="mia_0245"]
[【ミア】]
「むしろ、あんなのが分からない方が不思議だけどね」[pcms]

[std_aka m se p1 f08 ce][trans_c cross time=300]

*3388|
[fc]
[vo_aka s="akane_0425"]
[【茜】]
「葵ちゃん、ごめんね。なんか調子悪そうなのにこんな時間まで付き合わせちゃって」[pcms]

[std_aoi m se p1 f04 le][trans_c cross time=300]

*3389|
[fc]
[vo_aoi s="aoi_0235"]
[【葵】]
「えっ？　ううん、そんなことないよ。私も復習出来たし」[pcms]


[std_aka m se p1 f01 ce][trans_c cross time=300]

*3390|
[fc]
[vo_aka s="akane_0426"]
[【茜】]
「それならいいけど……なんだか元気ないみたいだったから」[pcms]


[std_mia m se p1 f04 ri][trans_c cross time=300]

*3391|
[fc]
[vo_mia s="mia_0246"]
[【ミア】]
「葵が元気ないのは、先生と一緒に出かけられなかったからでしょ？」[pcms]

[std_aoi m se p1 f07 ho le][trans_c cross time=300]

*3392|
[fc]
[vo_aoi s="aoi_0236"]
[【葵】]
「そ、そんなこと……」[pcms]

*3393|
[fc]
ミアの鋭い指摘に顔を赤らめながら、葵は俯いてしまう。[pcms]

*3394|
[fc]
事実、葵は置いて行かれた寂しさと、無事に帰ってきてくれるだろうかという不安で集中出来ずにいたのだ。[pcms]


[std_mia m se p1 f09 ri][trans_c cross time=300]

*3395|
[fc]
[vo_mia s="mia_0247"]
[【ミア】]
「葵は先生のこと好きなんでしょ？　ほら、白状しちゃいなさいよ」[pcms]


;[std_aoi m se p1 f07 ho le][trans_c cross time=300]

*3396|
[fc]
[vo_aoi s="aoi_0237"]
[【葵】]
「えっ、えっと、それはその……」[pcms]

*3397|
[fc]
否定することなど出来はしない。[pcms]

*3398|
[fc]
だが、素直に好意を口に出来るほどの勇気もない。[pcms]


[std_aka m se p1 f05 ce][trans_c cross time=300]

*3399|
[fc]
[vo_aka s="akane_0427"]
[【茜】]
「えっ、葵ちゃんもそうだったの？　じゃあ、あたしと葵ちゃんは恋のライバルだね」[pcms]

[std_mia m se p1 f06 ri][trans_c cross time=300]

*3400|
[fc]
[vo_mia s="mia_0248"]
[【ミア】]
「ちょっと、どうしてわたしだけのけ者にするのよ？　それってずるくない？」[pcms]

[std_aoi m se p1 f05 le][trans_c cross time=300]

*3401|
[fc]
[vo_aoi s="aoi_0238"]
[【葵】]
「えっ、ミアさんも先生のこと好きなの？　……あっ」[pcms]

*3402|
[fc]
口を滑られてしまったことに気付いたものの、時既に遅し。[pcms]


[chara_int_all]
[std_aka m se p1 f01 lc]
[std_mia m se p1 f01 rc][trans_c cross time=300]

*3403|
[fc]
にやつく二人に、葵は観念して小さく首を縦に振った。[pcms]

[chara_int_all]
[std_aoi l se p1 f07 ce][trans_c cross time=300]

*3404|
[fc]
[vo_aoi s="aoi_0239"]
[【葵】]
「私も、先生のことが好き。でも、茜ちゃんが先生のこと好きみたいだったから……」[pcms]

[std_aka l se p1 f01 ce][trans_c cross time=300]

*3405|
[fc]
[vo_aka s="akane_0428"]
[【茜】]
「そんなの気にすることないよ。でも、相手がいくら二人でも遠慮なんてしないからね？」[pcms]

[std_mia l se p1 f01 ce][trans_c cross time=300]

*3406|
[fc]
[vo_mia s="mia_0249"]
[【ミア】]
「正々堂々、先生の取り合いね。わたし、負けないからね？」[pcms]

[std_aoi l se p1 f01 ce][trans_c cross time=300]

*3407|
[fc]
[vo_aoi s="aoi_0240"]
[【葵】]
「わ、私も……負けたくない、かな」[pcms]

*3408|
[fc]
こんな気持ちになったのは初めてのことだった。[pcms]

*3409|
[fc]
だからこそ自分の中でこの気持ちをどう消化していいか分からず、かといって手放すことも出来なかった。[pcms]

[chara_int_all][trans_c cross time=300]

[fadeoutbgm time=500]

*3410|
[fc]
そんな淡く温かい気持ちを遮るように、葵の視界を何かがよぎった。[pcms]

;//立ち絵：冥・上着あり私服
[std_mei m si p1 f11 ce][trans_c cross time=300]



[std_aoi m se p1 f01 ce off]

*3411|
[fc]
[vo_aoi s="aoi_0241"]
[【葵】]
「えっ……？」[pcms]

[chara_int_all][trans_c cross time=300]

*3412|
[fc]
一瞬、ちらりと見えて角を曲がっていった姿に、葵の顔は凍り付いた。[pcms]

*3413|
[fc]
葵の頭の中は今見えた姿のことでいっぱいになり、自然と足がそちらに向く。[pcms]

[chara_int_all]
[std_aoi m se p1 f05 le]
[std_aka m se p1 f08 ce]
[std_mia m se p1 f08 ri][trans_c cross time=300]

*3414|
[fc]
[vo_mia s="mia_0250"]
[【ミア】]
「葵、どうかしたの？」[pcms]

[std_aoi m se p1 f01 le][trans_c cross time=300]

*3415|
[fc]
[vo_aoi s="aoi_0242"]
[【葵】]
「ごめん、知ってる人を見かけて……私、これで失礼するね」[pcms]

[se buf=0 storage="SE0183_2"]
[chara_int_le][trans_c cross time=300]

*3416|
[fc]
それだけ言うと、葵は走り出していた。[pcms]

;//暗転
[ANTEN blk]
;//背景：通学路・夜照明
[bg storage="bg011c"]
[std_aoi m se p1 f11 ce][trans_c cross time=1000]

[bgm010]

*3417|
[fc]
[vo_aoi s="aoi_0243"]
[【葵】]
（あれは……藍だった。間違いない！）[pcms]

;//心の声　音声加工

*3418|
[fc]
角を曲がり、さらに人影を追い掛ける。[pcms]

*3419|
[fc]
さっき見えた背中が見えたことに安堵すると同時に、自分の見間違いでないと確信する。[pcms]

[std_aoi m se p1 f02 ce][trans_c cross time=300]

*3420|
[fc]
[vo_aoi s="aoi_0244"]
[【葵】]
「藍……藍、待って！」[pcms]

*3421|
[fc]
少女は葵の声に気付いていないのか、まっすぐ歩いていく。[pcms]

*3422|
[fc]
そしてまた角を曲がり、公園の中へと入っていった。[pcms]

;//背景：公園・夜照明
[bg storage="bg017c"][trans_c lr]

*3423|
[fc]
公園に入ると、葵の声がやっと聞こえたのか少女は背を向けて立っていた。[pcms]

*3424|
[fc]
葵は息を切らせながら駆け寄っていく。[pcms]

[std_aoi m se p1 f05 ce][trans_c cross time=300]

*3425|
[fc]
[vo_aoi s="aoi_0245"]
[【葵】]
「藍……藍、なのよね、えっ？」[pcms]

[HAMON storage="bg017c"]


*3426|
[fc]
少女にさらに近付こうとしたところで見えない水の中に入り込んだような感覚に襲われた。[pcms]

*3427|
[fc]
思わず立ち止まり、辺りを見回してしまう。[pcms]

[std_aoi m se p1 f05 ce][trans_c cross time=300]

;//印の読みはしるし
*3428|
[fc]
[vo_aoi s="aoi_0246"]
[【葵】]
「どうしてこんなところに結界が？　このままじゃ藍が危ない！　目ざめよ、我が内に眠る希望の印。オープンアルカナ！」[pcms]

[movie_hensin aoi]

;//立ち絵：葵・魔法服

[std_aoi m ma p1 f02 ce][trans_c cross time=0]

;//ここから話者：葵はヴィオレで
*3429|
[fc]
[vo_aoi s="aoi_0247"]
[【葵】 name=ヴィオレ]
「藍、ここは危険なの！　すぐにここから出ましょう！」[pcms]

*3430|
[fc]
変身した葵は少女に駆け寄り、肩を掴み声をかける。[pcms]

;//立ち絵：冥・上着あり私服
[std_mei m ja p1 f11 ce][trans_c cross time=500]

*3431|
[fc]
その少女が振り向くと、葵は再び思考が停止した。[pcms]

*3432|
[fc]
振り向いた少女は、葵の知っている藍そっくりだった。[pcms]

*3433|
[fc]
ただひとつ、何故か眼帯をしている。[pcms]

*3434|
[fc]
その眼帯から、禍々しいものを感じて彼女から手を離しそうになった。[pcms]

[std_mei l ja p1 f06 ce][trans_c cross time=300]

;//この話者：冥は？？？で
*3435|
[fc]
[vo_mei s="mei_0228"]
[【冥】 name=？？？]
「危ないのは、お姉ちゃんの方だよ？」[pcms]

[chara_int_all]
[std_aoi m ma p1 f01 lc]
[std_mei m ja p1 f01 rc][trans_c cross time=300]

*3436|
[fc]
[vo_aoi s="aoi_0248"]
[【葵】 name=ヴィオレ]
「えっ？　あ……」[pcms]

[bg storage="effect_black"][trans_c wave2 time=1000]

*3437|
[fc]
少女の笑みと共に、葵の意識が急激に闇へと飲み込まれていく。[pcms]

*3438|
[fc]
その理由が分からないまま、葵はその場に崩れ落ちた。[pcms]

;//暗転

;//背景：公園・夜照明
[bg storage="bg017c"]
[std_mei m ja p1 f01 ce][trans_c cross time=1000]

;//立ち絵：冥・上着あり私服
;//この話者：藍は？？？で
*3439|
[fc]
[vo_mei s="mei_0229"]
[【冥】 name=？？？]
「ふん……ちょろいわね」[pcms]

;ムービーで消えちゃうからやめとく
;[img_c storage="薄目" layer=6 x=0 y=0][trans_c wave2 time=1000]

*3440|
[fc]
少女が笑みを浮かべると、彼女の周りに黒い霧が立ちこめ始める。[pcms]

;mm ここは変身ムービー無しのほういいか？
[movie_hensin mei]

;//立ち絵：冥・魔法服
[chara_int layer=6]
[std_mei m ma p1 f01 ce][trans_c cross time=0]

*3441|
[fc]
その霧が晴れると、そこには魔法少女のような姿に変わっていた。[pcms]

;//立ち絵：カクエン・オーラなし
[std_kak s ri][trans_c cross time=300]

*3442|
[fc]
[【カクエン】]
「はっ、いやにあっさりだったな。ノワール、一体どうやったんだ？」[pcms]

[std_mei m ma p1 f01 ce][trans_c cross time=300]
;//ここ以降の話者：冥はノワールで
*3443|
[fc]
[vo_mei s="mei_0230"]
[【冥】 name=ノワール]
「そんなのどうでもいいじゃない。あんたはこの子が欲しいんでしょ？」[pcms]

*3444|
[fc]
[【カクエン】]
「ああ、こいつにはたっぷり礼をしてやりたかったからな」[pcms]

*3445|
[fc]
カクエンは足元で意識を失った葵を見て舌なめずりした。[pcms]

*3446|
[fc]
その様子を見て、ノワールと呼ばれた少女も笑みを浮かべる。[pcms]

[std_mei m ma p1 f06 ce][trans_c cross time=300]

*3447|
[fc]
[vo_mei s="mei_0231"]
[【冥】 name=ノワール]
「好きにしていいけど、殺すのだけは絶対にだめ。とどめを刺すのは私だから。それまでは出来るだけ残酷に苦しめてあげて」[pcms]

*3448|
[fc]
[【カクエン】]
「へいへい、言われなくてもたっぷりいたぶってやるさ」[pcms]

[std_mei m ma p1 f02 ce][trans_c cross time=300]

*3449|
[fc]
[vo_mei s="mei_0232"]
[【冥】 name=ノワール]
「間違って殺した、なんて許さないからね。その時は冥王さまの名の下に、粉微塵にしてやるから」[pcms]

*3450|
[fc]
ノワールの鋭い視線に、カクエンは小さく身を震わせながら諸手を挙げた。[pcms]

*3451|
[fc]
[【カクエン】]
「分かってるっての。ったく……おっかねぇガキだぜ」[pcms]

*3452|
[fc]
[【カクエン】]
「あとで拠点に連れて行ってやるから、そこでお前の好きにするがいいさ」[pcms]

[std_mei m ma p1 f01 ce][trans_c cross time=300]

;//後半は小声で
*3453|
[fc]
[vo_mei s="mei_0233"]
[【冥】 name=ノワール]
「分かったわ。……元お姉ちゃん、これは元妹からのプレゼントだから、たっぷり楽しんでね」[pcms]

[se buf=0 storage="SE1202"]
[黒フラ]
[chara_int_ce][trans_c wipe_r time=300]

*3454|
[fc]
ノワールはカクエンにも聞こえない程度の小声で呟くと、一瞬にしてその場から消えた。[pcms]


[chara_int_all]
[std_kak l ce][trans_c cross time=300]

*3455|
[fc]
[【カクエン】]
「さてと……たっぷり楽しませてもらうぜ」[pcms]

*3456|
[fc]
カクエンは再び舌なめずりして、倒れたヴィオレに手を伸ばした。[pcms]

;//→arcana055へ
[ANTEN blk]
[jump storage="arcana055.ks" target=*TOP]

