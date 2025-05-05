;//arcana003
*TOP
[eval exp="f.l_s003 = 1"][name_allreset]

;//このシーンの話者：茜は指定ない場合ルージュで
;//このシーンの話者：葵は指定ない場合ヴィオレで
;//このシーンの話者：ミアは指定ない場合ブランで

;//ＳＥ：夜の繁華街の音

*167|
[fc]
[【主人公】]
「万が一、あれの中身を他人に見られたらヤバいぞ」[pcms]

*168|
[fc]
ＵＳＢに入れてあるプライベートなデータの中には、うっふんあっはんな動画やら画像も含まれている。[pcms]

[ANTEN blk]

[se buf=1 storage="seA041" loop]

;//背景：通学路・夜照明
[bg storage="bg011c"][trans_c cross time=1000]

*169|
[fc]
そういうわけで俺は来た道を引き返すことにした。[pcms]

;//背景：学園正門・夜消灯
[bg storage="bg002d"][trans_c blind_lr]

*170|
[fc]
資料室の管理を引き受けた代わりに、ほぼフリーなセキュリティパスをもらっておいて良かった。[pcms]

[stopse buf=1]

;//背景：学園資料室・夜消灯
[bg storage="bg007d"][trans_c blind_lr]

*171|
[fc]
[【主人公】]
「あった、あった。これを回収して任務完了、と」[pcms]

*172|
[fc]
照明を点けるまでもなく、勝手知ったる資料室内から私物のＵＳＢメモリーを上着のポケットに入れて、それで終わりだ。[pcms]

;//背景：学園廊下・夜消灯
[bg storage="bg005d"][trans_c cross time=1000]

*173|
[fc]
[【主人公】]
「夏場だったら怪談話とかするのに最適な環境だよな、夜中で静かな校舎とか校庭って」[pcms]

*174|
[fc]
教職員用昇降口に向かう途中、そんなことを言いながら俺は肝試し気分で薄暗い廊下を歩いていた。[pcms]

;//背景：学園中庭・夜消灯
[bg storage="bg004d"][trans_c cross time=1000]

;//ＳＥ：水滴が水面に落ちる音

;//演出：波紋
[HAMON storage="bg004d"]

*175|
[fc]
[【主人公】]
「？」[pcms]

*176|
[fc]
中庭に出たその瞬間、奇妙な違和感があった。[pcms]

*177|
[fc]
たとえるなら、飛び込み台からプールに突っ込んで、水の膜が身体を通り過ぎていくような……そんな感覚だ。[pcms]

;//ＳＥ：魔物が消し飛んで消滅する音
;[se buf=0 storage="seB057"]
;mm なんでここで入るのかよくわかんないカット

*178|
[fc]
そして次の瞬間、俺の目の前には信じられない光景が広がっていた……まるでそれはアニメやマンガ、映画のような状況だった。[pcms]

;//背景：学園校庭・夜消灯
[bg storage="bg003d"][trans_c ruf_lr]
[bgm001]

[wait time=1000]

[std_kak m ce][trans_c cross time=300]

*179|
[fc]
[【カクエン】 name=？？？ on]
「どうしたどうした魔法少女？　雑魚を何匹ぶっ倒そうが、このカクエン様には痛くもかゆくもねェんだぜ」[pcms]

;//組み込み時名前を　？？？に変更

*180|
[fc]
そいつは明らかに人じゃなかった。[pcms]

*181|
[fc]
[【カクエン】 name=？？？]
「てめえらに殺された舎弟のショウジョウの仇だ。雑魚どもを相手に消耗しきったところをオレたちが潰す！」[pcms]


[std_miz m ce][trans_c cross time=300]

*182|
[fc]
[【ミズチ】]
「くく……オマエも悪趣味なことじゃのうカクエン。とはいえこのワシ、ミズチも高ぶっておるぞ」[pcms]

;//組み込み時名前を　？？？に変更

*183|
[fc]
カクエンという名前らしいそいつに比べて、もう一体のミズチとかいうやつは、露骨に化け物な風体だった。[pcms]

*184|
[fc]
[【ミズチ】]
「冥魔どもよ、絶え間なく攻め立てるのじゃ。いかに魔法少女とはいえ、これだけの数を相手に、そう長くは保たぬ」[pcms]

*185|
[fc]
ミズチという化け物の指示で、うじゃうじゃと湧いて出た化け物たちが、一斉にその少女たちに迫っていく。[pcms]

;//下級冥魔１、２は下級冥魔Ａ（子鬼タイプ）
;//下級眼魔３は下級冥魔Ｂ（触手タイプ）

[chara_int_all]
[std_zaA m le]
[std_zaA m ri][trans_c cross time=300]


*186|
[fc]
[【下級Ａ】 name=下級冥魔１]
「俺たちだって冥魔の端くれ。魔法少女を殺してその力を奪えばミズチ様やカクエン様と同じ中級冥魔に昇格できるかも」[pcms]

*187|
[fc]
悪鬼とでも言うしかないそいつが、人語をしゃべって、全身の力を爆発させようとしている。[pcms]

*188|
[fc]
[【下級Ａ】 name=下級冥魔２]
「仕掛けるぞ！　呼吸を合わせろ！」[pcms]

[chara_int_all]
[std_zaB m ce][trans_c cross time=300]

*189|
[fc]
[【下級Ｂ】 name=下級冥魔３]
「応ッ！　俺たちのエサとなれ魔法少女ォォォ！」[pcms]

*190|
[fc]
地面から生えているかのような触手のかたまりも、濁った声で言葉を発していた。[pcms]

;mm 雑魚3人並べても見えないな
;[std_zaA m le]
;[std_zaA m ri][trans_c cross time=300]

*191|
[fc]
悪鬼と触手が連携して敵に飛びかかっていく。とても回避不可能な勢いと数だ。[pcms]

[chara_int_all]
[std_aka m ma p1 f02 ce][trans_c cross time=300]


*192|
[fc]
[vo_aka s="akane_0024"]
[【茜】 name=魔法少女]
「[技_エリュプシオン・デ・クラテール]！」[pcms]

[movie_Magic_エリュプシオン]
[wait time=500]

;//組み込み時名前を魔法少女に変更

[std_aoi m ma p1 f02 ce][trans_c cross time=300]

*193|
[fc]
[vo_aoi s="aoi_0023"]
[【葵】 name=魔法少女]
「[技_アメシスト・イクラティ]！」[pcms]

[movie_Magic_イクラティ]
[wait time=500]
;//組み込み時名前を魔法少女に変更

[std_mia m ma p2 f02 ce][trans_c cross time=300]

*194|
[fc]
[vo_mia s="mia_0024"]
[【ミア】 name=魔法少女]
「[技_ラミ・ドゥ・リュミエール]！」[pcms]

[movie_Magic_リュミエール]
[wait time=500]

;//組み込み時名前を魔法少女に変更

[chara_int_all]
[std_zaA m le]
;[std_zaB m ce]
[std_zaA m ri][trans_c cross time=300]

*195|
[fc]
[【下級Ａ】 name=下級冥魔１]
「よ、避けられないいっ……しかもなんて威力の魔法攻撃ッ？」[pcms]

[se buf=0 storage="SE1420"]
[white_toplayer][trans_c bang time=300 vague=50]
[chara_int_top]
[chara_int_le][trans_c cross time=300]

*196|
[fc]
[【下級Ａ】 name=下級冥魔２]
「ミズチ様、カクエン様、ご助力ををををををッ？」[pcms]

[se buf=0 storage="SE1420"]
[white_toplayer][trans_c bang time=300 vague=50]
[chara_int_top]
[chara_int_ri][trans_c cross time=300]


[std_zaB m ce][trans_c cross time=300]

*197|
[fc]
[【下級Ｂ】 name=下級冥魔３]
「からだが！　とける！　溶けるぅぅぅぅ！」[pcms]


[se buf=0 storage="SE1420"]

;//ＳＥ：魔物が溶ける音
;//エフェクトで雑魚冥魔が消滅する
;//画面全体が光に包まれて消滅するような感じで消える

[top wht bang time=300]
[bg storage="bg003d"][trans_c cross time=1000]
[wait time=500]



[std_kak m ce][trans_c cross time=300]

*198|
[fc]
[【カクエン】 reset]
「けっ、役立たずの雑魚どもめ」[pcms]

[std_miz m ce][trans_c cross time=300]

*199|
[fc]
[【ミズチ】]
「いいや、これで良いのじゃカクエンよ。見てみよ、あの魔法少女たちの様子を……さっきまでの威勢の良さは、もうあるまい？」[pcms]

[std_kak m ce][trans_c cross time=300]

*200|
[fc]
[【カクエン】]
「確かにな……」[pcms]


[std_miz m ce][trans_c cross time=300]

*201|
[fc]
[【ミズチ】]
「戦略の常道とは敵を上回る大軍をもって事に当たり、物量でねじ伏せるところにあるのじゃ。いかに魔法少女が強かろうともなぁ……くく」[pcms]


[std_aka m ma p1 f02 ce][trans_c cross time=300]

*202|
[fc]
[vo_aka s="akane_0025"]
[【茜】 name=魔法少女]
「次から次に冥魔が出てくる……早くミズチとカクエンをやっつけたいのに！」[pcms]

;//組み込み時名前を魔法少女に変更
[std_aoi m ma p1 f07 le][trans_c cross time=300]

*203|
[fc]
[vo_aoi s="aoi_0024"]
[【葵】 name=魔法少女]
「ミズチとカクエンと戦う前からこれじゃ……魔法力の消耗が大きすぎる……どうするの？」[pcms]

;//組み込み時名前を魔法少女に変更
[std_mia m ma p2 f02 ri][trans_c cross time=300]

*204|
[fc]
[vo_mia s="mia_0025"]
[【ミア】 name=魔法少女]
「どうもこうもないでしょ。正義の魔法少女が敵に背を向けて逃げるなんて、ありえないんだから！」[pcms]

;//組み込み時名前を　魔法少女に変更

*205|
[fc]
三人の女の子が冥魔とか言うらしい化け物たちと戦っていた。[pcms]

*206|
[fc]
[【主人公】]
（しかも、この子たちは……俺のクラスの子じゃないか）[pcms]

[chara_int_all]
[std_aka l ma p1 f02 ce][trans_c cross time=300]

*207|
[fc]
[vo_aka s="akane_0026"]
[【茜】 reset]
「そうだよ、戦うしかないよ！」[pcms]

;//組み込み時名前は茜のまま

*208|
[fc]
緋神茜。[pcms]

[std_aoi l ma p1 f01 ce][trans_c cross time=300]

