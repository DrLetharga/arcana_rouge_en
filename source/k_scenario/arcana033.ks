;//arcana033
*TOP
[eval exp="f.l_s033 = 1"][name_allreset]
;//このファイルは一人称で途中から三人称

;//背景：空・日中
[bg storage="bg001a"][trans_c cross time=1000]

[bgm004]

*1496|
[fc]
そして翌日、ようやく三人が揃って登校しているのを見て、俺は彼女達を昼休み、資料室に来るようメールを打っておいた。[pcms]

;//背景：学園資料室・日中
[bg storage="bg007a"]
[std_aoi m se p1 f01 le]
[std_aka m se p2 f01 ce]
[std_mia m se p1 f01 ri][trans_c cross time=1000]



;//立ち絵：茜・制服
;//立ち絵：葵・制服
;//立ち絵：ミア・制服


*1497|
[fc]
[【主人公】]
「さてと……やっと揃ったな。早速だけど、説明を頼めるか？」[pcms]

[std_mia m se p1 f04 ri][trans_c cross time=300]

*1498|
[fc]
[vo_mia s="mia_0134"]
[【ミア】]
「はーい。お昼休みはあんまり時間ないからね。それじゃ茜、任せたわよ！」[pcms]

[std_aka m se p2 f05 ce][trans_c cross time=1000]

*1499|
[fc]
[vo_aka s="akane_0137"]
[【茜】]
「えっ、あたし？　まあいいけど……あれは一ヶ月くらい前のことだったかな」[pcms]

*1500|
[fc]
茜はそう言いながら、ゆっくり思い出すように話し始めた。[pcms]

;//暗転
[ANTEN blk]

;//ここから三人称

;//背景：通学路・夜照明
[bg storage="bg011c"][trans_c cross time=1000]

[bgm006]

[wait time=500]
;//立ち絵：茜・制服
;//立ち絵：葵・制服
;//立ち絵：ミア・制服

;mm 回想の初戦闘シーンなのでちょっと長め


;//ＳＥ：なにかにつまずいて大きな缶や木箱をひっくり返す音
[se buf=0 storage="seA052" loop]

[std_mia l se p1 f12 ce][trans_c cross time=300]

*1501|
[fc]
[vo_mia s="mia_0135"]
[【ミア】]
「はっ、はっ、はっ……おかしいよ、なんかわかんないけどおかしい！」[pcms]

[std_aoi l se p1 f03 ce][trans_c cross time=300]

*1502|
[fc]
[vo_aoi s="aoi_0116"]
[【葵】]
「はっ、はっ……待って、ミアさん……」[pcms]

[std_aka l se p2 f08 ce][trans_c cross time=300]

*1503|
[fc]
[vo_aka s="akane_0138"]
[【茜】]
「葵ちゃん、大丈夫？　ミアちゃん、ちょっと休もうよ」[pcms]


[chara_int_all][trans_c cross time=300]

*1504|
[fc]
その日は、ほんの少し前まで普段と変わらない日常だった。[pcms]

*1505|
[fc]
いつものように茜、葵、ミアの三人は一緒に帰路についていた。[pcms]

*1506|
[fc]
だがその日、近くの暗い路地に違和感を覚えた三人が興味本位で暗い路地に入ったところに、ソレはいた。[pcms]

*1507|
[fc]
暗がりに立つ巨大な姿、片手で女性を掴み、その身体はぐったりとしたまま動かない。[pcms]

*1508|
[fc]
着ていた服は無残に引き裂かれ、粘液のような白濁にまみれた姿は、明らかに近付いてはいけない雰囲気を醸し出していた。[pcms]

*1509|
[fc]
まるで、異界に突然踏み込んだかのような感覚。[pcms]

*1510|
[fc]
三人は本能の赴くまま、そこから必死に逃げ出した。[pcms]

[stopse buf=0]

[std_aoi m se p1 f03 le]
[std_aka m se p2 f08 ce]
[std_mia m se p1 f03 ri][trans_c cross time=300]

*1511|
[fc]
[vo_mia s="mia_0136"]
[【ミア】]
「はぁっ、はぁっ……わたしも、無理……ちょっと休憩しよ」[pcms]

*1512|
[fc]
ようやく立ち止まってその場にしゃがみ込む。[pcms]

*1513|
[fc]
路地裏から出て道行く人に助けを求めようとしたものの、運の悪いことに近くに人はいなかった。[pcms]

*1514|
[fc]
人の姿を求めてこうして走り続けているものの、未だに出会うことはなかった。[pcms]

*1515|
[fc]
それどころか、いつまで経ってもこの先にある繁華街にたどり着かないのだ。[pcms]

*1516|
[fc]
日常が一瞬にして非日常に変わり、今までの常識が通用しない世界にほうり込まれたかのような違和感。[pcms]

*1517|
[fc]
こうしている間にも背後からあの異形が姿を現したりしないか。[pcms]

*1518|
[fc]
疲れ果てた三人は、今走ってきた道を恐る恐る見ていた。[pcms]

*1519|
[fc]
だが、その予想は悪い意味で裏切られた。[pcms]

;//立ち絵：ショウジョウ
[chara_int_all]
[std_syo m ce][trans_c cross time=300]

;//組み込み時名前を　化け物に変更
*1520|
[fc]
[【ショウジョウ】 name=化け物]
「みいつけた」[pcms]


[std_mia m se p1 f13 ce][trans_c cross time=300]

*1521|
[fc]
[vo_mia s="mia_0137"]
[【ミア】]
「きゃぁっ！？　なんで？　なんで後ろにいたはずなのに前にいるの！？」[pcms]

*1522|
[fc]
背後から聞こえた声に、ミア達は一斉に振り返る。[pcms]

*1523|
[fc]
すると進行方向に、あの異様な姿が下卑た笑いを浮かべながら立っていた。[pcms]

*1524|
[fc]
街灯に照らされたその姿は明らかに人のものではなく、茜達の心を凍らせる。[pcms]

;//組み込み時名前を　化け物に変更
[chara_int_all]
[std_syo m ce][trans_c cross time=300]

*1525|
[fc]
[【ショウジョウ】 name=化け物]
「ぐへへ……うまそうな、おなごだぁ」[pcms]

*1526|
[fc]
涎を垂らしながら下卑た笑いを浮かべる化け物に、茜達の背筋に悪寒が走った。[pcms]

*1527|
[fc]
先程見た光景が脳裏をよぎり、茜の顔から血の気が引いていく。[pcms]

;//組み込み時名前を　化け物に変更

*1528|
[fc]
[【ショウジョウ】 name=化け物]
「きょうは、たいりょうだぁ。えものがたくさん……ぐひひ」[pcms]

[chara_int_all]
[std_aoi m se p1 f03 le]
[std_aka m se p2 f03 ce]
[std_mia m se p1 f03 ri][trans_c cross time=300]

*1529|
[fc]
[vo_aka s="akane_0139"]
[【茜】]
「獲物って、あたし達のこと？」[pcms]

