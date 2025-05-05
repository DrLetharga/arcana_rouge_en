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

;fにしてch11~5を両タイトルで使い回そうかと思ったけどやっぱり怖いからそのまま

;[eval exp="sf.image_hoho  = '_頬赤'"]
;ファイル名の頭
[eval exp="sf.image_name_ch11  = 'ch11_'"]

[eval exp="sf.ch11_sml_w = 900"]
[eval exp="sf.ch11_sml_h = 960"]
;	[eval exp="sf.ch11_mid_w = 1400"]
;	[eval exp="sf.ch11_mid_h = 1461"]
;	[eval exp="sf.ch11_lag_w = 2102"]
;	[eval exp="sf.ch11_lag_h = 2193"]
[eval exp="sf.ch11_mid_w = 1200"]
[eval exp="sf.ch11_mid_h = 1280"]
[eval exp="sf.ch11_lag_w = 1800"]
[eval exp="sf.ch11_lag_h = 1920"]
[eval exp="sf.ch11_xla_w = 3000"]
[eval exp="sf.ch11_xla_h = 3200"]






;画像の幅
[eval exp="tf.std_w = sf.ch11_sml_w"]
[eval exp="sf.ch11_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 9)"]
[eval exp="sf.ch11_sml_le  = int + ((sf.ch11_sml_ce - tf.std_w)    + 480)"]
[eval exp="sf.ch11_sml_lc  = int + ((sf.ch11_sml_ce - tf.std_w/2)  + 240)"]
[eval exp="sf.ch11_sml_rc  = int + ((sf.ch11_sml_ce + tf.std_w/2)  - 240)"]
[eval exp="sf.ch11_sml_ri  = int + ((sf.ch11_sml_ce + tf.std_w)    - 480)"]
[eval exp="f.add_h_sml_gap = 85"]
[eval exp="sf.ch11_sml_y = sf.ch01_sml_y - f.add_h_sml_gap"]

