;//arcana082
*TOP
[eval exp="f.l_s082 = 1"][name_allreset]

;mm 前ブロックは夕方、次ブロックのイベントが昼になってる、日が変わったことにすれば昼でいけるか？
;お空時間経過だけ入れてテキスト追加はしない

[bg storage="bg001b"][trans_c cross time=1000]
[wait time=500]
[bg storage="bg001c"][trans_c cross time=1000]
[wait time=500]
[bgm007]
[bg storage="bg001a"][trans_c cross time=1000]
[wait time=500]

;//このシーンは三人称
;//背景：駅前繁華街・夜照明
[bg storage="bg013a"]

[std_aka m se p2 f03 ce][trans_c cross time=1000]


;//立ち絵：茜・制服



*6164|
[fc]
何故こんなところに来たのか、茜もよく分からなかった。[pcms]

*6165|
[fc]
静かな場所に行くと余計なことを考えてしまいそうになる、そんな気持ちがよぎったのかもしれない。[pcms]

*6166|
[fc]
[vo_aka s="akane_0492"]
[【茜】]
「先生……大丈夫だよね」[pcms]

*6167|
[fc]
治療は終わっているものの、どうしても不安がつきまとう。[pcms]

[top red blood2 time=2000]
[wait time=500]

[bg storage="bg013a"]
[std_aka m se p2 f03 ce][trans_c wave time=500]

*6168|
[fc]
地面に広がる血の光景が今も脳裏にこびりつき、それがいたずらに茜の不安を煽っていた。[pcms]

[std_aka m se p1 f06 ce][trans_c cross time=500]

*6169|
[fc]
[vo_aka s="akane_0493"]
[【茜】]
「ああもうダメダメ！　あたしが先生のことを信じないでどうするのよ。先生は大丈夫、絶対また起きて笑顔を向けてくれるはずなんだから」[pcms]

[se buf=0 storage="SE0395"]

*6170|
[fc]
[ns]男性[nse]
「うわぁぁぁっ、化け物だぁぁっ！」[pcms]

*6171|
[fc]
突然聞こえてきた悲鳴に、茜の思考が中断される。[pcms]

*6172|
[fc]
顔を上げると、逃げ惑う人々の輪が一気に広がっていく。[pcms]

[bgm009]

*6173|
[fc]
そして、その中心にいる存在に思わず目を見開いた。[pcms]

[std_aka m se p1 f05 ce off]
;//立ち絵：下級冥魔Ａ
;//立ち絵：下級冥魔Ｂ
[chara_int_ce]
[std_zaA s lc]
[std_zaB s rc][trans_c cross time=300]

*6174|
[fc]
[vo_aka s="akane_0494"]
[【茜】]
「なっ、冥魔！？　結界も張っていないのに、どうして[nor]
……？」[pcms]

*6175|
[fc]
人々に冥魔の姿が見えているのは明白で、逃げ惑う人々に冥魔が襲い掛かる。[pcms]

[std_aka m se p1 f06 ce off]

*6176|
[fc]
[vo_aka s="akane_0495"]
[【茜】]
「くっ、どこか変身出来るところは……あった！」[pcms]

[se buf=0 storage="SE0183_2"]
[bg storage="effect_black"][trans_c ruf_lr time=500]

*6177|
[fc]
茜はちょっとした物陰を見付けるとすぐに駆けだした。[pcms]

;//暗転

;//背景：駅前繁華街・夜照明
[bg storage="bg013a"]

;[se buf=2 storage="seD025" loop]
;//立ち絵：下級冥魔Ａ
;//立ち絵：下級冥魔Ａ
;//立ち絵：下級冥魔Ｂ
;mm 両方インデックス5になってるなどっちを↑にしたかったんだろ
[std_zaA l le index=5]
[std_zaA l ce]
[std_zaB l ri][trans_c cross time=300]

*6178|
[fc]
[ns]女性[nse]
「い、いや……来ないで……」[pcms]

*6179|
[fc]
[【下級Ａ】 name=下級冥魔１ ABどっちかよくわからん]
「まったく、ここはよりどりみどりだぜ。まずはこいつをたっぷり味わってから……」[pcms]

;//立ち絵：茜・魔法服
[chara_int_all]
[std_aka m ma p1 f06 ce][trans_c cross time=500]

;//ここから話者：茜はルージュで

*6180|
[fc]
[vo_aka s="akane_0496"]
[【茜】 name=ルージュ]
「させない！　[技_バレ・ブルロント]！」[pcms]

[movie_Magic_バレ・ブルロント]

;//ＳＥ：ぶつかる音
[se buf=0 storage="SE1279"]