[chara_int_all]
[std_syo l ce][trans_c cross time=300]

;//組み込み時名前を　化け物に変更
*1530|
[fc]
[【ショウジョウ】 name=化け物]
「そうだぁ。おではかわいいこをおかすのが、だあいすぎなんだぁ」[pcms]

[chara_int_all]
[std_aoi m se p1 f05 le]
[std_aka m se p2 f03 ce]
[std_mia m se p1 f03 ri][trans_c cross time=300]

*1531|
[fc]
[vo_aoi s="aoi_0117"]
[【葵】]
「犯すって、まさか……それじゃあ、あの女の人も？」[pcms]

*1532|
[fc]
葵の顔が青ざめ、唇が小さく震える。[pcms]

*1533|
[fc]
葵は犯すの意味がすぐには分からなかったものの、あの女性の姿を思い返し、なんとなくだが想像はついた。[pcms]

[std_mia m se p1 f05 ri][trans_c cross time=300]

*1534|
[fc]
[vo_mia s="mia_0138"]
[【ミア】]
「やばい、やばいよ……二人とも、早く逃げて……」[pcms]

[std_aka m se p2 f13 ce][trans_c cross time=300]

*1535|
[fc]
[vo_aka s="akane_0140"]
[【茜】]
「だめだよ、ミアちゃん。あたし、さっきから足がすくんで動かないの」[pcms]

[std_aoi m se p1 f03 le][trans_c cross time=300]

*1536|
[fc]
[vo_aoi s="aoi_0118"]
[【葵】]
「わ、私も……。だから、ミアちゃんだけでも逃げて……」[pcms]

*1537|
[fc]
心優しい二人の友人の言葉にミアは胸が熱くなるものの、首を横に振った。[pcms]

[std_mia m se p1 f02 ri][trans_c cross time=300]

*1538|
[fc]
[vo_mia s="mia_0139"]
[【ミア】]
「そんなの、置いてけるわけないじゃない。それに、実はわたしも動けないんだよね……」[pcms]

*1539|
[fc]
まるで足が地面に縫い付けられたかのように、その場から動けない。[pcms]

[std_aka m se p2 f02 ce][trans_c cross time=300]

*1540|
[fc]
[vo_aka s="akane_0141"]
[【茜】]
「な、なんなのよあなたは！　一体何者なの！？」[pcms]

[chara_int_all]
[std_syo l ce][trans_c cross time=300]

*1541|
[fc]
[【ショウジョウ】 name=化け物]
「おで？　おでかぁ？　おではしょうじょう。おんなずきの、めいまだぁ」[pcms]

[chara_int_all]
[std_aoi m se p1 f08 ce][trans_c cross time=300]

*1542|
[fc]
[vo_aoi s="aoi_0119"]
[【葵】]
「しょうじょう……？　めいま……？　なに、それ……うっ！？」[pcms]

[std_aoi m se p1 f12 ce][trans_c cross time=300]

*1543|
[fc]
ショウジョウの言葉を反芻した葵が、突然頭を抱えてうずくまる。[pcms]

;mm 名前は化け物指定なんだけど地の文ではショウジョウ表記なの？
;mm P判断でスルー


[std_aka m se p2 f12 ce][trans_c cross time=300]

*1544|
[fc]
[vo_aka s="akane_0142"]
[【茜】]
「葵ちゃん、どうしたの？　ぐっ、あ、頭が……なに、これ……」[pcms]

[std_mia m se p1 f12 ce][trans_c cross time=300]

*1545|
[fc]
[vo_mia s="mia_0140"]
[【ミア】]
「どうしたの二人とも……くっ、うぅぅっ！　あ、頭が急に痛く……うぅぅぅっ！」[pcms]


[chara_int_all]
[std_aoi m se p1 f12 le]
[std_aka m se p2 f12 ce]
[std_mia m se p1 f12 ri][trans_c cross time=300]



;//ＳＥ：心臓の鼓動音
[se buf=0 storage="seB023" loop]
[赤フラ time=1000]

*1546|
[fc]
頭痛が酷くなると同時に、心臓が大きく跳ねる音がした。[pcms]

*1547|
[fc]
その音は耳の奥へと強く響き、何かの目ざめを予感させる。[pcms]

[chara_int_all]
[std_syo l ce][trans_c cross time=300]

*1548|
[fc]
[【ショウジョウ】 name=化け物]
「なんだぁ？　おまえたち、まりょくがきゅうにあがって……？」[pcms]

*1549|
[fc]
ショウジョウが何を言っているか分からないものの、痛みはさらに増していく。[pcms]

[std_aka l se p1 f12 ce][trans_c cross time=300]

*1550|
[fc]
[vo_aka s="akane_0143"]
[【茜】]
「なに、これ……頭の中に、何かが流れ込んでくる……」[pcms]

[std_aoi l se p1 f03 ce][trans_c cross time=300]

*1551|
[fc]
[vo_aoi s="aoi_0120"]
[【葵】]
「冥魔……魔法少女の資質……なんですか、それ……？」[pcms]

[std_mia l se p1 f12 ce][trans_c cross time=300]

*1552|
[fc]
[vo_mia s="mia_0141"]
[【ミア】]
「それが……わたしの中に……？　なんで？　どういうこと……？」[pcms]

[stopse buf=0]

[chara_int_all]
[std_syo l ce][trans_c cross time=300]

*1553|
[fc]
[【ショウジョウ】 name=化け物]
「なにを、いっでるんだ、おまえら？　まあいいや、じゃあぜんいんいっぺんにいだだぐどしようがぁ！」[pcms]

[std_syo m ce][trans_c cross time=300]

*1554|
[fc]
ショウジョウは茜達に飛びかかろうとしたものの、思わず後ろに飛び退いた。[pcms]

*1555|
[fc]
彼女達の魔力が急激に高まり、それが威圧感となって彼の身を引かせたのだ。[pcms]

[fadeoutbgm time=1000]

[chara_int_all]
[std_syo m ce][trans_c cross time=300]

*1556|
[fc]
[【ショウジョウ】 name=化け物]
「な、なんだぁ？」[pcms]

[bgm001]

[std_aka m se p1 f11 ce][trans_c cross time=300]

*1557|
[fc]
[vo_aka s="akane_0144"]
[【茜】]
「なんだか分かんないけど……」[pcms]

[std_aoi m se p1 f11 le][trans_c cross time=300]

*1558|
[fc]
[vo_aoi s="aoi_0121"]
[【葵】]
「なんとなく、分かったような気がします……」[pcms]

[std_mia m se p1 f11 ri][trans_c cross time=300]

*1559|
[fc]
[vo_mia s="mia_0142"]
[【ミア】]
「わたし達が、戦わなくちゃいけないってことがね！」[pcms]

*1560|
[fc]
頭を押さえていた彼女達は、いつしかまっすぐにショウジョウを睨み付けていた。[pcms]


[chara_int_all]
[std_aka l se p1 f02 ce][trans_c cross time=300]


