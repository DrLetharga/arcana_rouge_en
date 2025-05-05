;---------------------------------------
;主人公	シルエット
;---------------------------------------
;ファイル名の頭
[eval exp="sf.image_name_ch05  = 'ch05_'"]

[eval exp="sf.ch05_sml_w = 366"]
[eval exp="sf.ch05_sml_h = 1127"]
[eval exp="sf.ch05_mid_w = 488"]
[eval exp="sf.ch05_mid_h = 1503"]
[eval exp="sf.ch05_lag_w = 731"]
[eval exp="sf.ch05_lag_h = 2254"]
[eval exp="sf.ch05_xla_w = 1219"]
[eval exp="sf.ch05_xla_h = 3757"]

[eval exp="tf.std_w = sf.ch05_sml_w"]
[eval exp="sf.ch05_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 0)"]
[eval exp="sf.ch05_sml_le  = int + ((sf.ch05_sml_ce - tf.std_w)    - 50)"]
[eval exp="sf.ch05_sml_lc  = int + ((sf.ch05_sml_ce - tf.std_w/2)  - 0)"]
[eval exp="sf.ch05_sml_rc  = int + ((sf.ch05_sml_ce + tf.std_w/2)  + 0)"]
[eval exp="sf.ch05_sml_ri  = int + ((sf.ch05_sml_ce + tf.std_w)    + 50)"]
[eval exp="sf.ch05_sml_y = 10"]

[eval exp="tf.std_w = sf.ch05_mid_w"]
[eval exp="sf.ch05_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 0)"]
[eval exp="sf.ch05_mid_le  = int + ((sf.ch05_mid_ce - tf.std_w)    + 80)"]
[eval exp="sf.ch05_mid_lc  = int + ((sf.ch05_mid_ce - tf.std_w/2)  + 20)"]
[eval exp="sf.ch05_mid_rc  = int + ((sf.ch05_mid_ce + tf.std_w/2)  - 20)"]
[eval exp="sf.ch05_mid_ri  = int + ((sf.ch05_mid_ce + tf.std_w)    - 80)"]
[eval exp="sf.ch05_mid_y = 10"]

[eval exp="tf.std_w = sf.ch05_lag_w"]
[eval exp="sf.ch05_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 0)"]
;大はレフト・ライトをレフトセンター・ライトセンターと同じにしておく
[eval exp="sf.ch05_lag_le  = int + ((sf.ch05_lag_ce - tf.std_w/2) + 70)"]
[eval exp="sf.ch05_lag_lc  = int + ((sf.ch05_lag_ce - tf.std_w/2) + 70)"]
[eval exp="sf.ch05_lag_rc  = int + ((sf.ch05_lag_ce + tf.std_w/2) - 70)"]
[eval exp="sf.ch05_lag_ri  = int + ((sf.ch05_lag_ce + tf.std_w/2) - 70)"]
[eval exp="sf.ch05_lag_y = 10"]

[eval exp="tf.std_w = sf.ch05_xla_w"]
[eval exp="sf.ch05_xla_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 0)"]
;大はレフト・ライトをレフトセンター・ライトセンターと同じにしておく
[eval exp="sf.ch05_xla_le  = int + ((sf.ch05_xla_ce - tf.std_w/2) + 250)"]
[eval exp="sf.ch05_xla_lc  = int + ((sf.ch05_xla_ce - tf.std_w/2) + 250)"]
[eval exp="sf.ch05_xla_rc  = int + ((sf.ch05_xla_ce + tf.std_w/2) - 250)"]
[eval exp="sf.ch05_xla_ri  = int + ((sf.ch05_xla_ce + tf.std_w/2) - 250)"]
[eval exp="sf.ch05_xla_y = -100"]

[macro name=std_syu]
	[eval exp=%exp]

	;パーツ一旦カラに
	[eval exp="f.face_win_char05_parts2 = 0"]
	[eval exp="f.face_win_char05_parts3 = 0"]
	;フェイスウィンドウ用　ポーズの打ち分け用 座標変わらないから1でいいか
	[eval exp="f.face_win_char05_pose = 1"]
	[backlay_c cond="mp.off == void"]

	;～～～～～～～～～～～大になったら背景も大にするためのマクロ～～～～～～～～～～～
;やっぱ複雑すぎでは
;	[bg_size_change *]

	;変数定義だけしてimageタグは最後でいいんじゃないか？
	;～～～～～～～～～～～サイズ・レイヤ・座標定義～～～～～～～～～～～

	;レイヤを未指定の時は自動でレイヤを確定する
			;揺らしで使うレイヤも定義しちゃう
