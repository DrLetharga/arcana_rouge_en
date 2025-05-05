;//arcana048
*TOP
[eval exp="f.l_s048 = 1"][name_allreset]

;//このシーンは三人称
;//このシーンの話者：茜はルージュで

;//背景：学園教室・夜照明
[bg storage="bg006c"]
[std_miz m ce][trans_c cross time=1000]

[bgm017]

;//立ち絵：ミズチ・オーラなし

*3002|
[fc]
[【ミズチ】]
「ククク……さすがは魔法少女。頭数だけはそろえることが出来たわ。感謝するぞ」[pcms]

;//立ち絵：茜・魔法服・破損と精液

[std_aka l mad p1 f12 eki ce][trans_c cross time=300]

*3003|
[fc]
[vo_aka s="akane_0319"]
[【茜】 name=ルージュ]
「う……くぅ、うぁぁ……っ」[pcms]

*3004|
[fc]
茜はまだショックが抜けきらず、小さくうめき声を漏らす。[pcms]

*3005|
[fc]
足元にはまだ生まれたばかりの冥魔――というにはあまりにおぞましい形状の蟲が蠢いていた。[pcms]

[std_miz m ce][trans_c cross time=300]

*3006|
[fc]
[【ミズチ】]
「ではそろそろ引き上げるとするかの。せっかく捕らえた魔法少女を奪い返されてはもったいないからの」[pcms]

[std_aka l mad p1 f12 eki ce][trans_c cross time=300]

*3007|
[fc]
[vo_aka s="akane_0320"]
[【茜】 name=ルージュ]
「あ……あたしを……どうする……つもり？」[pcms]

[std_miz m ce][trans_c cross time=300]

*3008|
[fc]
[【ミズチ】]
「もちろん、拠点に連れて帰るのじゃ。カクエンにでもあてがい奴に貸しを作るとしよう」[pcms]

[std_miz m ce][trans_c cross time=300]

*3009|
[fc]
[【ミズチ】]
「使いものにならなくなるまで慰み者になった後は、他の魔法少女をおびき寄せる餌にでもしてやる。いい案じゃろう？」[pcms]

*3010|
[fc]
ミズチの計画に、茜の心が絶望に打ち震える。[pcms]

*3011|
[fc]
自ら脱出することも出来ず、このまま犯され続けては意識を保つことすら難しい。[pcms]

*3012|
[fc]
その上、葵達までも巻き添えにすることなると考えただけで、心の底から恐怖が湧き上がってきた。[pcms]

[std_aka l mad p1 f14 eki ce][trans_c cross time=300]

*3013|
[fc]
[vo_aka s="akane_0321"]
[【茜】 name=ルージュ]
「やだ……そんなのいや……先生、助けてぇ……っ」[pcms]

*3014|
[fc]
無意識に、茜は思いを口にした。[pcms]

[std_miz m ce][trans_c cross time=300]

*3015|
[fc]
[【ミズチ】]
「助けなど求めても無駄じゃ。結界の外にオマエの声など聞こえるはずが……なっ！？」[pcms]

*3016|
[fc]
高笑いしていたミズチが、思わず身を引き構えを取る。[pcms]

*3017|
[fc]
目の前には誰もいないはずなのに、全身で身の毛もよだつ危機感に襲われていた。[pcms]

[chara_int_all][trans_c cross time=300]

*3018|
[fc]
だが、それはすぐに現実のものとなる。[pcms]


;mm これ主人公のシルエット貼るのかなぁ
;mm ミヤのほうはこの演出がある
	;//演出：魔力の波動っぽい演出があれば
	;//ＳＥ：魔力の波動っぽいＳＥがあれば
[se buf=0 storage="SE3603"]
;魔法出現（大きさ0から10倍に）後に
[魔法 白 smag=0 dmag=10 time=1000 消さない]
;;白フラして
;[white_toplayer][trans_c cross time=0]
;;消すならこれで。消えるまで早すぎなら適宜waitタグ
;[chara_int_top]
[chara_int layer=12]
[std_syu m ce][trans_c cross time=300]

