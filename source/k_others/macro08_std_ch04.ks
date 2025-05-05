;===========================================================
;四堂 冥
;===========================================================

;めんどくさいから中央以外は計算で出したいなぁ
;mlが
;leが25％
;lcが30％
;centerが50%
;rcが70％
;riが75％
;mrが
;とかじゃだめ？

;ほほファイル名。全キャラ共通のはず マクロ外に書くのはsfじゃないとだめか。タイトル選ぶときにたぶん変数リセット入ってるから
;

;fにしてch04~5を両タイトルで使い回そうかと思ったけどやっぱり怖いからそのまま

;[eval exp="sf.image_hoho  = '_頬赤'"]
;ファイル名の頭
[eval exp="sf.image_name_ch04  = 'ch04_'"]

[eval exp="sf.ch04_sml_w = 900"]
[eval exp="sf.ch04_sml_h = 960"]
;	[eval exp="sf.ch04_mid_w = 1400"]
;	[eval exp="sf.ch04_mid_h = 1461"]
;	[eval exp="sf.ch04_lag_w = 2102"]
;	[eval exp="sf.ch04_lag_h = 2193"]
[eval exp="sf.ch04_mid_w = 1200"]
[eval exp="sf.ch04_mid_h = 1280"]
[eval exp="sf.ch04_lag_w = 1800"]
[eval exp="sf.ch04_lag_h = 1920"]
[eval exp="sf.ch04_xla_w = 3000"]
[eval exp="sf.ch04_xla_h = 3200"]






;画像の幅
[eval exp="tf.std_w = sf.ch04_sml_w"]
[eval exp="sf.ch04_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 9)"]
[eval exp="sf.ch04_sml_le  = int + ((sf.ch04_sml_ce - tf.std_w)    + 480)"]
[eval exp="sf.ch04_sml_lc  = int + ((sf.ch04_sml_ce - tf.std_w/2)  + 240)"]
[eval exp="sf.ch04_sml_rc  = int + ((sf.ch04_sml_ce + tf.std_w/2)  - 240)"]
[eval exp="sf.ch04_sml_ri  = int + ((sf.ch04_sml_ce + tf.std_w)    - 480)"]
[eval exp="f.add_h_sml_gap = 85"]
[eval exp="sf.ch04_sml_y = sf.ch01_sml_y - f.add_h_sml_gap"]