;	[if    exp="mp.ce"][eval exp="f.layer = sf.layerC  , f.layer_ch05 = sf.layerC "]
;	[elsif exp="mp.le"][eval exp="f.layer = sf.layerL  , f.layer_ch05 = sf.layerL "]
;	[elsif exp="mp.ri"][eval exp="f.layer = sf.layerR  , f.layer_ch05 = sf.layerR "]
;	[elsif exp="mp.lc"][eval exp="f.layer = sf.layerLC , f.layer_ch05 = sf.layerLC"]
;	[elsif exp="mp.rc"][eval exp="f.layer = sf.layerRC , f.layer_ch05 = sf.layerRC"]
;	;上記以外の座標を入力
;	[else]
;	[eval exp="f.layer = mp.layer  , f.layer_ch05 = mp.layer "]
;	[endif]
	;↑はサイズ内でやったほうが処理減るか。f.layerもいらないな
	
	;サイズ 小
	[if    exp="mp.s"]

;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch05は揺らしで使う判定用。f.image_size_ch05はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 's' , f.stdsize_ch05 = 's' , f.image_size_ch05 = 's'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch05 = sf.layerC  , f.pos_ch05 = 'ce'"][eval exp="f.pos_ch05_x = sf.ch05_sml_ce" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_sml_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch05 = sf.layerL  , f.pos_ch05 = 'le'"][eval exp="f.pos_ch05_x = sf.ch05_sml_le" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_sml_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch05 = sf.layerR  , f.pos_ch05 = 'ri'"][eval exp="f.pos_ch05_x = sf.ch05_sml_ri" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_sml_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch05 = sf.layerLC , f.pos_ch05 = 'lc'"][eval exp="f.pos_ch05_x = sf.ch05_sml_lc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_sml_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch05 = sf.layerRC , f.pos_ch05 = 'rc'"][eval exp="f.pos_ch05_x = sf.ch05_sml_rc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_sml_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch05_x = sf['ch05_sml_' + f.pos_ch05] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch05_y = sf.ch05_sml_y + (+mp.y)"                cond="mp.y != void"]


	;サイズ 中
	[elsif exp="mp.m"]
;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch05は揺らしで使う判定用。f.image_size_ch05はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'm' , f.stdsize_ch05 = 'm' , f.image_size_ch05 = 'm'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch05 = sf.layerC  , f.pos_ch05 = 'ce'"][eval exp="f.pos_ch05_x = sf.ch05_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch05 = sf.layerL  , f.pos_ch05 = 'le'"][eval exp="f.pos_ch05_x = sf.ch05_mid_le" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch05 = sf.layerR  , f.pos_ch05 = 'ri'"][eval exp="f.pos_ch05_x = sf.ch05_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch05 = sf.layerLC , f.pos_ch05 = 'lc'"][eval exp="f.pos_ch05_x = sf.ch05_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch05 = sf.layerRC , f.pos_ch05 = 'rc'"][eval exp="f.pos_ch05_x = sf.ch05_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch05_x = sf['ch05_mid_' + f.pos_ch05] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch05_y = sf.ch05_mid_y + (+mp.y)"                cond="mp.y != void"]
	;サイズ 大
	[elsif exp="mp.l"]
;		[bg_l *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch05は揺らしで使う判定用。f.image_size_ch05はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'l' , f.stdsize_ch05 = 'l' , f.image_size_ch05 = 'l'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch05 = sf.layerC  , f.pos_ch05 = 'ce'"][eval exp="f.pos_ch05_x = sf.ch05_lag_ce" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_lag_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch05 = sf.layerL  , f.pos_ch05 = 'le'"][eval exp="f.pos_ch05_x = sf.ch05_lag_le" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_lag_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch05 = sf.layerR  , f.pos_ch05 = 'ri'"][eval exp="f.pos_ch05_x = sf.ch05_lag_ri" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_lag_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch05 = sf.layerLC , f.pos_ch05 = 'lc'"][eval exp="f.pos_ch05_x = sf.ch05_lag_lc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_lag_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch05 = sf.layerRC , f.pos_ch05 = 'rc'"][eval exp="f.pos_ch05_x = sf.ch05_lag_rc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_lag_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch05_x = sf['ch05_lag_' + f.pos_ch05] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch05_y = sf.ch05_lag_y + (+mp.y)"                cond="mp.y != void"]
	;サイズ 大
	[elsif exp="mp.xl"]
;		[bg_l *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch05は揺らしで使う判定用。f.image_size_ch05はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'x' , f.stdsize_ch05 = 'x' , f.image_size_ch05 = 'x'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch05 = sf.layerC  , f.pos_ch05 = 'ce'"][eval exp="f.pos_ch05_x = sf.ch05_xla_ce" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_xla_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch05 = sf.layerL  , f.pos_ch05 = 'le'"][eval exp="f.pos_ch05_x = sf.ch05_xla_le" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_xla_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch05 = sf.layerR  , f.pos_ch05 = 'ri'"][eval exp="f.pos_ch05_x = sf.ch05_xla_ri" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_xla_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch05 = sf.layerLC , f.pos_ch05 = 'lc'"][eval exp="f.pos_ch05_x = sf.ch05_xla_lc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_xla_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch05 = sf.layerRC , f.pos_ch05 = 'rc'"][eval exp="f.pos_ch05_x = sf.ch05_xla_rc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_xla_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch05_x = sf['ch05_xla_' + f.pos_ch05] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch05_y = sf.ch05_xla_y + (+mp.y)"                cond="mp.y != void"]
	;フェイルセーフ　中サイズにしておく
	[else]