*3019|
[fc]
ゆらりと空間が歪み、そこに人影が形成されていく。[pcms]

[std_miz m ce][trans_c cross time=300]

*3020|
[fc]
[【ミズチ】]
「なんじゃこの強大な魔力は……これはまるで……」[pcms]

;//ここから話者：主人公は？？？で

*3021|
[fc]
;[【主人公_立ち＆フェイス有り用】 name=？？？]
;mm 顔窓用ないからいいや
;[【主人公】 name=？？？]
[ns]？？？[nse]
「なるほど……まだ生きていたのか、ミズチ」[pcms]

[std_miz m ce][trans_c cross time=300]

*3022|
[fc]
[【ミズチ】]
「き、貴様はあの時の！？」[pcms]

[std_aka l mad p1 f03 eki ce][trans_c cross time=300]

*3023|
[fc]
[vo_aka s="akane_0322"]
[【茜】 name=ルージュ]
「せん……せい……？」[pcms]

;mm もう先生って分かってるからリセット？
;やっぱ指定箇所まで

*3024|
[fc]
;[【主人公】 reset]
[ns]？？？[nse]
「待たせたな。少しだけ待っていろ。すぐに助けてやる」[pcms]

[std_miz m ce][trans_c cross time=300]

*3025|
[fc]
[【ミズチ】]
「ワシを無視して助けるじゃと？　世迷い言を！」[pcms]

[Magic_冥魔傀儡陣]

*3026|
[fc]
ミズチの背後から無数の触手が伸び襲い掛かる。[pcms]

*3027|
[fc]
;[【主人公】]
[ns]？？？[nse]
「なんだこれは？　こんなものでオレを殺せると思っているのか？」[pcms]

*3028|
[fc]
触手をひと睨みすると、それだけで鋭い動きが時を止めたように動かなくなる。[pcms]

*3029|
[fc]
そして小刻みに震えあがり、踵を返してミズチへと突き刺さった。[pcms]


;//ＳＥ：刺さる音
[se buf=0 storage="seB028"]
[白フラ]
[quake_chara ch=miz vmax=20 hmax=20 time=20 accel=1 count=4 wait=false]

*3030|
[fc]
[【ミズチ】]
「がぁぁぁぁっ！？　なんじゃと、一体どうなっておる？」[pcms]

[chara_int_all][trans_c cross time=300]

[fadeoutbgm time=1000]

*3031|
[fc]
ミズチは自らの触手に打たれ、壁に激突して崩れ落ちた。[pcms]

*3032|
[fc]
茜の方に向くと、彼女は身をすくめて手と足で胸や股間を隠し始める。[pcms]

[stop_quake_chara ch=miz]
[std_aka m mad p1 f14 eki ce][trans_c cross time=300]

*3033|
[fc]
[vo_aka s="akane_0323"]
[【茜】 name=ルージュ]
「あ……先生、見ないで……あたし、こんなに汚れて……」[pcms]

*3034|
[fc]
床に転がる生まれたての冥魔を足で踏みつぶしながら茜の下に近付くと、そっと彼女を抱きしめた。[pcms]

*3035|
[fc]
;[【主人公】]
[ns]？？？[nse]
「こんな汚れ、大したことはない」[pcms]


[魔法服回復 aka_p1]

*3036|
[fc]
そう言うと、茜の全身に纏わり付いた白濁が蒸発するように霧散していく。[pcms]

[bgm001]

[std_aka m ma p1 f14 ce][trans_c bt time=1000]


*3037|
[fc]
さらに、ぼろぼろになった衣装さえも再生していった。[pcms]

;//立ち絵：茜・魔法服
[std_aka m ma p1 f05 ce][trans_c cross time=300]

