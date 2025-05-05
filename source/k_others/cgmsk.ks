;cgmsk.ks

;------------------新新セーブマスク------------------
[eval exp="sf.layer_msk_index = 4000"]

;一旦貼られてる差分名含め代入
[eval exp="f.CGfilename_ch = f.mskon"]
;マスク不要差分とかあれば適宜条件書いてリターン
;なんかおかしいな。いつもと違う。怖いからキャラいにっとにするか
;_ev02_b01_up
;[jump target=*no_mask  cond="f.mskon.substring(0,8) == '_ev02' && f.mskon.substring(13,2) == 'up'"]

;変則のマスク定義ならここで条件書いて定義終わりに飛ばす
;[jump target=*定義終わり  cond="f.CGfilename_ch == ''"]

;0123456789
; BIT_ev01
[eval exp="f.CGfilename_ch = f.mskon.substring(0,4)"]


*定義終わり

;	;強制的にデバッグ用というか初期作業用の汎用ダミーマスクに
;	[eval exp="f.CGfilename_ch = '汎用DUMMY'"]





;長尺対策
[image storage="&f.CGfilename_ch + '_msk'" layer="&sf.layer_msk" page=fore visible=false left="&f.msk_x" top="&f.msk_y" opacity=255 index="&sf.layer_msk_index"]



;戻って
[return]
;------------------------------------------------------
*no_mask

[image storage="chara_int" layer="&sf.layer_msk" page=fore visible=false left=0 top=0 opacity=255 index="&sf.layer_msk_index"]

;戻って
[return]

;------------------------------------------------------
;カットインマスク
*cutin_msk
[eval exp="f.layer_msk2       = sf.layer_msk2      "]
[eval exp="f.layer_msk2_index = sf.layer_msk2_index"]

;マスク不要差分とかあれば適宜条件書いてリターン
;[return  cond="f.mskon2 == 'ev20_cut_d'"]
;_et04_a01
;[jump target=*no_mask2  cond="f.mskon2.substring(0,8) == 'BIT_et04'"]

[eval exp="f.CGmsk_name = f.mskon2.substring(0,8)"]
;[eval exp="f.CGmsk_name = 'BIT_ev00_cut'"  cond="f.mskon2.substring(0,12) == '_ev10_cut'"]
;_ev10_cut_a01
[if      exp="f.mskon2.substring(0,10) == '_ev18_g'"]
	[eval exp="f.add_msk = '_msk2'"]
[else]
	[eval exp="f.add_msk = '_msk'"]
[endif]




*カットインマスク定義終わり

;セーブマスク貼って
[image storage="&f.CGmsk_name + f.add_msk" layer="&sf.layer_msk2" page=fore visible=false left=0 top=0 opacity=255 index="&sf.layer_msk2_index"]

;戻って
[return]

;------------------------------------------------------
*no_mask2
[image storage="chara_int" layer="&sf.layer_msk2" page=fore visible=false left=0 top=0 opacity=255 index="&sf.layer_msk2_index"]

[return]

;------------------------------------------------------
*stdmsk_off



[return]

