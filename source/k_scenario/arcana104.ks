;//arcana104
*TOP
[eval exp="f.l_s104 = 1"][name_allreset]

*8318|
[fc]
そして、俺達の意識は深い水の底から浮かんでいくように軽くなっていった。[pcms]

;//背景：白
[ANTEN wht wave]

[bgm017]

;//背景：冥魔たちのアジト
[bg storage="bg029a"]

;//立ち絵：ミア・魔法服
;//立ち絵：ミズチ・オーラあり

[std_miz s lc o1]
[std_mia m ma p2 f06 rc][trans_c cross time=1000]

*8319|
[fc]
[【ミズチ】]
「どうしたアルカナブラン？　もう息切れか？」[pcms]

[std_mia m ma p2 f02 rc][trans_c cross time=300]

*8320|
[fc]
[vo_mia s="mia_0733"]
[【ミア】 name=ブラン]
「くぅっ！　まったく……触手うざすぎ！　そんなことだからモテないんだよ？」[pcms]

;//立ち絵：茜・魔法服
;//立ち絵：カクエン・オーラあり
[chara_int_all]
[std_kak s rc o1]
[std_aka m ma p1 f06 le index=6][trans_c cross time=300]

*8321|
[fc]
[【カクエン】]
「オラオラ！　てめぇもその程度で終わりか、ルージュ！」[pcms]

[std_aka m ma p1 f02 le index=6][trans_c cross time=300]

*8322|
[fc]
[vo_aka s="akane_0621"]
[【茜】 name=ルージュ]
「はぁっ、はぁっ、まだまだぁぁぁっ！」[pcms]

*8323|
[fc]
意識が戻ってくると同時に、茜とミアの苦戦している様子が声で伝わってくる。[pcms]

*8324|
[fc]
同時に、葵と冥も目を覚まして起き上がってきた。[pcms]

;//立ち絵：葵・魔法服
;//立ち絵：冥・魔法服・武器あり

[chara_int_all]
[std_aoi m ma p1 f04 lc]
[std_mei m maw p1 f01 rc magan][trans_c cross time=300]

*8325|
[fc]
[vo_aoi s="aoi_0690"]
[【葵】 name=ヴィオレ]
「ここは……戻ってこれたみたいですね」[pcms]

*8326|
[fc]
[vo_mei s="mei_0731"]
[【冥】 name=ノワール]
「お姉ちゃん、そんな悠長なこと言ってる場合じゃないみたいだよ？」[pcms]

*8327|
[fc]
[vo_aka s="akane_0622"]
[【茜】 name=ルージュ]
「くぅぅぅぅっ！」[pcms]

;//ＳＥ：倒れる音
[se buf=0 storage="SE320_2"]

*8328|
[fc]
カクエンの一撃に吹き飛ばされた茜が、俺の近くまで転がってくる。[pcms]

[chara_int_all]
[std_aoi m ma p1 f04 lc]
[std_aka m ma p2 f12 ce]
[std_mei m maw p1 f01 rc magan][trans_c cross time=300]

*8329|
[fc]
すぐに起き上がったものの、肩で息をして辛そうだ。[pcms]

*8330|
[fc]
[vo_aka s="akane_0623"]
[【茜】 name=ルージュ]
「はぁっ、はぁっ……藍ちゃん、回復したんだ？」[pcms]

[std_mei m maw p1 f02 rc magan][trans_c cross time=300]

*8331|
[fc]
[vo_mei s="mei_0732"]
[【冥】 name=ノワール]
「お兄さんとお姉ちゃんのおかげでなんとかね。それより、そろそろあいつらを倒すよ！」[pcms]

[std_aoi m ma p1 f02 lc][trans_c cross time=300]

*8332|
[fc]
[vo_aoi s="aoi_0691"]
[【葵】 name=ヴィオレ]
「私はミアさんのフォローに行きます！」[pcms]

[move_chara ch=aoi x=-100 time=300 accel=1 wm out]
;[chara_int_lc][trans_c cross time=300]

*8333|
[fc]
[【主人公】]
「茜、冥、手を！」[pcms]

[chara_int_all]
[std_aka l ma p1 f01 lc]
[std_mei l maw p1 f01 rc][trans_c cross time=300]

*8334|
[fc]
二人が両サイドから俺の手をしっかりと握る。[pcms]

*8335|
[fc]
俺は強く彼女達の力になりたいと願いながら、魔法力を送り込んだ。[pcms]