*3038|
[fc]
[vo_aka s="akane_0324"]
[【茜】 name=ルージュ]
「あ……服が元通りに……」[pcms]

[std_miz m ce][trans_c cross time=300]

*3039|
[fc]
[【ミズチ】]
「おの……れ……人間風情が、ワシをここまで侮辱するとは。許さぬぞ！」[pcms]

*3040|
[fc]
ようやく身体を起こしたミズチが、再び触手を操り二人へと攻撃を仕掛ける。[pcms]

*3041|
[fc]
今度は茜がすぐさま反応し、抱きしめた腕をすり抜けて前に出る。[pcms]

[std_aka m ma p1 f02 ce][trans_c cross time=300]

*3042|
[fc]
[vo_aka s="akane_0325"]
[【茜】 name=ルージュ]
「先生に指一本触れさせないんだから！　[技_バレ・ブルロント]！」[pcms]

[movie_Magic_バレ・ブルロント]

;//ＳＥ：爆発音
[std_miz m ce][trans_c cross time=300]
[se buf=0 storage="SE1504"]
[白フラ]
[quake_chara ch=miz vmax=20 hmax=20 time=20 accel=1 count=4 wait=true]
[chara_int_all][trans_c bang time=500]

[std_aka m ma p1 f05 ce][trans_c cross time=300]

*3043|
[fc]
[vo_aka s="akane_0326"]
[【茜】 name=ルージュ]
「……へっ？」[pcms]

*3044|
[fc]
渾身の力で放った灼熱の弾丸は、巨大な大砲の弾となりミズチに激突する。[pcms]

*3045|
[fc]
そして壮絶な爆発を起こし、ミズチの身体が木っ端微塵に吹き飛ぶ。[pcms]

*3046|
[fc]
かろうじて残っていた腕が床に落ち、痙攣を起こしていた。[pcms]

[std_aka m ma p1 f05 ce][trans_c cross time=300]

*3047|
[fc]
[vo_aka s="akane_0327"]
[【茜】 name=ルージュ]
「あ、あわわ……なんでこんな威力に？　あ、もしかして先生のおかげ？」[pcms]

*3048|
[fc]
;[【主人公】]
[ns]？？？[nse]
「少し力を貸しすぎたか。とはいえ、あの程度なら魔力酔いも最小限だろう」[pcms]

[std_aka m ma p1 f01 ho ce][trans_c cross time=300]

*3049|
[fc]
[vo_aka s="akane_0328"]
[【茜】 name=ルージュ]
「そ、そうかな……そうだといいけど」[pcms]

*3050|
[fc]
茜は顔を真っ赤にしながらちらりと目の前の救世主の顔を見る。[pcms]

*3051|
[fc]
見慣れた顔のはずなのに、どこか印象が違う気がして、心の片隅に不安を覚えていた。[pcms]

;//立ち絵：ミズチ・オーラなし

[std_miz m ce][trans_c cross time=300]

*3052|
[fc]
[【ミズチ】]
「ぐぅ……っ、一度ならず二度までも……アルカナルージュ、許さんぞ！」[pcms]

[std_aka m ma p1 f05 ce][trans_c cross time=300]

*3053|
[fc]
[vo_aka s="akane_0329"]
[【茜】 name=ルージュ]
「えっ、うそ！？　さっき身体が吹き飛んだはずなのに……」[pcms]

*3054|
[fc]
肩を大きく上下させて疲弊した姿を見せてはいるものの、目の前にいるのはミズチそのものだった。[pcms]

*3055|
[fc]
消し飛んだはずの相手がそこに立っていることに、茜の警戒心が一気に上がる。[pcms]

[std_miz m ce][trans_c cross time=300]

*3056|
[fc]
[【ミズチ】]
「ククク……ワシは他の冥魔のように不便な身体ではないのじゃ。く……まだ再生が追いついておらんか」[pcms]

*3057|
[fc]
ミズチの身体の一部がまだ裂けており、そこからミミズのような細い肉が蠢く。[pcms]

