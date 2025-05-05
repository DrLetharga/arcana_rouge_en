;//arcana108
*TOP
[eval exp="f.l_s108 = 1"][name_allreset]

*8749|
[fc]
[【主人公】]
「いや、俺はやっぱり、彼女達のサポートに回るのが性に合っているよ」[pcms]

*8750|
[fc]
今までそうしてきたように、彼女達の想いや願いに寄り添っていきたい。[pcms]

*8751|
[fc]
俺は願いを込め、彼女達に声を張り上げた。[pcms]

*8752|
[fc]
[【主人公】]
「みんな、俺の力を使ってくれ！　今度こそミズチを倒すんだ！」[pcms]

[chara_int_all]
[std_mia m mad p2 f04 ce][trans_c cross time=300]

*8753|
[fc]
[vo_mia s="mia_0749"]
[【ミア】 name=ブラン]
「先生……うんっ！　お願い、力を貸して！」[pcms]

*8754|
[fc]
最初にミアが俺の元に戻ってきて手を握る。[pcms]

*8755|
[fc]
そして冥と葵が続いて戻ってきて、その手を重ねた。[pcms]

[chara_int_all]
[std_mia m mad p2 f04 le]
[std_aoi m mad p1 f04 ce]
[std_mei m madw p1 f01 ri][trans_c cross time=300]

*8756|
[fc]
[vo_mei s="mei_0833"]
[【冥】 name=ノワール]
「お兄さん、頼むわよ！」[pcms]

*8757|
[fc]
[vo_aoi s="aoi_0702"]
[【葵】 name=ヴィオレ]
「先生、お願いします！」[pcms]

[chara_int_all]
[std_miz m ce o2][trans_c cross time=300]

*8758|
[fc]
[【ミズチ】]
「ふん、そうはいくか！」[pcms]

[se buf=0 storage="seD022"]

*8759|
[fc]
後退しようとした茜の身体に触手が巻き付き、彼女の身体を持ち上げる。[pcms]

[chara_int_all]
;mm んー触手のパーツがないからなぁ　キャラだけ浮いてるのはちょっと
;[std_aka s mad p2 f12 ce y=-170][trans_c cross time=300]
[std_aka l mad p2 f12 ce][trans_c cross time=300]
[quake_chara ch=aka vmax=20 hmax=20 time=20 accel=1 count=4 wait=false]
*8760|
[fc]
[vo_aka s="akane_0637"]
[【茜】 name=ルージュ]
「しまっ……うぁぁぁぁぁぁぁっ！」[pcms]

*8761|
[fc]
身体を締め上げられ、苦悶の声を上げる茜。[pcms]

*8762|
[fc]
[【主人公】]
「くそっ……みんな、茜を助けてやってくれ！」[pcms]

[stop_quake_chara ch=aka]
[chara_int_all]
[std_mia m mad p2 f06 le]
[std_aoi m mad p1 f06 ce]
[std_mei m madw p1 f06 ri][trans_c cross time=300]


[se buf=0 storage="SE3603"]
[魔法 白 smag=10 dmag=0 time=1000 終点y=450]
[pimage storage="ch02_m_base_d0_p1wht" layer="&f.layer_ch02" page=back dx=0 dy=0 visible=true]
[trans_c bt time=300]
[白フラ]
[std_aoi m ma p1 f06 ce][trans_c bt time=500]

[se buf=0 storage="SE3603"]
[魔法 白 smag=10 dmag=0 time=1000 終点x=250 終点y=450]

[pimage storage="ch03_m_base_d0_p2wht" layer="&f.layer_ch03" page=back dx=0 dy=0 visible=true]
[trans_c bt time=300]
[白フラ]
[std_mia m ma p2 f06 le][trans_c bt time=500]

[se buf=0 storage="SE3603"]
[魔法 白 smag=10 dmag=0 time=1000 終点x=1050 終点y=450]
[pimage storage="ch04_m_base_i0_p1wht" layer="&f.layer_ch04" page=back dx=0 dy=0 visible=true]
[trans_c bt time=300]
[白フラ]
[std_mei m maw p1 f06 ri][trans_c bt time=500]

;mm あれここで服直さないといけないかな



*8763|
[fc]
三人に意識を集中し、ありったけの魔法力を流し込む。[pcms]

*8764|
[fc]
こうなったら魔力酔いなんて考えていられない。[pcms]

;レガート佐藤 魔法 魔法力を送る？主人公の支援能力

[std_mia m ma p2 f02 le][trans_c cross time=300]

*8765|
[fc]
[vo_mia s="mia_0750"]
[【ミア】 name=ブラン]
「来た来たっ！　これなら行ける！」[pcms]

[chara_int_all]
[std_mia m ma p2 f02 ce][trans_c cross time=300]