;レガート佐藤 魔法 魔法力を送る？主人公の支援能力

[std_aka l ma p1 f04 lc][trans_c cross time=300]

*8336|
[fc]
[vo_aka s="akane_0624"]
[【茜】 name=ルージュ]
「よし、行ける！　藍ちゃん、行くよ！」[pcms]

[std_mei l maw p1 f04 rc][trans_c cross time=300]

*8337|
[fc]
[vo_mei s="mei_0733"]
[【冥】 name=ノワール]
「言われなくても！」[pcms]

*8338|
[fc]
パワーアップした二人が、カクエンに向かって駆け出す。[pcms]

*8339|
[fc]
カクエンは笑みを浮かべ、自ら突っ込んできた。[pcms]

[chara_int_all]
[std_aka m ma p1 f06 le]
[std_mei m maw p1 f06 lc magan]
[std_kak s rc o1 index=1]
[trans_c cross time=300]

*8340|
[fc]
[【カクエン】]
「そろそろケリをつけてやるぜ！　冥王の力を手に入れたオレ様には、魔法少女なんざ何人束になっても勝てないってことをな！」[pcms]

*8341|
[fc]
[【主人公】]
「悪いが、そんな[ruby_c t="オ" r="・"][ruby_c t="レ" r="・"]の搾りかすで強くなった奴に、俺の力を分け与えた魔法少女は負けないさ」[pcms]

*8342|
[fc]
[【カクエン】]
「なんだと？　今のはどういう意味だ？」[pcms]

[std_mei m maw p1 f02 lc magan][trans_c cross time=300]

*8343|
[fc]
[vo_mei s="mei_0734"]
[【冥】 name=ノワール]
「私達を前によそ見なんて、いい根性してるじゃない！」[pcms]

*8344|
[fc]
[vo_mei s="mei_0735"]
[【冥】 name=ノワール]
「眠れ愛しき[ruby_c t="嬰児" r="みどりご"]よ。聞こえしは[ruby_c t="水底" r="みなそこ"]より[ruby_c t="出" r="い"]ずる唄。還れ魂の源へ。沈め[ruby_c t="海底" r="うなぞこ"]へ。[技_御霊水底御陵]！」[pcms]

[movie_Magic_御霊水底御陵]

;mm 空間が裂ける……か
[se buf=0 storage="SE1279"]
[img_c storage="xig03_cut003_03" layer=12 x=0 y=0][trans_c ce_side time=300]



*8345|
[fc]
冥がカクエンの遥か手前で大きく鎌を振り下ろすと、空間がまるでそこに何かがあったかのように裂ける。[pcms]

*8346|
[fc]
そして、その裂け目から半透明の何か……怨霊のようなものが次々現れ、加速してカクエンに纏わり付いていく。[pcms]

*8347|
[fc]
[【カクエン】]
「なんだこいつらは？　ぐっ……力が、抜ける！？　離れろ、うぉぉぉぉぉぉっ！」[pcms]

[chara_int layer=12]
[std_mei m maw p1 f14 lc magan][trans_c cross time=300]

*8348|
[fc]
[vo_mei s="mei_0736"]
[【冥】 name=ノワール]
「そいつらは魂を喰らう怨霊よ。さあ、たっぷりと冥魔の魂を喰らってやりなさい！」[pcms]

[std_aka m ma p1 f01 le index=6][trans_c cross time=300]

*8349|
[fc]
[vo_aka s="akane_0625"]
[【茜】 name=ルージュ]
「聖なる炎よ、[ruby_c t="汚" r="けが"]れし魂を清め給え――」[pcms]

*8350|
[fc]
カクエンが怨霊に纏わり付かれて足止めを受けているところへ、茜がさらに加速して突っ込んでいく。[pcms]

*8351|
[fc]
詠唱が終わると、茜の全身が真っ赤な炎に包まれた。[pcms]

[std_aka m ma p1 f06 le index=6][trans_c cross time=300]

*8352|
[fc]
[vo_aka s="akane_0626"]
[【茜】 name=ルージュ]
「これで決めるっ！　[技_ラヴェール・アヴェ・デ・フレーム・サクリ]！」[pcms]

[movie_Magic_フレーム・サクリ]

;[top red wipe]
;mm 赤じゃ無くて戦闘系素材からの使う
[bg storage="battle_BGku_wide"][trans_c ruf_lr time=100]
[bg storage="bg029a"]
[std_aka m ma p1 f06 le index=6]
[std_mei m maw p1 f14 lc magan]
[std_kak s rc o2 index=1][trans_c cross time=300]