;//印の読みはしるし
*1561|
[fc]
[vo_aka s="akane_0145"]
[【茜】]
「目ざめよ、我が内に眠る情熱の印。オープンアルカナ！」[pcms]

;mm ムービー連続で貼っても合間に背景でちゃうから一応キャラ貼ってくしかないな、テンポ悪いけど
[movie_hensin aka]
[std_aka m ma p2 f11 ce][trans_c cross time=0]
[wait time=500]

[std_aoi l se p2 f02 ce][trans_c cross time=300]

;//印の読みはしるし
*1562|
[fc]
[vo_aoi s="aoi_0122"]
[【葵】]
「目ざめよ、我が内に眠る希望の印。オープンアルカナ！」[pcms]

[movie_hensin aoi]
[std_aoi m ma p2 f11 ce][trans_c cross time=0]

[wait time=500]
[std_mia l se p2 f02 ce][trans_c cross time=300]

;//印の読みはしるし
*1563|
[fc]
[vo_mia s="mia_0143"]
[【ミア】]
「目ざめよ、我が内に眠る陽光の印。オープンアルカナ！」[pcms]

[movie_hensin mia]

;//立ち絵：茜・魔法服
;//立ち絵：葵・魔法服
;//立ち絵：ミア・魔法服
[std_mia m ma p2 f11 ce][trans_c cross time=0]

*1564|
[fc]
かけ声と共に彼女達の姿は大きく変化し、それに伴って魔力も格段に増大する。[pcms]


[chara_int_all]
[std_aoi m ma p1 f11 le]
[std_aka m ma p1 f11 ce]
[std_mia m ma p2 f11 ri][trans_c cross time=300]



*1565|
[fc]
その姿に驚きおののくショウジョウの前で、茜達は自らの変化に戸惑っていた。[pcms]

[std_aka m ma p1 f05 ce][trans_c cross time=300]

*1566|
[fc]
[vo_aka s="akane_0146"]
[【茜】]
「なにこの衣装！？　可愛い……けど、おへそ出ちゃってちょっと恥ずかしいかも」[pcms]

[std_aoi m ma p1 f05 le][trans_c cross time=300]

*1567|
[fc]
[vo_aoi s="aoi_0123"]
[【葵】]
「え、ええええ！？　わ、私の衣装、ほとんど布地がないんだけど……」[pcms]

[std_mia m ma p2 f04 ri][trans_c cross time=300]

*1568|
[fc]
[vo_mia s="mia_0144"]
[【ミア】]
「わたしのも可愛いじゃん！　これはテンションあがるなー」[pcms]

[chara_int_all]
[std_syo m ce][trans_c cross time=300]

*1569|
[fc]
[【ショウジョウ】 name=化け物]
「なんだ、おまえたち……まほうしょうじょなのか？」[pcms]

;//ここからの話者：葵はルージュで
[std_aka l ma p1 f02 ce][trans_c cross time=300]

*1570|
[fc]
[vo_aka s="akane_0147"]
[【茜】 name=ルージュ]
「そう……あたしの名は、アルカナルージュ！」[pcms]

;//ここからの話者：葵はヴィオレで
[std_aoi l ma p1 f11 ce][trans_c cross time=300]

*1571|
[fc]
[vo_aoi s="aoi_0124"]
[【葵】 name=ヴィオレ]
「えっ？　えっと……アルカナヴィオレ……です」[pcms]

;//ここからの話者：はブランで
[std_mia l ma p1 f11 ce][trans_c cross time=300]

*1572|
[fc]
[vo_mia s="mia_0145"]
[【ミア】 name=ブラン]
「わたしがアルカナブランよ！」[pcms]

[chara_int_all]
[std_aoi m ma p1 f11 le]
[std_aka m ma p1 f11 ce]
[std_mia m ma p2 f11 ri][trans_c cross time=300]

*1573|
[fc]
自然と頭の中に浮かんだ名前を三人は凜々しく叫ぶ。[pcms]

*1574|
[fc]
違和感のないことを不思議に思いながらも、彼女達は戦闘態勢を取った。[pcms]

[chara_int_all]
[std_syo m ce][trans_c cross time=300]

*1575|
[fc]
[【ショウジョウ】 name=化け物]
「まほうしょうじょ……おでの、ごちそう。さんにんも……いる、ぐへへへ！」[pcms]


[std_mia m ma p1 f13 ce][trans_c cross time=300]

*1576|
[fc]
[vo_mia s="mia_0146"]
[【ミア】 name=ブラン]
「うわ、改めて見るとすごい気持ち悪い笑い……。でも、もう怖くないもんね！」[pcms]

[std_aoi m ma p1 f03 ce][trans_c cross time=300]

*1577|
[fc]
[vo_aoi s="aoi_0125"]
[【葵】 name=ヴィオレ]
「わ、私は怖いけど……頑張ります」[pcms]

[std_aka m ma p1 f02 ce][trans_c cross time=300]

*1578|
[fc]
[vo_aka s="akane_0148"]
[【茜】 name=ルージュ]
「それじゃ早速……[技_フラム・デ・エクスプロージオン]！」[pcms]

[movie_Magic_エクスプロージオン]

*1579|
[fc]
茜は両手をショウジョウに突き出し、頭に浮かんだ詠唱をそのまま口にした。[pcms]

*1580|
[fc]
炎の塊が現れ、高速でショウジョウに向かって飛ぶ。[pcms]

*1581|
[fc]
……はずが、その勢いの反動で茜の身体が大きく跳ねた。[pcms]

[std_aka m ma p1 f05 ce][trans_c cross time=300]
[quake_chara ch=aka vmax=10 hmax=10 time=20 accel=1 count=4 wait=false]


*1582|
[fc]
[vo_aka s="akane_0149"]
[【茜】 name=ルージュ]
「ひゃぁっ！？」[pcms]



[stop_quake_chara ch=aka]
[se buf=0 storage="SE1501"]
[std_syo m ce][trans_c cross time=300]
[quake_bg vmax=15 hmax=15 time=20 accel=1 count=4 wait=false]

*1583|
[fc]
大きく跳ね上がった腕は炎の弾を上に跳ね上げ、ショウジョウの遥か頭上で爆ぜた。[pcms]

;//ＳＥ：爆発音



[stop_quake_chara ch=aka]
[std_mia m ma p1 f02 ce][trans_c cross time=300]

*1584|
[fc]
[vo_mia s="mia_0147"]
[【ミア】 name=ブラン]
「ちょっとルージュ、なにやってるのよ。いいわ、わたしが見本を出してあげる！」[pcms]

[std_mia m ma p2 f11 ce][trans_c cross time=300]

*1585|
[fc]
[vo_mia s="mia_0148"]
[【ミア】 name=ブラン]
「[技_ル・ジュジュモン・ドゥ・ジュ]！」[pcms]
;//大技。貫通技。大きめの光の槍を出して投擲する。

[movie_Magic_ジュジュモン]

*1586|
[fc]
ブランの手に大きな光が現れ、勢いをつけて投擲する。[pcms]