*3058|
[fc]
それが体内に飲み込まれていくと、自然と傷が塞がっていった。[pcms]

*3059|
[fc]
[【ミズチ】]
「ワシは……正確にはワシら全員合わせてミズチであり、全員がミズチなのじゃ」[pcms]

*3060|
[fc]
[【ミズチ】]
「一体でもワシが残っていれば、それを核にして再生が出来るという寸法よ」[pcms]

[std_aka m ma p1 f11 ce][trans_c cross time=300]

*3061|
[fc]
[vo_aka s="akane_0330"]
[【茜】 name=ルージュ]
「つまり、今度はもっと強い魔法でひとかけらも残さず焼き尽くせばいいってことよね？」[pcms]

[std_miz m ce][trans_c cross time=300]

*3062|
[fc]
[【ミズチ】]
「ふん、そこまでの威力など、果たして出せるかな？」[pcms]

[std_miz m ce mcolor=0x00000 mopacity=100][trans_c cross time=300]

*3063|
[fc]
ミズチの身体が霧に包まれ始め、声が遠くなっていく。[pcms]

[std_miz m ce mcolor=0x00000 mopacity=200][trans_c cross time=300]

[se buf=0 storage="SE1202"]
[黒フラ]
[chara_int_ce][trans_c wipe_r time=300]

*3064|
[fc]
茜が睨み付ける中、ミズチの気配は静かに消えていった。[pcms]

[std_aka m ma p1 f01 ce][trans_c cross time=300]

*3065|
[fc]
[vo_aka s="akane_0331"]
[【茜】 name=ルージュ]
「結界が消えた。ほっ……先生、ありがとね。先生？」[pcms]

*3066|
[fc]
結界が消えると同時に、ぐらりと身体が傾く。[pcms]

*3067|
[fc]
そのまま再び意識が深く沈み込んでいった。[pcms]

;//暗転
[ANTEN blk]

;//ここから一人称

;//背景：学園教室・夜照明
[bg storage="bg006c"][trans_c cross time=1000]

[bgm015]

;//ここから話者：主人公は主人公で

*3068|
[fc]
[【主人公】]
「んっ、んんんっ……」[pcms]


[std_aka m ma p1 f08 ce][trans_c cross time=300]


*3069|
[fc]
[vo_aka s="akane_0332"]
[【茜】 name=ルージュ]
「先生、大丈夫？」[pcms]

*3070|
[fc]
[【主人公】]
「あ、ああ……」[pcms]

*3071|
[fc]
駅前で茜の声が聞こえた瞬間、意識が急に途切れた気がした。[pcms]

*3072|
[fc]
でも気付くとこの教室にいて、ミズチが自分の触手で貫かれ、茜の穢れが消え、ミズチを半壊させた。[pcms]

*3073|
[fc]
それはまるで、映画を見ているかのような感覚だった……。[pcms]

[std_aka m ma p1 f03 ce][trans_c cross time=300]

;//声を震わせる感じで
*3074|
[fc]
[vo_aka s="akane_0333"]
[【茜】 name=ルージュ]
「良かった……先生がまた魔力酔いになっちゃったのかと思っちゃった」[pcms]

*3075|
[fc]
[【主人公】]
「いや、それは大丈夫みたいだ」[pcms]

*3076|
[fc]
あの惨状を見る限り、俺が来るまでにミズチに手酷く犯されたんだろう。[pcms]

*3077|
[fc]
だというのに、俺の心配をしてくれる茜に胸が熱くなると同時に、苦しくなる。[pcms]

*3078|
[fc]
[【主人公】]
「それより……遅くなってすまなかった。辛かっただろう？」[pcms]

[std_aka l ma p1 f10 ce][trans_c cross time=300]

*3079|
[fc]
[vo_aka s="akane_0334"]
[【茜】 name=ルージュ]
「あ……う、うぁ……わぁぁぁぁぁぁぁぁぁぁっ！」[pcms]

