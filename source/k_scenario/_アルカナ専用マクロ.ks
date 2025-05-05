;macro16_MagicBattle


;=============================================================
;
;=============================================================

;イベント、立ち可。
;属性
;初期x    画像中心の初期x座標　デフォでは640
;初期y    画像中心の初期y座標　デフォでは360
;終点x    画像中心の終点x座標　デフォでは640
;終点y    画像中心の終点y座標　デフォでは360
;time
;accel
;smag    初期倍率
;dmag    終点倍率
;srot    初期角度
;drot    初期角度　大きいほどぐるぐる回る
;]

[macro name=msgoff]
	;システムボタン＆ウィンドウ消去
	[sysbt_meswin clear]
[endmacro]


[macro name=魔法]
	
;mm コンフィグ設定用避け
[if exp="sf.efect"]
	[msgoff]

	;回転中心を画像の中心にしているので、座標設定も画像の中心がどこにあるか、になります。

	[eval exp="f.画像中心初期x = mp.初期x" cond="&mp.初期x != void"]
	[eval exp="f.画像中心初期y = mp.初期y" cond="&mp.初期y != void"]
	[eval exp="f.画像中心終点x = mp.終点x" cond="&mp.終点x != void"]
	[eval exp="f.画像中心終点y = mp.終点y" cond="&mp.終点y != void"]

	[eval exp="f.画像中心初期x = 640" cond="&mp.初期x == void"]
	[eval exp="f.画像中心初期y = 360" cond="&mp.初期y == void"]
	[eval exp="f.画像中心終点x = 640" cond="&mp.終点x == void"]
	[eval exp="f.画像中心終点y = 360" cond="&mp.終点y == void"]

	;黒のほうが頻度高いか？
	[eval exp="f.魔法効果 = '光白'" cond="&mp.白 != void"]
	[eval exp="f.魔法効果 = '光黒'" cond="&mp.黒 != void ||( &mp.黒 == void && &mp.白 == void )"]

	;見えなくなるまで縮小
	[affine layer=%layer|12  page=fore storage="&f.魔法効果" time=%time|2000  accel=%accel|1 cx=c cy=c sx="&f.画像中心初期x" sy="&f.画像中心初期y" smag=%smag|1 dmag=%dmag|0  srot=%srot|0  drot=%drot|1040 path='&@"(${&f.画像中心終点x},${&f.画像中心終点y})"']
	[waffine]

	[freeimage layer=%layer|12 page=fore cond="&mp.消さない == void"]
	[freeimage layer=%layer|12 page=back cond="&mp.消さない == void"]
[endif]

[endmacro]


;=============================================================
;
;=============================================================
;イベント貼り込み中のみに使用。立ちでは不可。属性無し
;
[macro name=魔法フラッシュ]
;mm コンフィグ設定用避け
[if exp="sf.efect"]

	[msgoff]

	;黒フラッシュ
	[backlay_c]
	[image storage="effect_black" layer=12 page=back visible=true]
	;＋貼り込み中のイベントをネガポジでレイヤ11に貼り。storageの取得に問題あれば修正。
;	[image storage="&kag.back.layers['9'].Anim_loadParams.storage" layer=11 page=back visible=true left=0 top=0 rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0]
	[image storage="&kag.back.layers['0'].Anim_loadParams.storage" layer=11 page=back visible=true left=0 top=0 rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0]
;;;;	[endtrans_x time=50]
	[trans_c cross time=50]
	;[trans method=crossfade time=1][wt]

	;黒消し
	[backlay_c]
	[layopt layer=12 page=back visible=false]
;;;;	[endtrans_x time=100]
	[trans_c cross time=100]

	[wait time=100]

	;ネガポジのままイベントに戻す（ネガポジ画像を消す）と途中でグレーになってしまうので、もう一度黒フラ
	[backlay_c]
	[image storage="effect_black" layer=12 page=back visible=true]
	;＋貼り込み中のネガポジイベントを消す
	[layopt layer=11 page=back visible=false]
;;;;	[endtrans_x time=50]
	[trans_c cross time=50]

	;黒消し
	[backlay_c]
	[layopt layer=12 page=back visible=false]
;;;;	[endtrans_x time=500]
	[trans_c cross time=500]

	;[trans method=crossfade time=100][wt]
	[freeimage layer=12 page=fore][freeimage layer=12 page=back]
	[freeimage layer=11 page=fore][freeimage layer=11 page=back]