;[eval exp="sf.ch11_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]-190
;	[eval exp="sf.ch11_sml_ce  = -190"]
;	[eval exp="sf.ch11_sml_le  = int + ((sf.ch11_sml_ce * 3))"]
;	[eval exp="sf.ch11_sml_lc  = int + ((sf.ch11_sml_ce * 2))"]
;	[eval exp="sf.ch11_sml_rc  = int + (sf.ch11_sml_ce + (sf.ch11_sml_ce * 1 *-1))"]
;					;単純に190でもいいんだけど
;	[eval exp="sf.ch11_sml_ri  = int + (sf.ch11_sml_ce + (sf.ch11_sml_ce * 2 *-1))"]
;	;[eval exp="sf.ch11_sml_x = [0, 0, 0, sf.ch11_sml_ce,0,0]"]
;	;[eval exp="sf.ch11_sml_y = -15 - 20"]
;	[eval exp="sf.ch11_sml_y = 130"]

;画像の幅
[eval exp="tf.std_w = sf.ch11_mid_w"]
[eval exp="sf.ch11_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 12)"]
[eval exp="sf.ch11_mid_le  = int + ((sf.ch11_mid_ce - tf.std_w)    + 800)"]
[eval exp="sf.ch11_mid_lc  = int + ((sf.ch11_mid_ce - tf.std_w/2)  + 390)"]
[eval exp="sf.ch11_mid_rc  = int + ((sf.ch11_mid_ce + tf.std_w/2)  - 350)"]
[eval exp="sf.ch11_mid_ri  = int + ((sf.ch11_mid_ce + tf.std_w)    - 780)"]
[eval exp="f.add_h_mid_gap = f.add_h_sml_gap + 25"]
[eval exp="sf.ch11_mid_y = sf.ch01_mid_y - f.add_h_mid_gap"]
;	;[eval exp="sf.ch11_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]
;	[eval exp="sf.ch11_mid_ce  = -190"]
;	[eval exp="sf.ch11_mid_le  = int + ((sf.ch11_mid_ce * 3))"]
;	[eval exp="sf.ch11_mid_lc  = int + ((sf.ch11_mid_ce * 2.2))"]
;	[eval exp="sf.ch11_mid_rc  = int + (sf.ch11_mid_ce + (sf.ch11_mid_ce * 1.2 *-1))"]
;	[eval exp="sf.ch11_mid_ri  = int + (sf.ch11_mid_ce + (sf.ch11_mid_ce * 2 *-1))"]
;	;[eval exp="sf.ch11_mid_x = [0, 0, 0, sf.ch11_mid_中,0,0]"]
;	[eval exp="sf.ch11_mid_y = 100"]

;画像の幅
[eval exp="tf.std_w = sf.ch11_lag_w"]
[eval exp="sf.ch11_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 18)"]
;大はレフト・ライトをレフトセンター・ライトセンターと同じにしておく
[eval exp="sf.ch11_lag_le  = int + ((sf.ch11_lag_ce - tf.std_w/2)  + 600)"]
[eval exp="sf.ch11_lag_lc  = int + ((sf.ch11_lag_ce - tf.std_w/2)  + 600)"]
[eval exp="sf.ch11_lag_rc  = int + ((sf.ch11_lag_ce + tf.std_w/2)  - 600)"]
[eval exp="sf.ch11_lag_ri  = int + ((sf.ch11_lag_ce + tf.std_w/2)  - 600)"]
[eval exp="f.add_h_lag_gap = f.add_h_sml_gap + 80"]
[eval exp="sf.ch11_lag_y = sf.ch01_lag_y - f.add_h_lag_gap"]
;	;[eval exp="sf.ch11_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]
;	[eval exp="sf.ch11_lag_ce  = -190"]
;	;大はレフト・ライトをレフトセンター・ライトセンターと同じにしておく
;	[eval exp="sf.ch11_lag_le  = int + ((sf.ch11_lag_ce * 3) + 70)"]
;	[eval exp="sf.ch11_lag_lc  = int + ((sf.ch11_lag_ce * 3) + 70)"]
;	[eval exp="sf.ch11_lag_rc  = int + (sf.ch11_lag_ce + (sf.ch11_lag_ce * 2 *-1) - 70)"]
;	[eval exp="sf.ch11_lag_ri  = int + (sf.ch11_lag_ce + (sf.ch11_lag_ce * 2 *-1) - 70)"]
;	;[eval exp="sf.ch11_u_x = [0, 0, 0, sf.ch11_u_中,0,0]"]
;	;上ぴったりなの気になるから邪淫1より少し下げ
;	[eval exp="sf.ch11_lag_y = -30 + 10"]

;画像の幅
[eval exp="tf.std_w = sf.ch11_xla_w"]
[eval exp="sf.ch11_xla_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 30)"]
;大はレフト・ライトをレフトセンター・ライトセンターと同じにしておく
[eval exp="sf.ch11_xla_le  = int + ((sf.ch11_xla_ce - tf.std_w/2)  + 1150)"]
[eval exp="sf.ch11_xla_lc  = int + ((sf.ch11_xla_ce - tf.std_w/2)  + 1150)"]
[eval exp="sf.ch11_xla_rc  = int + ((sf.ch11_xla_ce + tf.std_w/2)  - 1150)"]
[eval exp="sf.ch11_xla_ri  = int + ((sf.ch11_xla_ce + tf.std_w/2)  - 1150)"]
[eval exp="f.add_h_xla_gap = f.add_h_sml_gap + 180"]
[eval exp="sf.ch11_xla_y = sf.ch01_xla_y - f.add_h_xla_gap"]


;記述例
;[std_ku l a ha a01][trans method=crossfade time=150][wt_c]

[macro name=std_ai]

	[eval exp=%exp]

	;パーツ一旦カラに
	[eval exp="f.face_win_char11_parts2 = 0"]
	[eval exp="f.face_win_char11_parts3 = 0"]
	;フェイスウィンドウ用　ポーズの打ち分け用 座標変わらないから1でいいか
	[eval exp="f.face_win_char11_pose = 1"]


	[backlay_c cond="mp.off == void"]

	;～～～～～～～～～～～大になったら背景も大にするためのマクロ～～～～～～～～～～～
;やっぱ複雑すぎでは
;	[bg_size_change *]

	;変数定義だけしてimageタグは最後でいいんじゃないか？
	;～～～～～～～～～～～サイズ・レイヤ・座標定義～～～～～～～～～～～

	;レイヤを未指定の時は自動でレイヤを確定する
			;揺らしで使うレイヤも定義しちゃう
;	[if    exp="mp.ce"][eval exp="f.layer = sf.layerC  , f.layer_ch11 = sf.layerC "]
;	[elsif exp="mp.le"][eval exp="f.layer = sf.layerL  , f.layer_ch11 = sf.layerL "]
;	[elsif exp="mp.ri"][eval exp="f.layer = sf.layerR  , f.layer_ch11 = sf.layerR "]
;	[elsif exp="mp.lc"][eval exp="f.layer = sf.layerLC , f.layer_ch11 = sf.layerLC"]
;	[elsif exp="mp.rc"][eval exp="f.layer = sf.layerRC , f.layer_ch11 = sf.layerRC"]
;	;上記以外の座標を入力
;	[else]
;	[eval exp="f.layer = mp.layer  , f.layer_ch11 = mp.layer "]
;	[endif]
	;↑はサイズ内でやったほうが処理減るか。f.layerもいらないな
	
	;サイズ 小
	[if    exp="mp.s"]

;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch11は揺らしで使う判定用。f.image_size_ch11はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 's' , f.stdsize_ch11 = 's' , f.image_size_ch11 = 's'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch11 = sf.layerC  , f.pos_ch11 = 'ce'"][eval exp="f.pos_ch11_x = sf.ch11_sml_ce" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_sml_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch11 = sf.layerL  , f.pos_ch11 = 'le'"][eval exp="f.pos_ch11_x = sf.ch11_sml_le" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_sml_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch11 = sf.layerR  , f.pos_ch11 = 'ri'"][eval exp="f.pos_ch11_x = sf.ch11_sml_ri" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_sml_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch11 = sf.layerLC , f.pos_ch11 = 'lc'"][eval exp="f.pos_ch11_x = sf.ch11_sml_lc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_sml_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch11 = sf.layerRC , f.pos_ch11 = 'rc'"][eval exp="f.pos_ch11_x = sf.ch11_sml_rc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_sml_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch11_x = sf['ch11_sml_' + f.pos_ch11] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch11_y = sf.ch11_sml_y + (+mp.y)"                cond="mp.y != void"]


	;サイズ 中
	[elsif exp="mp.m"]
;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch11は揺らしで使う判定用。f.image_size_ch11はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'm' , f.stdsize_ch11 = 'm' , f.image_size_ch11 = 'm'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch11 = sf.layerC  , f.pos_ch11 = 'ce'"][eval exp="f.pos_ch11_x = sf.ch11_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch11 = sf.layerL  , f.pos_ch11 = 'le'"][eval exp="f.pos_ch11_x = sf.ch11_mid_le" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch11 = sf.layerR  , f.pos_ch11 = 'ri'"][eval exp="f.pos_ch11_x = sf.ch11_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch11 = sf.layerLC , f.pos_ch11 = 'lc'"][eval exp="f.pos_ch11_x = sf.ch11_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch11 = sf.layerRC , f.pos_ch11 = 'rc'"][eval exp="f.pos_ch11_x = sf.ch11_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch11_x = sf['ch11_mid_' + f.pos_ch11] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch11_y = sf.ch11_mid_y + (+mp.y)"                cond="mp.y != void"]
	;サイズ 大
	[elsif exp="mp.l"]
;		[bg_l *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch11は揺らしで使う判定用。f.image_size_ch11はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'l' , f.stdsize_ch11 = 'l' , f.image_size_ch11 = 'l'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch11 = sf.layerC  , f.pos_ch11 = 'ce'"][eval exp="f.pos_ch11_x = sf.ch11_lag_ce" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_lag_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch11 = sf.layerL  , f.pos_ch11 = 'le'"][eval exp="f.pos_ch11_x = sf.ch11_lag_le" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_lag_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch11 = sf.layerR  , f.pos_ch11 = 'ri'"][eval exp="f.pos_ch11_x = sf.ch11_lag_ri" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_lag_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch11 = sf.layerLC , f.pos_ch11 = 'lc'"][eval exp="f.pos_ch11_x = sf.ch11_lag_lc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_lag_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch11 = sf.layerRC , f.pos_ch11 = 'rc'"][eval exp="f.pos_ch11_x = sf.ch11_lag_rc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_lag_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch11_x = sf['ch11_lag_' + f.pos_ch11] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch11_y = sf.ch11_lag_y + (+mp.y)"                cond="mp.y != void"]
	;サイズ 大
	[elsif exp="mp.xl"]
;		[bg_l *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch11は揺らしで使う判定用。f.image_size_ch11はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'x' , f.stdsize_ch11 = 'x' , f.image_size_ch11 = 'x'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch11 = sf.layerC  , f.pos_ch11 = 'ce'"][eval exp="f.pos_ch11_x = sf.ch11_xla_ce" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_xla_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch11 = sf.layerL  , f.pos_ch11 = 'le'"][eval exp="f.pos_ch11_x = sf.ch11_xla_le" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_xla_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch11 = sf.layerR  , f.pos_ch11 = 'ri'"][eval exp="f.pos_ch11_x = sf.ch11_xla_ri" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_xla_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch11 = sf.layerLC , f.pos_ch11 = 'lc'"][eval exp="f.pos_ch11_x = sf.ch11_xla_lc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_xla_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch11 = sf.layerRC , f.pos_ch11 = 'rc'"][eval exp="f.pos_ch11_x = sf.ch11_xla_rc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_xla_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch11_x = sf['ch11_xla_' + f.pos_ch11] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch11_y = sf.ch11_xla_y + (+mp.y)"                cond="mp.y != void"]
	;フェイルセーフ　中サイズにしておく
	[else]
;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch11は揺らしで使う判定用。f.image_size_ch11はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'm' , f.stdsize_ch11 = 'm' , f.image_size_ch11 = '中'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch11 = sf.layerC  , f.pos_ch11 = 'ce'"][eval exp="f.pos_ch11_x = sf.ch11_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch11 = sf.layerL  , f.pos_ch11 = 'le'"][eval exp="f.pos_ch11_x = sf.ch11_mid_le" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch11 = sf.layerR  , f.pos_ch11 = 'ri'"][eval exp="f.pos_ch11_x = sf.ch11_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch11 = sf.layerLC , f.pos_ch11 = 'lc'"][eval exp="f.pos_ch11_x = sf.ch11_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch11 = sf.layerRC , f.pos_ch11 = 'rc'"][eval exp="f.pos_ch11_x = sf.ch11_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch11_x = sf['ch11_mid_' + f.pos_ch11] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch11_y = sf.ch11_mid_y + (+mp.y)"                cond="mp.y != void"]
	[endif]

	;レイヤ変えたい場合
	[eval exp="f.layer_ch11 = mp.layer" cond="mp.layer != void"]

	;indexだけの操作ってつくってなかったんだなぁあったほうがいいか
	;index定義　面倒くさいから1000のくらいで書かなくていいようにするか
	[if exp="mp.index"]
		;mpに勝手に1000足すとややこしくなりそうだからこっちは足さない
		[eval exp="f.index_ch11 = mp.index * 1000 + 1000"]
	[else]
		[eval exp="f.index_ch11 = f.layer_ch11 * 1000 + 1000"]
	[endif]

	;～～～～～～～～～～～画像定義～～～～～～～～～～～

	[eval exp="f.image_face_char11_parts3 = void"]
	[eval exp="f.image_face_char11_parts4 = void"]

	;マガンは魔法服のどのポーズ・服でもできるようにしとくか
	;マガンが作れるのは、ch11_l_face_j0_p2 を使えば全て対応可