[se buf=0 storage="SE1279"]
[std_syo m ce][trans_c cross time=300]
[quake_bg vmax=15 hmax=15 time=20 accel=1 count=4 wait=false]

*1587|
[fc]
だが、それも大きく的が外れ、ショウジョウの横に突き刺さる。[pcms]

[std_mia m ma p1 f05 ce][trans_c cross time=300]

*1588|
[fc]
[vo_mia s="mia_0149"]
[【ミア】 name=ブラン]
「へっ？　どうして、なんで当たらないの？」[pcms]

[std_syo m ce][trans_c cross time=300]

*1589|
[fc]
[【ショウジョウ】 name=化け物]
「ぐへへへ！　どこをねらってる？　ねらいは、こうつけるんだ！」[pcms]

[se buf=0 storage="seA083"]
[dash ch=syo x=1000 accel=3 time=300]

*1590|
[fc]
駆け出したショウジョウの動きは速いが、目で反応することは出来た。[pcms]


[chara_int_all]
[std_aka m ma p1 f05 lc]
[std_mia m ma p1 f05 rc][trans_c cross time=300]



*1591|
[fc]
とはいえ、魔法を打った反動で戸惑う茜は、襲い掛かる拳をまともに食らってしまった。[pcms]

;//ＳＥ：殴る音
[se buf=0 storage="seB008"]
[白フラ]
[std_aka m ma p1 f12 lc][trans_c cross time=0]
[quake_chara ch=aka vmax=10 hmax=10 time=20 accel=1 count=4 wait=false]

*1592|
[fc]
[vo_aka s="akane_0150"]
[【茜】 name=ルージュ]
「がはっ！」[pcms]

[chara_int_lc]
[std_mia m ma p1 f05 rc][trans_c cross time=300]

*1593|
[fc]
[vo_mia s="mia_0150"]
[【ミア】 name=ブラン]
「茜ちゃん！　きゃぁぁぁぁっ！？」[pcms]

[quake_chara ch=mia vmax=10 hmax=10 time=20 accel=1 count=4 wait=false]
;//ＳＥ：吹き飛ばされる音
[se buf=0 storage="seB008"]

[chara_int_rc][trans_c cross time=300]

[stop_quake_chara ch=aka]
[stop_quake_chara ch=mia]

*1594|
[fc]
続いてミアが殴り飛ばされ、地面を転がされる。[pcms]

*1595|
[fc]
そしてショウジョウは残った葵へと向けられた。[pcms]

[std_aoi m ma p1 f01 ce][trans_c cross time=300]

*1596|
[fc]
[vo_aoi s="aoi_0126"]
[【葵】 name=ヴィオレ]
「くっ、[技_アメシスト・ブークリエ]！」[pcms]

;//ＳＥ：ぶつかる音
[se buf=0 storage="seB008"]

[std_aoi m ma p1 f01 ce][trans_c cross time=300]

*1597|
[fc]
[vo_aoi s="aoi_0127"]
[【葵】 name=ヴィオレ]
「きゃぁぁぁぁっ！」[pcms]

*1598|
[fc]
咄嗟に盾を生成したものの、完全には防御出来ず吹き飛ばされる。[pcms]

;//ＳＥ：ぶつかる音

[std_aoi m ma p1 f12 ce][trans_c cross time=0]
[白フラ]
[quake_chara ch=aoi vmax=10 hmax=10 time=20 accel=1 count=4 wait=false]

*1599|
[fc]
[vo_aoi s="aoi_0128"]
[【葵】 name=ヴィオレ]
「あぐっ！」[pcms]

*1600|
[fc]
壁に叩きつけられ崩れ落ちそうになったところへ、ショウジョウがさらに追い打ちをかける。[pcms]

*1601|
[fc]
執拗な殴打を受け、魔法を展開して防ぐことも出来ない葵は、ボロボロになりその場に崩れ落ちた。[pcms]

[std_aoi m ma p1 f03 ce][trans_c cross time=300]

*1602|
[fc]
[vo_aoi s="aoi_0129"]
[【葵】 name=ヴィオレ]
「あ……ぅ……」[pcms]

;//ＳＥ：倒れる音
[se buf=0 storage="seB013"]


[chara_int_all]
[std_aka m ma p1 f11 lc][trans_c cross time=300]

*1603|
[fc]
[vo_aka s="akane_0151"]
[【茜】 name=ルージュ]
「葵ちゃん！　よくも葵ちゃんを……く、うぅぅっ！」[pcms]


[std_mia m ma p1 f11 rc][trans_c cross time=300]

*1604|
[fc]
[vo_mia s="mia_0151"]
[【ミア】 name=ブラン]
「わたしの友達にそんなことしておいて、ただじゃ済まないんだからね！」[pcms]

*1605|
[fc]
痛みと怒りに身体を震わせながら、茜とミアが立ち上がる。[pcms]

*1606|
[fc]
だが、その足は小刻みに震え、満足に力が入らない。[pcms]

[chara_int_all]
[std_syo m ce][trans_c cross time=300]

*1607|
[fc]
[【ショウジョウ】 name=化け物]
「ぐへへ……なら、つぎはおまえたちだ」[pcms]

;//ＳＥ：殴る音
[std_aka l ma p1 f12 ce][trans_c cross time=300]
[se buf=0 storage="seB008"]
[白フラ]
[quake_chara ch=aka vmax=10 hmax=10 time=20 accel=1 count=4 wait=false]

*1609|
[fc]
[vo_aka s="akane_0152"]
[【茜】 name=ルージュ]
「がはっ！」[pcms]

;//ＳＥ：ぶつかる音

[stop_quake_chara ch=aka]
[std_mia l ma p1 f05 ce][trans_c cross time=300]

*1610|
[fc]
[vo_mia s="mia_0152"]
[【ミア】 name=ブラン]
「茜っ……あぅっ！」[pcms]

[se buf=0 storage="seB013"]
[chara_int_all][trans_c cross time=300]


*1611|
[fc]
蹴り飛ばされた茜がミアにぶつかり、二人が抱き合って再び地面を転がる。[pcms]

*1612|
[fc]
ようやく止まったものの、いつの間にか移動してきたショウジョウがさらに蹴りを加えていく。[pcms]

[std_mia l ma p1 f12 ce][trans_c cross time=300]

;//ＳＥ：蹴る音
[se buf=0 storage="seB008"]
[白フラ]
[quake_chara ch=mia vmax=10 hmax=10 time=20 accel=1 count=4 wait=false]

*1613|
[fc]
[vo_mia s="mia_0153"]
[【ミア】 name=ブラン]
「あぐっ、いつっ、いたぁぁっ！」[pcms]

[stop_quake_chara ch=mia]
[std_aka l ma p1 f12 ce][trans_c cross time=300]
[se buf=0 storage="seB008"]
[白フラ]
[quake_chara ch=aka vmax=10 hmax=10 time=20 accel=1 count=4 wait=false]


*1614|
[fc]
[vo_aka s="akane_0153"]
[【茜】 name=ルージュ]
「あぅっ、ぎぅっ、つぅぅぅっ！」[pcms]