*209|
[fc]
[vo_aoi s="aoi_0025"]
[【葵】 reset]
「で、でも……」[pcms]

;//組み込み時名前は葵のまま

*210|
[fc]
氷上葵。[pcms]

[std_mia l ma p2 f11 ce][trans_c cross time=300]

*211|
[fc]
[vo_mia s="mia_0026"]
[【ミア】 reset]
「どうせ、いつかは倒さなくちゃならない敵だし」[pcms]

;//組み込み時名前はミアのまま

*212|
[fc]
柏山ミア。[pcms]


[std_aoi m ma p1 f11 le]
[std_aka m ma p1 f11 ce]
[std_mia m ma p2 f11 ri][trans_c cross time=300]

*213|
[fc]
[【主人公】]
（さっき居眠りしてた時に見た淫夢にも出てたあの三人だ。しかも服装まで同じとは！）[pcms]

[chara_int_all]
[std_miz m ce][trans_c cross time=300]

*214|
[fc]
[【ミズチ】]
「アルカナルージュ、ヴィオレ、そしてブランよ。降伏して我等冥魔の軍門に下るがよい。寛大な処遇を約束するぞ」[pcms]

;mm ここで魔法少女の名前がわかるから

*215|
[fc]
ミズチの視線からすると、緋神茜がルージュ、氷上葵がヴィオレで柏山ミアがブラン、ってことか。[pcms]

*216|
[fc]
アルカナとかいうのは、正式な名前みたいなもので正しくはアルカナルージュ、アルカナヴィオレ、アルカナブランというわけだな。[pcms]

[std_kak m ce][trans_c cross time=300]

*217|
[fc]
[【カクエン】]
「オレたちの主君、冥王様の復活のためにその魔法力を捧げさせて、ついでにオレの性奴隷として、かわいがってやるぜぇ！」[pcms]

[chara_int_all]
[std_aoi m ma p1 f11 le]
[std_aka m ma p1 f11 ce]
[std_mia m ma p2 f11 ri][trans_c cross time=300]

;mm こっから変身後の名前のほうがいいんじゃ？

*218|
[fc]
[vo_aka s="akane_0027"]
[【茜】 name=ルージュ]
「せい――？　よくわかんないけど……冥魔に降参なんて絶っ対にありえないんだから！」[pcms]

[std_aoi m ma p1 f03 le][trans_c cross time=300]

*219|
[fc]
[vo_aoi s="aoi_0026"]
[【葵】 name=ヴィオレ]
「で、でも茜ちゃん……このままじゃミズチたちと戦う前にみんなの魔法力が尽きて……」[pcms]

[std_mia m ma p2 f11 ri][trans_c cross time=300]

*220|
[fc]
[vo_mia s="mia_0027"]
[【ミア】 name=ブラン]
「まー、その前に、雑魚たちをやっつければいい、それだけでしょ」[pcms]

*221|
[fc]
緋神茜は憤り、氷上葵は弱気になって、柏山ミアはピンチを楽しんでいた。[pcms]

;//魔法少女たちの立ち絵消す

[chara_int_all]
[std_miz s lc]
[std_kak s rc][trans_c cross time=300]

*222|
[fc]
[【ミズチ】]
「きひひ……では下級冥魔が際限なくお前たちを襲い続けるぞい。魔法力が尽きて変身が解除されるまでのう」[pcms]

*223|
[fc]
[【カクエン】]
「オレとしては、反抗してくる女を屈服させる方が好みではあるけどよ、結局は突っ込む穴さえありゃあ細かいことは気にしねェ」[pcms]

*224|
[fc]
[【ミズチ】]
「きひひひ、カクエンよ。今回の作戦は亡きショウジョウの復讐ではなかったかのう？」[pcms]

*225|
[fc]
[【カクエン】]
「ガハハハ！　しょせん、ショウジョウは下級冥魔からの成り上がりだ。生まれながらの中級冥魔のオレたちと違う格下だぜ」[pcms]

*226|
[fc]
うじゃうじゃ湧いて出くる下級冥魔たちをけしかけ、魔法少女たちを包囲させているミズチとカクエンは世間話まで始めやがった。[pcms]

*227|
[fc]
[【ミズチ】]
「くくく……人間どもがいうところの、しょせんショウジョウは、我等の中ではもっとも小物、というアレじゃな」[pcms]

*228|
[fc]
[【カクエン】]
「違いねェ！　ガハハハハハっ！」[pcms]

;//背景：学園中庭・夜消灯
[bg storage="bg004d"][trans_c ruf_rl]

*229|
[fc]
[【主人公】]
（……これって俺の教え子たちの大ピンチってことだよな……まずい……まずいぞ。そ、そうだ警察……）[pcms]

*230|
[fc]
俺は買い替えたばかりのスマホを取り出して１１０番をコールしていた。最近のご時世だから学園に武装した凶悪犯がとでも通報すればすぐ来るはず。[pcms]

*231|
[fc]
中庭のこっちと、戦いの場になっている校庭の方とは距離があるから、気配は隠せているはずだ。[pcms]

*232|
[fc]
[【主人公】]
「つながらない……っていうか、ネットも不通になってる？」[pcms]

;//ＳＥ：地面にスマホを落としてしまう音
[se buf=0 storage="seB092" v=60]

*233|
[fc]
[【主人公】]
「しまった……」[pcms]

;//ＳＥ：枯れ葉を踏み潰す音
[se buf=0 storage="seA045"]
[wait time=500]
[stopse buf=0]

*234|
[fc]
緊張と動揺から俺はスマホを落とし、あわててそれを拾ったが、さらに枯れ葉か何かを踏んだ音を追加する羽目になってしまった。[pcms]

;//背景：学園校庭・夜消灯
[bg storage="bg003d"]
[std_miz s lc]
[std_kak s rc][trans_c ruf_lr]

*235|
[fc]
[【カクエン】]
「ああン？　なんか音がしたぜミズチよ？」[pcms]

*236|
[fc]
[【ミズチ】]
「ほほう……人間の男があちらの方に潜んでおるようじゃのう」[pcms]

*237|
[fc]
バレてしまったようだ……だったら、ハッタリで勝負するだけ！[pcms]

;//ＳＥ：近付いてくる足音
;んー[se buf=0 storage="SE0103"]

*238|
[fc]
[【主人公】]
「へんてこなコスプレして俺の教え子を襲っている凶悪犯ども！　たった今警察に連絡した！　覚悟しろよ！」[pcms]

*239|
[fc]
化け物なんかじゃない、コスプレした凶悪犯の集団で、魔法に思えたのはトリックだ！　そう思い込んで俺は虚勢を張り、叫んだ。[pcms]

*240|
[fc]
[【主人公】]
（引いてくれ！　撤退しろ！　正体を隠す理由とかあるんだろ、冥魔とか妖魔とかそういう魔物とかはフィクションではたいてい最終回の前とかまでは世間的に隠れてる理由あるんだろ？）[pcms]

[chara_int_all]
[std_aka l ma p1 f05 ce][trans_c cross time=300]

*241|
[fc]
[vo_aka s="akane_0028"]
[【茜】 name=ルージュ]
「先生……！　どうして……？」[pcms]

[std_aoi l ma p1 f05 ce][trans_c cross time=300]

*242|
[fc]
[vo_aoi s="aoi_0027"]
[【葵】 name=ヴィオレ]
「私たちのこと……教え子だって……認識阻害が効いてないの？」[pcms]

[std_mia l ma p2 f11 ce][trans_c cross time=300]

*243|
[fc]
[vo_mia s="mia_0028"]
[【ミア】 name=ブラン]
「それに校庭には結界も張ったから一般人のせんせーが入ってこられるはずが……」[pcms]

[chara_int_all]
[std_miz s lc]
[std_kak s rc][trans_c cross time=300]

*244|
[fc]
[【ミズチ】]
「警察に連絡？　つまらぬ冗談だな人間。ワシら冥魔か魔法少女どもが張った結界の内部では、外部との交信など一切不可能じゃ」[pcms]

*245|
[fc]
やばい……ハッタリがハッタリになってなかったか。[pcms]


*246|
[fc]
[【カクエン】]
「おおかたそう言えば、オレたちが逃げるだろうと踏んでハッタリを仕掛けたってとこだろうぜ！」[pcms]

*247|
[fc]
ちきしょう……大正解だよ！[pcms]


*248|
[fc]
[【ミズチ】]
「確かにワシらは今の時点では、無用の注目と警戒を避ける必要があって、結界を多用してはおる……じゃがのう……」[pcms]


*249|
[fc]
[【カクエン】]
「もともとオレたちにとっての結界は、魔法の素質がある人間が迷い込んできたのを捕食するため狩場なんだぜ？」[pcms]


*250|
[fc]
[【ミズチ】]
「魔法少女どもと比べたならば、その濃度は一割かそれ以下ではあろうが、殺して生命力をすすり、魔法力として吸収するとしよう」[pcms]

*251|
[fc]
[【主人公】]
「こ、殺す……のかよ？」[pcms]

*252|
[fc]
[【ミズチ】]
「人間の男よ。この結界に入り込んだということは、オマエは我等冥魔か、魔法少女どものどちらかの血を引く血族に違いあるまい」[pcms]


*253|
[fc]
[【カクエン】]
「どうする？　オレたちの下っ端として忠誠を誓うなら、殺すのは無しにしてやってもいいんだぜ？」[pcms]

*254|
[fc]
ああ……これって……ホラー映画で最初に殺されたりとか、ヒーローものの特撮とかで、最初の犠牲者にされる、ああいうやつだ。[pcms]

*255|
[fc]
[【主人公】]
「断る！　教え子を守るのが教師の仕事だ！　人間を舐めるなよ化け物！」[pcms]
*256|
[fc]
流行りのネット小説なら、ここでチート能力を発揮してこいつらを瞬殺して、かわいい女の子から、さすがです先生、と全肯定されるところなんだけどな。[pcms]

*257|
[fc]
[【カクエン】]
「オレはなァ……何の実力も無いくせに、そういうデカい口を叩くやつが嫌いなんだよ」[pcms]


[chara_int_all]
[std_kak m ce][trans_c cross time=300]

*258|
[fc]
[【主人公】]
「くッ……お…お前たち！　先生がおとりになるから今のうちに逃げろ！」[pcms]

*259|
[fc]
カクエンの巨体が迫ったのを確認してからオレは怒鳴った。[pcms]

*260|
[fc]
[【カクエン】]
「なんだよ、そういう理由かよ。こいつ死ぬ気でおとり役を買って出たわけか」[pcms]

[std_miz m ce][trans_c cross time=300]

