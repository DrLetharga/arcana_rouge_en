;=============================================================
;ブラーマクロ
;=============================================================

;使い方　背景のみ。イベントには組み込んでない。
;[bg storage="BG01a" blur_x=5 blur_y=5][trans_c cross time=500]
[macro name=blur]
;	[eval exp="kag.getLayerFromElm(mp).doBoxBlur(+mp.x, +mp.y)"]
	[eval exp="kag.getLayerFromElm(mp).doBoxBlur(+mp.blur_x, +mp.blur_y)"]
	;システム移動やロードで復旧しないから変数に保存
	[eval exp="f.bluron = 1"]
	;layerと強度 bgマクロ内で入れたから不要か 単独でこのマクロ使う場合のはダメになったけど。
	;[eval exp="f.blur_layer = mp.layer"]
	;[eval exp="f.blur_x = mp.blur_x"]
	;[eval exp="f.blur_y = mp.blur_y"]
[endmacro]


;ブラー消去（元の状態に戻す）
[macro name=blur_off]
	[bg storage="&f.bg_tmp" charaon][trans_c cross time=%time|500]
	[eval exp="f.bluron = 0"]
	[eval exp="f.blur_x = 0"]
	[eval exp="f.blur_y = 0"]
[endmacro]


;単独でblur使う場合。既に画像が貼られてる状態で使う。
;使い方
;[blur layer=任意 page=fore blur_x=5 blur_y=5]
[macro name=blur]
;	[eval exp="kag.getLayerFromElm(mp).doBoxBlur(+mp.x, +mp.y)"]
	[eval exp="kag.getLayerFromElm(mp).doBoxBlur(+mp.blur_x, +mp.blur_y)"]
	;システム移動やロードで復旧しないから変数に保存
	[eval exp="f.bluron = 1"]
	;layerと強度
	[eval exp="f.blur_layer = mp.layer"]
	[eval exp="f.blur_x = mp.blur_x"]
	[eval exp="f.blur_y = mp.blur_y"]
[endmacro]


;システム移動戻りとロード用
[macro name=blur_again]
	[blur layer="&f.blur_layer"         page=fore blur_x="&f.blur_x"         blur_y="&f.blur_y"         cond="f.bluron         == 1 && f.BGorEV != 2"]
	[blur layer="&f.blur_layer_chara01" page=fore blur_x="&f.blur_x_chara01" blur_y="&f.blur_y_chara01" cond="f.bluron_chara01 == 1 && f.BGorEV != 2"]
	[blur layer="&f.blur_layer_chara02" page=fore blur_x="&f.blur_x_chara02" blur_y="&f.blur_y_chara02" cond="f.bluron_chara02 == 1 && f.BGorEV != 2"]
	[blur layer="&f.blur_layer_chara03" page=fore blur_x="&f.blur_x_chara03" blur_y="&f.blur_y_chara03" cond="f.bluron_chara03 == 1 && f.BGorEV != 2"]
	[blur layer="&f.blur_layer_chara04" page=fore blur_x="&f.blur_x_chara04" blur_y="&f.blur_y_chara04" cond="f.bluron_chara04 == 1 && f.BGorEV != 2"]
	[blur layer="&f.blur_layer_chara05" page=fore blur_x="&f.blur_x_chara05" blur_y="&f.blur_y_chara05" cond="f.bluron_chara05 == 1 && f.BGorEV != 2"]
	[blur layer="&f.blur_layer_chara06" page=fore blur_x="&f.blur_x_chara06" blur_y="&f.blur_y_chara06" cond="f.bluron_chara06 == 1 && f.BGorEV != 2"]
	[blur layer="&f.blur_layer_chara07" page=fore blur_x="&f.blur_x_chara07" blur_y="&f.blur_y_chara07" cond="f.bluron_chara07 == 1 && f.BGorEV != 2"]
	[blur layer="&f.blur_layer_chara08" page=fore blur_x="&f.blur_x_chara08" blur_y="&f.blur_y_chara08" cond="f.bluron_chara08 == 1 && f.BGorEV != 2"]
	[blur layer="&f.blur_layer_chara09" page=fore blur_x="&f.blur_x_chara09" blur_y="&f.blur_y_chara09" cond="f.bluron_chara09 == 1 && f.BGorEV != 2"]
[endmacro]

;=============================================================

[return]
