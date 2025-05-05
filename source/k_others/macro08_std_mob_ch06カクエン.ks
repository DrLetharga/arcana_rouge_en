;---------------------------------------
;カクエン
;---------------------------------------
;ファイル名の頭
[eval exp="sf.image_name_ch06  = 'ch06_'"]

[eval exp="sf.ch06_sml_w = 1050"]
[eval exp="sf.ch06_sml_h = 1350"]
[eval exp="sf.ch06_mid_w = 1400"]
[eval exp="sf.ch06_mid_h = 1800"]
[eval exp="sf.ch06_lag_w = 2100"]
[eval exp="sf.ch06_lag_h = 2700"]
[eval exp="sf.ch06_xla_w = 3500"]
[eval exp="sf.ch06_xla_h = 4500"]

[eval exp="tf.std_w = sf.ch06_sml_w"]
[eval exp="sf.ch06_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 50)"]
[eval exp="sf.ch06_sml_le  = int + ((sf.ch06_sml_ce - tf.std_w)    + 600)"]
[eval exp="sf.ch06_sml_lc  = int + ((sf.ch06_sml_ce - tf.std_w/2)  + 300)"]
[eval exp="sf.ch06_sml_rc  = int + ((sf.ch06_sml_ce + tf.std_w/2)  - 300)"]
[eval exp="sf.ch06_sml_ri  = int + ((sf.ch06_sml_ce + tf.std_w)    - 600)"]
[eval exp="sf.ch06_sml_y = -160"]

[eval exp="tf.std_w = sf.ch06_mid_w"]
[eval exp="sf.ch06_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 65)"]
[eval exp="sf.ch06_mid_le  = int + ((sf.ch06_mid_ce - tf.std_w)    + 1000)"]
[eval exp="sf.ch06_mid_lc  = int + ((sf.ch06_mid_ce - tf.std_w/2)  + 500)"]
[eval exp="sf.ch06_mid_rc  = int + ((sf.ch06_mid_ce + tf.std_w/2)  - 500)"]
[eval exp="sf.ch06_mid_ri  = int + ((sf.ch06_mid_ce + tf.std_w)    - 1000)"]
[eval exp="sf.ch06_mid_y = -220"]

[eval exp="tf.std_w = sf.ch06_lag_w"]
[eval exp="sf.ch06_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 100)"]
;大はレフト・ライトをレフトセンター・ライトセンターと同じにしておく
[eval exp="sf.ch06_lag_le  = int + ((sf.ch06_lag_ce - tf.std_w/2) + 700)"]
[eval exp="sf.ch06_lag_lc  = int + ((sf.ch06_lag_ce - tf.std_w/2) + 700)"]
[eval exp="sf.ch06_lag_rc  = int + ((sf.ch06_lag_ce + tf.std_w/2) - 700)"]
[eval exp="sf.ch06_lag_ri  = int + ((sf.ch06_lag_ce + tf.std_w/2) - 700)"]
[eval exp="sf.ch06_lag_y = -340"]

[eval exp="tf.std_w = sf.ch06_xla_w"]
[eval exp="sf.ch06_xla_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 180)"]
;大はレフト・ライトをレフトセンター・ライトセンターと同じにしておく
[eval exp="sf.ch06_xla_le  = int + ((sf.ch06_xla_ce - tf.std_w/2) + 1350)"]
[eval exp="sf.ch06_xla_lc  = int + ((sf.ch06_xla_ce - tf.std_w/2) + 1350)"]
[eval exp="sf.ch06_xla_rc  = int + ((sf.ch06_xla_ce + tf.std_w/2) - 1350)"]
[eval exp="sf.ch06_xla_ri  = int + ((sf.ch06_xla_ce + tf.std_w/2) - 1350)"]
[eval exp="sf.ch06_xla_y = -600"]

[macro name=std_kak]
	[eval exp=%exp]

	;パーツ一旦カラに
	[eval exp="f.face_win_char06_parts2 = 0"]
	[eval exp="f.face_win_char06_parts3 = 0"]
	;フェイスウィンドウ用　ポーズの打ち分け用 座標変わらないから1でいいか
	[eval exp="f.face_win_char06_pose = 1"]

	[backlay_c cond="mp.off == void"]

	;～～～～～～～～～～～大になったら背景も大にするためのマクロ～～～～～～～～～～～
;やっぱ複雑すぎでは
;	[bg_size_change *]

	;変数定義だけしてimageタグは最後でいいんじゃないか？
	;～～～～～～～～～～～サイズ・レイヤ・座標定義～～～～～～～～～～～

	;レイヤを未指定の時は自動でレイヤを確定する
			;揺らしで使うレイヤも定義しちゃう
