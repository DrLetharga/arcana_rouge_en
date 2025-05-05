;//arcana043
*TOP
[eval exp="f.l_s043 = 1"][name_allreset]

;//このファイル内での冥の話者名表記は『？？？』と『謎の少女』と『ノワール』の三つ。順番に変化します

;//背景：冥魔たちのアジト
[bg storage="bg029a"][trans_c cross time=1000]
[bgm013]
[wait time=500]

;//立ち絵：冥・魔法服
;//話者名表記は『？？？』

[std_mei m ma p1 f11 ce][trans_c cross time=300]

*2612|
[fc]
[vo_mei s="mei_0215"]
[【冥】 name=？？？]
「わざわざ呼び出して、私に話というのは？」[pcms]

;//立ち絵：ミズチ・オーラなし
[std_miz m ce][trans_c cross time=300]

*2613|
[fc]
[【ミズチ】]
「ワシらの傷も癒えた。ここいらで魔法少女ども殲滅する」[pcms]

;//立ち絵：カクエン・オーラなし
[std_kak m ce][trans_c cross time=300]

*2614|
[fc]
[【カクエン】]
「てめえも冥魔の端くれであるからには、手を貸せ、そういうことだ。わかったか？」[pcms]

;//話者名表記は『？？？』

[std_mei m ma p1 f11 ce][trans_c cross time=300]

*2615|
[fc]
[vo_mei s="mei_0216"]
[【冥】 name=？？？]
「まるで、わからないわ」[pcms]

*2616|
[fc]
ミズチとカクエンに応える謎めいた少女は、冥魔たちの拠点の壁に安置されているミイラのひとつに対して、ゆっくりと手を伸ばす。[pcms]

;//話者名表記は『謎の少女』

[std_mei m ma p1 f03 ce][trans_c cross time=300]

*2617|
[fc]
[vo_mei s="mei_0217"]
[【冥】 name=謎の少女]
「おいたわしいです冥王様……どうか一日も早く……こんな干からびた姿から、本来あるべき美しいお姿に……」[pcms]

[chara_int_all]
[std_miz s lc]
[std_kak s rc][trans_c cross time=300]

*2618|
[fc]
[【カクエン】]
「そんなミイラに、いくら魔法力を注いでも……本当に復活なんかするのかねェ？」[pcms]

*2619|
[fc]
[【ミズチ】]
「ワシも疑わしいのではないかと……そう思うようになって久しくはあるが……」[pcms]


*2620|
[fc]
[【カクエン】]
「冥王様復活の[ruby_c t="暁" r="あかつき"]には、功労者は褒美として、あらゆる願いをかなえてもらえる……そういう話か」[pcms]

*2621|
[fc]
[【ミズチ】]
「過去に実例があるとの口伝もあるでな……ある程度は、見返りがあると考えてもよかろう」[pcms]

*2622|
[fc]
[【カクエン】]
「面倒だなァ……ミイラを喰らって、そこに宿っている魔法力を吸収した方が手っ取り早いんじゃねえのか？」[pcms]

*2623|
[fc]
[【カクエン】]
「魔法力を捧げに来る、その陰気臭いメスガキの顔も見ないで済むようになるしなァ」[pcms]

*2624|
[fc]
[【ミズチ】]
「カクエン、そこまでは言い過ぎじゃ」[pcms]

[chara_int_all]
[std_miz l ce][trans_c cross time=300]

*2625|
[fc]
[【ミズチ】]
（なるほど、カクエンの提案も悪くはないのう……魔法力に満ちた冥王のミイラを喰らい、それを我が物にする、か）[pcms]


[chara_int_all]
[std_miz s lc]
[std_kak s rc][trans_c cross time=300]


*2626|
[fc]
[【カクエン】]
「いいや、俺は言うぜ。こいつはムカつく。おい、聞こえてんなら反応くらいしやがれノワール？」[pcms]