[chara_int_all][trans_c cross time=300]

*1615|
[fc]
何度も足蹴にされ、うずくまって痛みに耐える茜とミア。[pcms]

*1616|
[fc]
立ち上がることも逃げることも出来ず、ただうめき声を上げ続けた。[pcms]

[stop_quake_chara ch=aka]
[std_aoi l ma p1 f03 ce][trans_c cross time=300]

*1617|
[fc]
[vo_aoi s="aoi_0130"]
[【葵】 name=ヴィオレ]
「やめて……茜ちゃんとミアさんが死んじゃう」[pcms]

*1618|
[fc]
葵は立ち上がろうとするものの全身の痛みが強く、満足に腕を上げることさえ出来なかった。[pcms]

[std_syo l ce][trans_c cross time=300]

*1619|
[fc]
[【ショウジョウ】 name=化け物]
「おで、すぐにころさない。まほうしょうじょ、おかしてたのしむ。ぐひ、ぐへへ……」[pcms]

*1620|
[fc]
二人が動かなくなったのを見て、ショウジョウがようやく攻撃をやめる。[pcms]

*1621|
[fc]
だが、その視線は葵に向けられ、ゆっくりと近づき始めた。[pcms]

[std_aoi l ma p1 f03 ce][trans_c cross time=300]

*1622|
[fc]
[vo_aoi s="aoi_0131"]
[【葵】 name=ヴィオレ]
「あ、う、うぁ……っ、いや、来ないで……」[pcms]

*1623|
[fc]
ターゲットが自分に変わったことに気付き、葵は後ずさろうとする。[pcms]

*1624|
[fc]
だがそれより早くショウジョウの手が伸び、葵の首を掴んで持ち上げた。[pcms]

[std_aoi l ma p1 f12 ce][trans_c cross time=300]

*1625|
[fc]
[vo_aoi s="aoi_0132"]
[【葵】 name=ヴィオレ]
「う、ぐぅ……苦し、い……っ」[pcms]

[chara_int_all]
[std_syo l ce][trans_c cross time=300]

*1626|
[fc]
[【ショウジョウ】 name=化け物]
「う゛ぃおれ、おまえからおかす。いちばん、おいしそう」[pcms]

*1627|
[fc]
ショウジョウの視線が葵の下腹に向けられ、その意図が自然と理解出来てしまう。[pcms]

*1628|
[fc]
自らの身の危険に、脳裏で警鐘が鳴り続けた。[pcms]


[chara_int_all]
[std_aka l mad p1 f12 lc]
[std_mia l mad p1 f12 rc][trans_c cross time=300]

*1629|
[fc]
[vo_aka s="akane_0154"]
[【茜】 name=ルージュ]
「葵ちゃん……逃げて……」[pcms]

*1630|
[fc]
[vo_mia s="mia_0154"]
[【ミア】 name=ブラン]
「う、うぅぅ……痛い、痛いよぉ……」[pcms]

*1631|
[fc]
茜とミアもぼろぼろになり、葵を助ける力など残っていない。[pcms]

;//ＳＥ：服を破る音
[se buf=0 storage="seB072"]

[chara_int_all]
[std_aoi m mad p1 f05 ce][trans_c cross time=300]


*1632|
[fc]
[vo_aoi s="aoi_0133"]
[【葵】 name=ヴィオレ]
「いやぁぁぁぁぁっ！？」[pcms]

*1633|
[fc]
衣装が鋭い爪で引き裂かれ、乳房が露わになる。[pcms]

*1634|
[fc]
ただでさえ露出の多い衣装がさらに肌を晒し、羞恥心で顔が熱くなる。[pcms]

*1635|
[fc]
思考はさらに混乱し、危機感が加速度的に増していく。[pcms]

[chara_int_all]
[std_syo l ce][trans_c cross time=300]

*1636|
[fc]
[【ショウジョウ】 name=化け物]
「ぐへへ……いい顔だぁ。それじゃあ、いただきまぁす！」[pcms]

;//ＳＥ：突き刺さる音
;[se buf=0 storage="seB041"]
[se buf=0 storage="seB027"]
[白フラ]


*1637|
[fc]
ショウジョウの身体から、太く尖ったものが伸びる。[pcms]

*1638|
[fc]
だが、それは葵に触れることはなかった。[pcms]

[chara_int_all]
[std_syo m ce][trans_c cross time=300]

*1639|
[fc]
[【ショウジョウ】 name=化け物]
「ん……なんだ、これ？」[pcms]

*1640|
[fc]
ショウジョウは首を傾げ、自分の下半身に目を向ける。[pcms]

*1641|
[fc]
股間から伸びていたのは、巨大な紫水晶だった。[pcms]


*1642|
[fc]
[【ショウジョウ】 name=化け物]
「え……え？」[pcms]

;//ＳＥ：突き刺さる音
[se buf=0 storage="seB027"]
[白フラ]
[se buf=1 storage="seB027"]
[白フラ]

*1643|
[fc]
再び肉を貫く音が聞こえ、掴まれていた首の力が弱まる。[pcms]

*1644|
[fc]
葵はそのまま地面に落ち、その場に座り込む。[pcms]

;//ＳＥ：突き刺さる音
[se buf=0 storage="seB027"]
[白フラ]


[std_aoi m mad p1 f12 ce][trans_c cross time=300]

*1645|
[fc]
[vo_aoi s="aoi_0134"]
[【葵】 name=ヴィオレ]
「がはっ、げほっ、けほっ、ごほっ……」[pcms]

*1646|
[fc]
恐怖に囚われたまま、葵は何度も咳き込む。[pcms]

*1647|
[fc]
その間にも、肉を突き刺す音は目の前から聞こえてきた。[pcms]

;//ＳＥ：突き刺さる音
[chara_int_all]
[std_syo m ce][trans_c cross time=300]
[se buf=0 storage="seB027"]
[白フラ]
[quake_chara ch=syo vmax=10 hmax=10 time=20 accel=1 count=4 wait=true]
[se buf=1 storage="seB027"]
[白フラ]
[quake_chara ch=syo vmax=10 hmax=10 time=20 accel=1 count=4 wait=true]
[se buf=0 storage="seB027"]
[白フラ]
[quake_chara ch=syo vmax=10 hmax=10 time=20 accel=1 count=4 wait=false]

*1648|
[fc]
[【ショウジョウ】 name=化け物]
「うげ、げっ、うげぇっ……！　なん、だ、これ……」[pcms]

;mm これ素材どうなったんだろ

*1649|
[fc]
葵が見上げると、そこには地面から生えた幾本もの剣がショウジョウを貫いていた。[pcms]