[endif]

[endmacro]

;=============================================================
;移動系演出
;=============================================================
;ちょっと引いてダッシュとか
;
[macro name=dash]
	[if    exp="mp.ch == 'aka' || mp.ch == 'ak' || mp.ch == 'ch01'"][eval exp="f.chnum = '01', f.layer_dashch = f.layer_ch01 , f.pos_dashch_x = f.pos_ch01_x , f.pos_dashch_y = f.pos_ch01_y"]
	[elsif exp="mp.ch == 'aoi' || mp.ch == 'ao' || mp.ch == 'ch02'"][eval exp="f.chnum = '02', f.layer_dashch = f.layer_ch02 , f.pos_dashch_x = f.pos_ch02_x , f.pos_dashch_y = f.pos_ch02_y"]
	[elsif exp="mp.ch == 'mia' || mp.ch == 'mi' || mp.ch == 'ch03'"][eval exp="f.chnum = '03', f.layer_dashch = f.layer_ch03 , f.pos_dashch_x = f.pos_ch03_x , f.pos_dashch_y = f.pos_ch03_y"]
	[elsif exp="mp.ch == 'mei' || mp.ch == 'me' || mp.ch == 'ch04'"][eval exp="f.chnum = '04', f.layer_dashch = f.layer_ch04 , f.pos_dashch_x = f.pos_ch04_x , f.pos_dashch_y = f.pos_ch04_y"]
	[elsif exp="mp.ch == 'syu' || mp.ch == 'sy' || mp.ch == 'ch05'"][eval exp="f.chnum = '05', f.layer_dashch = f.layer_ch05 , f.pos_dashch_x = f.pos_ch05_x , f.pos_dashch_y = f.pos_ch05_y"]
	[elsif exp="mp.ch == 'kak' || mp.ch == 'ka' || mp.ch == 'ch06'"][eval exp="f.chnum = '06', f.layer_dashch = f.layer_ch06 , f.pos_dashch_x = f.pos_ch06_x , f.pos_dashch_y = f.pos_ch06_y"]
	[elsif exp="mp.ch == 'miz' || mp.ch == 'mi' || mp.ch == 'ch07'"][eval exp="f.chnum = '07', f.layer_dashch = f.layer_ch07 , f.pos_dashch_x = f.pos_ch07_x , f.pos_dashch_y = f.pos_ch07_y"]
	[elsif exp="mp.ch == 'syo' || mp.ch == 'sy' || mp.ch == 'ch08'"][eval exp="f.chnum = '08', f.layer_dashch = f.layer_ch08 , f.pos_dashch_x = f.pos_ch08_x , f.pos_dashch_y = f.pos_ch08_y"]
	[elsif exp="mp.ch == 'zaa' || mp.ch == 'za' || mp.ch == 'ch09'"][eval exp="f.chnum = '09', f.layer_dashch = f.layer_ch09 , f.pos_dashch_x = f.pos_ch09_x , f.pos_dashch_y = f.pos_ch09_y"]
	[elsif exp="mp.ch == 'zab' || mp.ch == 'za' || mp.ch == 'ch10'"][eval exp="f.chnum = '10', f.layer_dashch = f.layer_ch10 , f.pos_dashch_x = f.pos_ch10_x , f.pos_dashch_y = f.pos_ch10_y"]
	[elsif exp="mp.ch == 'ai'  || mp.ch == 'ai' || mp.ch == 'ch11'"][eval exp="f.chnum = '11', f.layer_dashch = f.layer_ch11 , f.pos_dashch_x = f.pos_ch11_x , f.pos_dashch_y = f.pos_ch11_y"]
	[else][eval exp="f.layer_dashch = mp.layer"]
	[endif]

	;移動座標定義 addsub的にかけるように元座標にmpを加算する。mpの前のプラスは整数化のためについてるよ
	[eval exp="f.dashch_x = f.pos_dashch_x"]
	[eval exp="f.dashch_y = f.pos_dashch_y"]
;	;mpが書いてなければそのままの座標を入れる
;	[eval exp="f.dashch_x = f.pos_dashch_x" cond="mp.x == void"]
;	[eval exp="f.dashch_y = f.pos_dashch_y" cond="mp.y == void"]

