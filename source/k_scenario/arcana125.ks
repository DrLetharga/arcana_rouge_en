;//arcana125
*TOP
[eval exp="f.l_s125 = 1"][name_allreset]

[bgm010]

;//背景：駅前繁華街・夜照明
[bg storage="bg013c"][trans_c cross time=1000]

;//フェイスのみ：葵・魔法服・破損
[std_aoi m mad p1 f07 ce off]

*10549|
[fc]
[vo_aoi s="aoi_0901"]
[【葵】 name=ヴィオレ]
「……先生？」[pcms]

*10550|
[fc]
葵が俺を見つめていた。[pcms]

[std_aoi m mad p1 f08 ce off]

*10551|
[fc]
[vo_aoi s="aoi_0902"]
[【葵】 name=ヴィオレ]
「いつもの先生に……戻ってくれた……そうなんですよね？」[pcms]

*10552|
[fc]
[【主人公】]
「そうじゃない……話をする。その前に立てるか？」[pcms]

;//立ち絵：葵・魔法服・破損と精液

[std_aoi m mad p1 f01 ce][trans_c cross time=300]

*10553|
[fc]
[vo_aoi s="aoi_0903"]
[【葵】 name=ヴィオレ]
「は、はい……なんとか」[pcms]

*10554|
[fc]
[【主人公】]
「すまなかった葵」[pcms]

*10555|
[fc]
そう言いながら葵を強く抱きしめる。[pcms]

;//エフェクト：フラッシュ
;//ＳＥ：回復魔法系の音
;レガート佐藤 魔法 回復
[魔法服回復 aoi_p1]
;//立ち絵：葵・魔法服
[std_aoi m ma p1 f01 ce][trans_c bt time=1000]

*10556|
[fc]
[vo_aoi s="aoi_0904"]
[【葵】 name=ヴィオレ]
「え……？」[pcms]

*10557|
[fc]
魔法服の破損が修復されると同時に、葵の全身を穢していた淫らな痕跡すべても除去されていた。[pcms]

*10558|
[fc]
[【主人公】]
「葵と話をする前に、冥魔たちを片付けないといけないか。少し、休んでいるといいよ」[pcms]

*10559|
[fc]
そう言って俺は葵に背を向け、ミズチとカクエンを見据えた。[pcms]

;//葵の立ち絵消す

[chara_int_all]
[std_miz m ce][trans_c cross time=300]

;//立ち絵：ミズチ・オーラなし

*10560|
[fc]
[【ミズチ】]
「き、貴様は……何者……ぞ？」[pcms]

*10561|
[fc]
[【主人公】]
「おまえたちが成ったつもりでいた存在さ……つまり冥王」[pcms]

;//立ち絵：カクエン・オーラなし

[chara_int_all]
[std_kak s rc]
[std_miz s lc][trans_c cross time=300]

*10562|
[fc]
[【カクエン】]
「舐めんじゃねェ人間ごときがッ！」[pcms]

*10563|
[fc]
[【ミズチ】]
「よ、よせカクエンっ！」[pcms]

*10564|
[fc]
ミズチの制止を振り切ってカクエンが襲いかかる。[pcms]

;//フェイスのみ：葵・魔法服

[std_aoi m ma p2 f02 ce off]

*10565|
[fc]
[vo_aoi s="aoi_0905"]
[【葵】 name=ヴィオレ]
「せ、先生は、私が守りますっ！」[pcms]

*10566|
[fc]
だが俺は、葵が前に出るよりも早く、二体に向けて詠唱と共に指をはじいた。[pcms]

*10567|
[fc]
[【主人公】]
「……ＮＯＩ＋Ｌ＠＊Ｔ－ＥＭ」[pcms]

;//魔法エフェクト、パチンコ玉ぐらいの魔力球を投射
;レガート佐藤 魔法 主人公の攻撃

;[top wht cross time=100]

[se buf=0 storage="SE1280"]
[img_c storage="xig03_cut001_05" layer=12 x=0 y=0][trans_c ruf_rl time=200]
[bg storage="effect_white"][trans_c cross time=100]

[bg storage="bg013c"]
[std_kak s rc]
[std_miz s lc][trans_c cross time=300]

*10568|
[fc]
微かな閃光と共に指先から投射したのは、パチンコ玉程度の魔力の塊だった。[pcms]

*10569|
[fc]
[【ミズチ】]
「この男、魔法を？」[pcms]

*10570|
[fc]
[【カクエン】]
「けっ、こんな豆粒みてえな魔力弾でやられるかよッ！」[pcms]

[se buf=0 storage="seB108"]
[bg storage="effect_black"][trans_c wave00 time=500]
[bg storage="bg013c"]
[std_kak s rc]
[std_miz s lc][trans_c cross time=300]