;[eval exp="sf.ch04_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]-190
;	[eval exp="sf.ch04_sml_ce  = -190"]
;	[eval exp="sf.ch04_sml_le  = int + ((sf.ch04_sml_ce * 3))"]
;	[eval exp="sf.ch04_sml_lc  = int + ((sf.ch04_sml_ce * 2))"]
;	[eval exp="sf.ch04_sml_rc  = int + (sf.ch04_sml_ce + (sf.ch04_sml_ce * 1 *-1))"]
;					;単純に190でもいいんだけど
;	[eval exp="sf.ch04_sml_ri  = int + (sf.ch04_sml_ce + (sf.ch04_sml_ce * 2 *-1))"]
;	;[eval exp="sf.ch04_sml_x = [0, 0, 0, sf.ch04_sml_ce,0,0]"]
;	;[eval exp="sf.ch04_sml_y = -15 - 20"]
;	[eval exp="sf.ch04_sml_y = 130"]

;画像の幅
[eval exp="tf.std_w = sf.ch04_mid_w"]
[eval exp="sf.ch04_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 12)"]
[eval exp="sf.ch04_mid_le  = int + ((sf.ch04_mid_ce - tf.std_w)    + 800)"]
[eval exp="sf.ch04_mid_lc  = int + ((sf.ch04_mid_ce - tf.std_w/2)  + 390)"]
[eval exp="sf.ch04_mid_rc  = int + ((sf.ch04_mid_ce + tf.std_w/2)  - 350)"]
[eval exp="sf.ch04_mid_ri  = int + ((sf.ch04_mid_ce + tf.std_w)    - 780)"]
[eval exp="f.add_h_mid_gap = f.add_h_sml_gap + 25"]
[eval exp="sf.ch04_mid_y = sf.ch01_mid_y - f.add_h_mid_gap"]
;	;[eval exp="sf.ch04_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]
;	[eval exp="sf.ch04_mid_ce  = -190"]
;	[eval exp="sf.ch04_mid_le  = int + ((sf.ch04_mid_ce * 3))"]
;	[eval exp="sf.ch04_mid_lc  = int + ((sf.ch04_mid_ce * 2.2))"]
;	[eval exp="sf.ch04_mid_rc  = int + (sf.ch04_mid_ce + (sf.ch04_mid_ce * 1.2 *-1))"]
;	[eval exp="sf.ch04_mid_ri  = int + (sf.ch04_mid_ce + (sf.ch04_mid_ce * 2 *-1))"]
;	;[eval exp="sf.ch04_mid_x = [0, 0, 0, sf.ch04_mid_中,0,0]"]
;	[eval exp="sf.ch04_mid_y = 100"]

;画像の幅
[eval exp="tf.std_w = sf.ch04_lag_w"]
[eval exp="sf.ch04_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 18)"]
;大はレフト・ライトをレフトセンター・ライトセンターと同じにしておく
[eval exp="sf.ch04_lag_le  = int + ((sf.ch04_lag_ce - tf.std_w/2)  + 600)"]
[eval exp="sf.ch04_lag_lc  = int + ((sf.ch04_lag_ce - tf.std_w/2)  + 600)"]
[eval exp="sf.ch04_lag_rc  = int + ((sf.ch04_lag_ce + tf.std_w/2)  - 600)"]
[eval exp="sf.ch04_lag_ri  = int + ((sf.ch04_lag_ce + tf.std_w/2)  - 600)"]
[eval exp="f.add_h_lag_gap = f.add_h_sml_gap + 80"]
[eval exp="sf.ch04_lag_y = sf.ch01_lag_y - f.add_h_lag_gap"]
;	;[eval exp="sf.ch04_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]
;	[eval exp="sf.ch04_lag_ce  = -190"]
;	;大はレフト・ライトをレフトセンター・ライトセンターと同じにしておく
;	[eval exp="sf.ch04_lag_le  = int + ((sf.ch04_lag_ce * 3) + 70)"]
;	[eval exp="sf.ch04_lag_lc  = int + ((sf.ch04_lag_ce * 3) + 70)"]
;	[eval exp="sf.ch04_lag_rc  = int + (sf.ch04_lag_ce + (sf.ch04_lag_ce * 2 *-1) - 70)"]
;	[eval exp="sf.ch04_lag_ri  = int + (sf.ch04_lag_ce + (sf.ch04_lag_ce * 2 *-1) - 70)"]
;	;[eval exp="sf.ch04_u_x = [0, 0, 0, sf.ch04_u_中,0,0]"]
;	;上ぴったりなの気になるから邪淫1より少し下げ
;	[eval exp="sf.ch04_lag_y = -30 + 10"]

;画像の幅
[eval exp="tf.std_w = sf.ch04_xla_w"]
[eval exp="sf.ch04_xla_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 30)"]
;大はレフト・ライトをレフトセンター・ライトセンターと同じにしておく
[eval exp="sf.ch04_xla_le  = int + ((sf.ch04_xla_ce - tf.std_w/2)  + 1150)"]
[eval exp="sf.ch04_xla_lc  = int + ((sf.ch04_xla_ce - tf.std_w/2)  + 1150)"]
[eval exp="sf.ch04_xla_rc  = int + ((sf.ch04_xla_ce + tf.std_w/2)  - 1150)"]
[eval exp="sf.ch04_xla_ri  = int + ((sf.ch04_xla_ce + tf.std_w/2)  - 1150)"]
[eval exp="f.add_h_xla_gap = f.add_h_sml_gap + 180"]
[eval exp="sf.ch04_xla_y = sf.ch01_xla_y - f.add_h_xla_gap"]


;記述例
;[std_ku l a ha a01][trans method=crossfade time=150][wt_c]

[macro name=std_mei]

	[eval exp=%exp]

	;パーツ一旦カラに
	[eval exp="f.face_win_char04_parts2 = 0"]
	[eval exp="f.face_win_char04_parts3 = 0"]
	;フェイスウィンドウ用　ポーズの打ち分け用 座標変わらないから1でいいか
	[eval exp="f.face_win_char04_pose = 1"]


	[backlay_c cond="mp.off == void"]

	;～～～～～～～～～～～大になったら背景も大にするためのマクロ～～～～～～～～～～～
;やっぱ複雑すぎでは
;	[bg_size_change *]

	;変数定義だけしてimageタグは最後でいいんじゃないか？
	;～～～～～～～～～～～サイズ・レイヤ・座標定義～～～～～～～～～～～

	;レイヤを未指定の時は自動でレイヤを確定する
			;揺らしで使うレイヤも定義しちゃう
;	[if    exp="mp.ce"][eval exp="f.layer = sf.layerC  , f.layer_ch04 = sf.layerC "]
;	[elsif exp="mp.le"][eval exp="f.layer = sf.layerL  , f.layer_ch04 = sf.layerL "]
;	[elsif exp="mp.ri"][eval exp="f.layer = sf.layerR  , f.layer_ch04 = sf.layerR "]
;	[elsif exp="mp.lc"][eval exp="f.layer = sf.layerLC , f.layer_ch04 = sf.layerLC"]
;	[elsif exp="mp.rc"][eval exp="f.layer = sf.layerRC , f.layer_ch04 = sf.layerRC"]
;	;上記以外の座標を入力
;	[else]
;	[eval exp="f.layer = mp.layer  , f.layer_ch04 = mp.layer "]
;	[endif]
	;↑はサイズ内でやったほうが処理減るか。f.layerもいらないな
	
	;サイズ 小
	[if    exp="mp.s"]

;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch04は揺らしで使う判定用。f.image_size_ch04はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 's' , f.stdsize_ch04 = 's' , f.image_size_ch04 = 's'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch04 = sf.layerC  , f.pos_ch04 = 'ce'"][eval exp="f.pos_ch04_x = sf.ch04_sml_ce" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_sml_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch04 = sf.layerL  , f.pos_ch04 = 'le'"][eval exp="f.pos_ch04_x = sf.ch04_sml_le" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_sml_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch04 = sf.layerR  , f.pos_ch04 = 'ri'"][eval exp="f.pos_ch04_x = sf.ch04_sml_ri" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_sml_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch04 = sf.layerLC , f.pos_ch04 = 'lc'"][eval exp="f.pos_ch04_x = sf.ch04_sml_lc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_sml_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch04 = sf.layerRC , f.pos_ch04 = 'rc'"][eval exp="f.pos_ch04_x = sf.ch04_sml_rc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_sml_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch04_x = sf['ch04_sml_' + f.pos_ch04] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch04_y = sf.ch04_sml_y + (+mp.y)"                cond="mp.y != void"]


	;サイズ 中
	[elsif exp="mp.m"]
;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch04は揺らしで使う判定用。f.image_size_ch04はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'm' , f.stdsize_ch04 = 'm' , f.image_size_ch04 = 'm'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch04 = sf.layerC  , f.pos_ch04 = 'ce'"][eval exp="f.pos_ch04_x = sf.ch04_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch04 = sf.layerL  , f.pos_ch04 = 'le'"][eval exp="f.pos_ch04_x = sf.ch04_mid_le" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch04 = sf.layerR  , f.pos_ch04 = 'ri'"][eval exp="f.pos_ch04_x = sf.ch04_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch04 = sf.layerLC , f.pos_ch04 = 'lc'"][eval exp="f.pos_ch04_x = sf.ch04_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch04 = sf.layerRC , f.pos_ch04 = 'rc'"][eval exp="f.pos_ch04_x = sf.ch04_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch04_x = sf['ch04_mid_' + f.pos_ch04] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch04_y = sf.ch04_mid_y + (+mp.y)"                cond="mp.y != void"]
	;サイズ 大
	[elsif exp="mp.l"]
;		[bg_l *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch04は揺らしで使う判定用。f.image_size_ch04はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'l' , f.stdsize_ch04 = 'l' , f.image_size_ch04 = 'l'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch04 = sf.layerC  , f.pos_ch04 = 'ce'"][eval exp="f.pos_ch04_x = sf.ch04_lag_ce" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_lag_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch04 = sf.layerL  , f.pos_ch04 = 'le'"][eval exp="f.pos_ch04_x = sf.ch04_lag_le" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_lag_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch04 = sf.layerR  , f.pos_ch04 = 'ri'"][eval exp="f.pos_ch04_x = sf.ch04_lag_ri" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_lag_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch04 = sf.layerLC , f.pos_ch04 = 'lc'"][eval exp="f.pos_ch04_x = sf.ch04_lag_lc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_lag_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch04 = sf.layerRC , f.pos_ch04 = 'rc'"][eval exp="f.pos_ch04_x = sf.ch04_lag_rc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_lag_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch04_x = sf['ch04_lag_' + f.pos_ch04] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch04_y = sf.ch04_lag_y + (+mp.y)"                cond="mp.y != void"]
	;サイズ 大
	[elsif exp="mp.xl"]
;		[bg_l *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch04は揺らしで使う判定用。f.image_size_ch04はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'x' , f.stdsize_ch04 = 'x' , f.image_size_ch04 = 'x'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch04 = sf.layerC  , f.pos_ch04 = 'ce'"][eval exp="f.pos_ch04_x = sf.ch04_xla_ce" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_xla_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch04 = sf.layerL  , f.pos_ch04 = 'le'"][eval exp="f.pos_ch04_x = sf.ch04_xla_le" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_xla_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch04 = sf.layerR  , f.pos_ch04 = 'ri'"][eval exp="f.pos_ch04_x = sf.ch04_xla_ri" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_xla_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch04 = sf.layerLC , f.pos_ch04 = 'lc'"][eval exp="f.pos_ch04_x = sf.ch04_xla_lc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_xla_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch04 = sf.layerRC , f.pos_ch04 = 'rc'"][eval exp="f.pos_ch04_x = sf.ch04_xla_rc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_xla_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch04_x = sf['ch04_xla_' + f.pos_ch04] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch04_y = sf.ch04_xla_y + (+mp.y)"                cond="mp.y != void"]
	;フェイルセーフ　中サイズにしておく
	[else]
;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch04は揺らしで使う判定用。f.image_size_ch04はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'm' , f.stdsize_ch04 = 'm' , f.image_size_ch04 = '中'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch04 = sf.layerC  , f.pos_ch04 = 'ce'"][eval exp="f.pos_ch04_x = sf.ch04_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch04 = sf.layerL  , f.pos_ch04 = 'le'"][eval exp="f.pos_ch04_x = sf.ch04_mid_le" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch04 = sf.layerR  , f.pos_ch04 = 'ri'"][eval exp="f.pos_ch04_x = sf.ch04_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch04 = sf.layerLC , f.pos_ch04 = 'lc'"][eval exp="f.pos_ch04_x = sf.ch04_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch04 = sf.layerRC , f.pos_ch04 = 'rc'"][eval exp="f.pos_ch04_x = sf.ch04_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch04_x = sf['ch04_mid_' + f.pos_ch04] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch04_y = sf.ch04_mid_y + (+mp.y)"                cond="mp.y != void"]
	[endif]

	;レイヤ変えたい場合
	[eval exp="f.layer_ch04 = mp.layer" cond="mp.layer != void"]

	;indexだけの操作ってつくってなかったんだなぁあったほうがいいか
	;index定義　面倒くさいから1000のくらいで書かなくていいようにするか
	[if exp="mp.index"]
		;mpに勝手に1000足すとややこしくなりそうだからこっちは足さない
		[eval exp="f.index_ch04 = mp.index * 1000 + 1000"]
	[else]
		[eval exp="f.index_ch04 = f.layer_ch04 * 1000 + 1000"]
	[endif]

	;～～～～～～～～～～～画像定義～～～～～～～～～～～

	[eval exp="f.image_face_char04_parts3 = void"]
	[eval exp="f.image_face_char04_parts4 = void"]

	;マガンは魔法服のどのポーズ・服でもできるようにしとくか
	;マガンが作れるのは、ch04_l_face_j0_p2 を使えば全て対応可