;		;[stmdash layer="f.layer_dash"  page=fore  time=200  accel=5 cx=0 cy=0 path=(,,1)(,,1) opacity=255 blur=true blur_x=50 blur_y=0  cond=sf.efect]
;		[stmove layer="&f.layer_dashch"  page=fore  time=%time|0  accel=%accel|1 cx=0 cy=0 path='&@"(${&f.dashch_x},${&f.dashch_y},1)"' opacity=255 blur=true blur_x=50 blur_y=0  cond=sf.efect]
;		[wstmove]
[blur layer="&f.layer_dashch" page=fore blur_x=50 blur_y=0]
;これキャラに直接ブラーかけるだけでいいんじゃね

		[move_chara *]

[endmacro]

;=============================================================
;変身　ムービーだけどこのファイルにまとめる
;=============================================================

;ムービーファイル名
;変身 ケツの2文字は変身前の服装
;hensin_aka_ha
;hensin_aka_se
;hensin_aoi_ha
;hensin_aoi_se
;hensin_mia_ha
;hensin_mia_se
;hensin_mei_ha
;hensin_mei_se

;変身解除 ケツの2文字は変身前の服装
;hensin_off_aka
;hensin_off_aoi
;hensin_off_mia
;hensin_off_mei

;いつものエンドムービー用だとスキップ停止とかしちゃうから別に元マクロつくる
[macro name=movie_hensin0]
	;システムボタン＆ウィンドウ消去
	[sysbt_meswin clear]
;	[stopbgm]
	[stopse_all cond="mp.stopse != void"]
	;スキップしてたらとんじゃうからスキップの解除
