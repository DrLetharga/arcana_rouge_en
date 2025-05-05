;//arcana056
*TOP
[eval exp="f.l_s056 = 1"][name_allreset]

;//このシーンは三人称
;//このシーンの話者：葵はヴィオレで


;//立ち絵：カクエン・オーラなし

;//背景：公園・夜照明
[bg storage="bg017c"]
[std_kak m ce][trans_c cross time=1000]

[bgm017]

*3645|
[fc]
[【カクエン】]
「まだ物足りねぇなぁ。……そうだな、おいヴィオレ。残りの二人に連絡してあいつらを呼び出せ」[pcms]

;//立ち絵：葵・魔法服・破損と精液
[std_aoi l mad p1 f03 eki ce][trans_c cross time=300]

*3646|
[fc]
[vo_aoi s="aoi_0303"]
[【葵】 name=ヴィオレ]
「い……や……そんな、こと……出来ない……」[pcms]

*3647|
[fc]
白濁にまみれて満足に立ち上がることも出来ない葵は、それでもなんとか首を横に振った。[pcms]


*3648|
[fc]
[vo_aoi s="aoi_0304"]
[【葵】 name=ヴィオレ]
（こんな状況で二人に助けを呼べば、私が人質にされる。そうなったら、あの悪夢の時と逆のことが起こってしまう……）[pcms]

;//心の声　音声加工
[std_kak m ce][trans_c cross time=300]

*3649|
[fc]
[【カクエン】]
「てめぇ、まだ反抗する気力があったのか。いい根性してんじゃねぇか」[pcms]

;//ＳＥ：蹴る音
[se buf=0 storage="seB008"]
[赤フラ]
[std_aoi l mad p1 f12 eki ce][trans_c cross time=0]
[quake_chara ch=aoi vmax=10 hmax=10 time=20 accel=1 count=4 wait=false]

*3650|
[fc]
[vo_aoi s="aoi_0305"]
[【葵】 name=ヴィオレ]
「がはっ！　あぐっ、ぎぅぅぅっ！」[pcms]

*3651|
[fc]
カクエンに腹を蹴られ、激痛と共にアナルから精液が噴き出す。[pcms]

*3652|
[fc]
それでも、葵は首を縦に振らなかった。[pcms]

[stop_quake_chara ch=aoi]
[std_kak m ce][trans_c cross time=300]

*3653|
[fc]
[【カクエン】]
「いてぇだろ？　苦しいだろ？　だったらあいつらを呼べ！」[pcms]


*3654|
[fc]
[vo_aoi s="aoi_0306"]
[【葵】 name=ヴィオレ]
「いや……絶対にいや！　死んでもあなたの言うことは聞かない！」[pcms]

[std_kak m ce][trans_c cross time=300]

*3655|
[fc]
[【カクエン】]
「ざけんじゃねぇぞ！　ぶっ殺してやる！」[pcms]

[std_aoi l mad p1 f12 eki ce][trans_c cross time=0]
;//ＳＥ：蹴る音
[se buf=0 storage="seB008"]
[赤フラ]
[quake_chara ch=aoi vmax=20 hmax=20 time=20 accel=1 count=4 wait=false]

*3656|
[fc]
[vo_aoi s="aoi_0307"]
[【葵】 name=ヴィオレ]
「がはっ、あぐっ、げふっ、ぐぅぅぅっ！」[pcms]

*3657|
[fc]
さらに蹴りが激しくなり、何度も痛みに意識が飛びそうになる。[pcms]

[stop_quake_chara ch=aoi]

*3658|
[fc]
[vo_aoi s="aoi_0308"]
[【葵】 name=ヴィオレ]
（これで死ぬならそれでもいい。そうしたら、藍の所にいける……）[pcms]

;//心の声　音声加工


*3659|
[fc]
意識が薄れていく中、茜やミアの顔が脳裏をよぎる。[pcms]

*3660|
[fc]
そして、想い人の姿が最後に浮かんできた。[pcms]

