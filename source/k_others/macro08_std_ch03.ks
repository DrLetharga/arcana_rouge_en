;===========================================================
;柏山 ミア
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

;fにしてch03~5を両タイトルで使い回そうかと思ったけどやっぱり怖いからそのまま

;[eval exp="sf.image_hoho  = '_頬赤'"]
;ファイル名の頭
[eval exp="sf.image_name_ch03  = 'ch03_'"]

[eval exp="sf.ch03_sml_w = 840"]
[eval exp="sf.ch03_sml_h = 990"]
;	[eval exp="sf.ch03_mid_w = 1400"]
;	[eval exp="sf.ch03_mid_h = 1461"]
;	[eval exp="sf.ch03_lag_w = 2102"]
;	[eval exp="sf.ch03_lag_h = 2193"]
[eval exp="sf.ch03_mid_w = 1120"]
[eval exp="sf.ch03_mid_h = 1320"]
[eval exp="sf.ch03_lag_w = 1680"]
[eval exp="sf.ch03_lag_h = 1980"]
[eval exp="sf.ch03_xla_w = 2800"]
[eval exp="sf.ch03_xla_h = 3300"]





;画像の幅
[eval exp="tf.std_w = sf.ch03_sml_w"]
[eval exp="sf.ch03_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 0)"]
[eval exp="sf.ch03_sml_le  = int + ((sf.ch03_sml_ce - tf.std_w)    + 420)"]
[eval exp="sf.ch03_sml_lc  = int + ((sf.ch03_sml_ce - tf.std_w/2)  + 210)"]
[eval exp="sf.ch03_sml_rc  = int + ((sf.ch03_sml_ce + tf.std_w/2)  - 210)"]
[eval exp="sf.ch03_sml_ri  = int + ((sf.ch03_sml_ce + tf.std_w)    - 420)"]
[eval exp="f.add_h_sml_gap = 90"]
[eval exp="sf.ch03_sml_y = sf.ch01_sml_y - f.add_h_sml_gap"]