*8766|
[fc]
ミアが先に飛びだし、茜を捕らえている触手にまっすぐ走り出す。[pcms]

*8767|
[fc]
ミアの動きに反応して触手が引き上げようとするものの、それより速くミアの手刀が閃いた。[pcms]

[std_mia m ma p2 f11 ce][trans_c cross time=300]

*8768|
[fc]
[vo_mia s="mia_0751"]
[【ミア】 name=ブラン]
「遅い！　[技_ラミ・ドゥ・リュミエール]！」[pcms]

[movie_Magic_リュミエール]

;//ＳＥ：斬撃音
[se buf=1 storage="SE1065"]

[top wht time=30]
[bg storage="bg029a"]
[std_mia m ma p2 f11 ce][trans_c cross time=300]

*8769|
[fc]
[【ミズチ】]
「なんじゃと！？　冥王たるワシの触手が！」[pcms]

*8770|
[fc]
ミズチは驚きつつも、別の触手を伸ばして茜を捕らえようとする。[pcms]

*8771|
[fc]
だが、次に反応した葵が茜の前に立ちふさがった。[pcms]

[chara_int_all]
[std_aoi m ma p3 f11 rc x=-80]
[std_aka m mad p2 f11 ce][trans_c cross time=300]

*8772|
[fc]
[vo_aoi s="aoi_0703"]
[【葵】 name=ヴィオレ]
「茜ちゃんには触れさせない！　[技_アメシスト・ブークリエ]！」[pcms]

[movie_Magic_ブークリエ]

;レガート佐藤 魔法 盾
;//ＳＥ：弾く音
[se buf=0 storage="SE1280"]
[白フラ]

*8773|
[fc]
[【ミズチ】]
「ちぃっ！　盾も強化されておるのか！」[pcms]

*8774|
[fc]
葵に向かって次々と触手が盾を貫こうとするものの、固い音を立てて弾かれ微動だにしない。[pcms]

[chara_int_all]
[std_mei m maw p2 f02 ce magan][trans_c cross time=300]

*8775|
[fc]
[vo_mei s="mei_0834"]
[【冥】 name=ノワール]
「ミズチ、いい加減しつこいわよ！　[技_絶対断絶弾劾迷宮]！」[pcms]
;//（ぜったいだんぜつだんがいめいきゅう）と読む。

[movie_Magic_絶対断絶弾劾迷宮]


[se buf=0 storage="SE1280"]
[img_c storage="xig03_cut003_03" layer=12 x=0 y=0][trans_c ruf_tb time=200]
[chara_int layer=12][trans_c ruf_tb time=200]
[quake_bg vmax=15 hmax=15 time=20 accel=1 count=4 wait=false]

*8776|
[fc]
冥が重力を操り、ミズチの身体が地面にめり込む。[pcms]

*8777|
[fc]
触手も宙に浮いていられなくなり、地面に叩きつけられていく。[pcms]

*8778|
[fc]
[【ミズチ】]
「ぐぉぉぉぉぉっ！　この重力、以前の何倍にも力が増しておるのか……！」[pcms]

[stop_quake_bg]

[std_mei m maw p2 f06 ce magan][trans_c cross time=300]

*8779|
[fc]
[vo_mei s="mei_0835"]
[【冥】 name=ノワール]
「ほら、早くお兄さんのところに行きなさいよ！」[pcms]

[chara_int_all]
[std_aka m mad p2 f01 ce][trans_c cross time=300]

*8780|
[fc]
[vo_aka s="akane_0638"]
[【茜】 name=ルージュ]
「うんっ！　先生、お待たせ！」[pcms]

[chara_int_all]
[std_aka m mad p2 f01 ce][trans_c cross time=300]


[se buf=0 storage="SE3603"]
[魔法 白 smag=10 dmag=0 time=1000]
[pimage storage="ch01_m_base_d0_p2wht" layer="&f.layer_ch01" page=back dx=0 dy=0 visible=true]
[trans_c bt time=1000]

*8781|
[fc]
痛みに眉をひそめながらも必死に走ってきた茜を受け止め、彼女に魔法力を注ぎ込んでいく。[pcms]

[std_aka m ma p1 f04 ce][trans_c bt time=1000]


;レガート佐藤 魔法 魔法力を送る？主人公の支援能力

[chara_int_all]
[std_aka l ma p1 f04 ce][trans_c cross time=300]

*8782|
[fc]
[vo_aka s="akane_0639"]
[【茜】 name=ルージュ]
「すごい……いつも以上に温かくて、優しい力が溢れてくる」[pcms]

*8783|
[fc]
茜の身体が淡く輝き始め、力が満ちあふれていくのを感じる。[pcms]