[se buf=0 storage="seB027"]
[白フラ]
[quake_chara ch=syo vmax=10 hmax=10 time=20 accel=1 count=4 wait=true]
[se buf=1 storage="seB027"]
[白フラ]
[quake_chara ch=syo vmax=10 hmax=10 time=20 accel=1 count=4 wait=true]
[se buf=0 storage="seB027"]
[白フラ]
[quake_chara ch=syo vmax=10 hmax=10 time=20 accel=1 count=4 wait=false]
[se buf=1 storage="seB027"]
[白フラ]
[quake_chara ch=syo vmax=10 hmax=10 time=20 accel=1 count=4 wait=true]




*1650|
[fc]
見ている間にも、さらに紫水晶が地面から伸び、ショウジョウを貫いていく。[pcms]

*1651|
[fc]
[【ショウジョウ】 name=化け物]
「うげぇぇっ！　まほう、しょうじょぉぉぉぉっ！」[pcms]

*1652|
[fc]
目を見開き、怒りの形相で葵に手を伸ばすショウジョウ。[pcms]

*1653|
[fc]
だが、その腕も新たな紫水晶に貫かれる。[pcms]


[stop_quake_chara ch=syo]
[std_aoi m mad p1 f03 ce][trans_c cross time=300]

*1654|
[fc]
[vo_aoi s="aoi_0135"]
[【葵】 name=ヴィオレ]
「あ……うぁ、あぁぁぁ……っ！」[pcms]

*1655|
[fc]
ショウジョウの身体から大量の血液が噴き出し、葵の身体を染め上げる。[pcms]

*1656|
[fc]
その紫水晶が自分の魔力が生み出したものだと理解出来てしまうだけに、葵の恐怖はさらに煽られていく。[pcms]

[std_aoi m mad p1 f12 ce][trans_c cross time=300]

*1657|
[fc]
[vo_aoi s="aoi_0136"]
[【葵】 name=ヴィオレ]
「いや……いやぁ……っ、いやぁぁぁぁぁぁぁぁぁぁっ！」[pcms]

[std_syo m ce][trans_c cross time=300]

;//ＳＥ：突き刺さる音
;[se buf=0 storage="seB027"]
[se buf=0 storage="seB028"]
[白フラ]
[quake_chara ch=syo vmax=10 hmax=10 time=20 accel=1 count=4 wait=true]

*1658|
[fc]
さらに太い剣がショウジョウを串刺しにし、目の前の異形は夜空を見上げながら絶命した。[pcms]

[se buf=0 storage="SE1420"]
[white_toplayer][trans_c bang time=300 vague=50]
[chara_int_top]
[chara_int_all][trans_c cross time=300]

*1659|
[fc]
ゆっくりと塵に帰っていくショウジョウを前に、茜とミアもただ呆然と葵を見つめている。[pcms]

[stop_quake_chara ch=syo]
[std_aoi m mad p1 f13 ce][trans_c cross time=300]

*1660|
[fc]
[vo_aoi s="aoi_0137"]
[【葵】 name=ヴィオレ]
「あ……あぁぁ……私、私は……いや、そんな、あぁぁぁぁぁっ！」[pcms]

*1661|
[fc]
葵が身を抱きしめながら叫ぶと、さらに紫水晶の剣が地面から突き出す。[pcms]

*1662|
[fc]
ランダムに突き出した剣が、時折葵の身体をもかすめていく。[pcms]

[chara_int_all]
[std_aka l mad p1 f05 lc][trans_c cross time=300]

*1663|
[fc]
[vo_aka s="akane_0155"]
[【茜】 name=ルージュ]
「葵ちゃん、もういいよ！　敵は倒したんだから、もういいの！」[pcms]

[std_mia l mad p1 f11 rc][trans_c cross time=300]

*1664|
[fc]
[vo_mia s="mia_0155"]
[【ミア】 name=ブラン]
「だめ、葵は聞こえてない。完全に暴走してる……」[pcms]

[std_aka l mad p1 f02 lc][trans_c cross time=300]

*1665|
[fc]
[vo_aka s="akane_0156"]
[【茜】 name=ルージュ]
「でも、このままじゃ葵ちゃんが自分の魔法で傷ついちゃうよ！」[pcms]

[std_mia l mad p1 f11 rc][trans_c cross time=300]

*1666|
[fc]
[vo_mia s="mia_0156"]
[【ミア】 name=ブラン]
「もう……世話がやけるわね」[pcms]


[chara_int_all]
[std_aka m mad p1 f11 lc]
[std_mia m mad p1 f11 rc][trans_c cross time=300]

*1667|
[fc]
茜とミアは傷ついた身体で立ち上がり、怯える葵に向かって歩き出す。[pcms]



[std_aka m mad p1 f11 lc index=1]
[std_aoi m mad p1 f12 ce]
[std_mia m mad p1 f11 rc index=2][trans_c cross time=300]


*1668|
[fc]
紫水晶の剣が作る林をなんとか躱しながら、茜達が葵に抱きつく。[pcms]

[std_aka m mad p1 f02 lc index=1][trans_c cross time=300]

*1669|
[fc]
[vo_aka s="akane_0157"]
[【茜】 name=ルージュ]
「葵ちゃん、もう大丈夫。葵ちゃんのおかげで敵はいなくなったよ！」[pcms]

[std_mia m mad p1 f02 rc index=2][trans_c cross time=300]


*1670|
[fc]
[vo_mia s="mia_0157"]
[【ミア】 name=ブラン]
「葵、わたし達の声を聞いて！　もう大丈夫だから！」[pcms]

[std_aoi m mad p1 f10 ce][trans_c cross time=300]

*1671|
[fc]
[vo_aoi s="aoi_0138"]
[【葵】 name=ヴィオレ]
「いや……あ、あぁぁぁぁぁぁぁぁぁっ！」[pcms]

;//背景：白
[ANTEN wht]

;//背景：学園資料室・日中
[bg storage="bg007a"]
[std_aoi m se p1 f01 le]
[std_aka m se p1 f01 ce]
[std_mia m se p1 f01 ri][trans_c cross time=1000]


[bgm015]

;//立ち絵：茜・制服
;//立ち絵：葵・制服
;//立ち絵：ミア・制服

;//ここからの話者：茜は茜で
;//ここからの話者：葵はルージュで
;//ここからの話者：ミアはミアで


*1672|
[fc]
[vo_aoi s="aoi_0139"]
[【葵】 reset]
「それで、気が付いたら事態は収まっていました。二人のおかげで、私は助けられたんです」[pcms]

[std_aka m se p1 f04 ce][trans_c cross time=300]

*1673|
[fc]
[vo_aka s="akane_0158"]
[【茜】 reset]
「でも、あたしとミアちゃんは葵ちゃんに助けられたんだけどね」[pcms]

[std_mia m se p1 f08 ri][trans_c cross time=300]

*1674|
[fc]
[vo_mia s="mia_0158"]
[【ミア】 reset]
「まあ、あれは仕方なかったわよ。わたし達も魔法少女になったばかりで、ちゃんと魔法が使えたわけじゃなかったんだし」[pcms]

*1675|
[fc]
[【主人公】]
「そうか……大変だったんだな」[pcms]

[std_mia m se p1 f01 ri][trans_c cross time=300]