;[top red ruf_rl time=100]
;mm 赤じゃ無くて戦闘系素材からの使う
[bg storage="battle_BGku_wide"][trans_c ruf_rl time=100]
[bg storage="bg013a"]
;mm Aが減ってるから真ん中のA消しか　Bを右におく
[std_zaA l le index=5]
[std_zaB l ri][trans_c cross time=300]

;[stopse buf=2]

*6181|
[fc]
[【下級Ａ】 name=下級冥魔１ ABどっちかよくわからん]
「げべぇっ！？」[pcms]


*6182|
[fc]
女性に襲い掛かろうとした冥魔が炎の弾丸を受けて吹き飛ぶ。[pcms]

*6183|
[fc]
致命傷にはならなかったものの、大きく距離を取れたのを見て女性の近くに駆け寄る。[pcms]

[chara_int_all]
[std_zaA s le index=5]
[std_zaB s lc]
[std_aka m ma p1 f02 rc][trans_c cross time=300]

*6184|
[fc]
[vo_aka s="akane_0497"]
[【茜】 name=ルージュ]
「早く逃げて下さい！」[pcms]

*6185|
[fc]
[ns]女性[nse]
「あ、ありがとうございます……」[pcms]

*6186|
[fc]
女性はわけが分からないといった様子だったが、なんとか立ち上がりふらつきながら走り去っていく。[pcms]

*6187|
[fc]
茜はそれを横目で見ながら、冥魔達に向き直った。[pcms]

[std_aka m ma p1 f06 rc][trans_c cross time=300]

*6188|
[fc]
[vo_aka s="akane_0498"]
[【茜】 name=ルージュ]
「どういうこと？　いつもなら結界を張ってるはずなのに、どうして急に人前に現れたの？」[pcms]

*6189|
[fc]
[【下級Ａ】 name=下級冥魔２ ABどっちかよくわからん]
「アルカナルージュ……またてめぇか。ったくよぉ、毎回邪魔してくれちゃって」[pcms]

[std_aka m ma p1 f08 rc][trans_c cross time=300]

*6190|
[fc]
[vo_aka s="akane_0499"]
[【茜】 name=ルージュ]
（顔の区別がつかないけど、以前取り逃がした冥魔ってこと？）[pcms]

;//心の声　音声加工

[std_aka m ma p1 f06 rc][trans_c cross time=300]

*6191|
[fc]
[vo_aka s="akane_0500"]
[【茜】 name=ルージュ]
「だったら、今日で最後にしてあげる！　[技_バレ・ブルロント]！」[pcms]

[movie_Magic_バレ・ブルロント]

*6192|
[fc]
茜の手から放たれた炎の弾が冥魔に迫る。[pcms]

*6193|
[fc]
下級冥魔が慌てて躱すと、後ろにいた冥魔を打ち抜いた。[pcms]

[se buf=0 storage="SE1279"]
;[top red ruf_rl time=100]
;mm 赤じゃ無くて戦闘系素材からの使う
[bg storage="battle_BGku_wide"][trans_c ruf_rl time=100]
[bg storage="bg013a"]
[std_zaB s lc]
[std_aka m ma p1 f06 rc][trans_c cross time=300]

*6194|
[fc]
[【下級Ａ】 name=下級冥魔３ ABどっちかよくわからん]
「グギィィィィィッ！」[pcms]

*6195|
[fc]
炎に巻かれて消えゆく冥魔に、周りで見ていた人々から歓声が上がった！[pcms]

*6196|
[fc]
[ns]男性[nse]
「おおっ、すげぇ！　なんかの撮影か？」[pcms]

*6197|
[fc]
[ns]男性[nse]
「いいぞ、もっとやれ！」[pcms]

[std_aka m ma p1 f07 rc][trans_c cross time=300]

*6198|
[fc]
[vo_aka s="akane_0501"]
[【茜】 name=ルージュ]
「撮影じゃないよ！　みんな早く逃げて！」[pcms]

*6199|
[fc]
茜が声を張り上げるものの、周りの歓声にかき消されてしまい届かない。[pcms]

*6200|
[fc]
茜はままならない現状に悔しさを覚えながらも、冥魔を倒すことを優先した。[pcms]

[std_aka m ma p1 f02 rc][trans_c cross time=300]

*6201|
[fc]
[vo_aka s="akane_0502"]
[【茜】 name=ルージュ]
「舞い上がれ、紅蓮の花！　エリュプシオン・デ・クラテール！」[pcms]

;mm ムービー無いから代用
[movie_Magic_バレ・ブルロント]

;レガート佐藤 魔法 着弾 エリュプシオン・デ・クラテール

*6202|
[fc]
[【下級Ｂ】 name=下級冥魔２ ABどっちかよくわからん]
「ぎひぃぃぃぃぃっ！」[pcms]