;;	[if exp="mp.magan"]
;;		[eval exp="f.image_base_ch11 = void"]
;;		[if    exp="mp.magan && mp.ma   && mp.p1"][eval exp="f.image_base_ch11 = '_base_j' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.mad  && mp.p1"][eval exp="f.image_base_ch11 = '_base_g' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.maw  && mp.p1"][eval exp="f.image_base_ch11 = '_base_h' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.madw && mp.p1"][eval exp="f.image_base_ch11 = '_base_i' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.ma   && mp.p2"][eval exp="f.image_base_ch11 = '_base_f' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.mad  && mp.p2"][eval exp="f.image_base_ch11 = '_base_g' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.maw  && mp.p2"][eval exp="f.image_base_ch11 = '_base_h' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.madw && mp.p2"][eval exp="f.image_base_ch11 = '_base_i' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && (!mp.ma && !mp.mad && !mp.maw && !mp.madw)"][eval exp="f.image_base_ch11 = '_base_j' , f.stdmsk = 0"]
;;		[endif]
;;	[endif]

	[eval exp="f.image_base_ch11 = '_base_d0' , f.stdmsk = 0"]

	;ポーズ　↑の変数にそのままくっつける
	[if    exp="mp.p1"][eval exp="f.image_base_ch11 = f.image_base_ch11 + '_p1'"]
	[elsif exp="mp.p2"][eval exp="f.image_base_ch11 = f.image_base_ch11 + '_p2'"]