*10571|
[fc]
[【主人公】]
「さて、どうだろう」[pcms]

*10572|
[fc]
[【カクエン】]
「な……なんだ、これ……？　オレの身体が……くずれて…………ぐああああああああーーーーっ！」[pcms]

*10573|
[fc]
[【ミズチ】]
「ば、か、な……ワシらの、魔力を喰って、いる、じゃと！？　そんな、ワシは……ワシは冥王じゃああああああああっ！」[pcms]

[se buf=0 storage="SE1420"]
[white_toplayer][trans_c bang time=300]
[chara_int_top]
[chara_int_all][trans_c wave00 time=1500]

*10574|
[fc]
豆粒のようなそれに肉体と魔力を同時に削り取られながらもミズチは吠え続け……そして一片も残さずに消え失せていた。[pcms]

;//ミズチとカクエンの立ち絵消す

;//立ち絵：葵・魔法服

[std_aoi m ma p1 f05 ce][trans_c cross time=300]

*10575|
[fc]
[vo_aoi s="aoi_0906"]
[【葵】 name=ヴィオレ]
「す、すごい……先生が魔法で……ミズチとカクエンをあっという間に……」[pcms]

*10576|
[fc]
[【主人公】]
「違うよ葵……俺じゃない……『オレ』が『俺』の願いに応えてくれただけなんだ」[pcms]

*10577|
[fc]
自分でそう言いながらもこれでは説明不足だと思う。しかしこれが事実であり、そのことを俺はみんなに伝えてなくてはならない。[pcms]

[std_aoi m ma p1 f07 ce][trans_c cross time=300]

*10578|
[fc]
[vo_aoi s="aoi_0907"]
[【葵】 name=ヴィオレ]
「せ、先生、意味がわからないです」[pcms]

*10579|
[fc]
困惑する葵を前に言葉選んでいると、茜たちの気配が近付いているのに気付いた。[pcms]

[chara_int_all]
[std_aoi m ma p1 f07 le]
[std_aka m ma p2 f01 lc x=80]
[std_mia m ma p2 f11 rc x=-80 index=1][trans_c cross time=300]
;[std_mei m ma p1 f01 ri]

;//立ち絵：茜・魔法服

*10580|
[fc]
[vo_aka s="akane_0884"]
[【茜】 name=ルージュ]
「葵ちゃーん！　先生ー！」[pcms]

;//立ち絵：ミア・魔法服

[std_mia m ma p2 f08 rc x=-80 index=1][trans_c cross time=300]

*10581|
[fc]
[vo_mia s="mia_0878"]
[【ミア】 name=ブラン]
「めちゃくちゃな魔力の反応だったけど生きてる～？」[pcms]

;//立ち絵：冥・魔法服

[std_mei m ma p1 f07 ri][trans_c cross time=300]

*10582|
[fc]
[vo_mei s="mei_0902"]
[【冥】 name=ノワール]
「お兄さん……お姉ちゃんも……無事だったんだ？」[pcms]

*10583|
[fc]
少し遅れて冥も駆け寄ってきた。[pcms]

[std_aoi m ma p1 f04 le][trans_c cross time=300]

*10584|
[fc]
[vo_aoi s="aoi_0908"]
[【葵】 name=ヴィオレ]
「藍……良かった……」[pcms]

*10585|
[fc]
[【主人公】]
「冥も無事だとわかって、俺もほっとしたよ」[pcms]

[std_mei m ma p1 f11 ri][trans_c cross time=300]

*10586|
[fc]
[vo_mei s="mei_0903"]
[【冥】 name=ノワール]
「うん……ねえお兄さん……さっき使った魔法……あれは冥王様の……力……だよね？」[pcms]

[std_aoi m ma p1 f05 le][trans_c cross time=300]

*10587|
[fc]
[vo_aoi s="aoi_0909"]
[【葵】 name=ヴィオレ]
「えっ？」[pcms]

[std_aka m ma p2 f05 lc x=80][trans_c cross time=300]

*10588|
[fc]
[vo_aka s="akane_0885"]
[【茜】 name=ルージュ]
「どういうこと？」[pcms]

[std_mia m ma p2 f02 rc x=-80 index=1][trans_c cross time=300]

*10589|
[fc]
[vo_mia s="mia_0879"]
[【ミア】 name=ブラン]
「せんせー、冗談抜きでちゃんと説明して？」[pcms]

*10590|
[fc]
[【主人公】]
「そうするつもりでいたさ。話を聞いてくれるか？」[pcms]

*10591|
[fc]
俺はもう彼女たちを守る教師でもなくなってしまうのだと……そう語る覚悟を決めた。[pcms]

;mm 飛び先抜けてんじゃん
[ANTEN blk]
[jump storage="arcana129.ks" target=*TOP]