;[eval exp="sf.ch03_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]-190
;	[eval exp="sf.ch03_sml_ce  = -190"]
;	[eval exp="sf.ch03_sml_le  = int + ((sf.ch03_sml_ce * 3))"]
;	[eval exp="sf.ch03_sml_lc  = int + ((sf.ch03_sml_ce * 2))"]
;	[eval exp="sf.ch03_sml_rc  = int + (sf.ch03_sml_ce + (sf.ch03_sml_ce * 1 *-1))"]
;					;単純に190でもいいんだけど
;	[eval exp="sf.ch03_sml_ri  = int + (sf.ch03_sml_ce + (sf.ch03_sml_ce * 2 *-1))"]
;	;[eval exp="sf.ch03_sml_x = [0, 0, 0, sf.ch03_sml_ce,0,0]"]
;	;[eval exp="sf.ch03_sml_y = -15 - 20"]
;	[eval exp="sf.ch03_sml_y = 130"]

;画像の幅
[eval exp="tf.std_w = sf.ch03_mid_w"]
[eval exp="sf.ch03_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 0)"]
[eval exp="sf.ch03_mid_le  = int + ((sf.ch03_mid_ce - tf.std_w)    + 700)"]
[eval exp="sf.ch03_mid_lc  = int + ((sf.ch03_mid_ce - tf.std_w/2)  + 330)"]
[eval exp="sf.ch03_mid_rc  = int + ((sf.ch03_mid_ce + tf.std_w/2)  - 330)"]
[eval exp="sf.ch03_mid_ri  = int + ((sf.ch03_mid_ce + tf.std_w)    - 700)"]
[eval exp="f.add_h_mid_gap = f.add_h_sml_gap + 22"]
[eval exp="sf.ch03_mid_y = sf.ch01_mid_y - f.add_h_mid_gap"]
;	;[eval exp="sf.ch03_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]
;	[eval exp="sf.ch03_mid_ce  = -190"]
;	[eval exp="sf.ch03_mid_le  = int + ((sf.ch03_mid_ce * 3))"]
;	[eval exp="sf.ch03_mid_lc  = int + ((sf.ch03_mid_ce * 2.2))"]
;	[eval exp="sf.ch03_mid_rc  = int + (sf.ch03_mid_ce + (sf.ch03_mid_ce * 1.2 *-1))"]
;	[eval exp="sf.ch03_mid_ri  = int + (sf.ch03_mid_ce + (sf.ch03_mid_ce * 2 *-1))"]
;	;[eval exp="sf.ch03_mid_x = [0, 0, 0, sf.ch03_mid_中,0,0]"]
;	[eval exp="sf.ch03_mid_y = 100"]

;画像の幅
[eval exp="tf.std_w = sf.ch03_lag_w"]
[eval exp="sf.ch03_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 0)"]
;大はレフト・ライトをレフトセンター・ライトセンターと同じにしておく
[eval exp="sf.ch03_lag_le  = int + ((sf.ch03_lag_ce - tf.std_w/2) + 550)"]
[eval exp="sf.ch03_lag_lc  = int + ((sf.ch03_lag_ce - tf.std_w/2) + 550)"]
[eval exp="sf.ch03_lag_rc  = int + ((sf.ch03_lag_ce + tf.std_w/2) - 550)"]
[eval exp="sf.ch03_lag_ri  = int + ((sf.ch03_lag_ce + tf.std_w/2) - 550)"]
[eval exp="f.add_h_lag_gap = f.add_h_sml_gap + 98"]
[eval exp="sf.ch03_lag_y = sf.ch01_lag_y - f.add_h_lag_gap"]
;	;[eval exp="sf.ch03_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]
;	[eval exp="sf.ch03_lag_ce  = -190"]
;	;大はレフト・ライトをレフトセンター・ライトセンターと同じにしておく
;	[eval exp="sf.ch03_lag_le  = int + ((sf.ch03_lag_ce * 3) + 70)"]
;	[eval exp="sf.ch03_lag_lc  = int + ((sf.ch03_lag_ce * 3) + 70)"]
;	[eval exp="sf.ch03_lag_rc  = int + (sf.ch03_lag_ce + (sf.ch03_lag_ce * 2 *-1) - 70)"]
;	[eval exp="sf.ch03_lag_ri  = int + (sf.ch03_lag_ce + (sf.ch03_lag_ce * 2 *-1) - 70)"]
;	;[eval exp="sf.ch03_u_x = [0, 0, 0, sf.ch03_u_中,0,0]"]
;	;上ぴったりなの気になるから邪淫1より少し下げ
;	[eval exp="sf.ch03_lag_y = -30 + 10"]


;画像の幅
[eval exp="tf.std_w = sf.ch03_xla_w"]
[eval exp="sf.ch03_xla_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 0)"]
;大はレフト・ライトをレフトセンター・ライトセンターと同じにしておく
[eval exp="sf.ch03_xla_le  = int + ((sf.ch03_xla_ce - tf.std_w/2) + 1050)"]
[eval exp="sf.ch03_xla_lc  = int + ((sf.ch03_xla_ce - tf.std_w/2) + 1050)"]
[eval exp="sf.ch03_xla_rc  = int + ((sf.ch03_xla_ce + tf.std_w/2) - 1050)"]
[eval exp="sf.ch03_xla_ri  = int + ((sf.ch03_xla_ce + tf.std_w/2) - 1050)"]
[eval exp="f.add_h_xla_gap = f.add_h_sml_gap + 240"]
[eval exp="sf.ch03_xla_y = sf.ch01_xla_y - f.add_h_xla_gap"]


;記述例
;[std_ku l a ha a01][trans method=crossfade time=150][wt_c]

[macro name=std_mia]

	[eval exp=%exp]

	;パーツ一旦カラに
	[eval exp="f.face_win_char03_parts2 = 0"]
	[eval exp="f.face_win_char03_parts3 = 0"]
	;フェイスウィンドウ用　ポーズの打ち分け用 座標変わらないから1でいいか
	[eval exp="f.face_win_char03_pose = 1"]


	[backlay_c cond="mp.off == void"]

	;～～～～～～～～～～～大になったら背景も大にするためのマクロ～～～～～～～～～～～
;やっぱ複雑すぎでは
;	[bg_size_change *]

	;変数定義だけしてimageタグは最後でいいんじゃないか？
	;～～～～～～～～～～～サイズ・レイヤ・座標定義～～～～～～～～～～～

	;レイヤを未指定の時は自動でレイヤを確定する
			;揺らしで使うレイヤも定義しちゃう
;	[if    exp="mp.ce"][eval exp="f.layer = sf.layerC  , f.layer_ch03 = sf.layerC "]
;	[elsif exp="mp.le"][eval exp="f.layer = sf.layerL  , f.layer_ch03 = sf.layerL "]
;	[elsif exp="mp.ri"][eval exp="f.layer = sf.layerR  , f.layer_ch03 = sf.layerR "]
;	[elsif exp="mp.lc"][eval exp="f.layer = sf.layerLC , f.layer_ch03 = sf.layerLC"]
;	[elsif exp="mp.rc"][eval exp="f.layer = sf.layerRC , f.layer_ch03 = sf.layerRC"]
;	;上記以外の座標を入力
;	[else]
;	[eval exp="f.layer = mp.layer  , f.layer_ch03 = mp.layer "]
;	[endif]
	;↑はサイズ内でやったほうが処理減るか。f.layerもいらないな
	
	;サイズ 小
	[if    exp="mp.s"]

;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch03は揺らしで使う判定用。f.image_size_ch03はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 's' , f.stdsize_ch03 = 's' , f.image_size_ch03 = 's'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch03 = sf.layerC  , f.pos_ch03 = 'ce'"][eval exp="f.pos_ch03_x = sf.ch03_sml_ce" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_sml_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch03 = sf.layerL  , f.pos_ch03 = 'le'"][eval exp="f.pos_ch03_x = sf.ch03_sml_le" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_sml_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch03 = sf.layerR  , f.pos_ch03 = 'ri'"][eval exp="f.pos_ch03_x = sf.ch03_sml_ri" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_sml_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch03 = sf.layerLC , f.pos_ch03 = 'lc'"][eval exp="f.pos_ch03_x = sf.ch03_sml_lc" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_sml_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch03 = sf.layerRC , f.pos_ch03 = 'rc'"][eval exp="f.pos_ch03_x = sf.ch03_sml_rc" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_sml_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch03_x = sf['ch03_sml_' + f.pos_ch03] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch03_y = sf.ch03_sml_y + (+mp.y)"                cond="mp.y != void"]


	;サイズ 中
	[elsif exp="mp.m"]
;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch03は揺らしで使う判定用。f.image_size_ch03はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'm' , f.stdsize_ch03 = 'm' , f.image_size_ch03 = 'm'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch03 = sf.layerC  , f.pos_ch03 = 'ce'"][eval exp="f.pos_ch03_x = sf.ch03_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch03 = sf.layerL  , f.pos_ch03 = 'le'"][eval exp="f.pos_ch03_x = sf.ch03_mid_le" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch03 = sf.layerR  , f.pos_ch03 = 'ri'"][eval exp="f.pos_ch03_x = sf.ch03_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch03 = sf.layerLC , f.pos_ch03 = 'lc'"][eval exp="f.pos_ch03_x = sf.ch03_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch03 = sf.layerRC , f.pos_ch03 = 'rc'"][eval exp="f.pos_ch03_x = sf.ch03_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_mid_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch03_x = sf['ch03_mid_' + f.pos_ch03] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch03_y = sf.ch03_mid_y + (+mp.y)"                cond="mp.y != void"]
	;サイズ 大
	[elsif exp="mp.l"]
;		[bg_l *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch03は揺らしで使う判定用。f.image_size_ch03はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'l' , f.stdsize_ch03 = 'l' , f.image_size_ch03 = 'l'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch03 = sf.layerC  , f.pos_ch03 = 'ce'"][eval exp="f.pos_ch03_x = sf.ch03_lag_ce" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_lag_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch03 = sf.layerL  , f.pos_ch03 = 'le'"][eval exp="f.pos_ch03_x = sf.ch03_lag_le" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_lag_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch03 = sf.layerR  , f.pos_ch03 = 'ri'"][eval exp="f.pos_ch03_x = sf.ch03_lag_ri" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_lag_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch03 = sf.layerLC , f.pos_ch03 = 'lc'"][eval exp="f.pos_ch03_x = sf.ch03_lag_lc" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_lag_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch03 = sf.layerRC , f.pos_ch03 = 'rc'"][eval exp="f.pos_ch03_x = sf.ch03_lag_rc" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_lag_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch03_x = sf['ch03_lag_' + f.pos_ch03] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch03_y = sf.ch03_lag_y + (+mp.y)"                cond="mp.y != void"]
	;サイズ 大
	[elsif exp="mp.xl"]
;		[bg_l *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch03は揺らしで使う判定用。f.image_size_ch03はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'x' , f.stdsize_ch03 = 'x' , f.image_size_ch03 = 'x'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch03 = sf.layerC  , f.pos_ch03 = 'ce'"][eval exp="f.pos_ch03_x = sf.ch03_xla_ce" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_xla_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch03 = sf.layerL  , f.pos_ch03 = 'le'"][eval exp="f.pos_ch03_x = sf.ch03_xla_le" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_xla_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch03 = sf.layerR  , f.pos_ch03 = 'ri'"][eval exp="f.pos_ch03_x = sf.ch03_xla_ri" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_xla_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch03 = sf.layerLC , f.pos_ch03 = 'lc'"][eval exp="f.pos_ch03_x = sf.ch03_xla_lc" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_xla_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch03 = sf.layerRC , f.pos_ch03 = 'rc'"][eval exp="f.pos_ch03_x = sf.ch03_xla_rc" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_xla_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch03_x = sf['ch03_xla_' + f.pos_ch03] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch03_y = sf.ch03_xla_y + (+mp.y)"                cond="mp.y != void"]
	;フェイルセーフ　中サイズにしておく
	[else]
;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch03は揺らしで使う判定用。f.image_size_ch03はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'm' , f.stdsize_ch03 = 'm' , f.image_size_ch03 = '中'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch03 = sf.layerC  , f.pos_ch03 = 'ce'"][eval exp="f.pos_ch03_x = sf.ch03_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch03 = sf.layerL  , f.pos_ch03 = 'le'"][eval exp="f.pos_ch03_x = sf.ch03_mid_le" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch03 = sf.layerR  , f.pos_ch03 = 'ri'"][eval exp="f.pos_ch03_x = sf.ch03_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch03 = sf.layerLC , f.pos_ch03 = 'lc'"][eval exp="f.pos_ch03_x = sf.ch03_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch03 = sf.layerRC , f.pos_ch03 = 'rc'"][eval exp="f.pos_ch03_x = sf.ch03_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch03_y = sf.ch03_mid_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch03_x = sf['ch03_mid_' + f.pos_ch03] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch03_y = sf.ch03_mid_y + (+mp.y)"                cond="mp.y != void"]
	[endif]

	;レイヤ変えたい場合
	[eval exp="f.layer_ch03 = mp.layer" cond="mp.layer != void"]

	;indexだけの操作ってつくってなかったんだなぁあったほうがいいか
	;index定義　面倒くさいから1000のくらいで書かなくていいようにするか
	[if exp="mp.index"]
		;mpに勝手に1000足すとややこしくなりそうだからこっちは足さない
		[eval exp="f.index_ch03 = mp.index * 1000 + 1000"]
	[else]
		[eval exp="f.index_ch03 = f.layer_ch03 * 1000 + 1000"]
	[endif]

	;～～～～～～～～～～～画像定義～～～～～～～～～～～
	;裸
	[if    exp="mp.ha"][eval exp="f.image_base_ch03 = '_base_a' , f.ch03_cos = 'ha' , f.stdmsk = 0"]
	;制服
	[elsif exp="mp.se"][eval exp="f.image_base_ch03 = '_base_b' , f.ch03_cos = 'se' , f.stdmsk = 0"]
	;魔法服
	[elsif exp="mp.ma"][eval exp="f.image_base_ch03 = '_base_c' , f.ch03_cos = 'ma' , f.stdmsk = 0"]
	;魔法服 破損
	[elsif exp="mp.mad"][eval exp="f.image_base_ch03 = '_base_d' , f.ch03_cos = 'mad' , f.stdmsk = 0"]
	[endif]

	;精液　↑の変数にそのままくっつける 一部服装にしかないんだよなぁ
	[if    exp="mp.eki && (mp.ha || mp.mad)"][eval exp="f.image_base_ch03 = f.image_base_ch03 + '1'"]
	[else][eval exp="f.image_base_ch03 = f.image_base_ch03 + '0'"]
	[endif]

	;ポーズ　↑の変数にそのままくっつける
	[if    exp="mp.p1"][eval exp="f.image_base_ch03 = f.image_base_ch03 + '_p1'"]
	[elsif exp="mp.p2"][eval exp="f.image_base_ch03 = f.image_base_ch03 + '_p2'"]