;//話者名表記は『謎の少女』

[chara_int_all]
[std_mei m ma p1 f02 ce][trans_c cross time=300]

*2627|
[fc]
[vo_mei s="mei_0218"]
[【冥】 name=謎の少女]
「私は冥王様直属の冥魔少女ノワールよ。私に命令できるのは冥王様ご自身だけ。あなたたちの会話に付き合う義務なんてない」[pcms]

;//立ち絵：冥・魔法服・武器あり

;//話者名表記は『ノワール』

[std_mei m ma p1 f06 ce][trans_c cross time=300]

*2628|
[fc]
[vo_mei s="mei_0219"]
[【冥】 name=ノワール]
「それに……さっきからの暴言の数々、聞き逃がすわけには行かない。その罪、万死に値するわ。カクエン！」[pcms]

[std_kak m ce][trans_c cross time=300]

*2629|
[fc]
[【カクエン】]
「てめえ……やる気か？　調子に乗りやがって！」[pcms]

;//話者名表記は『ノワール』

[std_mei m ma p1 f06 ce][trans_c cross time=300]

*2630|
[fc]
[vo_mei s="mei_0220"]
[【冥】 name=ノワール]
「調子に乗っているのは、そっちじゃないの？」[pcms]


[std_miz m ce][trans_c cross time=300]


*2631|
[fc]
[【ミズチ】]
「よさぬか、二人とも！」[pcms]

*2632|
[fc]
一触即発となった二人の間にミズチが割って入る。[pcms]

*2633|
[fc]
だが彼の行為は仲間意識や友情から出たものではない。[pcms]

*2634|
[fc]
[【ミズチ】]
（ノワールもカクエンも、ワシが冥王となるまで必要な道具に過ぎぬが……ここで潰し合いなどしてもらっては困るでな……）[pcms]

;//話者名表記は『ノワール』

;mm サイズどうしようかなぁ やっぱｓとｍのほうが自然か
[chara_int_all]
[std_kak s le]
[std_miz s ce]
[std_mei m ma p1 f06 ri index=6][trans_c cross time=300]

*2635|
[fc]
[vo_mei s="mei_0221"]
[【冥】 name=ノワール]
「邪魔をするなら、あなたも相手よ」[pcms]

*2636|
[fc]
[【ミズチ】]
「すべては魔法少女たちの力を奪い、冥王様の復活のため。そうであれば、おぬしも納得できるであろう？」[pcms]

*2637|
[fc]
ミズチはその打算からはじき出した最適と思える提案をノワールに突きつけた。[pcms]

;//話者名表記は『ノワール』

[std_mei m ma p1 f11 ri][trans_c cross time=300]

*2638|
[fc]
[vo_mei s="mei_0222"]
[【冥】 name=ノワール]
「納得はしてあげる。でも、私があなたたちを手伝う理由にはならないわ」[pcms]

*2639|
[fc]
[【ミズチ】]
「カクエンに代わり非礼は詫びようぞ。ノワールよ、おぬしがワシらの邪魔をせんでくれれば、それでよいのじゃ」[pcms]

;//話者名表記は『ノワール』


*2640|
[fc]
[vo_mei s="mei_0223"]
[【冥】 name=ノワール]
「私は冥王様をお守りするだけよ。あなたたちは好きにすればいいんじゃない」[pcms]

*2641|
[fc]
[【ミズチ】]
「うむ。わかった。そうさせてもらおう」[pcms]

*2642|
[fc]
[【カクエン】]
「けっ、勝手に非礼を詫びたことにされちまったぜ」[pcms]

*2643|
[fc]
[【ミズチ】]
「ところでノワールよ、おぬしのその姿……魔法少女たちに似通っているが、何かあやつらと関係してはおるまいな？」[pcms]

*2644|
[fc]
[【カクエン】]
「おう、そう言われてみれば確かに似たような格好だなァ？」[pcms]

;//話者名表記は『ノワール』