[chara_int_lc][trans_c smoke time=1000]

*6203|
[fc]
茜の繰り出す魔法に次々と冥魔は倒されていくものの、数が多い。[pcms]

*6204|
[fc]
次から次へと襲い来る冥魔と混乱に乗じて人を襲おうとする冥魔がおり、その対処に追われる。[pcms]


[bg storage="effect_black"][trans_c ruf_lr time=300]
;//背景：駅前繁華街・夜照明
[bg storage="bg013a"]
[std_zaB m lc]
[std_aka m ma p1 f06 rc][trans_c cross time=300]

[se buf=2 storage="seD026" loop]
;//立ち絵：下級冥魔Ｂ

*6205|
[fc]
[ns]男性[nse]
「ひぃっ！？　なんだこの触手っ！　た、助けてくれ！」[pcms]

*6206|
[fc]
[vo_aka s="akane_0503"]
[【茜】 name=ルージュ]
「[技_バレ・ブルロント]！」[pcms]

[se buf=0 storage="SE1279"]

;[top red ruf_rl time=100]
;mm 赤じゃ無くて戦闘系素材からの使う
[bg storage="battle_BGku_wide"][trans_c ruf_rl time=100]
[bg storage="bg013a"]
[std_zaB m lc]
[std_aka m ma p1 f06 rc][trans_c cross time=300]

*6207|
[fc]
[【下級Ｂ】 name=下級冥魔４]
「ぐぇぇぇぇっ！」[pcms]

[stopse buf=2]
[chara_int_lc][trans_c smoke time=1000]

[std_aka m ma p1 f02 rc][trans_c cross time=300]

*6208|
[fc]
[vo_aka s="akane_0504"]
[【茜】 name=ルージュ]
「危ないから下がって！　これは現実なんだから！」[pcms]

*6209|
[fc]
直接被害に遭った者は逃げようとするが、他の面々は対岸の火事とばかりに逃げようとしない。[pcms]

*6210|
[fc]
逃げる人より留まる人の方が多いせいで、逃げなくてもいいという集団心理に陥っているのかもしれなかった。[pcms]

[std_aka m ma p1 f06 rc][trans_c cross time=300]

*6211|
[fc]
[vo_aka s="akane_0505"]
[【茜】 name=ルージュ]
（今から結界を張っても、こんなにたくさんの人に見られたあとじゃ意味がないよね……。こうなったら、少しでも早く冥魔を倒すしかない！）[pcms]

;//心の声　音声加工

[bg storage="effect_black"][trans_c ruf_lr time=300]
[bg storage="bg013a"]

[std_zaA m rc index=1]
[std_aka l ma p1 f06 lc][trans_c cross time=300]

*6212|
[fc]
[ns]男性[nse]
「いいね、正義のスーパーヒロインの誕生だ！」[pcms]

*6213|
[fc]
[ns]男性[nse]
「おっ、今パンツ見えたぞ！　シャッターチャンスだったのに、惜しい！」[pcms]

[se buf=0 storage="seC067a"]
[top wht cross time=100]

[bg storage="bg013a"]
[std_zaA m rc index=1]
[std_aka l ma p1 f07 lc][trans_c cross time=300]

*6214|
[fc]
[vo_aka s="akane_0506"]
[【茜】 name=ルージュ]
「ちょ、ちょっと見ないでよ！」[pcms]

*6215|
[fc]
茜はスカートを押さえながら背後に文句を言うが、気付けば周りにいる人々のほとんどがスマホを茜に向けていた。[pcms]

*6216|
[fc]
もはや戦いの場は撮影場所に変わり、ここから逃げるという思考は彼らからなくなっていた。[pcms]

[std_aka m ma p1 f02 lc off]

*6217|
[fc]
[vo_aka s="akane_0507"]
[【茜】 name=ルージュ]
（もう……どうしてこんなことになるの？　本当に危ないのに！）[pcms]

;//心の声　音声加工

*6218|
[fc]
心の中で文句を言いながら、茜は懸命に冥魔を倒していく。[pcms]

*6219|
[fc]
周りに被害が及ばないようにしながら戦うというのは、想像以上に気を遣ってしまう。[pcms]

*6220|
[fc]
大した強さではないはずの下級冥魔に対して、茜の疲労は確実に溜まっていった。[pcms]


[bg storage="effect_black"][trans_c ruf_lr time=300]
[bg storage="bg013a"]

[std_zaB m lc index=1]
[std_aka m ma p1 f06 rc][trans_c cross time=300]

[se buf=2 storage="seD025" loop]
;//立ち絵：下級冥魔Ｂ