*261|
[fc]
[【ミズチ】]
「ふむ……下働きをさせる程度には機転が利く人間のようじゃのう……カクエンよ、ちと耳を貸すがよい」[pcms]

;//主人公に注目して油断したふりをして魔法少女たちに不意打ちする相談

[chara_int_all]
[std_miz m lc]
[std_kak m rc][trans_c cross time=300]

*262|
[fc]
[【カクエン】]
「なんだよミズチ」[pcms]

*263|
[fc]
カクエンの隣にミズチもやってくる。[nor]
値踏みするかのように俺を見ていた。[pcms]

[chara_int_all]
[std_aoi m ma p1 f02 le]
[std_aka m ma p1 f11 ce]
[std_mia m ma p2 f11 ri][trans_c cross time=300]

*264|
[fc]
[vo_aka s="akane_0029"]
[【茜】 name=ルージュ]
「先生を見殺しになんてできないよ！　助けなきゃ！」[pcms]

[std_aoi m ma p1 f03 le][trans_c cross time=300]

*265|
[fc]
[vo_aoi s="aoi_0028"]
[【葵】 name=ヴィオレ]
「でも、その前に私たちを囲んでる冥魔たちをなんとかしないと逃げるのも助けるのも……」[pcms]


[std_mia m ma p2 f02 ri][trans_c cross time=300]

*266|
[fc]
[vo_mia s="mia_0029"]
[【ミア】 name=ブラン]
「ミズチとカクエンも、せんせーに注目してる。いまなら、わたしたちの動きは気にしてない」[pcms]

[std_aoi m ma p1 f11 le][trans_c cross time=300]

*267|
[fc]
[vo_aka s="akane_0030"]
[【茜】 name=ルージュ]
「全力で包囲を突破して、その勢いのまま先生を回収して冥魔を振り切って逃げる。これならどう葵ちゃん？」[pcms]

[std_aoi m ma p1 f11 le][trans_c cross time=300]

*268|
[fc]
[vo_aoi s="aoi_0029"]
[【葵】 name=ヴィオレ]
「このまま消耗して魔法力が尽きてしまうよりは……わかった茜ちゃん。その作戦で行きましょう」[pcms]


[std_mia m ma p2 f01 ri][trans_c cross time=300]

*269|
[fc]
[vo_mia s="mia_0030"]
[【ミア】 name=ブラン]
「そう来なくっちゃ。じゃあ、まずは全開で！」[pcms]

*270|
[fc]
どういうわけか、俺には離れた場所にいる三人の会話が聞こえていた。[pcms]

*271|
[fc]
これで俺も助けてもらえるし、みんなもこの大ピンチから離脱できると安心したのだが――。[pcms]

[chara_int_all]
[std_miz m ce][trans_c cross time=300]

*272|
[fc]
[【ミズチ】]
「大地に刻印されし魔力は、我が五指に連なる傀儡糸なり！[r]
　[技_冥魔傀儡陣]ッ！」[pcms]

;mm 折り返しが上手くいってないから手折り

;//めいまくぐつじん。複数対象なので陣で、単体相手だと、指、となる拘束魔法。
;mm んー操る魔法か
[Magic_冥魔傀儡陣]




[chara_int_all]
[std_aoi m ma p1 f11 le]
[std_aka m ma p1 f11 ce]
[std_mia m ma p2 f11 ri][trans_c cross time=300]

[Magic_冥魔傀儡陣 hit]

[std_aoi m ma p1 f12 le]
[std_aka m ma p1 f12 ce]
[std_mia m ma p2 f12 ri][trans_c cross time=100]

*273|
[fc]
いきなりミズチが、俺に背を向けて呪文を詠唱し、魔法らしき技を教え子たちに向けて発動させた。[pcms]


;[std_aka m ma p1 f12 ce][trans_c cross time=300]

*274|
[fc]
[vo_aka s="akane_0031"]
[【茜】 name=ルージュ]
「か、身体が急に重く……？」[pcms]

;[std_aoi m ma p1 f12 le][trans_c cross time=300]

*275|
[fc]
[vo_aoi s="aoi_0030"]
[【葵】 name=ヴィオレ]
「地面の底からなにかが……糸みたいに私たちの身体に張り付いて……動きを邪魔しているの！？」[pcms]

;[std_mia m ma p2 f12 ri][trans_c cross time=300]

*276|
[fc]
[vo_mia s="mia_0031"]
[【ミア】 name=ブラン]
「ひ、卑怯者っ！　正々堂々戦えーっ！」[pcms]

[chara_int_all]
[std_miz m ce][trans_c cross time=300]

*277|
[fc]
[【ミズチ】]
「くく……不意打ちの相談をしておったのは、そちらが先じゃろうよ。さてカクエン、後はオマエに委せるぞい」[pcms]

*278|
[fc]
こいつ……初めから俺に注目したふりをして魔法少女たちに不意打ちする気だったのか。[pcms]

[std_kak m ce][trans_c cross time=300]

*279|
[fc]
[【カクエン】]
「承知したぜミズチ。カクエン様の大技を拝ませてやるぜェ！」[pcms]

*280|
[fc]
カクエンはそう宣言するとその場でどっしりと構えた。その太い四肢に不気味な光がる。[pcms]

*281|
[fc]
[【カクエン】]
「喰らいやがれええええッ！　カクエン様の右腕から繰り出すこの……[技_冥魔豪爆斧]をッ！！」[pcms]

;//めいまごうばくふ、魔力を集中させ破壊力を増したたアックスボンバー

[std_aka m ma p1 f12 ce][trans_c cross time=300]


*282|
[fc]
[vo_aka s="akane_0032"]
[【茜】 name=ルージュ]
「う、動けないっ……動かなくちゃだめなのに……動いてあたしの身体っ！」[pcms]

[std_aoi m ma p1 f12 ce][trans_c cross time=300]

*283|
[fc]
[vo_aoi s="aoi_0031"]
[【葵】 name=ヴィオレ]
「あ……ああ……避けられ……ない……」[pcms]

[std_mia m ma p2 f12 ce][trans_c cross time=300]

*284|
[fc]
[vo_mia s="mia_0032"]
[【ミア】 name=ブラン]
「た、ただのプロレス技に魔力を上乗せした技なんかにっ！」[pcms]

[std_kak l ce][trans_c cross time=300]

*285|
[fc]
[【カクエン】]
「魔力解放ッ、爆裂うううッ！」[pcms]

[chara_int_all]
[std_aoi m ma p1 f12 le]
[std_aka m ma p1 f12 ce]
[std_mia m ma p2 f12 ri][trans_c cross time=300]

;//ＳＥ・爆発する音
[Magic_冥魔豪爆斧]

[chara_int_all][trans_c cross time=300]

*286|
[fc]
丸太のような右腕は、身動きできない三人の魔法少女たちに、まとめて直撃し、吹き飛ばした。[pcms]

;//背景：空・夜
[bg storage="bg001c"][trans_c cross time=1000]

;//ここから指定あるまで茜、葵、ミアの立ち絵は魔法服・破損
[std_aka l mad p1 f12 ce off]

*287|
[fc]
[vo_aka s="akane_0033"]
[【茜】 name=ルージュ]
「きゃああああーっ！」[pcms]

[std_aoi l mad p1 f12 ce off]

*288|
[fc]
[vo_aoi s="aoi_0032"]
[【葵】 name=ヴィオレ]
「うわあああーっ！」[pcms]

[std_mia l mad p2 f12 ce off]

*289|
[fc]
[vo_mia s="mia_0033"]
[【ミア】 name=ブラン]
「うあああああーっ！」[pcms]

;//ＳＥ：人間が吹っ飛ばされて地面に転がる音
[se buf=0 storage="seB013"]


;//背景：学園校庭・夜消灯
[bg storage="bg003d"]
[std_miz s lc]
[std_kak s rc][trans_c cross time=500]

*290|
[fc]
[【カクエン】]
「ちっ、裸に剥いてやるつもりだったが、さすがに魔法服は強固だな」[pcms]

*291|
[fc]
[【ミズチ】]
「相変わらず豪快な技よのぅ。カクエン」[pcms]

;	*292|
;	[fc]
;	ミズチもいつの間にか俺の前から、カクエンの隣に移動していた。[pcms]

;mm さっきもミズチがカクエンの隣にって描写あったような気が。タブるのでカット

*293|
[fc]
そして俺の目の前には、吹っ飛ばされてきた教え子たちが、痛々しく倒れていた。[pcms]

*294|
[fc]
[【主人公】]
「しっかりしろ！　緋神っ！　氷上っ！　柏山っ！」[pcms]

[chara_int_all]
[std_aka m mad p1 f13 ce][trans_c cross time=300]

*295|
[fc]
[vo_aka s="akane_0034"]
[【茜】 name=ルージュ]
「せ、先生……先生だけでも……逃げて……」[pcms]

[std_aoi m mad p1 f07 ce][trans_c cross time=300]

*296|
[fc]
[vo_aoi s="aoi_0033"]
[【葵】 name=ヴィオレ]
「巻き込んでしまって……ごめんなさい……」[pcms]

[std_mia m mad p2 f12 ce][trans_c cross time=300]

*297|
[fc]
[vo_mia s="mia_0034"]
[【ミア】 name=ブラン]
「こ、ここから華麗な……大逆転……ううっ……」[pcms]


[chara_int_all]
[std_aoi m mad p1 f12 le]
[std_aka m mad p1 f12 ce]
[std_mia m mad p2 f12 ri][trans_c cross time=300]

*298|
[fc]
魔法のドレスというか戦闘服みたいなそれも、カクエンの一撃を受けてそこら中が破れている。[pcms]

*299|
[fc]
[【主人公】]
「バカを言うな。大人が、しかも教師の俺が教え子を置いて逃げるわけにはいかないんだよ！」[pcms]

*300|
[fc]
横たわったままのみんなをなんとか助け起こし、立たせることには成功したが、はっきり言って敗色濃厚だ。[pcms]

*301|
[fc]
[【主人公】]
「お前ら、魔法少女なんだよな？　瞬間移動とか空間を引き裂いて離脱するとか、そういう魔法は無いのか？」[pcms]

[std_mia m mad p2 f08 ri][trans_c cross time=300]

*302|
[fc]
[vo_mia s="mia_0035"]
[【ミア】 name=ブラン]
「せんせー……そーゆーのは魔法少女じゃなくて、異世界転生した人が使う魔法だから……ジャンル違いだよ……」[pcms]

[std_aoi m mad p1 f06 le][trans_c cross time=300]