;	[if    exp="mp.ce"][eval exp="f.layer = sf.layerC  , f.layer_ch06 = sf.layerC "]
;	[elsif exp="mp.le"][eval exp="f.layer = sf.layerL  , f.layer_ch06 = sf.layerL "]
;	[elsif exp="mp.ri"][eval exp="f.layer = sf.layerR  , f.layer_ch06 = sf.layerR "]
;	[elsif exp="mp.lc"][eval exp="f.layer = sf.layerLC , f.layer_ch06 = sf.layerLC"]
;	[elsif exp="mp.rc"][eval exp="f.layer = sf.layerRC , f.layer_ch06 = sf.layerRC"]
;	;上記以外の座標を入力
;	[else]
;	[eval exp="f.layer = mp.layer  , f.layer_ch06 = mp.layer "]
;	[endif]
	;↑はサイズ内でやったほうが処理減るか。f.layerもいらないな
	
	;サイズ 小
	[if    exp="mp.s"]

;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch06は揺らしで使う判定用。f.image_size_ch06はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 's' , f.stdsize_ch06 = 's' , f.image_size_ch06 = 's'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch06 = sf.layerC  , f.pos_ch06 = 'ce'"][eval exp="f.pos_ch06_x = sf.ch06_sml_ce" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_sml_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch06 = sf.layerL  , f.pos_ch06 = 'le'"][eval exp="f.pos_ch06_x = sf.ch06_sml_le" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_sml_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch06 = sf.layerR  , f.pos_ch06 = 'ri'"][eval exp="f.pos_ch06_x = sf.ch06_sml_ri" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_sml_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch06 = sf.layerLC , f.pos_ch06 = 'lc'"][eval exp="f.pos_ch06_x = sf.ch06_sml_lc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_sml_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch06 = sf.layerRC , f.pos_ch06 = 'rc'"][eval exp="f.pos_ch06_x = sf.ch06_sml_rc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_sml_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch06_x = sf['ch06_sml_' + f.pos_ch06] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch06_y = sf.ch06_sml_y + (+mp.y)"                cond="mp.y != void"]


	;サイズ 中
	[elsif exp="mp.m"]
;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch06は揺らしで使う判定用。f.image_size_ch06はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'm' , f.stdsize_ch06 = 'm' , f.image_size_ch06 = 'm'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch06 = sf.layerC  , f.pos_ch06 = 'ce'"][eval exp="f.pos_ch06_x = sf.ch06_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch06 = sf.layerL  , f.pos_ch06 = 'le'"][eval exp="f.pos_ch06_x = sf.ch06_mid_le" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch06 = sf.layerR  , f.pos_ch06 = 'ri'"][eval exp="f.pos_ch06_x = sf.ch06_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch06 = sf.layerLC , f.pos_ch06 = 'lc'"][eval exp="f.pos_ch06_x = sf.ch06_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch06 = sf.layerRC , f.pos_ch06 = 'rc'"][eval exp="f.pos_ch06_x = sf.ch06_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch06_x = sf['ch06_mid_' + f.pos_ch06] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch06_y = sf.ch06_mid_y + (+mp.y)"                cond="mp.y != void"]
	;サイズ 大
	[elsif exp="mp.l"]
;		[bg_l *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch06は揺らしで使う判定用。f.image_size_ch06はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'l' , f.stdsize_ch06 = 'l' , f.image_size_ch06 = 'l'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch06 = sf.layerC  , f.pos_ch06 = 'ce'"][eval exp="f.pos_ch06_x = sf.ch06_lag_ce" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_lag_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch06 = sf.layerL  , f.pos_ch06 = 'le'"][eval exp="f.pos_ch06_x = sf.ch06_lag_le" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_lag_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch06 = sf.layerR  , f.pos_ch06 = 'ri'"][eval exp="f.pos_ch06_x = sf.ch06_lag_ri" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_lag_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch06 = sf.layerLC , f.pos_ch06 = 'lc'"][eval exp="f.pos_ch06_x = sf.ch06_lag_lc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_lag_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch06 = sf.layerRC , f.pos_ch06 = 'rc'"][eval exp="f.pos_ch06_x = sf.ch06_lag_rc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_lag_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch06_x = sf['ch06_lag_' + f.pos_ch06] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch06_y = sf.ch06_lag_y + (+mp.y)"                cond="mp.y != void"]
	;サイズ 大
	[elsif exp="mp.xl"]
;		[bg_l *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch06は揺らしで使う判定用。f.image_size_ch06はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'x' , f.stdsize_ch06 = 'x' , f.image_size_ch06 = 'x'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch06 = sf.layerC  , f.pos_ch06 = 'ce'"][eval exp="f.pos_ch06_x = sf.ch06_xla_ce" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_xla_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch06 = sf.layerL  , f.pos_ch06 = 'le'"][eval exp="f.pos_ch06_x = sf.ch06_xla_le" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_xla_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch06 = sf.layerR  , f.pos_ch06 = 'ri'"][eval exp="f.pos_ch06_x = sf.ch06_xla_ri" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_xla_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch06 = sf.layerLC , f.pos_ch06 = 'lc'"][eval exp="f.pos_ch06_x = sf.ch06_xla_lc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_xla_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch06 = sf.layerRC , f.pos_ch06 = 'rc'"][eval exp="f.pos_ch06_x = sf.ch06_xla_rc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_xla_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch06_x = sf['ch06_xla_' + f.pos_ch06] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch06_y = sf.ch06_xla_y + (+mp.y)"                cond="mp.y != void"]
	;フェイルセーフ　中サイズにしておく
	[else]
