;//arcana004
*TOP
[eval exp="f.l_s004 = 1"][name_allreset]
;//このシーンの話者：茜はルージュで

;//背景：学園正門・夜照明
;[bg storage="bg002c"][trans_c cross time=1000]

*532|
[fc]
これは……茜の気配だろうか。[pcms]

*533|
[fc]
覚えのある情熱的な感覚に、俺の足は自然とその方向へと向かっていた。[pcms]

;[fadeoutbgm time=500]

;//背景：商店街・夜照明
[bg storage="bg018c"][trans_c ruf_lr]

*534|
[fc]
気配がはっきりしてくるにつれて、胸騒ぎが大きくなっていく。[pcms]

;//ＳＥ：水滴が水面に落ちる音
[HAMON storage="bg018c"]

*535|
[fc]
突然、プールに飛び込んだ時のような肌感覚の変化を覚える。[pcms]

*536|
[fc]
例の結界の中に入ったということか……つまり、ここで茜が冥魔とやらと戦っているということだ。[pcms]

[stopbgm]

;//ＳＥ：吹き飛ばされる音
[se buf=0 storage="seB013"]

*537|
[fc]
物陰から何かが飛んできて地面を転がる。[pcms]

*538|
[fc]
だがそれはすぐに立ち上がって、吹き飛ばされた方を睨み付けていた。[pcms]

;//立ち絵：茜・魔法服・破損
[std_aka m mad p1 f12 ce][trans_c cross time=300]

*539|
[fc]
[vo_aka s="akane_0063"]
[【茜】 name=ルージュ]
「ぐっ……まだ、まだ戦える！」[pcms]

[bgm009]

;//立ち絵：ミズチ・オーラなし
[std_miz m ce][trans_c cross time=300]

*540|
[fc]
[【ミズチ】]
「ふむ、その意気込みだけは認めてやろう。じゃが、ワシに勝てると思っているなら大間違いじゃぞ？」[pcms]

*541|
[fc]
路地から出てきたのは、ミズチと言われていた冥魔じゃないか！[pcms]

*542|
[fc]
この前だって苦戦していたのに、一人じゃ勝てるわけがない！[pcms]

[std_aka l mad p1 f02 ce][trans_c cross time=300]

*543|
[fc]
[vo_aka s="akane_0064"]
[【茜】 name=ルージュ]
「なによ、この前だってあたし達の強さに尻尾を巻いて逃げたくせに！」[pcms]

[std_miz m ce][trans_c cross time=300]

*544|
[fc]
[【ミズチ】]
「まったく、彼我の差を理解出来ぬ弱者め。よかろう、その生意気な心ごと、ワシがへし折ってやろう」[pcms]


[chara_int_all]
[std_aka m mad p1 f02 y=100 ri]
[std_miz m le][trans_c cross time=300]
[wait time=500]

[se buf=0 storage="seA083"]
[chara_int_le][trans_c ruf_lr]
[se buf=1 storage="seA083"]
[chara_int_ri][trans_c ruf_rl]

[se buf=0 storage="SE1279"]
[bg白フラ storage="battle_effect2"]

*545|
[fc]
茜とミズチが同時に駆け出し、近接戦闘を繰り広げる。[pcms]

;//ＳＥ：ぶつかる音
[se buf=0 storage="SE1279"]
[bg白フラ storage="battle_effect2"]

[bg storage="bg018c"][trans_c cross time=300]


*546|
[fc]
派手な衝撃音と共に風が巻き起こり、少し離れたところにいる俺の所にまで風が届いた。[pcms]




[std_aka m mad p1 f02 ce][trans_c cross time=300]



*547|
[fc]
茜の衣装はボロボロで、胸やパンツが露わになっている。[pcms]

*548|
[fc]
それを隠すことなく戦う姿に、思わず股間が反応してしまっていた。[pcms]


[chara_int_all][trans_c cross time=300]

*549|
[fc]
[【主人公】]
「何考えてるんだ俺は。今はそんな場合じゃないだろ！」[pcms]

*550|
[fc]
軽く頬を叩いて気合いを入れ直したものの、さすがにあの中に入り込むのは無理だ。[pcms]

*551|
[fc]
せめてこっちに近付いてきてくれれば……そうだ！[pcms]

*552|
[fc]
[【主人公】]
「茜！」[pcms]