*303|
[fc]
[vo_aoi s="aoi_0034"]
[【葵】 name=ヴィオレ]
「ミアさん……こんな時にまでそんなことを……」[pcms]

[std_aka m mad p1 f12 ce][trans_c cross time=300]

*304|
[fc]
[vo_aka s="akane_0035"]
[【茜】 name=ルージュ]
「そ……そんなのあったら、もう使ってるよ……」[pcms]

*305|
[fc]
[【主人公】]
「そ、それもそうだな。すまん、先生が悪かった。とにかく、なんとかここから逃げようと思うんだが、動けるか？」[pcms]

*306|
[fc]
はっきり言って、駆け寄った直後は虫の息という感じだったが、俺が支えて助け起こすと、ほんの少しだけだが回復したように思う。[pcms]

*307|
[fc]
もちろんそれは根拠がない印象でしかなかったが、どっちみちもう俺たちには命乞いするかさっさと逃げ出すかどちらかしかない。[pcms]

[std_aoi m mad p1 f03 le][trans_c cross time=300]

*308|
[fc]
[vo_aoi s="aoi_0035"]
[【葵】 name=ヴィオレ]
「走って逃げる程度なら……でも……魔法はもう……」[pcms]

[std_mia m mad p2 f03 ri][trans_c cross time=300]

*309|
[fc]
[vo_mia s="mia_0036"]
[【ミア】 name=ブラン]
「無理に使ったら変身が解除されて、体力も落ちちゃうし、回復するのも普通の人並になっちゃう」[pcms]

[std_aka m mad p1 f01 ce][trans_c cross time=300]

*310|
[fc]
[vo_aka s="akane_0036"]
[【茜】 name=ルージュ]
「でも不思議……先生に助け起こしてもらったら、少しだけ元気が戻った気がするよ」[pcms]

*311|
[fc]
緋神が俺への感謝のつもりなのか、にこっと笑ってくれた。それに応えるためにも考えろ……何か……何か、この危機的状況を脱する方法を！[pcms]

[chara_int_all]
[std_miz s lc]
[std_kak s rc][trans_c cross time=300]

*312|
[fc]
[【ミズチ】]
「さて、そろそろこの戦いも終わりにするとしようかのう」[pcms]


*313|
[fc]
[【カクエン】]
「オレたち冥魔の拠点に捕虜として連れて行くのは大前提として……この場で性奴隷として楽しませてもらおうか」[pcms]

*314|
[fc]
[【ミズチ】]
「カクエンよ、言っておくがこやつらの処女を奪うことだけはならぬぞ。破瓜の血とその際に放つ魔力を利用する予定があるのじゃ」[pcms]

*315|
[fc]
[【カクエン】]
「ちっ、面倒くせえな。仕方ねェ……ケツの穴と口だけで我慢しておいてやるさ。ただし、その利用ってのが終わったら、うだうだと条件付けるのは無しだぜ」[pcms]

*316|
[fc]
[【ミズチ】]
「うむ」[pcms]

*317|
[fc]
物騒な相談をしながら、ミズチとカクエンは俺たちの方にゆっくりと近付いてくる。[pcms]

*318|
[fc]
下級冥魔たちの包囲の輪も崩れていない。もうあれこれと考えていられる時間敵余裕はなさそうだった。[pcms]

*319|
[fc]
[【主人公】]
「いいか、俺はこれから可能な限り時間を稼いでやるから、その間に回復できるだけ回復して、タイミングを見て逃げろよ」[pcms]

*320|
[fc]
小声で教え子たちにそう伝えると俺はミズチたちの方に進み出た。もう、他には何も手がない。[pcms]

*321|
[fc]
[【主人公】]
「待て！　いや待ってくれ……俺の話を聞いてくれ！」[pcms]

*322|
[fc]
[【カクエン】]
「ああン？」[pcms]

*323|
[fc]
[【ミズチ】]
「オマエ、先刻は人間を舐めるなとか申していたではないか。ワシらを相手に媚びを売り、命乞いでもする気か？」[pcms]

*324|
[fc]
[【主人公】]
「そ、その通りだ！　俺はまだ３０歳になったばかりで、まだまだこれからやりたいことがある！　死にたくない！」[pcms]

*325|
[fc]
うそだった。あの事故以来、表向きはともかく、心のどこかで、ほぼ何事に対してもやる気を失っている。[pcms]

*326|
[fc]
なんというか無気力で無感動な俺が、以前の俺の生活や趣味嗜好を仕方なく再演しているような……そんな傾向があった。[pcms]

*327|
[fc]
それでも教師という仕事は気に入ってはいたから、ちゃんと働いていたし、教え子のために死ねるなら悪くないと思う。[pcms]

*328|
[fc]
実を言えば、この破天荒で唐突な冥魔と魔法少女の戦いに巻き込まれたことで、奇妙な充実感を自覚していた。[pcms]

*329|
[fc]
[【カクエン】]
「どうするよミズチ？　お前さっき、この人間を使い走りにしても良さそうなこと言ってたよな？」[pcms]

*330|
[fc]
[【ミズチ】]
「うむ……確かにそうは言ったし、評価したのも事実。しかし……オマエ、時間稼ぎしているだけなのであろう？」[pcms]

*331|
[fc]
見抜かれていた！　[nor]
だったら……うそを信じさせるにはその中に事実を混ぜ込む！[pcms]

*332|
[fc]
[【主人公】]
「そ、そんなことない！　俺は……まだ童貞なんだ！」[pcms]

[chara_int_all]
[std_miz m ce][trans_c cross time=300]


*333|
[fc]
[【ミズチ】]
「はあ？」[pcms]

*334|
[fc]
[【主人公】]
「俺、無駄に理想が高いくせにせっかちで……当時知り合ったばかりの女の子と強引にしようとしたらふられて……だから……」[pcms]

[std_kak m ce][trans_c cross time=300]

*335|
[fc]
[【カクエン】]
「ガハハハハハハっ！　おもしれえ！　なあミズチ、少しばかり、こいつの話を聞いてやろうぜ？」[pcms]


[chara_int_all]
[std_miz s lc]
[std_kak s rc][trans_c cross time=300]

*336|
[fc]
[【ミズチ】]
「まあ良かろう……魔法少女どもが仮に回復しても、こやつを見捨てて逃げるとは思えぬしのう」[pcms]

*337|
[fc]
[【主人公】]
「下働きもやる！　偵察とか買い出しとか、なんでもやるし、自炊とかしてたから料理もできる！」[pcms]

*338|
[fc]
[【ミズチ】]
「その対価として、ワシらにオマエのための女を手配せよと？」[pcms]

*339|
[fc]
[【主人公】]
「と、とんでもない！　それは自前でなんとかする。だから、どうか俺と、それから一応は教え子なんで、こいつらの待遇もなるべく穏便なものに……」[pcms]

*340|
[fc]
[【ミズチ】]
「カクエンよ……この男の処遇はオマエに一任する。好きにせよ」[pcms]

*341|
[fc]
ちらっ、ちらっと、俺の後ろにいるであろう教え子たちの動向を気にしながらミズチはそう言った。[pcms]

*342|
[fc]
[【カクエン】]
「だったらオレが女を手配してやるよ人間。そうだなあ……お前、オレと穴兄弟になれ。それが人間風に言う杯を交わすことになる」[pcms]

*343|
[fc]
[【主人公】]
「穴兄弟ということは抱いた女を下げ渡してもらえるわけで、ははは……感謝の極み」[pcms]

*344|
[fc]
この怪物ゴリラみたいなカクエンが抱く女……その同族の女を抱くということは……。[pcms]

*345|
[fc]
[【カクエン】]
「おまえ、オレと同じ外見の女を抱くつもりでびびってやがるな。安心しろ、オレの女の趣味は人間の男と同じだ」[pcms]

*346|
[fc]
[【主人公】]
「そ、それは、なんとも、ありがたい話だ……」[pcms]

*347|
[fc]
[【カクエン】]
「いいのか？　お前の後ろに隠れてる魔法少女たちのケツ穴をオレの後に続いて犯すことになってもよォ？」[pcms]

*348|
[fc]
[【主人公】]
「なッ！」[pcms]

*349|
[fc]
[【カクエン】]
「できなきゃ殺す。さあここで宣言しろ。冥魔カクエン様への忠誠の証として、魔法少女たちのケツ穴を犯して穴兄弟になる、と」[pcms]

*350|
[fc]
[【主人公】]
「それは……できない相談だッ！」[pcms]

*351|
[fc]
媚びへつらうのは……もう限界だった。[pcms]

[chara_int_all]
[std_kak m ce][trans_c cross time=300]

*352|
[fc]
[【カクエン】]
「ガハハハハっ！　じわじわとなぶり殺しにしてやるよ。人間！」[pcms]

*353|
[fc]
[【カクエン】]
「それを魔法少女どもが見て絶望し、その魔法力に最高の味付けをしてくれる！　そして……それを冥王復活のために捧げる！」[pcms]

;//ＳＥ：殴られる打撃音
[se buf=0 storage="seB008"]
[赤フラ]
[quake_bg vmax=20 hmax=20 time=0 accel=1 count=4 wait=false]

*354|
[fc]
[【主人公】]
「ぐはあッ？」[pcms]

*355|
[fc]
目の前を何か通り過ぎた……そう思った直後、これまで受けたことのない衝撃と苦痛が脳を襲った。[pcms]

*356|
[fc]
[【カクエン】]
「簡単に倒れるなよァ？　人間？　ちゃんと手加減して殴ってやってんだ。魔法少女どもに見せつけるためになァ！」[pcms]

;//ＳＥ：殴られる打撃音
[se buf=0 storage="seB008"]
[赤フラ]
[quake_bg vmax=20 hmax=0 time=20 accel=1 count=4 wait=false]

*357|
[fc]
[【主人公】]
「おぶふうッ？」[pcms]

*358|
[fc]
[【カクエン】]
「いいぜいいぜェ～根性見せろよ人間～？　人間を舐めるな、なんだろ？」[pcms]

;//ＳＥ：殴られる打撃音
[se buf=0 storage="seB008"]
[赤フラ]
[quake_bg vmax=20 hmax=0 time=20 accel=1 count=4 wait=false]

*359|
[fc]
[【主人公】]
「ぐぶがはァ！」[pcms]

*360|
[fc]
[【カクエン】]
;tr 修正「そらそらァ～。いいのかぁ？　魔法少女ども？　この男が死んじまうぜ？　、ずいぶんと薄情だなァ？」[pcms]
「そらそらァ～。いいのかぁ？　魔法少女ども？　この男が死んじまうぜ？　ずいぶんと薄情だなァ？」[pcms]

