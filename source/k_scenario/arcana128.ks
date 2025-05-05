;//arcana128
*TOP
[eval exp="f.l_s128 = 1"][name_allreset]

[bgm010]

;//背景：駅前繁華街・夜照明
[bg storage="bg013c"][trans_c cross time=1000]

;//フェイスのみ：ミア・魔法服・破損と精液
[std_mia m mad p2 f12 eki ri off]

*10825|
[fc]
[vo_mia s="mia_0964"]
[【ミア】 name=ブラン]
「はあ……はあ……せんせー？」[pcms]

*10826|
[fc]
ミアが俺を見つめていた。[pcms]

[std_mia m mad p2 f08 eki ri off]

*10827|
[fc]
[vo_mia s="mia_0965"]
[【ミア】 name=ブラン]
「いつものせんせーに……戻ってくれたよね？」[pcms]

*10828|
[fc]
[【主人公】]
「そうじゃない……話をする。その前に立てるか？」[pcms]

;//立ち絵：ミア・魔法服・破損と精液

[std_mia m mad p1 f12 eki ce][trans_c cross time=300]

*10829|
[fc]
[vo_mia s="mia_0966"]
[【ミア】 name=ブラン]
「ごめん……無理……まだ身体が……」[pcms]

*10830|
[fc]
[【主人公】]
「すまなかったミア」[pcms]

*10831|
[fc]
そう言いながら転びそうになったミアを強く抱きしめる。[pcms]

;//エフェクト：フラッシュ

;//ＳＥ：回復魔法系の音
;レガート佐藤 魔法 回復
[魔法服回復 mia_p2]
;//立ち絵：ミア・魔法服
[std_mia m ma p2 f05 ce][trans_c bt time=1000]

*10832|
[fc]
[vo_mia s="mia_0967"]
[【ミア】 name=ブラン]
「え……うそ？」[pcms]

*10833|
[fc]
魔法服の破損が修復されると同時に、ミアの全身を穢していた淫らな痕跡すべても除去されていた。[pcms]

*10834|
[fc]
[【主人公】]
「ミアと話をする前に、冥魔たちを片付けないといけないか。少し休んでいるといいよ」[pcms]

*10835|
[fc]
そう言って俺は葵に背を向け、ミズチとカクエンを見据えた。[pcms]

;//ミアの立ち絵消す

;//立ち絵：ミズチ・オーラなし
[chara_int_all]
[std_kak s rc]
[std_miz s lc][trans_c cross time=300]

*10836|
[fc]
[【ミズチ】]
「き、貴様は……何者……ぞ？」[pcms]

*10837|
[fc]
[【主人公】]
「おまえたちが成ったつもりでいた存在さ……つまり冥王」[pcms]

;//立ち絵：カクエン・オーラなし

*10838|
[fc]
[【カクエン】]
「舐めんじゃねェ人間ごときがッ！」[pcms]

*10839|
[fc]
[【ミズチ】]
「よ、よせカクエンっ！」[pcms]

*10840|
[fc]
ミズチの制止を振り切ってカクエンが襲いかかる。[pcms]

;//フェイスのみ：ミア・魔法服

*10841|
[fc]
[vo_mia s="mia_0968"]
[【ミア】 name=ブラン]
「せんせー、わたしも戦うっ！」[pcms]

*10842|
[fc]
だが俺は、ミアが前に出るよりも早く、二体に向けて詠唱と共に指をはじいた。[pcms]

*10843|
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

*10844|
[fc]
微かな閃光と共に指先から投射したのは、パチンコ玉程度の魔力の塊だった。[pcms]

*10845|
[fc]
[【ミズチ】]
「この男、魔法を？」[pcms]

*10846|
[fc]
[【カクエン】]
「けっ、こんな豆粒みてえな魔力弾でやられるかよッ！」[pcms]

[se buf=0 storage="seB108"]
[bg storage="effect_black"][trans_c wave00 time=500]
[bg storage="bg013c"]
[std_kak s rc]
[std_miz s lc][trans_c cross time=300]

*10847|
[fc]
[【主人公】]
「さて、どうだろう」[pcms]

*10848|
[fc]
[【カクエン】]
「な……なんだ、これ……？　オレの身体が……くずれて…………ぐああああああああーーーーっ！」[pcms]

*10849|
[fc]
[【ミズチ】]
「ば、か、な……ワシらの、魔力を喰って、いる、じゃと！？　そんな、ワシは……ワシは冥王じゃああああああああっ！」[pcms]