;	[else]
;		;インフォ出すのはデバッグ時だけにするか
;		[call storage="macro08_std.ks" target=*no_coss  cond="kag.debugMenu.visible == true"]
;		[eval exp="f.image_base_ch03 = '_服1' , f.stdmsk = 0"]
	[endif]

	;フェイスウィンドウ用定義。先に定義した変数を代入するからevalは分ける。
	[eval exp="f.image_base_ch03w = f.image_base_ch03"]

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
	;14.特殊（涙目）

	[eval exp="f.image_face_ch03 = '_face_a'"]

	;精液　↑の変数にそのままくっつける 一部服装にしかないんだよなぁ
	[if    exp="mp.eki && (mp.ha || mp.mad)"][eval exp="f.image_face_ch03 = f.image_face_ch03 + '1'"]
	[else][eval exp="f.image_face_ch03 = f.image_face_ch03 + '0'"]
	[endif]

	[eval exp="f.image_face_ch03 = f.image_face_ch03 + '_p1'"]

	[if    exp="mp.f01" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_01'"]
	[elsif exp="mp.f02" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_02'"]
	[elsif exp="mp.f03" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_03'"]
	[elsif exp="mp.f04" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_04'"]
	[elsif exp="mp.f05" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_05'"]
	[elsif exp="mp.f06" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_06'"]
	[elsif exp="mp.f07" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_07'"]
	[elsif exp="mp.f08" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_08'"]
	[elsif exp="mp.f09" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_09'"]
	[elsif exp="mp.f10" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_10'"]
	[elsif exp="mp.f11" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_11'"]
	[elsif exp="mp.f12" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_12'"]
	[elsif exp="mp.f13" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_13'"]
	[elsif exp="mp.f14" ][eval exp="f.image_face_ch03 = f.image_face_ch03 + '_14'"]
	[else]
		[call storage="macro08_std.ks" target=*no_face  cond="kag.debugMenu.visible == true"]
		[eval exp="f.image_face_ch03 = '_01'"]
	[endif]

	;頬染めの有無定義
	;今回も別々にしないといけないかなぁ
	[if    exp="mp.ho || mp.hoho"]	[eval exp="f.image_face3_ch03 = '1'"]
	[else]				[eval exp="f.image_face3_ch03 = '0'"]
	[endif]

	;表情の変数に服装ごと打ち分けと頬染め有無を足して再定義
	[eval exp="f.image_face_ch03 = f.image_face_ch03 + f.image_face2_ch03 + f.image_face3_ch03"]

	;フェイスウィンドウ用定義
	;ベースファイル名定義
	[eval exp="f.face_win_char03_base   = sf.image_name_ch03 + 'w' + f.image_base_ch03w"]

	;表情ファイル名定義
	[eval exp="f.face_win_char03_parts1 = sf.image_name_ch03 + 's' + f.image_face_ch03"]
	;ほほ
;	[eval exp="f.face_win_char03_parts2 = sf.image_name_ch03 + '小' + sf.image_hoho"  cond="mp.ho || mp.hoho"]

	;ファイル存在してるかチェックするには統一した変数にいれないとだめか
	[eval exp="f.image_std_base = sf.image_name_ch03 + f.image_size_ch03 + f.image_base_ch03"]
	[eval exp="f.image_std_face = sf.image_name_ch03 + f.image_size_ch03 + f.image_face_ch03"]

	;～～～～～～～～～～～画像読み込み～～～～～～～～～～～
;ファイル名定義ですでにフェイルセーフ入れてるからチェックいれなくても良さそうだけど、間違った変数名定義されしまった時用に
@if exp="(existentImage_std_base_check(f.image_std_base)!==false)"
	;ベース
	[image * storage="&f.image_std_base" layer="&f.layer_ch03" index="&f.index_ch03" page=%page|back visible=true left="&f.pos_ch03_x" top="&f.pos_ch03_y" opacity=%opacity|255 cond="mp.off == void"]
@endif
@if exp="(existentImage_std_face_check(f.image_std_face)!==false)"
	;表情
	[pimage  storage="&f.image_std_face" layer="&f.layer_ch03" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
;	;表情 追加パーツ
;	[if    exp="mp.ho || mp.hoho"]
;		[pimage storage="&sf.image_name_ch03 + f.image_size_ch03 + sf.image_hoho" layer="&f.layer_ch03" page=%page|back visible=true dx=0 dy=0 mode=mul opacity=180 cond="mp.off == void"]
;	[endif]
;	;表情 追加パーツ
;	[if    exp="mp."]
;	[endif]
@endif

	;blur強度が書かれてればここで変数に入れちゃう。
	[if exp="(mp.blur_x != void || mp.blur_y != void)"]
		[eval exp="f.bluron_chara03     = 1"]
		[eval exp="f.blur_layer_chara03 = f.layer_ch03"]
		[eval exp="f.blur_x_chara03     = mp.blur_x" cond="mp.blur_x != void"]
		[eval exp="f.blur_y_chara03     = mp.blur_y" cond="mp.blur_y != void"]
		;blur命令
		[blur layer="&f.blur_layer_chara03" page=back blur_x="&f.blur_x" blur_y="&f.blur_y" cond="mp.blur_x|mp.blur_y"]
	[endif]


	;blur強度が書かれてなければ0にしておく
	[eval exp="f.bluron_chara03 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_x_chara03 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_y_chara03 = 0" cond="mp.blur_x == void && mp.blur_y == void"]

[endmacro]


[return]