*1676|
[fc]
[vo_mia s="mia_0159"]
[【ミア】]
「まあね。でも、せっかくこんな力を手に入れたのなら、使わない手はないでしょ？」[pcms]

[std_aka m se p1 f06 ce][trans_c cross time=300]

*1677|
[fc]
[vo_aka s="akane_0159"]
[【茜】]
「そうだよ、あんな危険な奴を放っておくわけにはいかないもの」[pcms]

;[std_mia m se p1 f01 ri][trans_c cross time=300]

*1678|
[fc]
[vo_mia s="mia_0160"]
[【ミア】]
「それで、三人で悪い冥魔をやっつけるために、日夜頑張ってるってわけ」[pcms]

*1679|
[fc]
[【主人公】]
「なるほど……。それで、葵はもう大丈夫なのか？」[pcms]

[std_aoi m se p1 f03 le][trans_c cross time=300]

*1680|
[fc]
[vo_aoi s="aoi_0140"]
[【葵】 name=ヴィオレ]
「その……正直言うと今でも怖いです。でも、茜ちゃん達がいるなら、大丈夫かなって」[pcms]

*1681|
[fc]
[【主人公】]
「そうか……でも無理はするなよ」[pcms]

*1682|
[fc]
俺の言葉に、葵は恥ずかしそうに頷いた。[pcms]

[std_mia m se p1 f11 ri][trans_c cross time=300]

*1683|
[fc]
[vo_mia s="mia_0161"]
[【ミア】]
「でもこの前、ショウジョウと同じくらい強い冥魔のカクエンとミズチが襲ってきて、大ピンチになってたってわけ」[pcms]

[std_aka m se p1 f09 ce][trans_c cross time=300]

*1684|
[fc]
[vo_aka s="akane_0160"]
[【茜】]
「そこで先生が助けてくれたおかげで、ピンチを切り抜けられたんだよ」[pcms]

[std_aoi m se p1 f01 le][trans_c cross time=300]

*1685|
[fc]
[vo_aoi s="aoi_0141"]
[【葵】 name=ヴィオレ]
「その後も先生に助けられましたし……先生には感謝しかありません」[pcms]


[std_aka m se p1 f01 ho ce]
[std_mia m se p1 f01 ho ri][trans_c cross time=300]


*1686|
[fc]
葵の言葉に、茜やミアも頬を赤らめる。[pcms]

*1687|
[fc]
俺もつい視線をそらしてしまった。[pcms]

*1688|
[fc]
[【主人公】]
「……こほん。話は分かった。しかし、やはり教え子達に危険なことをさせるわけにはいかないな」[pcms]

*1689|
[fc]
[【主人公】]
「今後は警察に任せて戦いから身を引いた方がいいんじゃないか？」[pcms]

[std_aka m se p1 f11 ce][trans_c cross time=300]

*1690|
[fc]
[vo_aka s="akane_0161"]
[【茜】]
「先生、それは無理だよ。だって、冥魔を認識出来るのは、素質のある人じゃないといけないから」[pcms]

[std_mia m se p1 f11 ri][trans_c cross time=300]

*1691|
[fc]
[vo_mia s="mia_0162"]
[【ミア】]
「そうそう。それに、結界だって冥魔や魔法少女じゃないと張れないし、認識も出来ないから普通の人じゃ入れないの」[pcms]

[std_aoi m se p1 f11 le][trans_c cross time=300]

*1692|
[fc]
[vo_aoi s="aoi_0142"]
[【葵】 name=ヴィオレ]
「先生はその素質があったから、結界の中に入れたんだと思います」[pcms]

*1693|
[fc]
[【主人公】]
「そうか。俺もその素質があったってことなんだな」[pcms]

[std_aka m se p1 f01 ce][trans_c cross time=300]

*1694|
[fc]
[vo_aka s="akane_0162"]
[【茜】]
「だと思う。先生はどういうわけか、血とか体液で魔力を受け渡し出来るみたい。だからあの時、血をかけてもらったことでパワーアップ出来たの」[pcms]

*1695|
[fc]
[【主人公】]
「その魔力の受け渡しが急激だと、魔力酔いを起こすってわけか……」[pcms]

[std_mia m se p1 f09 ri][trans_c cross time=300]

*1696|
[fc]
[vo_mia s="mia_0163"]
[【ミア】]
「そうそう。だから、今後は魔力酔いしないよう気をつけつつ、わたし達を助けてよね」[pcms]

*1697|
[fc]
[【主人公】]
「いや、しかし……それはそれで危険なんじゃないか？」[pcms]

[std_mia m se p1 f11 ri][trans_c cross time=300]

*1698|
[fc]
[vo_mia s="mia_0164"]
[【ミア】]
「何言ってるの、先生はなんでもしてくれるって約束したじゃない」[pcms]

[std_mia m se p1 f01 ri][trans_c cross time=300]

*1699|
[fc]
[vo_mia s="mia_0165"]
[【ミア】]
「そ・れ・に……女の子の大事な初めてを野獣みたいに奪っておいて、責任取らないなんて言わないよね？」[pcms]

*1700|
[fc]
[【主人公】]
「え、いや、それはその……」[pcms]

[std_aka m se p1 f05 ce][trans_c cross time=300]

*1701|
[fc]
[vo_aka s="akane_0163"]
[【茜】]
「えっ？　ミアちゃんも先生に襲われたの！？」[pcms]

[std_aoi m se p1 f05 le][trans_c cross time=300]

*1702|
[fc]
[vo_aoi s="aoi_0143"]
[【葵】 name=ヴィオレ]
「ええっ？　もしかして、それって茜ちゃんも？」[pcms]

[std_mia m se p1 f05 ri][trans_c cross time=300]

*1703|
[fc]
[vo_mia s="mia_0166"]
[【ミア】]
「へぇ……先生、童貞だったのに、あっと言う間に三人も食べちゃったんだ」[pcms]

;[std_aoi m se p1 f11 ri][trans_c cross time=300]

*1704|
[fc]
[vo_aoi s="aoi_0144"]
[【葵】 name=ヴィオレ]
「そ、そうなんですか先生？」[pcms]

[std_aka m se p1 f03 ce][trans_c cross time=300]

*1705|
[fc]
[vo_aka s="akane_0164"]
[【茜】]
「そんな……あたしだけじゃなかったんだ。ショック……」[pcms]

*1706|
[fc]
[【主人公】]
「いや、その……その節は本当にすまなかった」[pcms]

[std_mia m se p1 f04 ri][trans_c cross time=300]

*1707|
[fc]
[vo_mia s="mia_0167"]
[【ミア】]
「まー、いいんじゃないの？　で、誰が一番気持ち良かった？　やっぱりわたし？」[pcms]

*1708|
[fc]
[【主人公】]
「いやいや、そんなの比べるような話じゃないだろ！」[pcms]

[std_mia m se p1 f01 ri][trans_c cross time=300]

*1709|
[fc]
[vo_mia s="mia_0168"]
[【ミア】]
「でも、先生に中出しされた後、すごく魔力が底上げされたんだよね。だから、体調不良になっちゃったんだけどね」[pcms]