;;	[if exp="mp.magan"]
;;		[eval exp="f.image_base_ch04 = void"]
;;		[if    exp="mp.magan && mp.ma   && mp.p1"][eval exp="f.image_base_ch04 = '_base_j' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.mad  && mp.p1"][eval exp="f.image_base_ch04 = '_base_g' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.maw  && mp.p1"][eval exp="f.image_base_ch04 = '_base_h' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.madw && mp.p1"][eval exp="f.image_base_ch04 = '_base_i' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.ma   && mp.p2"][eval exp="f.image_base_ch04 = '_base_f' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.mad  && mp.p2"][eval exp="f.image_base_ch04 = '_base_g' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.maw  && mp.p2"][eval exp="f.image_base_ch04 = '_base_h' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.madw && mp.p2"][eval exp="f.image_base_ch04 = '_base_i' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && (!mp.ma && !mp.mad && !mp.maw && !mp.madw)"][eval exp="f.image_base_ch04 = '_base_j' , f.stdmsk = 0"]
;;		[endif]
;;	[endif]

	;裸
	[if    exp="mp.ha"][eval exp="f.image_base_ch04 = '_base_a' , f.ch04_cos = 'ha' , f.stdmsk = 0"]
	;私服　ジャケット無し　武器無し
	[elsif exp="mp.si"][eval exp="f.image_base_ch04 = '_base_b' , f.ch04_cos = 'si' , f.stdmsk = 0"]
	;私服　ジャケット無し　武器有り
	[elsif exp="mp.siw"][eval exp="f.image_base_ch04 = '_base_c' , f.ch04_cos = 'si' , f.stdmsk = 0"]
	;私服　ジャケット有り　武器無し
	[elsif exp="mp.ja"][eval exp="f.image_base_ch04 = '_base_d' , f.ch04_cos = 'ja' , f.stdmsk = 0"]
	;私服　ジャケット有り　武器有り
	[elsif exp="mp.jaw"][eval exp="f.image_base_ch04 = '_base_e' , f.ch04_cos = 'ja' , f.stdmsk = 0"]
	;魔法服 武器無し
	[elsif exp="mp.ma"][eval exp="f.image_base_ch04 = '_base_f' , f.ch04_cos = 'ma' , f.stdmsk = 0"]
	;魔法服 破損 武器無し
	[elsif exp="mp.mad"][eval exp="f.image_base_ch04 = '_base_g' , f.ch04_cos = 'mad' , f.stdmsk = 0"]
	;魔法服 武器有り
	[elsif exp="mp.maw"][eval exp="f.image_base_ch04 = '_base_h' , f.ch04_cos = 'mad' , f.stdmsk = 0"]
	;魔法服 破損 武器有り
	[elsif exp="mp.madw || mp.mawd"][eval exp="f.image_base_ch04 = '_base_i' , f.ch04_cos = 'mad' , f.stdmsk = 0"]
