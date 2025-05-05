;macro14_macro_zoom

;拡大処理打ち分け追加 始点座標と初期座標は同じものを使うので、拡大したサイズで最初から表示される。動的に拡大したい場合はタグを直打ち


;tjsを使ったサブルーチンzoom_sub.ksは再表示時に重いし、システム画面行ったり来たりするとメモリエラー出るからやめ。
;ただかのは背景とイベントCGのサイズが違うから別々にマクロを組む


;これはtransさせるからbackに読み込むマクロ
[macro name=zoom_back]

;z=100だったらスルー
[if exp="mp.z != 100"]
	;ファイル名は各マクロ内でこの変数に入れとく。ロード時やシステム戻り時に使う
	;[eval exp="f.bg_tmp = mp.storage"]
	;拡縮中である変数
	[eval exp="f.zoomon = 1"]

	;各種属性
	[eval exp="f.layer = mp.layer"]
	[eval exp="f.layer = 0"  cond="mp.layer == void"]
	[eval exp="f.x = mp.x"]
	[eval exp="f.x = 0"  cond="mp.x == void"]
	[eval exp="f.y = mp.y"]
	[eval exp="f.y = 0"  cond="mp.y == void"]
	[eval exp="f.z = mp.z"]
	[eval exp="f.z = f.z/100"]

	;背景時
	[eval exp="f.w = int + (1280*f.z)" cond=" f.BGorEV == 1"]
	[eval exp="f.h = int + (720*f.z)" cond=" f.BGorEV == 1"]
	;イベントCG時
	[eval exp="f.w = int + (1280*f.z)" cond=" f.BGorEV == 2"]
	[eval exp="f.h = int + (720*f.z)"  cond=" f.BGorEV == 2"]

	[fgzoom_back storage="&f.bg_tmp" layer="&f.layer" sl="&f.x" st="&f.y" sw="&f.w" sh="&f.h" dl="&f.x" dt="&f.y" dw="&f.w" dh="&f.h" time=0 accel=1]
	[wfgzoom_back]
[endif]

[endmacro]




;これはtransさせない（ロード時やシステム戻り時）からforeに読み込むマクロ
;f.x f.y f.zはすでに保存されてるからここでは定義しない
[macro name=zoom_fore]

	;背景時
	[eval exp="f.w = int + (1280*f.z)" cond=" f.BGorEV == 1"]
	[eval exp="f.h = int + (720*f.z)" cond=" f.BGorEV == 1"]
	;イベントCG時
	[eval exp="f.w = int + (1280*f.z)" cond=" f.BGorEV == 2"]
	[eval exp="f.h = int + (720*f.z)"  cond=" f.BGorEV == 2"]

	[fgzoom storage="&f.bg_tmp" layer="&f.layer" sl="&f.x" st="&f.y" sw="&f.w" sh="&f.h" dl="&f.x" dt="&f.y" dw="&f.w" dh="&f.h" time=0 accel=1]
	[wfgzoom]
	;デバッグのシナリオ再読み込みするとロード時に反映されなく気がするから一応やっておこう
	[layopt layer="&f.layer" page=fore visible=true opacity=255]
[endmacro]



[return]