[std_aka l mad p1 f05 ce][trans_c cross time=300]

*553|
[fc]
[vo_aka s="akane_0065"]
[【茜】 name=ルージュ]
「えっ、先生！？」[pcms]

[std_miz m ce][trans_c cross time=300]


*554|
[fc]
[【ミズチ】]
「戦いの最中によそ見とは随分余裕じゃな」[pcms]

;//ＳＥ：殴る音
[se buf=0 storage="SE1024"]

[std_aka m mad p1 f12 ce][trans_c cross time=300]
[quake_chara ch=aka vmax=10 hmax=10 time=20 accel=1 count=4 wait=false]

*555|
[fc]
[vo_aka s="akane_0066"]
[【茜】 name=ルージュ]
「くぅぅぅぅぅぅっ！」[pcms]

[chara_int_all][trans_c cross time=300]

*556|
[fc]
俺の声に振り向いて気付いた瞬間、ミズチの一撃が茜を捉える。[pcms]


[se buf=0 storage="seB013"]

*557|
[fc]
両手をクロスしてガードしたものの、吹き飛ばされて俺の近くへと飛んできた。[pcms]

*558|
[fc]
すぐさま辺りを見回し、尖った石を見つけてそこに腕を叩きつける。[pcms]

[se buf=0 storage="seB008"]
[赤フラ]

*559|
[fc]
[【主人公】]
「ぐっ……！」[pcms]



*560|
[fc]
腕が雑に切れて血が垂れ落ちるが、拳を握りしめて痛みに耐えた。[pcms]

[std_aka l mad p1 f08 ce][trans_c cross time=300]

*561|
[fc]
[vo_aka s="akane_0067"]
[【茜】 name=ルージュ]
「先生、どうしてここに？」[pcms]

*562|
[fc]
[【主人公】]
「違和感を覚えてやってきたら、お前が戦っていたんだ。それよりこれを！」[pcms]

*563|
[fc]
まだ質問したそうにしている茜に向かって、傷ついた腕を振った。[pcms]


[se buf=0 storage="seD015"]

*564|
[fc]
流れた血が飛び散り、茜の衣装にかかる。[pcms]

[fadeoutbgm time=500]

[std_aka l mad p1 f05 ce][trans_c cross time=300]

*565|
[fc]
[vo_aka s="akane_0068"]
[【茜】 name=ルージュ]
「えっ、ちょっと先生！？」[pcms]

[std_aka m mad p1 f05 ce][trans_c cross time=300]

*566|
[fc]
茜は驚くものの、それ以上の変化がすぐに現れた。[pcms]

;魔法服回復
[魔法服回復 aka_p1]
[std_aka m ma p1 f05 ce][trans_c bt time=1000]


*567|
[fc]
茜の身体が淡く輝き、破れた衣装が修復されていく。[pcms]

[bgm001]


;//立ち絵：茜・魔法服
[std_aka m ma p1 f01 ce][trans_c bt time=1000]

*568|
[fc]
[vo_aka s="akane_0069"]
[【茜】 name=ルージュ]
「力がみなぎってくる……先生、ありがと！」[pcms]

[se buf=0 storage="seA083"]
[chara_int_all][trans_c ruf_lr]


*569|
[fc]
振り返った茜は、すぐさまミズチへと走り出していく。[pcms]

[std_miz m ce][trans_c cross time=300]


*570|
[fc]
[【ミズチ】]
「またあの力か！　じゃが、一人であれば……」[pcms]

[std_aka m ma p1 f02 ce][trans_c cross time=300]

*571|
[fc]
[vo_aka s="akane_0070"]
[【茜】 name=ルージュ]
「[技_バレ・ブルロント]！」[pcms]

;//詠唱なしの呪文名だけでいいかと
[movie_Magic_バレ・ブルロント]


[std_miz m ce][trans_c cross time=300]
[se buf=0 storage="SE1279"]
[se buf=1 storage="seB008"]
[quake_chara ch=aka vmax=10 hmax=10 time=20 accel=1 count=4 wait=false]


*572|
[fc]
[【ミズチ】]
「ぐぅぅぅぅぅっ！」[pcms]

*573|
[fc]
カウンターを試みようとしていたミズチが苦悶の声を上げる。[pcms]