[std_aoi l mad p1 f03 eki ce][trans_c cross time=300]

*3661|
[fc]
[vo_aoi s="aoi_0309"]
[【葵】 name=ヴィオレ]
「先生……最後に、会いたかった……」[pcms]

[std_kak m ce][trans_c cross time=300]

*3662|
[fc]
[【カクエン】]
「ああ？　何言ってるのか聞こえねぇぞ！　もっとはっきり……っ！？」[pcms]

;mm ミヤのほうはこの演出があるけどいらないか
	;//演出：魔力の波動っぽい演出があれば
	;//ＳＥ：魔力の波動っぽいＳＥがあれば

*3663|
[fc]
で激昂していたカクエンが急に蹴りをやめ、顔を上げた。[pcms]

*3664|
[fc]
突然の冥魔の動きに、葵は訳も分からずその様子をぼんやりと眺める。[pcms]

;//ここから話者：主人公は？？？で
;mm これ主人公のシルエット貼るのかなぁ

[std_syu m ce][trans_c cross time=300]

*3665|
[fc]
;[【主人公_立ち＆フェイス有り用】 name=？？？]
;mm 顔窓用ないからいいや
;[【主人公】 name=？？？]
[ns]？？？[nse]
「葵から離れろ」[pcms]

[std_kak m ce][trans_c cross time=300]

*3666|
[fc]
[【カクエン】]
「なんだてめぇ……どこから紛れ込んで来やがった？」[pcms]

[std_aoi l mad p1 f03 eki ce][trans_c cross time=300]

*3667|
[fc]
[vo_aoi s="aoi_0310"]
[【葵】 name=ヴィオレ]
「せん……せい……？」[pcms]

*3668|
[fc]
脳裏に思い描いた男の姿が映っていることに、葵は呆然としていた。[pcms]

;mm もう先生って分かってるからリセット？
;やっぱ指定箇所まで

*3669|
[fc]
;[【主人公】 reset]
[ns]？？？[nse]
「もう一度言う、葵から離れろ」[pcms]

[std_kak m ce][trans_c cross time=300]

*3670|
[fc]
[【カクエン】]
「ああいいぜ。だが、代わりにお前は死ね」[pcms]

*3671|
[fc]
カクエンが葵から離れ、一気に距離を詰めた。[pcms]

*3672|
[fc]
大きく振りかぶった拳が鋭く突き出される。[pcms]

[std_aoi m mad p1 f01 eki ce][trans_c cross time=300]

*3673|
[fc]
[vo_aoi s="aoi_0311"]
[【葵】 name=ヴィオレ]
「先生……逃げて……ぇっ！」[pcms]

;//ＳＥ：ぶつかる音
[std_kak m ce][trans_c cross time=300]
[se buf=0 storage="seB013"]
[白フラ]
[quake_chara ch=kak vmax=20 hmax=20 time=20 accel=1 count=4 wait=false]

*3674|
[fc]
[【カクエン】]
「がはっ！？」[pcms]

[chara_int_all][trans_c cross time=300]
[stop_quake_chara ch=kak]
[fadeoutbgm time=1000]

*3675|
[fc]
吹き飛ばされたのはカクエンの方だった。[pcms]

*3676|
[fc]
無様に背中から地面に叩きつけられ、肺からありったけの空気を吐き出す。[pcms]

*3677|
[fc]
背後に飛ばされたカクエンをよそに、葵へと静かに近付いていく。[pcms]

[std_aoi m mad p1 f10 eki ce][trans_c cross time=300]

*3678|
[fc]
[vo_aoi s="aoi_0312"]
[【葵】 name=ヴィオレ]
「あ……見ないで先生……私、こんなに穢れて……」[pcms]

*3679|
[fc]
;[【主人公】]
[ns]？？？[nse]
「待たせたな」[pcms]

[魔法服回復 aoi_p1]

*3680|
[fc]
葵を静かに抱きしめると、彼女の身体が淡く輝き始める。[pcms]