[fadeoutbgm time=500]

*8784|
[fc]
それに呼応してか、葵達も淡い光を放ち始めた。[pcms]

;mm 全員光るのはちょっと難しいかなぁ

;レガート佐藤　この先、四方から囲んで戦うけど絵的に個別切り替え続けるのか4人並べるかどっちがいいのか
[bgm001]

[chara_int_all]
[std_aoi m ma p2 f11 le]
[std_aka m ma p1 f11 lc x=80]
[std_mia m ma p2 f11 rc x=-80 index=1]
[std_mei m maw p1 f11 ri magan][trans_c cross time=300]

*8785|
[fc]
[vo_aoi s="aoi_0704"]
[【葵】 name=ヴィオレ]
「これは……何かが頭の中に流れ込んでくる」[pcms]

*8786|
[fc]
[vo_mia s="mia_0752"]
[【ミア】 name=ブラン]
「これってもしかして……呪文？」[pcms]

*8787|
[fc]
[vo_mei s="mei_0836"]
[【冥】 name=ノワール]
「これを……唱えればいいわけね！」[pcms]

*8788|
[fc]
四人はそれぞれミズチを四方から囲み、両手を前に突き出して構える。[pcms]

[std_aka m ma p1 f02 lc x=80][trans_c cross time=300]

*8789|
[fc]
[vo_aka s="akane_0640"]
[【茜】 name=ルージュ]
「万物はここに始まり、ここに終わる。其は勇にして炎を宿す者！」[pcms]

[std_aoi m ma p3 f02 le][trans_c cross time=300]

*8790|
[fc]
[vo_aoi s="aoi_0705"]
[【葵】 name=ヴィオレ]
「無にして有、虚にして実、剣にして盾でありし者！」[pcms]

*8791|
[fc]
[【ミズチ】]
「ま、まさかその呪文は……」[pcms]

*8792|
[fc]
重力に囚われたまま、ミズチが驚愕に声を震わせる。[pcms]

[std_mia m ma p2 f02 rc x=-80 index=1][trans_c cross time=300]

*8793|
[fc]
[vo_mia s="mia_0753"]
[【ミア】 name=ブラン]
「満たされし刻を迎え、達成する喜びに凱歌をあげよ！」[pcms]

[std_mei m maw p1 f02 ri magan][trans_c cross time=300]

*8794|
[fc]
[vo_mei s="mei_0837"]
[【冥】 name=ノワール]
「良き者にして悪しき者がすべての幻実をここに断つ！」[pcms]

*8795|
[fc]
[【ミズチ】]
「何故じゃ！　何故オマエ達がその呪文を知っておる！　その呪文は王の許しを得て初めて使えるはず……！」[pcms]

*8796|
[fc]
四人の足元に魔法陣のようなものが描かれ、さらにミズチを中心とした巨大な魔法陣を描き上げる。[pcms]

*8797|
[fc]
それぞれの魔法陣の光が次第に強くなっていき、共鳴していく。[pcms]

*8798|
[fc]
[【主人公】]
「ミズチ、これで最後だ。彼女達の力の前にひれ伏せ！」[pcms]

	;//以下の４つの台詞は収録用。スクリプト作成時に削除して下さい。

;	*8799|
;	[fc]
;	[vo_aka s="akane_0641"]
;	[【茜】 name=ルージュ]
;	「原初の王の名において、秘められし扉を開け！　リベレイションオブグランドアルカナ！」[pcms]
;
;	*8800|
;	[fc]
;	[vo_aoi s="aoi_0706"]
;	[【葵】 name=ヴィオレ]
;	「原初の王の名において、秘められし扉を開け！　リベレイションオブグランドアルカナ！」[pcms]
;
;	*8801|
;	[fc]
;	[vo_mia s="mia_0754"]
;	[【ミア】 name=ブラン]
;	「原初の王の名において、秘められし扉を開け！　リベレイションオブグランドアルカナ！」[pcms]
;
;	*8802|
;	[fc]
;	[vo_mei s="mei_0838"]
;	[【冥】 name=ノワール]
;	「原初の王の名において、秘められし扉を開け！　リベレイションオブグランドアルカナ！」[pcms]
;
;	;//[【全員】]
;	;//「原初の王の名において、秘められし扉を開け！　リベレイションオブグランドアルカナ！」
;
;	;//上記の台詞を合成して下さい。

*8799|
[fc]
;mm バッファは茜ので再生させる。バックログの名前に袋括弧ついたっけか？　ここの名前表記、変身後じゃないかなぁ前後要確認
;レガート佐藤 変身後だけど名前変えると確実に横幅足りない
[vo_aka s="mix_0003"]
;[ns]茜＆葵＆ミア＆冥[nse]
;[ns]ルージュ＆ヴィオレ＆ブラン＆ノワール[nse]
[ns]４人[nse]
「「「「原初の王の名において、秘められし扉を開け！　リベレイションオブグランドアルカナ！」」」」[pcms]