[stop_quake_bg]


[chara_int_all]
[std_aoi m mad p1 f08 le]
[std_aka m mad p1 f11 ce]
[std_mia m mad p2 f11 ri][trans_c cross time=300]

*361|
[fc]
[vo_aka s="akane_0037"]
[【茜】 name=ルージュ]
「先生を助けるよ！　ミアちゃん！　葵ちゃん！」[pcms]

[std_aoi m mad p1 f03 le][trans_c cross time=300]

*362|
[fc]
[vo_aoi s="aoi_0036"]
[【葵】 name=ヴィオレ]
「無理よ茜ちゃん、私たち……立っているのがやっとなのよ……」[pcms]

[std_mia m mad p2 f12 ri][trans_c cross time=300]

*363|
[fc]
[vo_mia s="mia_0037"]
[【ミア】 name=ブラン]
「くぅっ……！　なにか手はないの？」[pcms]

[chara_int_all]
[std_kak m ce][trans_c cross time=300]

*364|
[fc]
[【カクエン】]
「殴ってるだけなのも飽きてきたなァ……ひとつ、技でも使ってやるか……そうら……[技_冥魔豪風斬]ッ！」[pcms]

*365|
[fc]
カクエンは虫でも払うみたいに腕を振るい、その衝撃が既に血まみれの俺の身体を襲った。[pcms]

[se buf=0 storage="seB008"]
[赤フラ]
[quake_bg vmax=20 hmax=20 time=20 accel=1 count=4 wait=false]

*366|
[fc]
[【主人公】]
「うぐああああああーッ！」[pcms]

*367|
[fc]
派手な血しぶきをまき散らしながら、俺は天高く放り上げられ、そして――[pcms]

*368|
[fc]
[【カクエン】]
「そろそろ時間稼ぎに付き合ってやるのは終わりだと、教え子の魔法少女どもに身体でわからせてやれ！　そらァ！」[pcms]

;//ＳＥ：アッパーカット的な派手めの殴る音
[se buf=0 storage="seB008"]
[赤フラ]
[quake_bg vmax=20 hmax=20 time=20 accel=1 count=4 wait=false]



;//背景：空・夜
[bg storage="bg001c"][trans_c ruf_bt]

*369|
[fc]
頭を揺さぶる衝撃と共に、夜空がぐるぐる回っていた。[pcms]

;//ここの茜、葵、ミアはフェイスのみ
[std_aka m mad p1 f05 ce off]

*370|
[fc]
[vo_aka s="akane_0038"]
[【茜】 name=ルージュ]
「先生っ！」[pcms]

[std_aoi m mad p1 f05 ce off]

*371|
[fc]
[vo_aoi s="aoi_0037"]
[【葵】 name=ヴィオレ]
「先生っ！」[pcms]


[std_mia m mad p2 f05 ce off]

*372|
[fc]
[vo_mia s="mia_0038"]
[【ミア】 name=ブラン]
「せんせーっ！」[pcms]

;//フェイスのみ終わり



[se buf=0 storage="seB013"]
[quake_bg vmax=0 hmax=20 time=20 accel=1 count=4 wait=false]


*373|
[fc]
直後、背中にさらなる衝撃。[pcms]

*374|
[fc]
[【主人公】]
「がはああああッ！」[pcms]

*375|
[fc]
そして、視界が急激に暗くなっていく……。[pcms]

[stop_quake_bg]

;//暗転
[bg storage="effect_black" winon][trans_c cross time=1000]

*376|
[fc]
ああ、俺は死ぬのか……。[pcms]

;//短い時間経過演出
;//背景：空・夜
[bg storage="bg001c"]
[img_c storage="薄目" layer=6 x=0 y=0 opa=204][trans_c cross time=1000]

*377|
[fc]
[【主人公】]
「あの世って……暗いんだな。まるで夜空みたいだ……」[pcms]

*378|
[fc]
[【主人公】]
「……いや、夜空じゃないのか、あれ？　もしかして俺、生きてる？」[pcms]

;//背景：学園校庭・夜消灯
[bg storage="bg003d"]
[std_aoi m mad p1 f11 le]
[std_aka m mad p1 f11 ce]
[std_mia m mad p2 f11 ri][trans_c cross time=1000]

*379|
[fc]
起き上がると、教え子たちが俺を囲むようにして立っていた。[pcms]

;//以下、魔法少女たちの雰囲気が明るく前向きになっている

;//ここまで茜、葵、ミアの立ち絵は魔法服・破損
;//ここから下、茜、葵、ミアの立ち絵は魔法服
;//ＳＥ：シュワシュワと浄化する、傷が治っていく音
[se storage="SE3603"]
[白フラ]

[std_aoi m mad p1 f11 le][pimage storage="ch02_m_base_d0_p1wht" layer="&f.layer_ch02" page=back dx=0 dy=0 visible=true]
[std_aka m mad p1 f11 ce][pimage storage="ch01_m_base_d0_p1wht" layer="&f.layer_ch01" page=back dx=0 dy=0 visible=true]
[std_mia m mad p2 f11 ri][pimage storage="ch03_m_base_d0_p2wht" layer="&f.layer_ch03" page=back dx=0 dy=0 visible=true]
[trans_c bt time=1000]

[std_aoi m ma p1 f01 le]
[std_aka m ma p1 f01 ce]
[std_mia m ma p2 f01 ri][trans_c bt time=1000]

*380|
[fc]
[vo_aka s="akane_0039"]
[【茜】 name=ルージュ]
「ミアちゃんは、あたしと葵ちゃんより上手に傷を治せるんだよ」[pcms]

[std_aoi m ma p1 f04 le][trans_c bt time=1000]

*381|
[fc]
[vo_aoi s="aoi_0038"]
[【葵】 name=ヴィオレ]
「思ったより浅い傷で良かったです」[pcms]

[std_mia m ma p2 f04 ri][trans_c bt time=1000]

*382|
[fc]
[vo_mia s="mia_0039"]
[【ミア】 name=ブラン]
「傷の手当のお代は、一千万円からになりまーす」[pcms]

*383|
[fc]
[【主人公】]
「絶体絶命の大ピンチだってのに、お前ら余裕だな、おい？」[pcms]

[chara_int_all]
[std_miz s lc]
[std_kak s rc][trans_c cross time=300]

*384|
[fc]
少し離れた場所にいたカクエンの方を見る。[pcms]


*385|
[fc]
[【カクエン】]
「ありえねェ……あれだけの傷が魔法服ごと一瞬で回復だと？」[pcms]


*386|
[fc]
[【ミズチ】]
「あの人間の血を魔法少女どもが浴びたその瞬間に……いったい何が起きたというのじゃ？」[pcms]

*387|
[fc]
呆然としているカクエン、その隣にはミズチも立っていた。[pcms]

[chara_int_all]
[std_aka l ma p1 f01 ce][trans_c cross time=300]

*388|
[fc]
[vo_aka s="akane_0040"]
[【茜】 name=ルージュ]
「あのね先生。あたしたちたぶん、先生のおかげで、すっごく強くなったみたいなんだよ」[pcms]

*389|
[fc]
[【主人公】]
「え？」[pcms]

[std_aoi l ma p1 f11 ce][trans_c cross time=300]

*390|
[fc]
[vo_aoi s="aoi_0039"]
[【葵】 name=ヴィオレ]
「いまなら、あんな冥魔たちになんて負けない……かも」[pcms]

[std_mia l ma p2 f04 ce][trans_c cross time=300]


*391|
[fc]
[vo_mia s="mia_0040"]
[【ミア】 name=ブラン]
「愛の力で、秘められた真の力に覚醒！　やっぱり王道な展開が求められているってことよね！」[pcms]

[chara_int_all]
[std_aoi m ma p1 f01 le]
[std_aka m ma p1 f01 ce]
[std_mia m ma p2 f01 ri][trans_c cross time=300]

*392|
[fc]
[【主人公】]
「いまいち、先生はわかってないんだが」[pcms]

[std_aka m ma p1 f04 ce][trans_c cross time=300]

*393|
[fc]
[vo_aka s="akane_0041"]
[【茜】 name=ルージュ]
「あたしたち、冥魔をやっつけてくる！」[pcms]

[std_aoi m ma p1 f04 le][trans_c cross time=300]

*394|
[fc]
[vo_aoi s="aoi_0040"]
[【葵】 name=ヴィオレ]
「先生はここで見ていてください」[pcms]

[std_mia m ma p2 f04 ri][trans_c cross time=300]

*395|
[fc]
[vo_mia s="mia_0041"]
[【ミア】 name=ブラン]
「華麗に戦うアルカナブランの姿を、ね！」[pcms]

;SE だだだ
[se buf=0 storage="seA052"]

[chara_int_all][trans_c cross time=300]

*396|
[fc]
三人は力強い足取りで俺を背中にして走り出す。[pcms]


[stopse buf=0]
[chara_int_all]
[std_miz s lc]
[std_kak s rc][trans_c cross time=300]

*397|
[fc]
[【ミズチ】]
「引くぞ……カクエン。未知数の能力を相手に戦いを挑むのは愚策も愚策じゃ」[pcms]

*398|
[fc]
[【カクエン】]
「オレは冥魔で最強の男だ！　敵を選り好みなんかしてられるかよ……ジジイはそこで待ってな。オレが皆殺しにしてやるッ！」[pcms]

*399|
[fc]
[【ミズチ】]
「若造め。ええい冥魔どもよ、手ぬるい攻めは終わりじゃ！　一気に攻め立てよ！」[pcms]

;//下級冥魔４、５は下級冥魔Ａ（子鬼タイプ）
;//下級眼魔６は下級冥魔Ｂ（触手タイプ）
[chara_int_all]
[std_zaA m lc]
[std_zaA m rc][trans_c cross time=300]

*400|
[fc]
[【下級Ａ】 name=下級冥魔４]
「し、しかしミズチ様」[pcms]

*401|
[fc]
[【下級Ａ】 name=下級冥魔５]
「魔法少女どもから発する魔力は……さきほどまでとは比べ物にならないほどの強さに……」[pcms]

[chara_int_all]
[std_zaB m ce][trans_c cross time=300]

*402|
[fc]
[【下級Ｂ】 name=下級冥魔６]
「とてもその……[ruby_c t="敵" r="かな"]いそうには……」[pcms]

[std_miz m ce][trans_c cross time=300]

*403|
[fc]
[【ミズチ】]
「二度は言わぬ。ワシに殺されて吸収されるか、魔法少女どもに一矢報いるか、好きな方を選ぶがよい」[pcms]