*3681|
[fc]
全身に纏わり付いた精液が霧散し、引きちぎられた衣装も修復していった。[pcms]

[bgm001]

;//立ち絵：葵・魔法服
[std_aoi m ma p1 f08 ce][trans_c bt time=1000]

*3682|
[fc]
[vo_aoi s="aoi_0313"]
[【葵】 name=ヴィオレ]
「先生……どうしてここに？」[pcms]

*3683|
[fc]
;[【主人公】]
[ns]？？？[nse]
「お前が呼んだからだ。お前がオレに助けを呼んだからここまで来た」[pcms]

[std_kak m ce][trans_c cross time=300]

*3684|
[fc]
[【カクエン】]
「何格好つけてやがる。人間の分際で舐めた真似してんじゃねぇぞ」[pcms]

*3685|
[fc]
背後で、ようやく起き上がったカクエンが睨み付けてくる。[pcms]

*3686|
[fc]
;[【主人公】]
[ns]？？？[nse]
「まだやり合うつもりなのか？」[pcms]

[std_kak m ce][trans_c cross time=300]

*3687|
[fc]
[【カクエン】]
「ふざけんじゃねぇ！　今のはちょっと油断しただけだ。今度は確実にぶっ潰す！」[pcms]

*3688|
[fc]
二人に向かって走り出したカクエンに対し、反応したのは葵の方だった。[pcms]

[std_aoi m ma p2 f01 ce][trans_c cross time=300]

*3689|
[fc]
[vo_aoi s="aoi_0314"]
[【葵】 name=ヴィオレ]
「先生にこれ以上手を出させない！　[技_アメシスト・イクラティ]！」[pcms]

[movie_Magic_イクラティ]


*3690|
[fc]
素早く前に立ちふさがり、紫水晶のつぶてを放つ。[pcms]

*3691|
[fc]
だが、その威力は葵やカクエンの想像を遥かに超えるものだった。[pcms]

[std_kak m ce][trans_c cross time=300]
[se buf=0 storage="seB013"]
[白フラ]
[quake_chara ch=kak vmax=20 hmax=20 time=20 accel=1 count=4 wait=false]

*3692|
[fc]
[【カクエン】]
「ぐぁぁぁぁぁぁぁぁぁぁっ！？」[pcms]

[chara_int_all][trans_c cross time=300]
[stop_quake_chara ch=kak]

*3693|
[fc]
相手の足を止めたり、触手を穿つ程度の力しかなかったつぶては、もはやショットガンのごとき威力でカクエンを吹き飛ばした。[pcms]

*3694|
[fc]
何度も地面に叩きつけられながら転がり、無数の傷を作りながらカクエンが立ち上がる。[pcms]

[std_kak m ce][trans_c cross time=300]

*3695|
[fc]
[【カクエン】]
「なんだ、この威力……前とは比べものにならないじゃねぇか」[pcms]

[std_aoi m ma p1 f05 ce][trans_c cross time=300]

*3696|
[fc]
[vo_aoi s="aoi_0315"]
[【葵】 name=ヴィオレ]
「こんなに威力が上がってるなんて……」[pcms]

*3697|
[fc]
驚いたのはカクエンだけではない。[pcms]

*3698|
[fc]
葵も想像以上の威力に驚愕し、暴走した時のことを思いだして身を震わせる。[pcms]

[std_kak m ce][trans_c cross time=300]

*3699|
[fc]
[【カクエン】]
「仕方ねぇ、今日はこのくらいで勘弁しといてやる。そいつの処女を奪ったのはお前かもしれないが、ケツ穴の処女はオレが頂いたぜ！」[pcms]

[se buf=0 storage="SE1202"]
[黒フラ]
[chara_int_ce][trans_c wipe_r time=300]

*3700|
[fc]
;そう捨て台詞を吐きながら、カクエンは公園の奥へと消えていった。[pcms]
そう捨て台詞を吐きながら、カクエンは闇の奥へと消えていった。[pcms]