[se buf=0 storage="SE1506"]
[top wht wave00 winoff]
[se buf=1 storage="SE1502"]

*8803|
[fc]
[【ミズチ】]
「ぐぉぉぉぉぉぉぉぉぉぉっ！　あぁぁぁぁぁぁぁぁぁぁっ！」[pcms]

[stopse_fadeout buf=0 time=2000]
[stopse_fadeout buf=1 time=2000]

;//背景：白
;[ANTEN wht bgmon]
[fadeoutbgm time=1000][wb canskip=true]
[wait time=1000]

*8804|
[fc]
ミズチを中心に光の爆発が起き、冥魔の身体を飲み込んでいく。[pcms]

*8805|
[fc]
断末魔と共に光が全てを包み込み、周りが見えなくなった。[pcms]

[stopse buf=0]
[stopse buf=1]

;//背景：冥魔たちのアジト
[bg storage="bg029a"]
[chara_int_all]
[std_aoi m ma p3 f11 le]
[std_aka m ma p1 f11 lc x=80]
[std_mia m ma p2 f11 rc x=-80 index=1]
[std_mei m maw p1 f11 ri magan][trans_c cross time=1000]

*8806|
[fc]
視界が元に戻った時には、ミズチの姿は完全に消えていた。[pcms]

[std_aoi m ma p1 f08 le][trans_c cross time=300]

*8807|
[fc]
[vo_aoi s="aoi_0707"]
[【葵】 name=ヴィオレ]
「私達……勝ったのかな？」[pcms]

[std_mei m maw p1 f06 ri magan][trans_c cross time=300]

*8808|
[fc]
[vo_mei s="mei_0839"]
[【冥】 name=ノワール]
「そうみたいね」[pcms]

[std_mia m ma p2 f09 rc x=-80 index=1][trans_c cross time=300]

*8809|
[fc]
[vo_mia s="mia_0755"]
[【ミア】 name=ブラン]
「やったじゃん！　ついにわたし達やったんだ！」[pcms]

[std_aka m ma p1 f09 lc x=80][trans_c cross time=300]

*8810|
[fc]
[vo_aka s="akane_0642"]
[【茜】 name=ルージュ]
「やったぁ！　みんなありがとう！」[pcms]

[bgm002]

[chara_int_all]
[std_aoi l ma p1 f09 le x=-200]
[std_aka l ma p2 f09 lc x=130]
[std_mia l ma p1 f09 rc x=-100 index=1]
[std_mei l ma p2 f09 ri x=150 magan][trans_c cross time=300]

*8811|
[fc]
四人は全員が抱き合い、喜びを分かち合う。[pcms]

*8812|
[fc]
すぐに俺も巻き込まれてもみくちゃになった。[pcms]

*8813|
[fc]
[vo_aka s="akane_0643"]
[【茜】 name=ルージュ]
「これも先生のおかげだよね。先生、ほんとにありがとう！」[pcms]

*8814|
[fc]
[【主人公】]
「茜達が頑張ったおかげだよ。俺はみんなの手伝いをしただけさ」[pcms]

[std_mia l ma p1 f01 rc x=-100 index=1][trans_c cross time=300]

*8815|
[fc]
[vo_mia s="mia_0756"]
[【ミア】 name=ブラン]
「でもさー。先生は、これで、もうみんなとエッチする大義名分もなくなって、本当の変態エロ教師だね」[pcms]

*8816|
[fc]
[【主人公】]
「あのな……俺は別にそういうことがしたくてお前達に協力してたわけじゃないんだからな？」[pcms]

*8817|
[fc]
苦笑していると、ふと脳裏に声が聞こえてきた。[pcms]

[chara_int_all][trans_c cross time=300]

*8818|
[fc]
[ns]冥王[nse]
（このままエロ変態教師になるのもいいが、せっかくなら冥王の力を受け継いで、存分に使ってみるのもいいんじゃないか？）[pcms]

*8819|
[fc]
頭の中に響く声に、俺は少し考えてから答えを出した。[pcms]

;//選択肢分岐（二択）
;//『冥王の力を受け継ぐ』→		arcana109
;//『変態エロ教師で満足しておく』→	arcana110
;mm 					↑111でしょ？

*SEL11|冥王の力を受け継ぐ／変態エロ教師で満足しておく
[fc]
[sel02 text='冥王の力を受け継ぐ'         storage="arcana109.ks" target=*TOP]
[sel04 text='変態エロ教師で満足しておく' storage="arcana111.ks" target=*TOP end]