;//ＳＥ：ぶつかる音
[se buf=0 storage="SE1507"]
[quake_chara ch=kak vmax=20 hmax=20 time=20 accel=1 count=4 wait=false]

*8353|
[fc]
[【カクエン】]
「がぁぁぁぁぁぁぁぁぁぁぁぁぁぁっ！」[pcms]

*8354|
[fc]
カクエンは茜を受け止めようとしたものの、その威力を殺すことが出来ず壁に叩きつけられる。[pcms]

[stop_quake_chara ch=kak]

*8355|
[fc]
茜から引火した炎がカクエンを包み込み、怨霊共々浄化していく。[pcms]

*8356|
[fc]
[【カクエン】]
「くそっ、なんだこの炎は？　消えねぇっ、オレが……焼けるっ、馬鹿な、負けるのか？」[pcms]

*8357|
[fc]
[【カクエン】]
「ふざけるな！　オレは冥魔カクエン！　副冥王にして最強の……おぉぉぉぉぉぉぉぉぉぉっ！」[pcms]

;//ＳＥ：炎の燃え上がる音
[se buf=0 storage="SE2105"]

*8358|
[fc]
一際大きな炎が上がると同時に、カクエンの身体は黒焦げになってその場に倒れた。[pcms]

[se buf=0 storage="SE320_2"]
[chara_int_rc][trans_c wave time=300]

*8359|
[fc]
急激に失われていくカクエンの気配に、冥と茜が冥魔を倒したことを確信する。[pcms]

[bg storage="effect_black"][trans_c rl time=1000]

[bg storage="bg029a"]
[chara_int_all]
[std_miz m ce o1][trans_c cross time=300]

*8360|
[fc]
[【ミズチ】]
「カクエン！　ぐぬぬ……使えぬ奴じゃ」[pcms]

[chara_int_all]
[std_miz m lc o1]
[std_aoi m ma p2 f11 rc x=-100]
[std_mia m ma p2 f11 ri][trans_c cross time=300]

*8361|
[fc]
[vo_mia s="mia_0734"]
[【ミア】 name=ブラン]
「言っとくけど、次はあなたの番なんだからね？」[pcms]

*8362|
[fc]
[vo_aoi s="aoi_0692"]
[【葵】 name=ヴィオレ]
「覚悟して下さい！」[pcms]

*8363|
[fc]
[【ミズチ】]
「はっ、そうは行かぬわ！」[pcms]

[move_chara ch=miz x=-400 time=1000 accel=1 wm out]

*8364|
[fc]
ミズチがミアに向かって飛び込んだかと思うと、急に方向転換して横をすり抜けていく。[pcms]

[std_mia m ma p2 f02 ri][trans_c cross time=300]

*8365|
[fc]
[vo_mia s="mia_0735"]
[【ミア】 name=ブラン]
「あっ、ちょっと！　この期に及んで逃げる気？」[pcms]

*8366|
[fc]
[【ミズチ】]
「逃げるじゃと？　このワシがか？　ククク……バカを申すな」[pcms]

*8367|
[fc]
ミズチは黒焦げになって倒れているカクエンの足元にたどり着くと、肩を揺らしながら笑う。[pcms]

*8368|
[fc]
何をしようとしているんだ、あいつは？[pcms]

[chara_int_all]
[std_mei m maw p2 f05 ce magan][trans_c cross time=300]

*8369|
[fc]
[vo_mei s="mei_0737"]
[【冥】 name=ノワール]
「まずい！　ミズチにカクエンを渡しちゃだめ！」[pcms]

[move_chara ch=mei x=-400 time=500 accel=4 wm out]

*8370|
[fc]
冥がすぐさま反応してミズチの元へ走るものの、それより早く触手がカクエンの身体を巻き取り、大きく後退する。[pcms]

*8371|
[fc]
そしてカクエンの身体を粉砕すると、バラバラになったカクエンの身体を口の中にほうり込んだ。[pcms]

[chara_int_all]
[std_aka m ma p2 f13 ce][trans_c cross time=300]

*8372|
[fc]
[vo_aka s="akane_0627"]
[【茜】 name=ルージュ]
「うぇぇ……黒焦げの冥魔を食べてる……」[pcms]

[chara_int_all]
[std_mia m ma p2 f13 ri]
[std_aka m ma p2 f13 ce]
[trans_c cross time=300]