;;	[if    exp="mp.p1 && !mp.magan"][eval exp="f.image_base_ch11 = f.image_base_ch11 + '_p1'"]
;;	[elsif exp="mp.p2 && !mp.magan"][eval exp="f.image_base_ch11 = f.image_base_ch11 + '_p2'"]
;	[else]
;		;インフォ出すのはデバッグ時だけにするか
;		[call storage="macro08_std.ks" target=*no_coss  cond="kag.debugMenu.visible == true"]
;		[eval exp="f.image_base_ch11 = '_服1' , f.stdmsk = 0"]
	[endif]

	;フェイスウィンドウ用定義。先に定義した変数を代入するからevalは分ける。
	[eval exp="f.image_base_ch11w = f.image_base_ch11"]


	;表情の変数に服装ごと打ち分けと頬染め有無を足して再定義
	[eval exp="f.image_face_ch11 = f.image_face_ch11 + f.image_face2_ch11 + f.image_face3_ch11"]

	;フェイスウィンドウ用定義
	;ベースファイル名定義
	[eval exp="f.face_win_char11_base   = sf.image_name_ch11 + 'w' + f.image_base_ch11w"]

	;表情ファイル名定義
;	[eval exp="f.face_win_char11_parts1 = sf.image_name_ch11 + 's' + f.image_face_ch11"]
	;ほほ