*3080|
[fc]
茜の顔がみるみるくしゃくしゃになり、俺に抱きついてきた。[pcms]

*3081|
[fc]
俺は彼女を抱きしめ、彼女の頭をそっと撫でる。[pcms]

[std_aka l ma p1 f03 ce][trans_c cross time=300]

*3082|
[fc]
[vo_aka s="akane_0335"]
[【茜】 name=ルージュ]
「怖かった、痛かったよぉ……っ！　嫌なのに、すごく嫌なのに、だんだん気持ち良くなって……」[pcms]

[std_aka l ma p1 f10 ce][trans_c cross time=300]

*3083|
[fc]
[vo_aka s="akane_0336"]
[【茜】 name=ルージュ]
「何度も、何度も中に出されて……それにあんなことまで……うぁ、あ、ぁぁぁぁぁぁぁぁっ！」[pcms]

*3084|
[fc]
ひたすら泣きじゃくる茜を、俺は落ち着くまで抱きしめ続けるのだった。[pcms]

;//暗転
[ANTEN blk]
;//背景：通学路・夜照明
[bg storage="bg011c"]
[std_aka m se p1 f03 ce][trans_c cross time=1000]
;//立ち絵：茜・制服
;mm 変身解除してるから名前リセット

[bgm007]

*3085|
[fc]
[vo_aka s="akane_0337"]
[【茜】 reset]
「先生、ごめんなさい……」[pcms]

*3086|
[fc]
茜が落ち着くのを待ってから帰路についてしばらくすると、茜がようやく声を出した。[pcms]


*3087|
[fc]
[vo_aka s="akane_0338"]
[【茜】]
「あたし、先生が一番なのに、あんなことされて、気持ち良くなっちゃって……」[pcms]

[std_aka m se p1 f01 ce][trans_c cross time=300]

*3088|
[fc]
[vo_aka s="akane_0339"]
[【茜】]
「あたし……先生が好き、大好き。先生と一緒にいられるだけで、むねがふわってするの」[pcms]

[std_aka m se p1 f07 ce][trans_c cross time=300]

*3089|
[fc]
[vo_aka s="akane_0340"]
[【茜】]
「だから、先生にあんな姿見られたくなかったな……」[pcms]

*3090|
[fc]
[【主人公】]
「茜……」[pcms]

*3091|
[fc]
茜の想いにどう答えていいか分からず、口ごもってしまう。[pcms]

[std_aka m se p1 f04 ce][trans_c cross time=300]

*3092|
[fc]
[vo_aka s="akane_0341"]
[【茜】]
「でも、先生が助けてくれて本当に嬉しかったよ？　本当にありがとう」[pcms]

*3093|
[fc]
俺は何も言い返せず、ただ頷くばかりだ。[pcms]

*3094|
[fc]
茜の方がしっかりしすぎていて、大人の俺がこんな様子じゃなさけないと思う。[pcms]

*3095|
[fc]
そんなことを考えていると、急に茜が立ち止まった。[pcms]

*3096|
[fc]
俺も足を止めると、茜は俺に抱きついてきて、潤んだ瞳で俺を見上げてきた。[pcms]

[std_aka l se p1 f08 ce][trans_c cross time=300]

*3097|
[fc]
[vo_aka s="akane_0342"]
[【茜】]
「……先生に、お願いがあるの」[pcms]

*3098|
[fc]
彼女が何を言おうとしているのか、想像に難くなかった。[pcms]

;//選択肢分岐（二択）
;//『茜を受け入れる』→		arcana050へ
;//『今夜は帰宅させる』→	arcana049へ
*SEL06|茜を受け入れる／今夜は帰宅させる
[fc]
[sel02 text='茜を受け入れる'   storage="arcana050.ks" target=*TOP]
[sel04 text='今夜は帰宅させる' storage="arcana049.ks" target=*TOP end]