*8373|
[fc]
[vo_mia s="mia_0736"]
[【ミア】 name=ブラン]
「な、何してるのあいつ？　頭がおかしくなったんじゃないの？」[pcms]

[chara_int_all]
[std_mia m ma p2 f13 ri]
[std_aka m ma p2 f13 ce]
[std_mei m maw p2 f12 le magan][trans_c cross time=300]

*8374|
[fc]
[vo_mei s="mei_0738"]
[【冥】 name=ノワール]
「違う……ミズチとカクエンは、冥王さまの抜け殻になった身体を食べてあんなに強くなったのよ」[pcms]

[std_mei m maw p2 f13 le magan][trans_c cross time=300]

*8375|
[fc]
[vo_mei s="mei_0739"]
[【冥】 name=ノワール]
「二人で分け合った冥王さまの力を、あいつは一つにしようとしている……」[pcms]

*8376|
[fc]
カクエンを食べ始めたミズチは一気にその魔法力を増大させ、その時点で迂闊に近付いてはいけない気配をかもし出していた。[pcms]

*8377|
[fc]
息を飲んで見守る俺達をよそに、ミズチはカクエンを喰らい尽くしてしまった。[pcms]

[chara_int_all]
[std_miz m ce o2][trans_c cross time=300]

*8378|
[fc]
[【ミズチ】]
「ククク……分かるぞ、これでワシこそが真の冥王じゃ！」[pcms]

*8379|
[fc]
ミズチからものすごい風圧が巻き起こり、思わず吹き飛ばされそうになる。[pcms]

*8380|
[fc]
だが、それは風じゃなかった。[pcms]

[chara_int_all]
[std_aoi m ma p1 f05 le]
[std_aka m ma p1 f13 lc x=80]
[std_mia m ma p2 f13 rc x=-80 index=1]
[std_mei m maw p1 f08 ri magan][trans_c cross time=300]

*8381|
[fc]
[vo_aoi s="aoi_0693"]
[【葵】 name=ヴィオレ]
「なんて魔法力……さっきよりもさらに強くなってる」[pcms]

*8382|
[fc]
[vo_mia s="mia_0737"]
[【ミア】 name=ブラン]
「魔法力だけで気圧されるなんて……かなりまずくない？」[pcms]

[std_mei m maw p1 f02 ri magan][trans_c cross time=300]

*8383|
[fc]
[vo_mei s="mei_0740"]
[【冥】 name=ノワール]
「でも、やるしかないわ！」[pcms]

[std_aka m ma p1 f02 lc x=80][trans_c cross time=300]

*8384|
[fc]
[vo_aka s="akane_0628"]
[【茜】 name=ルージュ]
「うん！　こっちには魔法少女が四人もいるんだもん。負けないよ！」[pcms]

*8385|
[fc]
茜達は一斉にミズチに攻勢を仕掛ける。[pcms]

*8386|
[fc]
だが無数に現れた触手がそれぞれに伸び、素早い動きで本体に近づけさせない。[pcms]

[chara_int_all]
[std_aoi m ma p2 f12 lc]
[std_mei m maw p1 f08 rc magan][trans_c cross time=300]

*8387|
[fc]
[vo_aoi s="aoi_0694"]
[【葵】 name=ヴィオレ]
「くぅっ、速い上に一撃が重い……！」[pcms]

*8388|
[fc]
[vo_mei s="mei_0741"]
[【冥】 name=ノワール]
「このっ！　なによこの触手、全然切れない！」[pcms]

*8389|
[fc]
攻撃をするどころか、触手さえ切れなくなった四人は、躱したり防御するのが精一杯だ。[pcms]

*8390|
[fc]
[ns]冥王[nse]
（どうする？　今のお前なら、ミズチを倒せるはずだ。全ての記憶を取り戻した、冥王のお前なら……）[pcms]

*8391|
[fc]
そうだ、俺は冥王として彼女達の願いを叶えることも出来るし、俺自身が戦うことだって出来るはずだ。[pcms]

;//選択肢分岐（二択）
;//『みんなの力を借りる』→		arcana108
;//『オレ｛冥王｝の力を呼び覚ます』→	arcana105
;mm なんで選択肢でルビ指定するかなぁ。とりあえず《》でいいか
*SEL10|みんなの力を借りる／オレ《冥王》の力を呼び覚ます
[fc]
[sel02 text='みんなの力を借りる' storage="arcana108.ks" target=*TOP]
[sel04 text='オレ《冥王》の力を呼び覚ます' storage="arcana105.ks" target=*TOP end]