[stop_quake_chara ch=miz]
[std_aka m ma p1 f02 ce][trans_c cross time=300]

*574|
[fc]
[vo_aka s="akane_0071"]
[【茜】 name=ルージュ]
「[技_フラム・デ・エクスプロージオン]！」[pcms]

[movie_Magic_エクスプロージオン]

[std_miz m ce][trans_c cross time=300]
[se buf=0 storage="SE1279"]
[se buf=1 storage="seB008"]
[quake_chara ch=aka vmax=20 hmax=20 time=20 accel=1 count=4 wait=false]


*575|
[fc]
[【ミズチ】]
「ぐぁぁぁぁぁぁぁぁっ！」[pcms]

[chara_int_all][trans_c cross time=300]


*576|
[fc]
茜の手から放たれた炎がミズチを包み込み、その身体を弾き飛ばした。[pcms]

[stop_quake_chara ch=miz]
[std_aka m ma p1 f12 ce][trans_c cross time=300]

*577|
[fc]
[vo_aka s="akane_0072"]
[【茜】 name=ルージュ]
「はぁっ、はぁっ……どう？」[pcms]

[std_miz m ce][trans_c cross time=300]


*578|
[fc]
[【ミズチ】]
「ぐっ、がはっ……。ワシがここまで追い詰められるじゃと？　その上、詠唱なしでここまでの威力とは……」[pcms]

[std_aka m ma p1 f02 ce][trans_c cross time=300]

*579|
[fc]
[vo_aka s="akane_0073"]
[【茜】 name=ルージュ]
「これで形勢逆転だよ！」[pcms]

[std_miz m ce][trans_c cross time=300]


*580|
[fc]
[【ミズチ】]
「……認めるしかないようじゃな。じゃが、このままやられるつもりはない。アルカナルージュ、さらばじゃ！」[pcms]

[std_aka m ma p1 f05 ce][trans_c cross time=300]

*581|
[fc]
[vo_aka s="akane_0074"]
[【茜】 name=ルージュ]
「あっ、ちょっと待ちなさいよ！」[pcms]

[std_miz m ce][trans_c cross time=300]

;//ＳＥ：爆発音
;mm 技じゃないけど汎用でいいか
[Magic_冥魔傀儡陣]



[std_aka m ma p1 f05 ce][trans_c cross time=300]
[Magic_冥魔傀儡陣 hit]


[se buf=0 storage="SE1502"]


[bg storage="effect_white"][trans_c bang time=300 vague=50]

*582|
[fc]
ミズチが手を伸ばすと、茜の足元で爆発が起きる。[pcms]

[bg storage="bg018c"]
[std_aka m ma p1 f12 ce][trans_c cross time=1000]

[fadeoutbgm time=1000]


*583|
[fc]
派手に上がった土煙が晴れる頃には、敵の姿は見えなくなっていた。[pcms]

[std_aka m ma p1 f01 ce][trans_c cross time=300]

*584|
[fc]
[vo_aka s="akane_0075"]
[【茜】 name=ルージュ]
「逃げられちゃったか……。先生、ありがと。先生のおかげで勝てたよ！」[pcms]

;//ＳＥ：鼓動音
[se buf=1 storage="seB023" loop]
[赤フラ time=1000]

*585|
[fc]
茜が俺の方に向かって近付いてくる。[pcms]

[赤フラ time=1000]

*586|
[fc]
その姿が、さっき破れた衣装を来ていた姿と重なり、全身に熱が燃え広がっていく。[pcms]

[赤フラ time=1000]

*587|
[fc]
失血したショックなのか頭がふらつくのに、股間は逆に滾っていく。[pcms]

;//条件分岐
;//『arcana008』を経過→arcana801
;//『arcana011』を経過→arcana801へ
;//『arcana008』と『arcana011』を経過→arcana801へ
;//上記以外→arcana800へ

;[ANTEN blk]
[if    exp="f.l_s008 == 1 && f.l_s011 == 1"][jump storage="arcana801.ks" target=*TOP]
[elsif exp="f.l_s008 == 1 && f.l_s011 == 0"][jump storage="arcana801.ks" target=*TOP]
[elsif exp="f.l_s008 == 0 && f.l_s011 == 1"][jump storage="arcana801.ks" target=*TOP]
[endif]
[jump storage="arcana800.ks" target=*TOP]