*6221|
[fc]
[vo_aka s="akane_0508"]
[【茜】 name=ルージュ]
「はぁっ、はぁっ、なんとかあと一体……」[pcms]

*6222|
[fc]
残された冥魔は茜から距離を取り、触手をくゆらせながらその場に留まっている。[pcms]

*6223|
[fc]
人々からの距離も遠く、あとは近付いて倒せば終わるはずだった。[pcms]

[se buf=0 storage="seC067a"]
[top wht cross time=100]

[bg storage="bg013a"]
[std_zaB m lc index=1]
[std_aka m ma p1 f06 rc][trans_c cross time=300]

*6224|
[fc]
[ns]男性[nse]
「ねぇ君、視線こっち向けて！　ほら、こっちこっち！　ボーズも欲しいなぁ」[pcms]

[std_aka m ma p1 f02 rc][trans_c cross time=300]

*6225|
[fc]
[vo_aka s="akane_0509"]
[【茜】 name=ルージュ]
「もうっ、そういうのじゃないですから！　撮影じゃなくて、本当に戦ってるんです！」[pcms]

*6226|
[fc]
あまりに現実を無視した言葉に、茜はつい反応してしまった。[pcms]

*6227|
[fc]
茜が眉を吊り上げても声を上げた男が誰だったのか分からず、ただスマホのカメラが茜を見返す。[pcms]

*6228|
[fc]
だが、それは致命的な隙となった。[pcms]

;//立ち絵：カクエン・オーラあり
[std_kak s ri o1][trans_c cross time=300]

*6229|
[fc]
[【カクエン】]
「ほう、戦いの最中に随分と余裕じゃねぇか」[pcms]

[std_aka m ma p1 f05 rc][trans_c cross time=300]

*6230|
[fc]
[vo_aka s="akane_0510"]
[【茜】 name=ルージュ]
「えっ？」[pcms]

;//ＳＥ：殴る音
[se buf=0 storage="seB008"]
[std_aka m ma p1 f12 rc][trans_c cross time=300]
[quake_chara ch=aka vmax=40 hmax=10 time=20 accel=1 count=2 wait=false]


*6231|
[fc]
[vo_aka s="akane_0511"]
[【茜】 name=ルージュ]
「ごほぉっ！？」[pcms]

[stop_quake_chara ch=aka]

*6232|
[fc]
突然目の前に現れたカクエンが、拳を茜の腹にめり込ませる。[pcms]

*6233|
[fc]
たったその一撃で茜の身体から力が抜け、その場に崩れ落ちた。[pcms]

[move_chara ch=aka y=200 time=150 accel=1 wm]

*6234|
[fc]
[vo_aka s="akane_0512"]
[【茜】 name=ルージュ]
「がはっ、がほっ、げほっ……カク……エン……」[pcms]

*6235|
[fc]
[【カクエン】]
「おう、副冥王様のカクエンだ。もうてめぇなんざ敵じゃねぇよ」[pcms]

*6236|
[fc]
茜が手を伸ばして魔法を使おうとすると、その手が蹴り飛ばされる。[pcms]

*6237|
[fc]
その勢いに引きずられ、茜も吹き飛んだ。[pcms]

[se buf=0 storage="seB010"]
[top red cross time=50]
[bg storage="bg013a"][trans_c cross time=500]

*6238|
[fc]
[vo_aka s="akane_0513"]
[【茜】 name=ルージュ]
「がはっ！　あぐ、うぅぅぅ……」[pcms]

*6239|
[fc]
[ns]男性[nse]
「お、おい……なんかやべぇんじゃねぇの？」[pcms]

;//フェイスのみ：茜・魔法服

*6240|
[fc]
[vo_aka s="akane_0514"]
[【茜】 name=ルージュ]
「みんな……逃げて……はやく……」[pcms]

*6241|
[fc]
地面に倒れたまま動けない茜が悲痛な願いを呟くものの、それを聞き入れる者はいない。[pcms]

*6242|
[fc]
そして無情にも茜の身体に、生き残っていた下級冥魔の触手が巻き付いた。[pcms]

[se storage="&sf.SE触手伸びる"]
;[se buf=2 storage="seD026" loop]
;//立ち絵：茜・魔法服
;//立ち絵：下級冥魔Ｂ

[std_zaB m lc index=1]
[std_aka m ma p2 f13 ce y=-100][trans_c cross time=300]

;mm んー少し違和感あるけどまぁいいか

*6243|
[fc]
[【カクエン】]
「いい格好じゃねぇか、アルカナルージュ。そうだな、せっかくこれだけ人間共がいるんだ、目の前で赤っ恥をかかせてやるよ」[pcms]

;//→arcana083
[ANTEN blk]
[jump storage="arcana083.ks" target=*TOP]