;	[eval exp="f.face_win_char11_parts2 = sf.image_name_ch11 + '小' + sf.image_hoho"  cond="mp.ho || mp.hoho"]

	;ファイル存在してるかチェックするには統一した変数にいれないとだめか
	[eval exp="f.image_std_base = sf.image_name_ch11 + f.image_size_ch11 + f.image_base_ch11"]
;	[eval exp="f.image_std_face = sf.image_name_ch11 + f.image_size_ch11 + f.image_face_ch11"]

	;～～～～～～～～～～～画像読み込み～～～～～～～～～～～
;ファイル名定義ですでにフェイルセーフ入れてるからチェックいれなくても良さそうだけど、間違った変数名定義されしまった時用に
@if exp="(existentImage_std_base_check(f.image_std_base)!==false)"
	;ベース
	[image * storage="&f.image_std_base" layer="&f.layer_ch11" index="&f.index_ch11" page=%page|back visible=true left="&f.pos_ch11_x" top="&f.pos_ch11_y" opacity=%opacity|255 cond="mp.off == void"]
@endif
;@if exp="(existentImage_std_face_check(f.image_std_face)!==false)"
;	;表情
;	[pimage  storage="&f.image_std_face" layer="&f.layer_ch11" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
;;	;表情 追加パーツ
;;	[if    exp="mp.ho || mp.hoho"]
;;		[pimage storage="&sf.image_name_ch11 + f.image_size_ch11 + sf.image_hoho" layer="&f.layer_ch11" page=%page|back visible=true dx=0 dy=0 mode=mul opacity=180 cond="mp.off == void"]
;;	[endif]
;@endif



	;blur強度が書かれてればここで変数に入れちゃう。
	[if exp="(mp.blur_x != void || mp.blur_y != void)"]
		[eval exp="f.bluron_chara11     = 1"]
		[eval exp="f.blur_layer_chara11 = f.layer_ch11"]
		[eval exp="f.blur_x_chara11     = mp.blur_x" cond="mp.blur_x != void"]
		[eval exp="f.blur_y_chara11     = mp.blur_y" cond="mp.blur_y != void"]
		;blur命令
		[blur layer="&f.blur_layer_chara11" page=back blur_x="&f.blur_x" blur_y="&f.blur_y" cond="mp.blur_x|mp.blur_y"]
	[endif]


	;blur強度が書かれてなければ0にしておく
	[eval exp="f.bluron_chara11 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_x_chara11 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_y_chara11 = 0" cond="mp.blur_x == void && mp.blur_y == void"]

[endmacro]


[return]