*1710|
[fc]
[【主人公】]
「それで、次の日は休んでたのか」[pcms]

[std_aka m se p1 f11 ce][trans_c cross time=300]

*1711|
[fc]
[vo_aka s="akane_0165"]
[【茜】]
「う、うん……」[pcms]

[std_aoi m se p1 f11 le][trans_c cross time=300]

*1712|
[fc]
[vo_aoi s="aoi_0145"]
[【葵】 name=ヴィオレ]
「私もそうです……」[pcms]

*1713|
[fc]
三人が今日まで揃わなかったのは、俺にも責任の一端があったということか。[pcms]

*1714|
[fc]
処女を奪った上にそこまでさせていたというのは、さすがに申し訳なさでいっぱいになる。[pcms]

[std_mia m se p1 f04 ri][trans_c cross time=300]

*1715|
[fc]
[vo_mia s="mia_0169"]
[【ミア】]
「ということは、これからは魔力供給って口実で、可愛い教え子とエッチ出来るかもよ？　先生、役得だね」[pcms]

*1716|
[fc]
[【主人公】]
「いや、あれは俺が魔力酔いしたからであって、今後はあんなこと絶対しないからな！」[pcms]

[std_mia m se p1 f08 ri][trans_c cross time=300]

*1717|
[fc]
[vo_mia s="mia_0170"]
[【ミア】]
「ふうん、先生は気持ち良くなかったんだ」[pcms]

[std_aoi m se p1 f05 le][trans_c cross time=300]

*1718|
[fc]
[vo_aoi s="aoi_0146"]
[【葵】 name=ヴィオレ]
「えっ、そうなんですか？」[pcms]

[std_aka m se p1 f03 ce][trans_c cross time=300]

*1719|
[fc]
[vo_aka s="akane_0166"]
[【茜】]
「先生、あたしのことあんなに可愛いって言ってくれたのに、気持ち良くなかったの？」[pcms]

*1720|
[fc]
[【主人公】]
「いやいやいやいや！　そうは言ってないだろ！」[pcms]

[std_aka m se p1 f01 ce][trans_c cross time=300]

*1721|
[fc]
[vo_aka s="akane_0167"]
[【茜】]
「じゃあ、気持ち良かったんだ」[pcms]

*1722|
[fc]
三人の強い視線に押され、俺は素直に頷くしかなかった。[pcms]

[std_aoi m se p1 f03 ho le][trans_c cross time=300]

*1723|
[fc]
[vo_aoi s="aoi_0147"]
[【葵】 name=ヴィオレ]
「あの……もう協力はしてもらえないんですか？」[pcms]

[std_aka m se p1 f03 ho ce][trans_c cross time=300]

*1724|
[fc]
[vo_aka s="akane_0168"]
[【茜】]
「出来れば、今後も協力してほしいんだけど……。もちろん、魔力酔いしない程度で、だけど」[pcms]

[std_mia m se p1 f01 ri][trans_c cross time=300]

*1725|
[fc]
[vo_mia s="mia_0171"]
[【ミア】]
「あたしは別に魔力酔いしてくれてもいいけど？」[pcms]

*1726|
[fc]
再び三人の熱い視線が俺に集まる。[pcms]

*1727|
[fc]
俺は少し考えてから、口を開いた。[pcms]

*1728|
[fc]
[【主人公】]
「……事情は分かった。教え子が危険の中に飛び込んでいるのに、それを知らんぷりするわけにはいかない。今後も協力させてもらうよ」[pcms]

[std_mia m se p1 f09 ri][trans_c cross time=300]

*1729|
[fc]
[vo_mia s="mia_0172"]
[【ミア】]
「そうでなくっちゃ！」[pcms]

[std_aoi m se p1 f09 le][trans_c cross time=300]

*1730|
[fc]
[vo_aoi s="aoi_0148"]
[【葵】 name=ヴィオレ]
「ほっ、良かった……」[pcms]

[std_aka m se p1 f09 ce][trans_c cross time=300]

*1731|
[fc]
[vo_aka s="akane_0169"]
[【茜】]
「ありがとう先生、これからよろしくね」[pcms]

*1732|
[fc]
[【主人公】]
「ああ、よろしく頼む。取り合えず、これから連絡関係を密にするために、この資料室を拠点にしよう」[pcms]

*1733|
[fc]
[【主人公】]
「その方が俺も把握がしやすいし、部活の体にすれば周りにもバレないだろう」[pcms]


[std_aoi m se p1 f01 le]
[std_aka m se p1 f01 ce]
[std_mia m se p1 f01 ri][trans_c cross time=300]

*1734|
[fc]
[vo_aka s="akane_0170"]
[【茜】]
「先生、ナイスアイデア！　なんだか秘密基地みたいで格好いいね！」[pcms]

[std_mia m se p1 f04 ri][trans_c cross time=300]

*1735|
[fc]
[vo_mia s="mia_0173"]
[【ミア】]
「うんうん、テンション上がるよね！」[pcms]

[std_aoi m se p1 f04 le][trans_c cross time=300]

*1736|
[fc]
[vo_aoi s="aoi_0149"]
[【葵】 name=ヴィオレ]
「私も相談しやすくなるので嬉しいです」[pcms]

*1737|
[fc]
[【主人公】]
「とはいえ、俺が顧問になる以上、好き勝手に活動して体力を消耗して休むなんてことはないようにしてもらうからな」[pcms]

[std_mia m se p1 f01 ri][trans_c cross time=300]

*1738|
[fc]
[vo_mia s="mia_0174"]
[【ミア】]
「それは大丈夫でしょ。休んだ理由は、先生があんなに激しくエッチしたのが原因だし」[pcms]

*1739|
[fc]
[【主人公】]
「いや、それなら他の日はどうして休んだんだ？」[pcms]

[std_mia m se p1 f05 ho ri][trans_c cross time=300]

*1740|
[fc]
[vo_mia s="mia_0175"]
[【ミア】]
「えっと、それは……あはは、バレちゃったか」[pcms]

[std_aoi m se p1 f03 le][trans_c cross time=300]

*1741|
[fc]
[vo_aoi s="aoi_0150"]
[【葵】 name=ヴィオレ]
「ここ数日、冥魔が何度も現れて戦うことになってしまったので」[pcms]

*1742|
[fc]
[【主人公】]
「それは仕方ないさ。とはいえ、君達の本分は学業だ。疎かにしないようにな」[pcms]

[std_aka m se p1 f03 ce][trans_c cross time=300]

*1743|
[fc]

[vo_aka s="akane_0171"]
[【茜】]
「うぅ、そっちはあんまり頑張りたくないなぁ……」[pcms]

*1744|
[fc]
茜の言葉に、笑い声が響き渡る。[pcms]

*1745|
[fc]
こうして、俺は彼女達と共に冥魔と戦うことになったのだった。[pcms]

;//→arcana034へ
[ANTEN blk]
[jump storage="arcana034.ks" target=*TOP]