[std_mei m ma p1 f06 ri][trans_c cross time=300]

*2645|
[fc]
[vo_mei s="mei_0224"]
[【冥】 name=ノワール]
「知らないわ。そもそも魔法少女と会ったことなんて、ないし」[pcms]

*2646|
[fc]
ミズチがその長い腕を宙に掲げ、短い呪文を唱えると中空に透明な球体が生成された。[pcms]

*2647|
[fc]
[【ミズチ】]
「ワシの水晶玉に映る小娘たちを見るがよいノワール。こやつらこそがワシらの宿敵じゃ」[pcms]

;mm 青緑っぽくする　9.9が最大値か
[bg storage="bg003d"  tv]
[std_aoi m ma p1 f11 le grayscale=true rgamma=0.3 ggamma=1.2 bgamma=0.9]
[std_aka m ma p1 f11 ce grayscale=true rgamma=0.3 ggamma=1.2 bgamma=0.9]
[std_mia m ma p1 f11 ri grayscale=true rgamma=0.3 ggamma=1.2 bgamma=0.9]
;[image storage="effect_KAISOU" layer=6 page=back visible=true left=0 top=0 grayscale=true  grayscale=true rgamma=0.3 ggamma=1.2 bgamma=0.9]
[trans_c cross time=500]


*2648|
[fc]
そこには、アルカナルージュ、ヴィオレ、ブラン、と、変身した姿の魔法少女たちが映し出される。[pcms]

;//話者名表記は『ノワール』

[std_mei m ma p1 f11 ce off]

*2649|
[fc]
[vo_mei s="mei_0225"]
[【冥】 name=ノワール]
「ふぅん……この三人が敵、ということなのね？」[pcms]

[std_miz m ce off]

*2650|
[fc]
[【ミズチ】]
「うむ……しかし殺すのはならぬ。捕らえて、その心と身体を徹底的に責め抜き、濃度を高めた魔法力を冥王様に捧げるのじゃ」[pcms]

[chara_int_all]
[std_aoi l ma p1 f11 ce grayscale=true rgamma=0.3 ggamma=1.2 bgamma=0.9][trans_c cross time=300]


*2651|
[fc]
だが、ノワールは一人の魔法少女の姿を凝視したままだった。[pcms]

[std_miz m ce off]

*2652|
[fc]
[【ミズチ】]
「ノワールよ、おぬし、アルカナヴィオレとなんぞ遺恨でもあるのか？」[pcms]

[bg storage="bg029a" tvoff]
[std_kak s le]
[std_miz s ce]
[std_mei m ma p1 f06 ri index=6][trans_c cross time=300]

;//話者名表記は『ノワール』

*2653|
[fc]
[vo_mei s="mei_0226"]
[【冥】 name=ノワール]
「別に……なんとなく、不愉快な顔だと思っただけよ。そうね……その女を[ruby_c t="攫" r="さら"]うとか痛めつけるというなら、手を貸してあげてもいいわ」[pcms]

*2654|
[fc]
[【カクエン】]
「へえ……どういう風の吹き回しだ？」[pcms]

*2655|
[fc]
[【ミズチ】]
「ワシとしては無論、おぬしほどの実力者が手を貸してくれるのはありがたい」[pcms]

;//話者名表記は『ノワール』

[std_mei m ma p1 f11 ri][trans_c cross time=300]

*2656|
[fc]
[vo_mei s="mei_0227"]
[【冥】 name=ノワール]
「アルカナヴィオレと事を構える前には連絡して」[pcms]


*2657|
[fc]
[【ミズチ】]
「うむ、そうしよう」[pcms]

*2658|
[fc]
予想外のノワールの反応にミズチも驚いたが、これで懐柔するきっかけにできると、内心では、ほくそ笑むのだった。[pcms]

;//→arcana044　へ
[ANTEN blk]
[jump storage="arcana044.ks" target=*TOP]