;	;魔法服 魔眼開放 武器有り
;	[elsif exp="mp.magan"][eval exp="f.image_base_ch04 = '_base_j' , f.stdmsk = 0"]
	[endif]

	;フェイスウィンドウ用定義。ポーズくっつける前に武器持ちなら武器無しを定義しておく
	[if    exp="mp.siw"]	[eval exp="f.image_base_ch04w = '_base_b'"]
	[elsif exp="mp.jaw"]	[eval exp="f.image_base_ch04w = '_base_d'"]
	[elsif exp="mp.maw"]	[eval exp="f.image_base_ch04w = '_base_f'"]
	[elsif exp="mp.madw || mp.mawd"]	[eval exp="f.image_base_ch04w = '_base_g'"]
	;武器持ちじゃなければそのままベースを代入
	[else]	[eval exp="f.image_base_ch04w = f.image_base_ch04"]
	[endif]

	;精液　↑の変数にそのままくっつける 一部服装にしかないんだよなぁ　 変則で冥はここでフェイス変数に精液つける
;;	[if    exp="mp.eki && !mp.magan && (mp.ha || mp.mad)"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '1'"]
	[if    exp="mp.eki && (mp.ha || mp.mad)"]	[eval exp="f.image_base_ch04 = f.image_base_ch04 + '1' , f.image_base_ch04w = f.image_base_ch04w + '1'"]
	[else]						[eval exp="f.image_base_ch04 = f.image_base_ch04 + '0' , f.image_base_ch04w = f.image_base_ch04w + '0'"]
	[endif]

;;	;精液の有無はポーズ前に定義だからマガンの処理も分けないとだめか
;;	[if exp="mp.magan"]
;;		[if    exp="mp.magan && mp.p1"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1'"]
;;		[elsif exp="mp.magan && mp.p1"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1'"]
;;		[elsif exp="mp.magan && mp.p1"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1'"]
;;		[elsif exp="mp.magan && mp.p1"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1'"]
;;		;マガン指定のみなら強制的にｐ1に
;;		[elsif exp="mp.magan && (!mp.ma || !mp.mad || !mp.maw || !mp.madw)"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1'"]
;;		[elsif exp="mp.magan && mp.p2"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p2'"]
;;		[elsif exp="mp.magan && mp.p2"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p2'"]
;;		[elsif exp="mp.magan && mp.p2"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p2'"]
;;		[elsif exp="mp.magan && mp.p2"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p2'"]
;;		[endif]
;;	[endif]

	;ポーズ　↑の変数にそのままくっつける 変則で冥はここでフェイス変数にポーズつける
	[if    exp="mp.p1"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1' , f.image_base_ch04w = f.image_base_ch04w + '_p1'"]
	[elsif exp="mp.p2"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p2' , f.image_base_ch04w = f.image_base_ch04w + '_p2'"]
;;	[if    exp="mp.p1 && !mp.magan"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1'"]
;;	[elsif exp="mp.p2 && !mp.magan"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p2'"]
;	[else]
;		;インフォ出すのはデバッグ時だけにするか
;		[call storage="macro08_std.ks" target=*no_coss  cond="kag.debugMenu.visible == true"]
;		[eval exp="f.image_base_ch04 = '_服1' , f.stdmsk = 0"]
	[endif]



	;01.通常
	;02.激怒
	;03.悲しみ
	;04.喜び（目開き）
	;05.驚き
	;06.怒り
	;07.戸惑い
	;08.不安
	;09.笑い(目閉じ)
	;10.大泣き
	;11.真面目
	;12.苦悶
	;13.怯え
	;14.不敵な笑み

	[eval exp="f.image_face_ch04 = '_face'"]

	[if    exp="mp.p1 && !mp.magan"]
		[if    exp="mp.ha"]
			[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_a0'"]
		[elsif exp="(mp.si || mp.siw || mp.ja || mp.jaw)"]
			;裸と兼用
			;[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_b0'"]
			[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_a0'"]
		[elsif exp="(mp.ma || mp.mad || mp.maw || mp.madw || mp.mawd)"]
			[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_c0'"]
		[endif]
	
		[eval exp="f.image_face_char04_parts3 = void"]

		[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p1'"]

	[elsif exp="mp.p2 && !mp.magan"]

		[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_j0'"]

		[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p2'"]

		;普通の眼帯
		[if    exp="mp.ha || mp.si || mp.siw || mp.ja || mp.jaw"]
			[eval exp="f.image_face_char04_parts3 = '_face_a0_p2_add'"]
		;魔法服の眼帯
		[elsif exp="!mp.magan && (mp.ma || mp.mad || mp.maw || mp.madw || mp.mawd)"]
			[eval exp="f.image_face_char04_parts3 = '_face_f0_p2_add'"]
		[endif]

	[elsif exp="mp.p1 && mp.magan"]
		[if    exp="mp.ha || mp.si || mp.siw || mp.ja || mp.jaw"]
			[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_k0'"]
		[else]
			[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_j0'"]
		[endif]

		[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p1'"]

	[elsif exp="mp.p2 && mp.magan"]

		[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_j0'"]

		[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p2'"]

		;追加パーツ　私服　あごの指先のみ
		[if    exp="(mp.ha || mp.si || mp.siw || mp.ja || mp.jaw)"]
			[eval exp="f.image_face_char04_parts3 = '_face_a0_p2_add2'"]
		;追加パーツ　魔法服　あごの指先のみ
		[elsif exp="(mp.ma || mp.mad || mp.maw || mp.madw || mp.mawd)"]
			[eval exp="f.image_face_char04_parts3 = '_face_f0_p2_add2'"]
		[endif]

	[endif]

;	;精液打ち分け 表情パーツは共通にする
;	[if    exp="mp.eki"][eval exp="f.image_face_ch04 = f.image_face_ch04 + '1'"]
;	[else]
;	[eval exp="f.image_face_ch04 = f.image_face_ch04 + '0'"]
;	[endif]

;;	;ポーズ打ち分け
;;	[if    exp="mp.p1"][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p1'"]
;;	;マガン指定のみなら強制的にｐ1に
;;	[elsif exp="mp.magan && (!mp.ma || !mp.mad || !mp.maw || !mp.madw)"][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p1'"]
;;	[elsif exp="mp.p2"][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p2'"]
;;	[endif]



	[if    exp="mp.f01" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_01'"]
	[elsif exp="mp.f02" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_02'"]
	[elsif exp="mp.f03" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_03'"]
	[elsif exp="mp.f04" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_04'"]
	[elsif exp="mp.f05" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_05'"]
	[elsif exp="mp.f06" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_06'"]
	[elsif exp="mp.f07" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_07'"]
	[elsif exp="mp.f08" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_08'"]
	[elsif exp="mp.f09" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_09'"]
	[elsif exp="mp.f10" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_10'"]
	[elsif exp="mp.f11" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_11'"]
	[elsif exp="mp.f12" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_12'"]
	[elsif exp="mp.f13" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_13'"]
	[elsif exp="mp.f14" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_14'"]
	[else]
		[call storage="macro08_std.ks" target=*no_face  cond="kag.debugMenu.visible == true"]
		[eval exp="f.image_face_ch04 = '_01'"]
	[endif]

	;頬染めの有無定義
	;今回も別々にしないといけないかなぁ
	[if    exp="mp.ho || mp.hoho"]	[eval exp="f.image_face_ch04 = f.image_face_ch04 + '1'"]
	[else]				[eval exp="f.image_face_ch04 = f.image_face_ch04 + '0'"]
	[endif]

	;顔にかかる液体パーツ
	[if    exp="mp.eki"]
		[if    exp="mp.ho || mp.hoho"]	[eval exp="f.image_face_char04_parts4 = '_face_a1_seieki_add1'"]
		[else]				[eval exp="f.image_face_char04_parts4 = '_face_a1_seieki_add0'"]
		[endif]
	[endif]




	;表情の変数に服装ごと打ち分けと頬染め有無を足して再定義
	[eval exp="f.image_face_ch04 = f.image_face_ch04 + f.image_face2_ch04 + f.image_face3_ch04"]

	;フェイスウィンドウ用定義
	;ベースファイル名定義
	[eval exp="f.face_win_char04_base   = sf.image_name_ch04 + 'w' + f.image_base_ch04w"]

	;表情ファイル名定義
	[eval exp="f.face_win_char04_parts1 = sf.image_name_ch04 + 's' + f.image_face_ch04"]
	;ほほ
;	[eval exp="f.face_win_char04_parts2 = sf.image_name_ch04 + '小' + sf.image_hoho"  cond="mp.ho || mp.hoho"]
	[if exp="mp.p2 && (mp.ha || mp.si || mp.siw || mp.ja || mp.jaw || mp.ma || mp.mad || mp.maw || mp.madw || mp.mawd)"]
		;表情 追加パーツ 指先
		[eval exp="f.face_win_char04_parts3 = sf.image_name_ch04 + 's' + f.image_face_char04_parts3"]
	[endif]

	;ファイル存在してるかチェックするには統一した変数にいれないとだめか
	[eval exp="f.image_std_base = sf.image_name_ch04 + f.image_size_ch04 + f.image_base_ch04"]
	[eval exp="f.image_std_face = sf.image_name_ch04 + f.image_size_ch04 + f.image_face_ch04"]

	;～～～～～～～～～～～画像読み込み～～～～～～～～～～～
;ファイル名定義ですでにフェイルセーフ入れてるからチェックいれなくても良さそうだけど、間違った変数名定義されしまった時用に
@if exp="(existentImage_std_base_check(f.image_std_base)!==false)"
	;ベース
	[image * storage="&f.image_std_base" layer="&f.layer_ch04" index="&f.index_ch04" page=%page|back visible=true left="&f.pos_ch04_x" top="&f.pos_ch04_y" opacity=%opacity|255 cond="mp.off == void"]
@endif
@if exp="(existentImage_std_face_check(f.image_std_face)!==false)"
	;表情
	[pimage  storage="&f.image_std_face" layer="&f.layer_ch04" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
;	;表情 追加パーツ
;	[if    exp="mp.ho || mp.hoho"]
;		[pimage storage="&sf.image_name_ch04 + f.image_size_ch04 + sf.image_hoho" layer="&f.layer_ch04" page=%page|back visible=true dx=0 dy=0 mode=mul opacity=180 cond="mp.off == void"]
;	[endif]
@endif
	;表情 追加パーツ  表情に掛かる手（指）
	;マガン指定のみなら強制的にｐ1になので未処理
;;	[if exp="mp.magan && (!mp.ma || !mp.mad || !mp.maw || !mp.madw)"]
	[if exp="mp.p2 && (mp.ha || mp.si || mp.siw || mp.ja || mp.jaw || mp.ma || mp.mad || mp.maw || mp.madw || mp.mawd)"]
		[pimage storage="&sf.image_name_ch04 + f.image_size_ch04 + f.image_face_char04_parts3" layer="&f.layer_ch04" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
	[endif]

	;顔にかかる液体パーツ
	[if    exp="mp.eki"]
		[pimage storage="&sf.image_name_ch04 + f.image_size_ch04 + f.image_face_char04_parts4" layer="&f.layer_ch04" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
	[endif]



	;blur強度が書かれてればここで変数に入れちゃう。
	[if exp="(mp.blur_x != void || mp.blur_y != void)"]
		[eval exp="f.bluron_chara04     = 1"]
		[eval exp="f.blur_layer_chara04 = f.layer_ch04"]
		[eval exp="f.blur_x_chara04     = mp.blur_x" cond="mp.blur_x != void"]
		[eval exp="f.blur_y_chara04     = mp.blur_y" cond="mp.blur_y != void"]
		;blur命令
		[blur layer="&f.blur_layer_chara04" page=back blur_x="&f.blur_x" blur_y="&f.blur_y" cond="mp.blur_x|mp.blur_y"]
	[endif]


	;blur強度が書かれてなければ0にしておく
	[eval exp="f.bluron_chara04 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_x_chara04 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_y_chara04 = 0" cond="mp.blur_x == void && mp.blur_y == void"]

[endmacro]


[return]