;		[bg_s *]
		;f.stdsizeは最後に貼ったキャラの変数を保存。f.stdsize_ch05は揺らしで使う判定用。f.image_size_ch05はimageタグで使うファイル名生成用。
		[eval exp="f.stdsize = 'm' , f.stdsize_ch05 = 'm' , f.image_size_ch05 = 'm'"]
		;座標変数定義
		[if    exp="mp.ce"][eval exp="f.layer_ch05 = sf.layerC  , f.pos_ch05 = 'ce'"][eval exp="f.pos_ch05_x = sf.ch05_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch05 = sf.layerL  , f.pos_ch05 = 'le'"][eval exp="f.pos_ch05_x = sf.ch05_mid_le" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch05 = sf.layerR  , f.pos_ch05 = 'ri'"][eval exp="f.pos_ch05_x = sf.ch05_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch05 = sf.layerLC , f.pos_ch05 = 'lc'"][eval exp="f.pos_ch05_x = sf.ch05_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch05 = sf.layerRC , f.pos_ch05 = 'rc'"][eval exp="f.pos_ch05_x = sf.ch05_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[endif]
		;上記以外の座標を入力
		;直入力のときの揺らしどうしようかなぁ mpでいいじゃん
		[eval exp="f.pos_ch05_x = sf['ch05_mid_' + f.pos_ch05] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch05_y = sf.ch05_mid_y + (+mp.y)"                cond="mp.y != void"]
	[endif]

	;レイヤ変えたい場合
	[eval exp="f.layer_ch05 = mp.layer" cond="mp.layer != void"]

	;indexだけの操作ってつくってなかったんだなぁあったほうがいいか
	;index定義　面倒くさいから1000のくらいで書かなくていいようにするか
	[if exp="mp.index"]
		;mpに勝手に1000足すとややこしくなりそうだからこっちは足さない
		[eval exp="f.index_ch05 = mp.index * 1000 + 1000"]
	[else]
		[eval exp="f.index_ch05 = f.layer_ch05 * 1000 + 1000"]
	[endif]

	;～～～～～～～～～～～画像定義～～～～～～～～～～～

	[eval exp="f.image_base_ch05 = '_base' , f.stdmsk = 0"]
	[eval exp="f.image_base_ch05w = f.image_base_ch05"]

	;フェイスウィンドウ用定義
	;ベースファイル名定義
	[eval exp="f.face_win_char05_base   = sf.image_name_ch05 + 'w' + f.image_base_ch05w"]

;	;表情ファイル名定義
;	[eval exp="f.face_win_char05_parts1 = sf.image_name_ch05 + 's' + f.image_face_ch05"]

	;ファイル存在してるかチェックするには統一した変数にいれないとだめか
	[eval exp="f.image_std_base = sf.image_name_ch05 + f.image_size_ch05 + f.image_base_ch05"]
;	[eval exp="f.image_std_face = sf.image_name_ch05 + f.image_size_ch05 + f.image_face_ch05"]

	;～～～～～～～～～～～画像読み込み～～～～～～～～～～～
;ファイル名定義ですでにフェイルセーフ入れてるからチェックいれなくても良さそうだけど、間違った変数名定義されしまった時用に
@if exp="(existentImage_std_base_check(f.image_std_base)!==false)"
	;ベース
	[image * storage="&f.image_std_base" layer="&f.layer_ch05" index="&f.index_ch05" page=%page|back visible=true left="&f.pos_ch05_x" top="&f.pos_ch05_y" opacity=%opacity|255 cond="mp.off == void"]
@endif
;@if exp="(existentImage_std_face_check(f.image_std_face)!==false)"
;	;表情
;	[pimage  storage="&f.image_std_face" layer="&f.layer_ch05" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
;@endif
;
	;blur強度が書かれてればここで変数に入れちゃう。
	[if exp="(mp.blur_x != void || mp.blur_y != void)"]
		[eval exp="f.bluron_chara05     = 1"]
		[eval exp="f.blur_layer_chara05 = f.layer_ch05"]
		[eval exp="f.blur_x_chara05     = mp.blur_x" cond="mp.blur_x != void"]
		[eval exp="f.blur_y_chara05     = mp.blur_y" cond="mp.blur_y != void"]
		;blur命令
		[blur layer="&f.blur_layer_chara05" page=back blur_x="&f.blur_x" blur_y="&f.blur_y" cond="mp.blur_x|mp.blur_y"]
	[endif]


	;blur強度が書かれてなければ0にしておく
	[eval exp="f.bluron_chara05 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_x_chara05 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_y_chara05 = 0" cond="mp.blur_x == void && mp.blur_y == void"]

[endmacro]


;---------------------------------------
;---------------------------------------




[return]