;mm 徒歩退場だと間抜けなので瞬間移動で

[std_aoi m ma p1 f13 ce][trans_c cross time=300]

*3701|
[fc]
[vo_aoi s="aoi_0316"]
[【葵】 name=ヴィオレ]
「はぁっ、はぁっ……助かった……？」[pcms]

*3702|
[fc]
葵は構えていた手を下ろし、その場にへたり込む。[pcms]

[bg storage="effect_black" winon][trans_c cross time=500]

*3703|
[fc]
と同時に、頭の中で電気が落ちるように視界が一瞬真っ暗になった。[pcms]

;//暗転
[ANTEN blk]
;//ここから一人称

;//背景：公園・夜照明
[bg storage="bg017c"][trans_c cross time=1000]

;//ここから話者：主人公は主人公で


[bgm015]



*3704|
[fc]
[【主人公】]
「ここは……俺は一体……」[pcms]

*3705|
[fc]
隣町の探索に向かって何の成果も上げられず、帰ってきたところで葵の声を聞いた。[pcms]

*3706|
[fc]
その後、急に意識が遠のいて、まるで映画を見ているかのような展開が続いていた。[pcms]

*3707|
[fc]
カクエンと戦っていたのは、俺だったのか……？[pcms]

[std_aoi m ma p1 f03 ce][trans_c cross time=300]

*3708|
[fc]
[vo_aoi s="aoi_0317"]
[【葵】 name=ヴィオレ]
「先生……ありがとう、ございました……私、私……っ」[pcms]

*3709|
[fc]
[【主人公】]
「辛い思いをさせたみたいだな。遅くなって済まなかった」[pcms]

[std_aoi l ma p1 f10 ce][trans_c cross time=300]

*3710|
[fc]
[vo_aoi s="aoi_0318"]
[【葵】 name=ヴィオレ]
「先生……先生っ！　うぁぁぁぁぁぁぁぁぁぁっ！」[pcms]

*3711|
[fc]
葵が俺に抱きついて泣きじゃくる。[pcms]

*3712|
[fc]
俺はただ彼女の身体を受け止め、背中に手を回す。[pcms]

[std_aoi l ma p1 f03 ce][trans_c cross time=300]

*3713|
[fc]
[vo_aoi s="aoi_0319"]
[【葵】 name=ヴィオレ]
「私、帰りに妹を見かけて……追いかけていったら結界が張られていて……」[pcms]

*3714|
[fc]
[【主人公】]
「カクエンの罠だった、ということか」[pcms]

*3715|
[fc]
葵は泣きながら首を縦に振る。[pcms]

[std_aoi l ma p1 f10 ce][trans_c cross time=300]

*3716|
[fc]
[vo_aoi s="aoi_0320"]
[【葵】 name=ヴィオレ]
「何度も、何度も犯されて……私はもう、汚されてしまいました……」[pcms]

*3717|
[fc]
[【主人公】]
「そんなことはない。葵は綺麗なままだよ」[pcms]

*3718|
[fc]
葵の頭を撫でながら、優しくそう語りかける。[pcms]

[std_aoi l ma p1 f03 ce][trans_c cross time=300]

*3719|
[fc]
[vo_aoi s="aoi_0321"]
[【葵】 name=ヴィオレ]
「先生、もし本当にそう思うなら……さっきのことを忘れさせて下さい」[pcms]

*3720|
[fc]
葵が潤んだ瞳で俺を見あげてくる。[pcms]

*3721|
[fc]
それが何を意味しているのか分からないわけがなかった。[pcms]

;//選択肢分岐（二択）
;//『葵を受け入れる』→		arcana058へ
;//『今夜は帰宅させる』→	arcana057へ
*SEL07|葵を受け入れる／今夜は帰宅させる
[fc]
[sel02 text='葵を受け入れる'   storage="arcana058.ks" target=*TOP]
[sel04 text='今夜は帰宅させる' storage="arcana057.ks" target=*TOP end]