[chara_int_all]
[std_zaA s le index=4]
[std_zaB s ce index=3]
[std_zaA s ri index=5][trans_c cross time=300]

;mm 重ね順変えても3つ重ねるとなんだか話かんんあいな

*404|
[fc]
[【下級Ａ】 name=下級冥魔４]
「ひ、ひいいいいッ！」[pcms]

*405|
[fc]
[【下級Ａ】 name=下級冥魔５]
「冥魔と冥王様に栄光あれええええええッ！」[pcms]

*406|
[fc]
[【下級Ｂ】 name=下級冥魔６]
「う……うわああああああああああっ！！」[pcms]


[chara_int_all]
[std_mia l ma p2 f01 ce][trans_c cross time=300]

*407|
[fc]
[vo_mia s="mia_0042"]
[【ミア】 name=ブラン]
「我、内なる光をもって闇を滅す！　ヴェトモン・ドゥ・ソレイユ！！」[pcms]

;//ここの呪文はフルサイズで
;//魔法演出入れてください
;//ＳＥ：キラキラと神々しい感じの浄化する音
[movie_Magic_ソレイユ]


[chara_int_all]
[std_zaA s le index=4]
[std_zaB s ce index=3]
[std_zaA s ri index=5][trans_c cross time=300]

*408|
[fc]
[【下級Ａ】 name=下級冥魔４]
「き、消えるうっ？　か、身体が光に包まれてえっ？」[pcms]

[se buf=0 storage="SE1420"]
[white_toplayer][trans_c bang time=300 vague=50]
[chara_int_top]
[chara_int_le][trans_c cross time=300]

*409|
[fc]
[【下級Ａ】 name=下級冥魔５]
「ぐええええええっ、溶けちまうううううッ？」[pcms]

[se buf=0 storage="SE1420"]
[white_toplayer][trans_c bang time=300 vague=50]
[chara_int_top]
[chara_int_ri][trans_c cross time=300]

*410|
[fc]
[【下級Ｂ】 name=下級冥魔６]
「溶けるぅぅぅぅぅ！」[pcms]


[se buf=0 storage="SE1420"]
[white_toplayer][trans_c bang time=300 vague=50]
[chara_int_top]
[chara_int_ce][trans_c cross time=300]


*411|
[fc]
柏山が呪文と共に放ったまばゆい閃光が、包囲の輪を作っていた冥魔たちを文字通り溶かして消滅させていた。[pcms]

[std_mia m ma p2 f01 ce][trans_c cross time=300]

*412|
[fc]
[vo_mia s="mia_0043"]
[【ミア】 name=ブラン]
「どう？　冥魔殲滅っ！」[pcms]

[std_miz m ce][trans_c cross time=300]

*413|
[fc]
[【ミズチ】]
「バカな……あれだけの数を一撃でじゃと？」[pcms]

[std_mia m ma p2 f02 ri][trans_c cross time=300]

*414|
[fc]
[vo_mia s="mia_0044"]
[【ミア】 name=ブラン]
「隙ありいっ！　ミズチ覚悟ーっ！」[pcms]

[std_miz m ce][trans_c cross time=300]

*415|
[fc]
[【ミズチ】]
「ぬうっ、これほどの接近を許すとは、身体能力の増幅までもがケタ違いじゃ」[pcms]

;[std_mia m ma p2 f02 ri][trans_c cross time=300]

*416|
[fc]
[vo_mia s="mia_0045"]
[【ミア】 name=ブラン]
「[技_ラミ・ドゥ・リュミエール]！」[pcms]

[movie_Magic_リュミエール]
[wait time=500]

[std_miz m ce][trans_c cross time=300]

*417|
[fc]
[【ミズチ】]
「ぐぬおおおおッ！　ワシは先に戻っておるぞカクエンっ！」[pcms]


[se buf=0 storage="SE1202"]
[黒フラ]
[chara_int_ce][trans_c wipe_r time=300]

*418|
[fc]
それが高速移動なのか瞬間移動的な魔法なのか、俺には見分けが付かないが、ミズチは手傷を負ったものの一瞬で姿を消していた。[pcms]



[std_mia m ma p2 f06 ri][trans_c cross time=300]


*419|
[fc]
[vo_mia s="mia_0046"]
[【ミア】 name=ブラン]
「惜しいっ！　直撃してれば、いまのでミズチを仕留められたかもしれないのに……！」[pcms]


[chara_int_all]
[std_aoi l ma p1 f05 ce][trans_c cross time=300]

*420|
[fc]
[vo_aoi s="aoi_0041"]
[【葵】 name=ヴィオレ]
「ミアさん、すごい……」[pcms]

*421|
[fc]
下級冥魔を一掃し、そのまま勢いに乗ってミズチに手傷を負わせた柏山の戦いぶりに、氷上は見とれていた。[pcms]

;mm カクエンとミアどっちも左向きなんだよなぁどうしようかな
[std_kak m ce][trans_c cross time=300]


*422|
[fc]
[【カクエン】]
「てめえ、よくもミズチをッ！　[技_冥魔豪爆斧]うっ！」[pcms]

[se buf=0 storage="seB039"]


;爆発SEなっちゃうからここでやっちゃだめか
;[Magic_冥魔豪爆斧]

[std_mia m ma p2 f05 ce][trans_c cross time=300]

*423|
[fc]
[vo_mia s="mia_0047"]
[【ミア】 name=ブラン]
「あっ！？」[pcms]

*424|
[fc]
気を抜いていた柏山にカクエンの腕が迫る！[pcms]

[chara_int_all]
[std_aoi l ma p3 f02 ce][trans_c cross time=300]

*425|
[fc]
[vo_aoi s="aoi_0042"]
[【葵】 name=ヴィオレ]
「紫紺の輝きよ、盾となりて我を守りたまえ！　アメシスト・ブークリエ！」[pcms]

;//ここの呪文はフルサイズ
;//魔法演出入れてください
;//ＳＥ：バリアーで攻撃を防ぐ系の音

[movie_Magic_ブークリエ]
[wait time=500]

[se buf=0 storage="se005"]
[白フラ]

[std_kak m ce][trans_c cross time=300]


*426|
[fc]
[【カクエン】]
「防御魔法か！　だが、これで……魔力解放ッ、爆裂うッ！」[pcms]

;//ＳＥ：爆発する音
[Magic_冥魔豪爆斧]


*427|
[fc]
魔法のシールドを展開した氷上が、カクエンと柏山との間に割って入り、防いでいたが、冥魔はさっきと同じように密着した間合いで魔力を爆裂させた。[pcms]

[chara_int_all]
[std_aoi m ma p1 f05 lc]
[std_mia m ma p2 f11 rc][trans_c cross time=300]

*428|
[fc]
[vo_aoi s="aoi_0043"]
[【葵】 name=ヴィオレ]
「ミアさん大丈夫ですか？」[pcms]

[std_mia m ma p2 f12 rc][trans_c cross time=300]

*429|
[fc]
[vo_mia s="mia_0048"]
[【ミア】 name=ブラン]
「ごめん、少し油断しちゃってた」[pcms]

[chara_int_all]
[std_kak m ce][trans_c cross time=300]

*430|
[fc]
[【カクエン】]
「なにィ？　この至近距離で、オレの全力の魔力爆裂を完璧に防ぎきるとは……」[pcms]


[std_aka l ma p1 f02 ce][trans_c cross time=300]


*431|
[fc]
[vo_aka s="akane_0042"]
[【茜】 name=ルージュ]
「よくも葵ちゃんとミアちゃんをっ！」[pcms]

;//ＳＥ：拳の連打音

;mm 拳闘

[chara_int_all]
;並べると面白すぎだからやめるか
[std_aka s ma p1 f11 y=100 index=6 le]
[std_kak s ce][trans_c cross time=300]
[se buf=0 storage="SE1024"]
[白フラ]
[quake_chara ch=kak vmax=10 hmax=0 time=20 accel=1 count=4 wait=false]
[se buf=1 storage="SE1026"]
[白フラ]
[quake_chara ch=kak vmax=10 hmax=0 time=20 accel=1 count=4 wait=false]


*432|
[fc]
[【カクエン】]
「ぬおおおおおッ？」[pcms]

[se buf=0 storage="SE1024"]
[白フラ]
[quake_chara ch=kak vmax=10 hmax=0 time=20 accel=1 count=4 wait=false]
[se buf=1 storage="SE1026"]
[白フラ]
[quake_chara ch=kak vmax=10 hmax=0 time=20 accel=1 count=4 wait=false]

*433|
[fc]
今度はカクエンが防御に回って、緋神の拳打を凌ぐ。[pcms]

*434|
[fc]
[【カクエン】]
「馬鹿なッ！　このオレが拳で押し負けるだとッ！」[pcms]

;//ＳＥ：ブォンというような拳が大きく風を切る音
[se buf=0 storage="seB039"]
;[chara_int_le][trans_c ruf_rl]
[move_chara ch=aka x=-500 accel=3 time=300 wm]

*435|
[fc]
カクエンは反撃に転じ、両手を武器のように振り回すが、緋神はそれを紙一重ですべてかわしている。[pcms]

[chara_int_all]
[std_aka l ma p1 f01 ce][trans_c cross time=300]

*436|
[fc]
[vo_aka s="akane_0043"]
[【茜】 name=ルージュ]
「身体が軽い……敵の動きもぜんぶ見える……わかるよ！」[pcms]

[chara_int_all]
[std_kak m ce][trans_c cross time=300]

*437|
[fc]
[【カクエン】]
「ナメやがってえッ！　喰らえ[技_冥魔豪爆斧]ッ！」[pcms]



[se buf=0 storage="seB039"]
[quake_chara ch=kak vmax=40 hmax=0 time=20 accel=3 count=1 wait=false]

*438|
[fc]
カクエンが魔力を集中させた拳で緋神を思いっきり殴りかかる！　――が。[pcms]


[白フラ]
[se buf=0 storage="SE1022"]
[chara_int_all]
[std_aka s ma p1 f01 y=100 index=6 le]
[std_kak s ce][trans_c cross time=300]

*439|
[fc]
[vo_aka s="akane_0044"]
[【茜】 name=ルージュ]
「遅いね、これ」[pcms]

*440|
[fc]
信じがたいことに緋神は自分の頭くらいの大きさはありそうな拳を指先ひとつだけで受け止めていた。[pcms]

*441|
[fc]
[【カクエン】]
「うおおおおッ！　オレは冥魔最強の男なんだ！　こんなメスガキにバカにされてたまるかあッ！　魔力解放ッ、爆裂うううッ！」[pcms]