;	[cancelskip]
	; ビデオの属性を設定
	[video visible=true left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" mode=overlay loop=false]
	[openvideo storage=%storage]
	; ビデオの再生
	[playvideo]
	;ムービーの音量変更
	[if exp="sf.bgmplay == 1"]
		;[video volume="&kag.bgm.currentBuffer.volume2"]
		;[video volume=60]
		;これでbgmと同じになるかな？
		;これ、コンフィグ画面に一度も入らないでムービーになったらsf.dummy_bgmoptがvoidのままで音量0だわ……
		;voidならコンフィグのと同じ処理をしておく
		[eval exp="sf.dummy_bgmopt = kag.bgm.currentBuffer.volume2" cond="sf.dummy_bgmopt == void"]
		[video volume="&(sf.dummy_bgmopt/1000)"]
	[elsif exp="sf.bgmplay == 0"]
		[video volume=0]
	[endif]
	;スキップ可能
	[wv canskip=true]
	;mode使ったときはちゃんと停止命令ないと次のmovieが再生できないみたい
	[stopvideo]

[endmacro]





;変身
;どの服装から変身かは、立ちマクロ内で定義した服装を自動で打ち分けるので、キャラだけmpで指定
[macro name=movie_hensin]

	;立ち全消ししといたほうがいいか
	[chara_int_all][trans_c cross time=0]

	[if    exp="mp.aka && f.ch01_cos == 'ha'"][movie_hensin0 * stopse storage="hensin_aka_ha.mpg"][eval exp="sf.movie14= 1"]
	[elsif exp="mp.aka && f.ch01_cos == 'se'"][movie_hensin0 * stopse storage="hensin_aka_se.mpg"][eval exp="sf.movie15= 1"]
	[elsif exp="mp.aoi && f.ch02_cos == 'ha'"][movie_hensin0 * stopse storage="hensin_aoi_ha.mpg"][eval exp="sf.movie16= 1"]
	[elsif exp="mp.aoi && f.ch02_cos == 'se'"][movie_hensin0 * stopse storage="hensin_aoi_se.mpg"][eval exp="sf.movie17= 1"]
	[elsif exp="mp.mia && f.ch03_cos == 'ha'"][movie_hensin0 * stopse storage="hensin_mia_ha.mpg"][eval exp="sf.movie18= 1"]
	[elsif exp="mp.mia && f.ch03_cos == 'se'"][movie_hensin0 * stopse storage="hensin_mia_se.mpg"][eval exp="sf.movie19= 1"]
	;冥のムービーファイル名、私服だけど他あわせでse表記なので注意
	[elsif exp="mp.mei && f.ch04_cos == 'ha'"][movie_hensin0 * stopse storage="hensin_mei_ha.mpg"][eval exp="sf.movie20= 1"]
	[elsif exp="mp.mei && f.ch04_cos == 'ja'"][movie_hensin0 * stopse storage="hensin_mei_se.mpg"][eval exp="sf.movie21= 1"]
	[endif]
[endmacro]


;変身解除
[macro name=movie_hensin_off]
	;立ち全消ししといたほうがいいか
	[chara_int_all][trans_c cross time=0]
	[if    exp="mp.aka"][movie_hensin0 * storage="hensin_off_aka.mpg"][eval exp="sf.movie22= 1"]
	[elsif exp="mp.aoi"][movie_hensin0 * storage="hensin_off_aoi.mpg"][eval exp="sf.movie23= 1"]
	[elsif exp="mp.mia"][movie_hensin0 * storage="hensin_off_mia.mpg"][eval exp="sf.movie24= 1"]
	[elsif exp="mp.mei"][movie_hensin0 * storage="hensin_off_mei.mpg"][eval exp="sf.movie25= 1"]
	[elsif exp="mp.trio"][movie_hensin0 * storage="hensin_off_3character.mpg"][eval exp="sf.movie26= 1"]
	[endif]
[endmacro]

;=============================================================
;魔法攻撃　ムービーだけどこのファイルにまとめる
;=============================================================
;mm ムービー無いから代用
[macro name=movie_Magic_エリュプシオン]		[eval exp="sf.movie01= 1"][se buf=0 storage="seB057"][movie_hensin0 * storage="バレ・ブルロント.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_エクスプロージオン]	[eval exp="sf.movie02= 1"][movie_hensin0 * storage="エクスプロージオン.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_バレ・ブルロント]	[eval exp="sf.movie03= 1"][se buf=0 storage="seJ008"][movie_hensin0 * storage="バレ・ブルロント.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_イクラティ]		[eval exp="sf.movie04= 1"][movie_hensin0 * storage="イクラティ.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_ブークリエ]		[eval exp="sf.movie05= 1"][movie_hensin0 * storage="ブークリエ.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_ジュジュモン]		[eval exp="sf.movie06= 1"][movie_hensin0 * storage="ジュジュモン.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_ソレイユ]		[eval exp="sf.movie07= 1"][movie_hensin0 * storage="ソレイユ.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_バリアント]		[eval exp="sf.movie08= 1"][movie_hensin0 * storage="バリアント.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_フレーム・サクリ]	[eval exp="sf.movie09= 1"][movie_hensin0 * storage="フレーム・サクリ.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_リュミエール]		[eval exp="sf.movie10= 1"][movie_hensin0 * storage="リュミエール.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_御霊水底御陵]		[eval exp="sf.movie11= 1"][movie_hensin0 * storage="御霊水底御陵.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_絶対断絶弾劾迷宮]	[eval exp="sf.movie12= 1"][movie_hensin0 * storage="絶対断絶弾劾迷宮.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_滅殺暗晦冥闇撃]		[eval exp="sf.movie13= 1"][movie_hensin0 * storage="滅殺暗晦冥闇撃.mpg"][wait time=300][endmacro]

;=============================================================
;魔法攻撃　ムービーじゃないやつ
;=============================================================

[macro name=Magic_カクエンミズチ]
	[se buf=0 storage=%se]
;	[img_c storage="xig03_cut008_06_2" layer=%layer|10 x=0 y=0]

	[img_c storage=%image layer=%layer|10 x=0 y=0]
	[trans_c wipe  time=300  cond="mp.hit == void"]
	[trans_c wipe_r time=300 cond="mp.hit != void"]

	[chara_int layer=%layer|10]
	[trans_c wipe  time=300  cond="mp.hit == void"]
	[trans_c wipe_r time=300 cond="mp.hit != void"]

[endmacro]



[macro name=Magic_冥魔傀儡陣]
;	[Magic_カクエンミズチ * se="SE1279" image="xig03_cut007_04"]
;システムボタン＆ウィンドウ消去
[sysbt_meswin clear]

	[se buf=0 storage="SE1279"]

	[img_c storage="xig03_cut007_04" layer=%layer|10 x=0 y=0]
	[trans_c wipe  time=300  cond="mp.hit == void"]
	[trans_c wipe_r time=300 cond="mp.hit != void"]

	[chara_int layer=%layer|10]
	[trans_c wipe  time=300  cond="mp.hit == void"]
	[trans_c wipe_r time=300 cond="mp.hit != void"]


[endmacro]

[macro name=Magic_冥魔豪爆斧]
	;SE候補　SE1272
;	[Magic_カクエンミズチ * se="SE1509" image="xig03_cut001_03"]


	;システムボタン＆ウィンドウ消去
	[sysbt_meswin clear]

	[se buf=0 storage="SE1509"]
;	[white_toplayer][trans_c bang time=300 vague=30]
;	[chara_int_top]
	[img_c storage="xig03_cut001_03" layer=%layer|10 x=0 y=0]
	[trans_c bang  time=300 vague=50]
	[wait time=300]
	[chara_int layer=%layer|10]
	[trans_c bang  time=300 vague=50]

	[quake_bg vmax=0 hmax=40 time=20 accel=1 count=1 wait=true cond="mp.nohit == void"]
	[quake_bg vmax=0 hmax=20 time=20 accel=1 count=1 wait=true cond="mp.nohit == void"]
	[quake_bg vmax=0 hmax=10 time=20 accel=1 count=1 wait=true cond="mp.nohit == void"]

[endmacro]
;=============================================================
;魔法服回復
;=============================================================
;全身見えるように中サイズ固定
[macro name=魔法服回復]
	[se buf=0 storage="SE3603"]
	[白フラ]

	[if    exp="mp.aka_p1"][pimage storage="ch01_m_base_d0_p1wht" layer="&f.layer_ch01" page=back dx=0 dy=0 visible=true]
	[elsif exp="mp.aka_p2"][pimage storage="ch01_m_base_d0_p2wht" layer="&f.layer_ch01" page=back dx=0 dy=0 visible=true]
	[elsif exp="mp.aoi_p1"][pimage storage="ch02_m_base_d0_p1wht" layer="&f.layer_ch02" page=back dx=0 dy=0 visible=true]
	[elsif exp="mp.aoi_p2"][pimage storage="ch02_m_base_d0_p2wht" layer="&f.layer_ch02" page=back dx=0 dy=0 visible=true]
	[elsif exp="mp.aoi_p3"][pimage storage="ch02_m_base_d0_p2wht" layer="&f.layer_ch02" page=back dx=0 dy=0 visible=true]
	[elsif exp="mp.mia_p1"][pimage storage="ch03_m_base_d0_p1wht" layer="&f.layer_ch03" page=back dx=0 dy=0 visible=true]
	[elsif exp="mp.mia_p2"][pimage storage="ch03_m_base_d0_p2wht" layer="&f.layer_ch03" page=back dx=0 dy=0 visible=true]
	[endif]
	[trans_c bt time=1000]
	;修復後はスクリプト上に貼る
	;[std_aka m ma p1 f05 ce][trans_c bt time=1000]
[endmacro]






;=============================================================
;波紋演出
;=============================================================

[macro name=HAMON]

;	[eval exp="f.画像中心終点x = 640"]
;	[eval exp="f.画像中心終点y = 360"]

	;//ＳＥ：水滴が水面に落ちる音
	[se buf=0 storage="seD027"]
;	[bg storage="effect_white"]
;	[bg storage="effect_black"]
;	[trans_c wave3 vague=10 time=500]


	[bg storage=%storage blur_x=30 blur_y=30]
	;[extrans_c wave]
	[trans_c wave3 vague=10 time=1000]
;	[trans_c bang vague=10]


;[layopt layer=1  page=fore opacity=200 index=2000]
;;背景ブラー
;[blur layer=1 page=fore blur_x=30 blur_y=30]
;[affine layer=%layer|1  page=fore storage=%storage time=%time|300  accel=%accel|1 cx=c cy=c sx="&f.画像中心初期x" sy="&f.画像中心初期y" smag=%smag|1 dmag=%dmag|1.1  srot=%srot|0  drot=%drot|0 path='&@"(${&f.画像中心終点x},${&f.画像中心終点y})"']
;[waffine]
;[affine layer=%layer|1  page=fore storage=%storage time=%time|300  accel=%accel|-5 cx=c cy=c sx="&f.画像中心初期x" sy="&f.画像中心初期y" smag=%smag|1.1 dmag=%dmag|1  srot=%srot|0  drot=%drot|0 path='&@"(${&f.画像中心終点x},${&f.画像中心終点y})"']
;[waffine]

	[bg storage=%storage]
	;[extrans_c wave]
	[trans_c wave3 vague=10]


[endmacro]

;=============================================================

[return]