[se buf=0 storage="SE1420"]
[white_toplayer][trans_c bang time=300]
[chara_int_top]
[chara_int_all][trans_c wave00 time=1500]

*10850|
[fc]
豆粒のようなそれに肉体と魔力を同時に削り取られながらもミズチは吠え続け……そして一片も残さずに消え失せていた。[pcms]

;//ミズチとカクエンの立ち絵消す

;//立ち絵：ミア・魔法服
[std_mia m ma p1 f05 ce][trans_c cross time=300]

*10851|
[fc]
[vo_mia s="mia_0969"]
[【ミア】 name=ブラン]
「す、すごい……せんせーが魔法で……ミズチとカクエンをあっという間に……」[pcms]

*10852|
[fc]
[【主人公】]
「違うよミア……俺じゃない……『オレ』が『俺』の願いに応えてくれただけなんだ」[pcms]

*10853|
[fc]
自分でそう言いながらもこれでは説明不足だと思う。しかしこれが事実であり、そのことを俺はみんなに伝えてなくてはならない。[pcms]

[std_mia m ma p2 f04 ce][trans_c cross time=300]

*10854|
[fc]
[vo_mia s="mia_0970"]
[【ミア】 name=ブラン]
「やだなーもう、せんせーってばその年で中二病発症とか？」[pcms]

*10855|
[fc]
困惑しつつ茶化そうとするミアを前に言葉選んでいると、茜たちの気配が近付いているのに気付いた。[pcms]

[chara_int_all]
[std_aoi m ma p1 f05 le]
[std_aka m ma p2 f01 lc x=80]
[std_mia m ma p2 f04 rc x=-80 index=1]
[std_mei m ma p1 f01 ri][trans_c cross time=300]

;//立ち絵：茜・魔法服

*10856|
[fc]
[vo_aka s="akane_0886"]
[【茜】 name=ルージュ]
「ミアちゃーん！　先生ー！」[pcms]

;//立ち絵：葵・魔法服

*10857|
[fc]
[vo_aoi s="aoi_0910"]
[【葵】 name=ヴィオレ]
「すごい力を感じましたけど、いったいなんだったんです！？」[pcms]

[std_mia m ma p2 f09 rc x=-80 index=1][trans_c cross time=300]

*10858|
[fc]
[vo_mia s="mia_0971"]
[【ミア】 name=ブラン]
「せんせーが急に真の力に目覚めてね、ミズチとカクエンを指先ひとつで抹殺しちゃったよ♪」[pcms]

;//立ち絵：冥・魔法服

[std_mei m ma p1 f07 ri][trans_c cross time=300]

*10859|
[fc]
[vo_mei s="mei_0904"]
[【冥】 name=ノワール]
「お兄さん……無事だったんだ？」[pcms]

*10860|
[fc]
少し遅れて冥も駆け寄ってきた。[pcms]

*10861|
[fc]
[【主人公】]
「冥も無事だとわかって、俺もほっとしたよ」[pcms]

[std_mei m ma p1 f13 ri][trans_c cross time=300]

*10862|
[fc]
[vo_mei s="mei_0905"]
[【冥】 name=ノワール]
「うん……ねえお兄さん……さっき使った魔法……あれは冥王様の……力……だよね？」[pcms]

[std_aoi m ma p1 f07 le][trans_c cross time=300]

*10863|
[fc]
[vo_aoi s="aoi_0911"]
[【葵】 name=ヴィオレ]
「えっ？」[pcms]

[std_aka m ma p2 f08 lc x=80][trans_c cross time=300]

*10864|
[fc]
[vo_aka s="akane_0887"]
[【茜】 name=ルージュ]
「どういうこと？」[pcms]

[std_mia m ma p2 f08 rc x=-80 index=1][trans_c cross time=300]

*10865|
[fc]
[vo_mia s="mia_0972"]
[【ミア】 name=ブラン]
「せんせー、冗談抜きでちゃんと説明して？」[pcms]

*10866|
[fc]
[【主人公】]
「そうするつもりでいたさ。話を聞いてくれるか？」[pcms]

*10867|
[fc]
俺はもう彼女たちを守る教師でもなくなってしまうのだと……そう語る覚悟を決めた。[pcms]


;//→arcana129　へ
[ANTEN blk]
[jump storage="arcana129.ks" target=*TOP]