;//エフェクト：フラッシュ
;//ＳＥ：爆発
[Magic_冥魔豪爆斧]
[bg storage="effect_white"][trans_c bang  time=300 vague=50]

*442|
[fc]
[【主人公】]
「緋神いいいいいいッ！」[pcms]

*443|
[fc]
カクエンが拳に収束させた魔力を爆発させたその瞬間、俺は思わず叫んでいた。だが――[pcms]

;[bg storage="bg003d"]
;[std_aka l ma p1 f01 ce]trans_c cross time=300]

;mm 白転のまま顔のみにする
[std_aka l ma p1 f02 ce off]

*444|
[fc]
[vo_aka s="akane_0045"]
[【茜】 name=ルージュ]
「[ruby_c t="深淵" r="しんえん"][ruby_c t="穿" r="うが"]つ[ruby_c t="灼熱" r="しゃくねつ"]の[ruby_c t="弾丸" r="だんがん"]！　バレ・ブルロント！！」[pcms]

;//ここの呪文はフルサイズ
;//魔法演出入れてください
;//ＳＥ：炎のマシンガンっぽい音

[movie_Magic_バレ・ブルロント]
[bg storage="bg003d"][trans_c cross time=300]

;p 体験版で消しコメントアウト
;bg 
*445|
[fc]
爆炎が晴れていく中でその詠唱が響き渡り、魔法少女の手のひらから灼熱する炎が轟音と共に放たれた。[pcms]

[std_kak m ce][trans_c cross time=300]
[se buf=0 storage="SE1024"]
[白フラ]
[quake_chara ch=kak vmax=10 hmax=10 time=20 accel=1 count=4 wait=false]


*446|
[fc]
[【カクエン】]
「バカなっ……オレの全魔力を込めても、こんなちびっこい魔力弾を相殺しきれねェ？」[pcms]

*447|
[fc]
すでに満身創痍となっているカクエンは、両手で炎の弾丸を受け止めて押し返そうとしていたが、じりじりと後退させられている。[pcms]

;p 体験版で追加
[stop_quake_chara ch=kak]
[std_aka l ma p1 f01 ce][trans_c cross time=300]

*448|
[fc]
[vo_aka s="akane_0046"]
[【茜】 name=ルージュ]
「いまのあたしはちょっと違うよ！　そのままやられちゃえ！」[pcms]

[std_kak m ce][trans_c cross time=300]

;mm ミズチさっき退場したんじゃ？　声だけか？
[std_miz m lc off]

*449|
[fc]
[【ミズチ】]
「カクエンよ、ここは一旦退くのじゃ。オマエをここで失うわけにはいかん！」[pcms]

*450|
[fc]
[【カクエン】]
「むかつくが……そうさせてもらうぜミズチ。魔法少女ども……傷が癒えたら必ずこの借りは返すぜ……おぼえてやがれッ！」[pcms]

;//ＳＥ：瞬間移動する感じの音

[se buf=0 storage="SE1202"]
[黒フラ]
[chara_int_ce][trans_c wipe_r time=300]


;//ＳＥ：大爆発
[se buf=1 storage="SE1507"]
[fadeoutbgm time=1000]

;//背景：空・夜
[bg storage="bg001c"][trans_c cross time=1000]

*451|
[fc]
緋神が放った魔法の爆発するより少し前に、カクエンの姿は瞬間移動か何かで消えていた。[pcms]

*452|
[fc]
[【主人公】]
「と、とにかく……これで一件落着した……のか」[pcms]

[stopse_fadeout buf=1 time=1000]

;mmm bgmいるかなぁ
[bgm003]

;//背景：学園校庭・夜消灯
[bg storage="bg003d"][trans_c cross time=1000]

*453|
[fc]
[【主人公】]
「死ぬかと思ったが……どうやら生き残れたようだな」[pcms]


[chara_int_all]
[std_aoi m ma p1 f01 le]
[std_aka m ma p1 f01 ce]
[std_mia m ma p2 f01 ri][trans_c cross time=300]


*454|
[fc]
[vo_aka s="akane_0047"]
[【茜】 name=ルージュ]
「先生のおかげだよ。ありがとう」[pcms]

*455|
[fc]
[vo_aoi s="aoi_0044"]
[【葵】 name=ヴィオレ]
「ありがとうございます先生」[pcms]

*456|
[fc]
[vo_mia s="mia_0049"]
[【ミア】 name=ブラン]
「まあまあ感謝してるから、お礼言っとくね、せんせー」[pcms]

*457|
[fc]
三人の魔法少女たちは、周辺に冥魔が残っていないのを確かめてから俺の前に戻ってきた。[pcms]

;//ＳＥ：変身解除の音
;//変身解除（簡易演出）
;//ここから下茜、葵、ミアの立ち絵は制服。
;//ここ、可能なら三人の立ち絵並べて同時に立ち絵を切り替える
;//ここから下はネームプレート、茜、葵、ミアのままで。
[movie_hensin_off trio]

[chara_int_all]
[std_aoi m se p1 f05 le]
[std_aka m se p1 f05 ce]
[std_mia m se p2 f05 ri][trans_c cross time=0]


[std_aka m se p1 f05 ce][trans_c cross time=0]

*458|
[fc]
[vo_aka s="akane_0048"]
[【茜】 reset]
「あ……」[pcms]

[std_aoi m se p1 f08 le][trans_c cross time=0]

*459|
[fc]
[vo_aoi s="aoi_0045"]
[【葵】 reset]
「自動的に変身解除……」[pcms]

*460|
[fc]
まばゆい光を発した次の瞬間、彼女たちは普段の制服姿に戻った。[pcms]

*461|
[fc]
それこそアニメの魔法少女ものを現実として見せつけられたようで妙な気分だ。[pcms]

[std_mia m se p1 f07 ri][trans_c cross time=300]

*462|
[fc]
[vo_mia s="mia_0050"]
[【ミア】 reset]
「初めて変身した時と同じだね。魔力を使いすぎて、残りが少なくなってるのかー」[pcms]


[std_aka m se p2 f01 ce][trans_c cross time=0]

*463|
[fc]
[vo_aka s="akane_0049"]
[【茜】]
「でも、先生の血を浴びてパワーアップしたのは、ちゃんとそのままだよミアちゃん？」[pcms]

[std_aoi m se p1 f01 le][trans_c cross time=300]


*464|
[fc]
[vo_aoi s="aoi_0046"]
[【葵】]
「どうやら……身体能力や魔法力も大幅に上昇してるみたいみたいですね」[pcms]

[std_mia m se p1 f01 ri][trans_c cross time=300]

*465|
[fc]
[vo_mia s="mia_0051"]
[【ミア】]
「うん、だからこそ、初めての時と同じで、身体がまだ慣れてないから、安全装置みたいに変身が解けたんだと思うなー」[pcms]


[std_aka m se p2 f04 ce][trans_c cross time=0]

*466|
[fc]
[vo_aka s="akane_0050"]
[【茜】]
「なるほど！　ミアちゃんにしては、説得力があるね」[pcms]

[std_aoi m se p1 f08 le][trans_c cross time=300]

*467|
[fc]
[vo_aoi s="aoi_0047"]
[【葵】]
「茜ちゃん……それ褒めてないんじゃ…」[pcms]

[std_mia m se p1 f04 ri][trans_c cross time=300]

*468|
[fc]
[vo_mia s="mia_0052"]
[【ミア】]
「いやあ、それほどでもあるかなあ♪」[pcms]

*469|
[fc]
[【主人公】]
「なあ柏山、そこはツッコミを入れるところだぞ？」[pcms]

[std_mia m se p1 f01 ri][trans_c cross time=300]

*470|
[fc]
[vo_mia s="mia_0053"]
[【ミア】]
「いいの、いいの。わたし、こーゆーキャラなんだから」[pcms]

*471|
[fc]
[【主人公】]
「いいや、良くないぞ柏山。芸能人じゃないんだから、そんな不自然なキャラ作りなんかしなくてもだな」[pcms]

[std_mia m se p1 f07 ri][trans_c cross time=300]

*472|
[fc]
[vo_mia s="mia_0054"]
[【ミア】]
「柏山、柏山、って、そんな他人行儀に呼ばないでせんせー。ちゃんと心を込めて、ミアって呼んで？」[pcms]


[std_aka m se p2 f05 ce][trans_c cross time=0]

*473|
[fc]
[vo_aka s="akane_0051"]
[【茜】]
「そ、それなら、あたしも茜でいいよ、先生？」[pcms]

[std_aoi m se p1 f01 le][trans_c cross time=300]

*474|
[fc]
[vo_aoi s="aoi_0048"]
[【葵】]
「私も葵でかまいません。それに……先生は命の恩人ですし」[pcms]

[chara_int_all]
[std_aoi m se p1 f01 le]
[std_aka m se p2 f01 ce]
[std_mia m se p1 f01 ri][trans_c cross time=300]

*475|
[fc]
[【主人公】]
「まあ……お前らがそれでいいなら、下の名前で茜、葵、ミアと呼ばせてもらうことにするが」[pcms]

*476|
[fc]
柏山はともかく、緋神と氷上は読みが同じだからめんどうくさくなくていいな。[pcms]

[std_mia m se p1 f01 ri][trans_c cross time=300]

*477|
[fc]
[vo_mia s="mia_0055"]
[【ミア】]
「そういえばさー、せんせーって、顔もスタイルもまあまあだし？　それなりに頼りがいありそうなのに、なんで童貞なのー？」[pcms]


[std_aoi m se p1 f05 ho le][trans_c cross time=300]

*478|
[fc]
[vo_aoi s="aoi_0049"]
[【葵】]
「ミアさん……！」[pcms]

;//ここの葵、驚き、あわてつつ、嗜めるように、半ば絶句といった感じ。

[std_aka m se p2 f08 ce][trans_c cross time=300]

*479|
[fc]
[vo_aka s="akane_0052"]
[【茜】]
「葵ちゃん、ミアちゃん、童貞ってなに？　あたし意味わかんないんだけど……病気かなにか？」[pcms]

[std_mia m se p2 f01 ri][trans_c cross time=300]

*480|
[fc]
[vo_mia s="mia_0056"]
[【ミア】]
「ふっふっふー、では、わたしが茜に特別に教えてあげちゃおう♪」[pcms]

[std_aoi m se p1 f02 le][trans_c cross time=300]

*481|
[fc]
[vo_aoi s="aoi_0050"]
[【葵】]
「だめです！　ミアさんはいつも不健全なことばっかり茜ちゃんに教えたがるんだから……それなら、私が……ちゃんと……」[pcms]