;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch06は揺らしで使う判定用。f.image_size_ch06はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'm' , f.stdsize_ch06 = 'm' , f.image_size_ch06 = 'm'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch06 = sf.layerC  , f.pos_ch06 = 'ce'"][eval exp="f.pos_ch06_x = sf.ch06_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch06 = sf.layerL  , f.pos_ch06 = 'le'"][eval exp="f.pos_ch06_x = sf.ch06_mid_le" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch06 = sf.layerR  , f.pos_ch06 = 'ri'"][eval exp="f.pos_ch06_x = sf.ch06_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch06 = sf.layerLC , f.pos_ch06 = 'lc'"][eval exp="f.pos_ch06_x = sf.ch06_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch06 = sf.layerRC , f.pos_ch06 = 'rc'"][eval exp="f.pos_ch06_x = sf.ch06_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch06_x = sf['ch06_mid_' + f.pos_ch06] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch06_y = sf.ch06_mid_y + (+mp.y)"                cond="mp.y != void"]
	[endif]

	;レイヤ変えたい場合
	[eval exp="f.layer_ch06 = mp.layer" cond="mp.layer != void"]

	;indexだけの操作ってつくってなかったんだなぁあったほうがいいか
	;index定義　面倒くさいから1000のくらいで書かなくていいようにするか
	[if exp="mp.index"]
		;mpに勝手に1000足すとややこしくなりそうだからこっちは足さない
		[eval exp="f.index_ch06 = mp.index * 1000 + 1000"]
	[else]
		[eval exp="f.index_ch06 = f.layer_ch06 * 1000 + 1000"]
	[endif]

	;～～～～～～～～～～～画像定義～～～～～～～～～～～

	[eval exp="f.image_base_ch06 = '_base_a' , f.stdmsk = 0"]
	;オーラ
	[if    exp="mp.o1 || mp.o"][eval exp="f.image_base_ch06 = f.image_base_ch06 + '1'"]
	;燃焼
	[elsif exp="mp.o2"][eval exp="f.image_base_ch06 = f.image_base_ch06 + '2'"]
	[else][eval exp="f.image_base_ch06 = f.image_base_ch06 + '0'"]
	[endif]

	;フェイスウィンドウ用定義
	[eval exp="f.image_base_ch06w = f.image_base_ch06"]

	;ベースファイル名定義
	[eval exp="f.face_win_char06_base   = sf.image_name_ch06 + 'w' + f.image_base_ch06w"]

;	;表情ファイル名定義
;	[eval exp="f.face_win_char06_parts1 = sf.image_name_ch06 + 's' + f.image_face_ch06"]

	;ファイル存在してるかチェックするには統一した変数にいれないとだめか
	[eval exp="f.image_std_base = sf.image_name_ch06 + f.image_size_ch06 + f.image_base_ch06"]
;	[eval exp="f.image_std_face = sf.image_name_ch06 + f.image_size_ch06 + f.image_face_ch06"]

	;～～～～～～～～～～～画像読み込み～～～～～～～～～～～
;ファイル名定義ですでにフェイルセーフ入れてるからチェックいれなくても良さそうだけど、間違った変数名定義されしまった時用に
@if exp="(existentImage_std_base_check(f.image_std_base)!==false)"
	;ベース
	[image * storage="&f.image_std_base" layer="&f.layer_ch06" index="&f.index_ch06" page=%page|back visible=true left="&f.pos_ch06_x" top="&f.pos_ch06_y" opacity=%opacity|255 cond="mp.off == void"]
@endif
;@if exp="(existentImage_std_face_check(f.image_std_face)!==false)"
;	;表情
;	[pimage  storage="&f.image_std_face" layer="&f.layer_ch06" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
;@endif
;
	;blur強度が書かれてればここで変数に入れちゃう。
	[if exp="(mp.blur_x != void || mp.blur_y != void)"]
		[eval exp="f.bluron_chara06     = 1"]
		[eval exp="f.blur_layer_chara06 = f.layer_ch06"]
		[eval exp="f.blur_x_chara06     = mp.blur_x" cond="mp.blur_x != void"]
		[eval exp="f.blur_y_chara06     = mp.blur_y" cond="mp.blur_y != void"]
		;blur命令
		[blur layer="&f.blur_layer_chara06" page=back blur_x="&f.blur_x" blur_y="&f.blur_y" cond="mp.blur_x|mp.blur_y"]
	[endif]


	;blur強度が書かれてなければ0にしておく
	[eval exp="f.bluron_chara06 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_x_chara06 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_y_chara06 = 0" cond="mp.blur_x == void && mp.blur_y == void"]

[endmacro]


;---------------------------------------
;---------------------------------------




[return]