;//ここの葵、だめです！は強めでそこから先は徐々に恥ずかしさでトーンダウンする感じで

[std_aka m se p2 f03 ce][trans_c cross time=300]

*482|
[fc]
[vo_aka s="akane_0053"]
[【茜】]
「？」[pcms]

[chara_int_all]
[std_aoi m se p1 f06 index=1 lc]
[std_aka m se p2 f03 ce]
[std_mia m se p1 f01 index=2 rc][trans_c cross time=300]

*483|
[fc]
葵とミアは茜にゴニョゴニョと耳打ちする。[pcms]

[chara_int_all]
[std_aka l se p2 f08 ce][trans_c cross time=300]

*484|
[fc]
[vo_aka s="akane_0054"]
[【茜】]
「うん……うん……え……えっ？　えぇーーー！？」[pcms]

;//演技としては最初おとなしく聞いていて途中から驚きが隠せない様子でおねがいします。

[std_aka l se p2 f03 ho ce][trans_c cross time=300]

*485|
[fc]
どうやら茜は幼年期の純真さを喪失してしまったらしい。[nor]
耳まで顔を真っ赤にして恥ずかしそうだ。[pcms]

[chara_int_all]
[std_aoi m se p1 f01 le]
[std_aka m se p2 f01 ce]
[std_mia m se p1 f01 ri][trans_c cross time=300]


*486|
[fc]
[【主人公】]
「おしゃべりはそこまでだ。巻き込まれた当事者として、説明を求めるぞ」[pcms]

[std_mia m se p2 f02 ri][trans_c cross time=300]

*487|
[fc]
[vo_mia s="mia_0057"]
[【ミア】]
「えー？　せんせーナマイキー。童貞のくせにー」[pcms]

*488|
[fc]
[【主人公】]
「勘違いするなよ。さっきのあれは時間稼ぎのために言ったデタラメだ」[pcms]

[std_mia m se p2 f11 ri][trans_c cross time=300]

*489|
[fc]
[vo_mia s="mia_0058"]
[【ミア】]
「あやしいなー？　強引にしようとしたらフラれたってとこがみょ～にリアルっぽいし」[pcms]

[std_aoi m se p1 f07 ho le][trans_c cross time=300]

*490|
[fc]
[vo_aoi s="aoi_0051"]
[【葵】]
「え、ええと……そ…そうかしら…？」[pcms]

[std_aka m se p1 f02 ho ce][trans_c cross time=300]

*491|
[fc]
[vo_aka s="akane_0055"]
[【茜】]
「い、いいじゃない童貞で！　だって、そういうことは、本当に好きになった人としか、しちゃいけないことだよね？」[pcms]

*492|
[fc]
茜はいい子だな……もしも家庭を持つようなことがあったら、娘はそんな風に考える子に育って欲しい。[pcms]

[std_mia m se p1 f01 ri][trans_c cross time=300]

*493|
[fc]
[vo_mia s="mia_0059"]
[【ミア】]
「とりあえず、せんせーの童貞疑惑は置いておくとして」[pcms]

*494|
[fc]
[【主人公】]
「疑惑じゃない！　言いがかりだ！」[pcms]

[std_aka m se p2 f05 ce][trans_c cross time=300]

*495|
[fc]
[vo_aka s="akane_0056"]
[【茜】]
「えっ？　じゃあ先生は童貞じゃないの？　好きでもない人と、結婚もしてない人と、簡単にできちゃうの？」[pcms]

*496|
[fc]
茜のまっすぐな視線と言葉が俺の心に突き刺さる。[pcms]

*497|
[fc]
[【主人公】]
「……頼むから先生のプライバシーにはこれ以上、触れないでくれ」[pcms]

[std_aoi m se p1 f08 le][trans_c cross time=300]

*498|
[fc]
[vo_aoi s="aoi_0052"]
[【葵】]
「茜ちゃん……その……ちょっと落ち着きましょう？」[pcms]

[std_aka m se p2 f03 ce][trans_c cross time=300]

*499|
[fc]
[vo_aka s="akane_0057"]
[【茜】]
「あ、うん……ごめんね、先生？」[pcms]

*500|
[fc]
[【主人公】]
「いや、いいんだ。茜には悪意がないのは理解したから……はは」[pcms]

[chara_int_all][trans_c cross time=300]

*501|
[fc]
少々、顔面の表情筋がこわばっているような気もしたが、俺は努めて笑顔を心がけ、話題を変えた。[pcms]

*502|
[fc]
[【主人公】]
「うおっほん、ところで……できれば詳しい事情が聞きたいんだが――」[pcms]

*503|
[fc]
さっきの化け物はなんなのか。なんで彼女たちが戦っているのか、知りたいことは山ほどある。[pcms]

[chara_int_all]
[std_aoi m se p1 f08 le]
[std_aka m se p2 f03 ce]
[std_mia m se p1 f11 ri][trans_c cross time=300]

*504|
[fc]
[vo_mia s="mia_0060"]
[【ミア】]
「茜、葵、これってたぶん、長々とお説教コースになりそうだよ。逃げちゃお？」[pcms]

;[std_aka m se p1 f03 ce][trans_c cross time=300]

*505|
[fc]
[vo_aka s="akane_0058"]
[【茜】]
「え……でも先生は真剣にあたしたちのこと考えてくれてる気がするし……」[pcms]

[std_mia m se p1 f03 ri][trans_c cross time=300]

*506|
[fc]
[vo_mia s="mia_0061"]
[【ミア】]
「初めての冥魔との戦いで、せんせーもエキサイトしちゃってるから、長引きそうだと思うなー」[pcms]

[std_aoi m se p1 f01 le][trans_c cross time=300]

*507|
[fc]
[vo_aoi s="aoi_0053"]
[【葵】]
「そうですね……今夜はもう帰って、身体を休めることにしましょう？　ね？　茜ちゃん」[pcms]

[std_aka m se p2 f01 ce][trans_c cross time=300]

*508|
[fc]
[vo_aka s="akane_0059"]
[【茜】]
「う、うん……みんながそう言うなら」[pcms]

[chara_int_all]
[std_mia l se p1 f04 ce][trans_c cross time=300]

*509|
[fc]
[vo_mia s="mia_0062"]
[【ミア】]
「じゃあ、せんせー、くわしいお話はまた今度！」[pcms]

*510|
[fc]
[【主人公】]
「おい？」[pcms]

[std_mia l se p1 f01 ce][trans_c cross time=300]

*511|
[fc]
[vo_mia s="mia_0063"]
[【ミア】]
「念のため言っとくけど、わたしたちと冥魔の戦いは秘密だから、内緒にしてよね！」[pcms]

;//ミア、強気で

[std_aoi l se p1 f01 ce][trans_c cross time=300]

*512|
[fc]
[vo_aoi s="aoi_0054"]
[【葵】]
「お願いします」[pcms]

;//葵、丁寧な口調で。

[std_aka l se p2 f11 ce][trans_c cross time=300]

*513|
[fc]
[vo_aka s="akane_0060"]
[【茜】]
「先生、お願い？」[pcms]

;//茜、懇願するように

*514|
[fc]
[【主人公】]
「お、おう？」[pcms]

[chara_int_all]
[std_aoi m se p1 f11 le]
[std_aka m se p2 f11 ce]
[std_mia m se p1 f11 ri][trans_c cross time=300]


*515|
[fc]
真剣な目で見つめる茜の表情に、俺はつい首を縦に振っていた。[nor]
そんな真っ直ぐな目で見られてしまっては仕方ない。[pcms]

*516|
[fc]
[【主人公】]
「じゃあ、せめて携帯番号を教えてくれないか。今後は何かと連絡を取る必要がありそうだからな」[pcms]

*517|
[fc]
そうだな……。事情を聞くチャンスはまだこれからいくらでもあるだろう。[pcms]

[std_mia m se p1 f01 ri][trans_c cross time=300]

*518|
[fc]
[vo_mia s="mia_0064"]
[【ミア】]
「せんせーとかぁ。いいよ。せんせーイケメンだし。特別に許可してあげる♪」[pcms]

[std_aka m se p1 f04 ce][trans_c cross time=300]

*519|
[fc]
[vo_aka s="akane_0061"]
[【茜】]
「えへへ、先生の電話番号とメアド、ゲットしちゃった！」[pcms]

[std_aoi m se p1 f01 le][trans_c cross time=300]

*520|
[fc]
[vo_aoi s="aoi_0055"]
[【葵】]
「茜ちゃん、うれしそうね？　じゃあその……私も……」[pcms]

*521|
[fc]
と、教え子たちは素直に応じてくれた。[pcms]


;//背景：学園正門・夜消灯
[bg storage="bg002d"][trans_c cross time=1000]

;//演出：波紋
;//ＳＥ：水滴が水面に落ちる音
[HAMON storage="bg002d"]

*522|
[fc]
[【主人公】]
「あ……」[pcms]

*523|
[fc]
教職員用昇降口から中庭に出た時にも感じたあれが、再び俺の全身を通り過ぎていく。[pcms]

[std_mia m se p2 f01 ce][trans_c cross time=300]

*524|
[fc]
[vo_mia s="mia_0065"]
[【ミア】]
「ほいっと。これで結界は解除、と」[pcms]

*525|
[fc]
おそらくはこれが結界の内と外を出入りする際の独特の感覚なのだろう。[pcms]

*526|
[fc]
結界を解いたということで、それを体験できたわけだ。[pcms]

[chara_int_all]
[std_aoi m se p1 f01 le]
[std_aka m se p2 f01 ce]
[std_mia m se p2 f01 ri][trans_c cross time=300]


*527|
[fc]
[vo_aoi s="aoi_0056"]
[【葵】]
「それでは先生、今夜はこれで失礼します」[pcms]

[std_mia m se p2 f04 ri][trans_c cross time=300]

*528|
[fc]
[vo_mia s="mia_0066"]
[【ミア】]
「しーゆーあげいんー♪」[pcms]

[std_aka m se p2 f04 ce][trans_c cross time=300]

*529|
[fc]
[vo_aka s="akane_0062"]
[【茜】]
「おやすみなさい、先生！」[pcms]

;//立ち絵消す
;//ＳＥ：走り去っていく足音
[se buf=0 storage="SE0183_3"]
[chara_int_all][trans_c cross time=300]


*530|
[fc]
[【主人公】]
「お……おい？」[pcms]

*531|
[fc]
現実空間に戻る感覚につい気を取られたその隙を衝かれ、教え子たちは、逃げるかのように走り去ってしまっていた。[pcms]

;//→arcana013　へ
[ANTEN blk]
[jump storage="arcana013.ks" target=*TOP]

