;system_config_btch.ks
;ボタンが増えてオンオフの動作が長くなってきたのでsystem_config_mes.ksから分割する。


;-----------------------------------------------------------
;既読未読スキップ
*config_skipall
[unlocklink]
[if exp="sf.allskip == 1"]
	[freeimage layer="&tf.layer_skip" page=fore]
	;[button_chgimage num="&sf.bt_num_skip" graphic="cnf_kidokuskip.png"]
	[button_chgimage num="&sf.bt_num_skip" graphic="cnf_kidoku_midoku"]
	[image left="&tf.cnf_skip_x[0]" top="&tf.cnf_skip_y[0]" storage="cnf_kidokuskip.png" layer=0 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.allskip = false"]
[else]
	[freeimage layer="&tf.layer_skip" page=fore]
	;[button_chgimage num="&sf.bt_num_skip" graphic="cnf_midokuskip.png"]
	[button_chgimage num="&sf.bt_num_skip" graphic="cnf_kidoku_midoku"]
	[image left="&tf.cnf_skip_x[0]" top="&tf.cnf_skip_y[0]" storage="cnf_midokuskip.png" layer=0 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.allskip = true"]
[endif]

;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]






;-----------------------------------------------------------
;選択肢後スキップ
*config_selskip
[unlocklink]
[if exp="sf.sel_skip == 0"]
	[freeimage layer="&tf.layer_sel_skip" page=fore]
	;[button_chgimage num="&sf.bt_num_sel_skip"graphic="cnf_on.png"]
	[button_chgimage num="&sf.bt_num_sel_skip"graphic="cnf_onoff"]
	[image left="&tf.cnf_selskip_x[0]" top="&tf.cnf_selskip_y[0]" storage="cnf_on.png" layer=1 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.sel_skip = 1"]
[else]
	[freeimage layer="&tf.layer_sel_skip" page=fore]
	;[button_chgimage num="&sf.bt_num_sel_skip"graphic="cnf_off.png"]
	[button_chgimage num="&sf.bt_num_sel_skip"graphic="cnf_onoff"]
	[image left="&tf.cnf_selskip_x[0]" top="&tf.cnf_selskip_y[0]" storage="cnf_off.png" layer=1 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.sel_skip = 0"]
[endif]
;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]



;-----------------------------------------------------------
;選択肢後オート
*config_selauto
[unlocklink]
[if exp="sf.sel_auto == 0"]
	[freeimage layer="&tf.layer_sel_auto" page=fore]
	;[button_chgimage num="&sf.bt_num_sel_auto"graphic="cnf_on.png"]
	[button_chgimage num="&sf.bt_num_sel_auto"graphic="cnf_onoff"]
	[image left="&tf.cnf_selauto_x[0]" top="&tf.cnf_selauto_y[0]" storage="cnf_on.png" layer=2 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.sel_auto = 1"]
[else]
	[freeimage layer="&tf.layer_sel_auto" page=fore]
	;[button_chgimage num="&sf.bt_num_sel_auto"graphic="cnf_off.png"]
	[button_chgimage num="&sf.bt_num_sel_auto"graphic="cnf_onoff"]
	[image left="&tf.cnf_selauto_x[0]" top="&tf.cnf_selauto_y[0]" storage="cnf_off.png" layer=2 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.sel_auto = 0"]
[endif]

;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]




;-------------------------------------------------------------
;画面効果
*config_efectskip
[unlocklink]
[if exp="sf.efect == 0"]
	[freeimage layer="&tf.layer_eskip" page=fore]
	;[button_chgimage num="&sf.bt_num_efect"graphic="cnf_on.png"]
	[button_chgimage num="&sf.bt_num_efect"graphic="cnf_onoff"]
	[image left="&tf.cnf_eskip_x[0]" top="&tf.cnf_eskip_y[0]" storage="cnf_on.png" layer=3 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.efect = 1"]
[else]
	[freeimage layer="&tf.layer_eskip" page=fore]
	;[button_chgimage num="&sf.bt_num_efect"graphic="cnf_off.png"]
	[button_chgimage num="&sf.bt_num_efect"graphic="cnf_onoff"]
	[image left="&tf.cnf_eskip_x[0]" top="&tf.cnf_eskip_y[0]" storage="cnf_off.png" layer=3 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.efect = 0"]
[endif]
;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]

;-------------------------------------------------------------
;確認ダイアログ
*config_dialog
[unlocklink]
[if exp="sf.dialog_on == 0"]
	[freeimage layer="&tf.layer_dialog" page=fore]
	;[button_chgimage num="&sf.bt_num_dialog"graphic="cnf_on.png"]
	[button_chgimage num="&sf.bt_num_dialog"graphic="cnf_onoff"]
	[image left="&tf.cnf_dialog_x[0]" top="&tf.cnf_dialog_y[0]" storage="cnf_on.png" layer=4 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.dialog_onVer情報用 = 1"]
	[eval exp="sf.dialog_on = 1"]
[else]
	[freeimage layer="&tf.layer_dialog" page=fore]
	;[button_chgimage num="&sf.bt_num_dialog"graphic="cnf_off.png"]
	[button_chgimage num="&sf.bt_num_dialog"graphic="cnf_onoff"]
	[image left="&tf.cnf_dialog_x[0]" top="&tf.cnf_dialog_y[0]" storage="cnf_off.png" layer=4 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.dialog_onVer情報用 = 0"]
	[eval exp="sf.dialog_on = 0"]
[endif]
;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]



;-------------------------------------------------------------
;//	;メッセージ透過度のスライダーオンオフ
;//
;//	*config_winsld_ON
;//	[unlocklink]
;//		[button_chgimage num="&sf.bt_num_rclick_conf"graphic="cnf_on.png"]
;//		[button_chgimage num="&sf.bt_num_edge"graphic="cnf_off.png"]
;//		[eval exp="sf.winsld_y = 700"]
;//		[eval exp="sf.winsld表示 = 1"]
;//	;デフォルトに戻す処理中ならreturnする
;//	[if exp="tf.conf_default == 1"][return][endif]
;//
;//	[s]
;//
;//	*config_winsld_OFF
;//	[unlocklink]
;//		[button_chgimage num="&sf.bt_num_rclick_conf"graphic="cnf.png"]
;//		[button_chgimage num="&sf.bt_num_edge"graphic="cnf_off.png"]
;//		[eval exp="sf.winsld_y = 720"]
;//		[eval exp="sf.winsld表示 = 0"]
;//	;デフォルトに戻す処理中ならreturnする
;//	[if exp="tf.conf_default == 1"][return][endif]
;//
;//
;//	[s]


;-------------------------------------------------------------
;「ウィンドウ800*600」が選択された
*config_win_small
[unlocklink]
	[freeimage layer="&tf.layer_scr" page=fore]
	; チェックマークのオン／オフを変更
	;[button_chgimage num="&sf.bt_num_win_small"graphic="cnf_win_small.png"]
	[button_chgimage num="&sf.bt_num_win_small"graphic="cnf_win"]
	[image left="&tf.cnf_scr_x[0]" top="&tf.cnf_scr_y[0]" storage="cnf_win_small.png" layer=5 page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_win_cliptop" clipwidth="&sf.cnf_win_clipwidth" clipheight="&sf.cnf_win_clipheight" opacity=255]
	[button_chgimage num="&sf.bt_num_win_def"graphic="cnf_win_default.png"]
	[button_chgimage num="&sf.bt_num_win_full"graphic="cnf_win_full.png"]
	;フルスクリーンならウィンドウ表示にする
	[if exp="kag.fullScreen"]
		[eval exp="kag.onWindowedMenuItemClick(kag)"]
	[endif]
	;800*600に変更。WindowResizable.ksにあったファンクションを使用。
	[eval exp="kag.setInnerSize(960, 540)"]
;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]

;「ウィンドウ1280*720」が選択された
*config_win_default
[unlocklink]
; フルスクリーンなら… ;m:ウィンドウサイズが任意になってた場合1280*720に戻すからこの条件式は入れない。
;[if exp="kag.fullScreen"]
	[freeimage layer="&tf.layer_scr" page=fore]
	; チェックマークのオン／オフを変更
	[button_chgimage num="&sf.bt_num_win_small"graphic="cnf_win_small.png"]
	;[button_chgimage num="&sf.bt_num_win_def"graphic="cnf_win_default.png"]
	[button_chgimage num="&sf.bt_num_win_def"graphic="cnf_win"]
	[image left="&tf.cnf_scr_x[1]" top="&tf.cnf_scr_y[1]" storage="cnf_win_default.png" layer=5 page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_win_cliptop" clipwidth="&sf.cnf_win_clipwidth" clipheight="&sf.cnf_win_clipheight" opacity=255]
	[button_chgimage num="&sf.bt_num_win_full"graphic="cnf_win_full.png"]

	;フルスクリーンならウィンドウ表示にする
	[if exp="kag.fullScreen"]
		[eval exp="kag.onWindowedMenuItemClick(kag)"]
	[endif]
	;1280*720に変更。WindowResizable.ksにあったファンクションを使用。
	[eval exp="kag.setInnerSize(1280, 720)"]
;[endif]

;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]


;「フルスクリーン」が選択された
*config_fullscreen
[unlocklink]
; ウィンドウ表示状態なら…
[if exp="!kag.fullScreen"]
	[freeimage layer="&tf.layer_scr" page=fore]
	; チェックマークのオン／オフを変更
	[button_chgimage num="&sf.bt_num_win_small"graphic="cnf_win_small.png"]
	[button_chgimage num="&sf.bt_num_win_def"graphic="cnf_win_default.png"]
	;[button_chgimage num="&sf.bt_num_win_full"graphic="cnf_win_full.png"]
	[button_chgimage num="&sf.bt_num_win_full"graphic="cnf_win"]
	[image left="&tf.cnf_scr_x[2]" top="&tf.cnf_scr_y[2]" storage="cnf_win_full.png" layer=5 page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_win_cliptop" clipwidth="&sf.cnf_win_clipwidth" clipheight="&sf.cnf_win_clipheight" opacity=255]

	; フルスクリーンにする
	[eval exp="kag.onFullScreenMenuItemClick(kag)"]
[endif]
;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]


;-------------------------------------------------------------
;右クリック機能
*config_rclick_hide
[unlocklink]
	[freeimage layer="&tf.layer_rclick" page=fore]
	; チェックマークのオン／オフを変更
	;[button_chgimage num="&sf.bt_num_rclick_hide" graphic="cnf_rclick_hide.png" ]
	[button_chgimage num="&sf.bt_num_rclick_hide"graphic="cnf_rclick"]
	[image left="&tf.cnf_rclick_x[0]" top="&tf.cnf_rclick_y[0]" storage="cnf_rclick_hide.png" layer=6 page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_rclick_cliptop" clipwidth="&sf.cnf_rclick_clipwidth" clipheight="&sf.cnf_rclick_clipheight" opacity=255]
	[button_chgimage num="&sf.bt_num_rclick_save" graphic="cnf_rclick_save.png"]
	[button_chgimage num="&sf.bt_num_rclick_conf"graphic="cnf_rclick_conf.png"]
	;実際の機能変更はsystembutton_sub.ksとtitle.ksで行う
	;[rclick name=default]
;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]

;セーブ画面呼び出し
*config_rclick_save
[unlocklink]
	[freeimage layer="&tf.layer_rclick" page=fore]
	; チェックマークのオン／オフを変更
	[button_chgimage num="&sf.bt_num_rclick_hide" graphic="cnf_rclick_hide.png"]
	;[button_chgimage num="&sf.bt_num_rclick_save" graphic="cnf_rclick_save.png" ]
	[button_chgimage num="&sf.bt_num_rclick_save"graphic="cnf_rclick"]
	[image left="&tf.cnf_rclick_x[1]" top="&tf.cnf_rclick_y[1]" storage="cnf_rclick_save.png" layer=6 page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_rclick_cliptop" clipwidth="&sf.cnf_rclick_clipwidth" clipheight="&sf.cnf_rclick_clipheight" opacity=255]
	[button_chgimage num="&sf.bt_num_rclick_conf"graphic="cnf_rclick_conf.png"]
	;実際の機能変更はsystembutton_sub.ksとtitle.ksで行う
	;[rclick call=true storage="systembutton_sub.ks" target=*sys_save]
;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]


;設定画面呼び出し
*config_rclick_conf
[unlocklink]
	[freeimage layer="&tf.layer_rclick" page=fore]
	; チェックマークのオン／オフを変更
	[button_chgimage num="&sf.bt_num_rclick_hide" graphic="cnf_rclick_hide.png"]
	[button_chgimage num="&sf.bt_num_rclick_save" graphic="cnf_rclick_save.png"]
	;[button_chgimage num="&sf.bt_num_rclick_conf"graphic="cnf_rclick_conf.png"]
	[button_chgimage num="&sf.bt_num_rclick_conf"graphic="cnf_rclick"]
	[image left="&tf.cnf_rclick_x[2]" top="&tf.cnf_rclick_y[2]" storage="cnf_rclick_conf.png" layer=6 page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_rclick_cliptop" clipwidth="&sf.cnf_rclick_clipwidth" clipheight="&sf.cnf_rclick_clipheight" opacity=255]
	;実際の機能変更はsystembutton_sub.ksとtitle.ksで行う
	;[rclick call=true storage="systembutton_sub.ks" target=*sys_config]
;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]




;-------------------------------------------------------------
;テキスト縁取り
*config_edge
[unlocklink]
[if exp="sf.edge_on == 'false'"]
	[freeimage layer="&tf.layer_edge" page=fore]
	;[button_chgimage num="&sf.bt_num_edge"graphic="cnf_on_on"]
	[button_chgimage num="&sf.bt_num_edge"graphic="cnf_onoff"]
	[image left="&tf.cnf_edge_x[0]" top="&tf.cnf_edge_y[0]" storage="cnf_on.png" layer=7 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.edge_on = 'true'"]
	[jump storage="system_config_srd.ks" target=*text_draw]
[else]
	[freeimage layer="&tf.layer_edge" page=fore]
	;[button_chgimage num="&sf.bt_num_edge"graphic="cnf_off_off"]
	[button_chgimage num="&sf.bt_num_edge"graphic="cnf_onoff"]
	[image left="&tf.cnf_edge_x[0]" top="&tf.cnf_edge_y[0]" storage="cnf_off.png" layer=7 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.edge_on = 'false'"]
	[jump storage="system_config_srd.ks" target=*text_draw]
[endif]
;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]



;-----------------------------------------------------------
;BGMカット
*config_bgmplay
[unlocklink]
[if exp="sf.bgmplay == 1"]
	[button_chgimage num="&sf.bt_num_bgm"graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.bgmplay = 0"]

	;音量0にする
	[bgmopt gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*bgmvolume]
[else]
	[button_chgimage num="&sf.bt_num_bgm"graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.bgmplay = 1"]
	;音量をsf.dummy_bgmoptに入れといた数値に戻す。
	[bgmopt gvolume="&sf.dummy_bgmopt"]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*bgmvolume]
[endif]
;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]


;-----------------------------------------------------------
;SEカット
*config_seplay

[unlocklink]
[if exp="sf.seplay == 1"]
	[button_chgimage num="&sf.bt_num_se" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.seplay = 0"]

	;音量0にする
	[seopt buf=0 gvolume=0]
	[seopt buf=1 gvolume=0]
	[seopt buf=2 gvolume=0]
	[seopt buf=3 gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*sevolume]
[else]
	[button_chgimage num="&sf.bt_num_se" graphic="cnf_smoll_on_on.png"]
	;音量をsf.dummy_bgmoptに入れといた数値に戻す。
	[seopt buf=0 gvolume="&sf.dummy_seopt0" volume="&f.tmp_seopt0"]
	[seopt buf=1 gvolume="&sf.dummy_seopt1" volume="&f.tmp_seopt1"]
	[seopt buf=2 gvolume="&sf.dummy_seopt2" volume="&f.tmp_seopt2"]
	[seopt buf=3 gvolume="&sf.dummy_seopt3" volume="&f.tmp_seopt3"]
	[eval exp="sf.seplay = 1"]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*sevolume]
[endif]
;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]




;-------------------------------------------------------------
;　　　　　　　　　　キャラボイスカット
*config_chara01_v
[unlocklink]
[if exp="sf.chara01_v == 1"]
	[button_chgimage num="&sf.bt_num_chara01" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara01_v = 0"]

	;音量0に
	[seopt buf="&sf.chara01_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume01]
[else]
	[button_chgimage num="&sf.bt_num_chara01" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara01_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara01 <=100"]
		[eval exp="sf.dummy_seopt_chara01 = sf.dummy_seopt_chara01*1000"]
	[endif]
	;ボイス音量を元に戻す
	[eval exp="kag.se[sf.chara01_buf].volume2 = sf.dummy_seopt_chara01"]

	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume01]

[endif]

	;↓何してるんだろ？不要では？
;	[slider_delete name=chvolume01]
;	[call storage="system_config_srd.ks" target=*chvolume01]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara01 <=100"]
;		[eval exp="sf.dummy_seopt_chara01 = sf.dummy_seopt_chara01*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]


[s]
;-------------------------------------------------------------
;　　　　　　　　　　キャラボイスカット
*config_chara01_L
[unlocklink]
[if exp="sf.chara01_L == 1"]
	[button_chgimage num="&sf.bt_num_chara01L" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara01_L = 0"]
	[eval exp="sf.chara02_L = 0"]
	[eval exp="sf.chara03_L = 0"]
	[eval exp="sf.chara04_L = 0"]
	[stopse buf="&sf.SE_sys_confsrd_buf"]

	;音量0に
	[seopt buf="&sf.chara01L_buf" gvolume=0]
	[seopt buf="&sf.chara02L_buf" gvolume=0]
	[seopt buf="&sf.chara03L_buf" gvolume=0]
	[seopt buf="&sf.chara04L_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume01L]
[else]
	[button_chgimage num="&sf.bt_num_chara01L" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara01_L = 1"]
	[eval exp="sf.chara02_L = 1"]
	[eval exp="sf.chara03_L = 1"]
	[eval exp="sf.chara04_L = 1"]
;	[eval exp="sf.mastergvolume= 1"]

;ここが要らないのだな
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara01L <=100"]
;		[eval exp="sf.dummy_seopt_chara01L = sf.dummy_seopt_chara01L*1000"]
;	[endif]
	;ボイス音量を元に戻す
;	[eval exp="kag.se[sf.chara01L_buf].volume2 = sf.dummy_seopt_chara01L"]
	[seopt buf="&sf.chara01L_buf" gvolume="&sf.dummy_seopt_chara01L" volume="&f.tmp_seopt_chara01L"]
	[seopt buf="&sf.chara02L_buf" gvolume="&sf.dummy_seopt_chara02L" volume="&f.tmp_seopt_chara02L"]
	[seopt buf="&sf.chara03L_buf" gvolume="&sf.dummy_seopt_chara03L" volume="&f.tmp_seopt_chara03L"]
	[seopt buf="&sf.chara04L_buf" gvolume="&sf.dummy_seopt_chara04L" volume="&f.tmp_seopt_chara04L"]


	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume01L]

[endif]

	;↓何してるんだろ？不要では？
;	[slider_delete name=chvolume01]
;	[call storage="system_config_srd.ks" target=*chvolume01]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara01 <=100"]
;		[eval exp="sf.dummy_seopt_chara01 = sf.dummy_seopt_chara01*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]


[s]

;-----------------------------------------------------------
;;　　　　　　　　　　キャラボイス02カット
*config_chara02_v
[unlocklink]
[if exp="sf.chara02_v == 1"]
	[button_chgimage num="&sf.bt_num_chara02" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara02_v = 0"]

	;音量0に
	[seopt buf="&sf.chara02_buf" gvolume=0]

	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume02]
[else]
	[button_chgimage num="&sf.bt_num_chara02" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara02_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara02 <=100"]
		[eval exp="sf.dummy_seopt_chara02 = sf.dummy_seopt_chara02*1000"]
	[endif]
	;ボイス音量を元に戻す
	[eval exp="kag.se[sf.chara02_buf].volume2 = sf.dummy_seopt_chara02"]

	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume02]

[endif]

;	[slider_delete name=chvolume02]
;	[call storage="system_config_srd.ks" target=*chvolume02]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara02 <=100"]
;		[eval exp="sf.dummy_seopt_chara02 = sf.dummy_seopt_chara02*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]

[s]
;-------------------------------------------------------------
;　　　　　　　　　　キャラボイスカット
*config_chara02_L
[unlocklink]
[if exp="sf.chara02_L == 1"]
	[button_chgimage num="&sf.bt_num_chara02L" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara02_L = 0"]
	[stopse buf="&sf.SE_sys_confsrd_buf"]

	;音量0に
	[seopt buf="&sf.chara02L_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume02L]
[else]
	[button_chgimage num="&sf.bt_num_chara02L" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara02_L = 1"]
;	[eval exp="sf.mastergvolume= 1"]

;ここが要らないのだな
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara02L <=100"]
;		[eval exp="sf.dummy_seopt_chara02L = sf.dummy_seopt_chara02L*1000"]
;	[endif]
	;ボイス音量を元に戻す
;	[eval exp="kag.se[sf.chara02L_buf].volume2 = sf.dummy_seopt_chara02L"]
	[seopt buf="&sf.chara02L_buf" gvolume="&sf.dummy_seopt_chara02L" volume="&f.tmp_seopt_chara02L"]


	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume02L]

[endif]

	;↓何してるんだろ？不要では？
;	[slider_delete name=chvolume02]
;	[call storage="system_config_srd.ks" target=*chvolume02]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara02 <=100"]
;		[eval exp="sf.dummy_seopt_chara02 = sf.dummy_seopt_chara02*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]


[s]

;-------------------------------------------------------------
;;　　　　　　　　　　キャラボイス03カット
*config_chara03_v
[unlocklink]
[if exp="sf.chara03_v == 1"]
	[button_chgimage num="&sf.bt_num_chara03" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara03_v = 0"]

	;音量0に
	[seopt buf="&sf.chara03_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume03]
[else]
	[button_chgimage num="&sf.bt_num_chara03" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara03_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara03 <=100"]
		[eval exp="sf.dummy_seopt_chara03 = sf.dummy_seopt_chara03*1000"]
	[endif]
	;ボイス音量を元に戻す
	[eval exp="kag.se[sf.chara03_buf].volume2 = sf.dummy_seopt_chara03"]

	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume03]

[endif]

;	[slider_delete name=chvolume03]
;	[call storage="system_config_srd.ks" target=*chvolume02]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara03 <=100"]
;		[eval exp="sf.dummy_seopt_chara03 = sf.dummy_seopt_chara03*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]

[s]

;-------------------------------------------------------------
;　　　　　　　　　　キャラボイスカット
*config_chara03_L
[unlocklink]
[if exp="sf.chara03_L == 1"]
	[button_chgimage num="&sf.bt_num_chara03L" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara03_L = 0"]
	[stopse buf="&sf.SE_sys_confsrd_buf"]

	;音量0に
	[seopt buf="&sf.chara03L_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume03L]
[else]
	[button_chgimage num="&sf.bt_num_chara03L" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara03_L = 1"]
;	[eval exp="sf.mastergvolume= 1"]

;ここが要らないのだな
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara03L <=100"]
;		[eval exp="sf.dummy_seopt_chara03L = sf.dummy_seopt_chara03L*1000"]
;	[endif]
	;ボイス音量を元に戻す
;	[eval exp="kag.se[sf.chara03L_buf].volume2 = sf.dummy_seopt_chara03L"]
	[seopt buf="&sf.chara03L_buf" gvolume="&sf.dummy_seopt_chara03L" volume="&f.tmp_seopt_chara03L"]


	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume03L]

[endif]

	;↓何してるんだろ？不要では？
;	[slider_delete name=chvolume03]
;	[call storage="system_config_srd.ks" target=*chvolume03]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara03 <=100"]
;		[eval exp="sf.dummy_seopt_chara03 = sf.dummy_seopt_chara03*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]


[s]

;-------------------------------------------------------------
;;　　　　　　　　　　キャラボイス04カット
*config_chara04_v
[unlocklink]
[if exp="sf.chara04_v == 1"]
	[button_chgimage num="&sf.bt_num_chara04" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara04_v = 0"]

	;音量0に
	[seopt buf="&sf.chara04_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume04]
[else]
	[button_chgimage num="&sf.bt_num_chara04" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara04_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara04 <=100"]
		[eval exp="sf.dummy_seopt_chara04 = sf.dummy_seopt_chara04*1000"]
	[endif]
	;ボイス音量を元に戻す
	[eval exp="kag.se[sf.chara04_buf].volume2 = sf.dummy_seopt_chara04"]

	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume04]

[endif]

;	[slider_delete name=chvolume04]
;	[call storage="system_config_srd.ks" target=*chvolume4]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara04 <=100"]
;		[eval exp="sf.dummy_seopt_chara04 = sf.dummy_seopt_chara04*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]

[s]
;-------------------------------------------------------------
;　　　　　　　　　　キャラボイスカット
*config_chara04_L
[unlocklink]
[if exp="sf.chara04_L == 1"]
	[button_chgimage num="&sf.bt_num_chara04L" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara04_L = 0"]
	[stopse buf="&sf.SE_sys_confsrd_buf"]

	;音量0に
	[seopt buf="&sf.chara04L_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume04L]
[else]
	[button_chgimage num="&sf.bt_num_chara04L" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara04_L = 1"]
;	[eval exp="sf.mastergvolume= 1"]

;ここが要らないのだな
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara04L <=100"]
;		[eval exp="sf.dummy_seopt_chara04L = sf.dummy_seopt_chara04L*1000"]
;	[endif]
	;ボイス音量を元に戻す
;	[eval exp="kag.se[sf.chara04L_buf].volume2 = sf.dummy_seopt_chara04L"]
	[seopt buf="&sf.chara04L_buf" gvolume="&sf.dummy_seopt_chara04L" volume="&f.tmp_seopt_chara04L"]


	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume04L]

[endif]

	;↓何してるんだろ？不要では？
;	[slider_delete name=chvolume04]
;	[call storage="system_config_srd.ks" target=*chvolume04]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara04 <=100"]
;		[eval exp="sf.dummy_seopt_chara04 = sf.dummy_seopt_chara04*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]


[s]
;-------------------------------------------------------------
;;　　　　　　　　　　キャラボイス05カット
*config_chara05_v
[unlocklink]
[if exp="sf.chara05_v == 1"]
	[button_chgimage num="&sf.bt_num_chara05" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara05_v = 0"]

	;音量0に
	[seopt buf="&sf.chara05_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume05]
[else]
	[button_chgimage num="&sf.bt_num_chara05" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara05_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara05 <=100"]
		[eval exp="sf.dummy_seopt_chara05 = sf.dummy_seopt_chara05*1000"]
	[endif]
	;ボイス音量を元に戻す
	[eval exp="kag.se[sf.chara05_buf].volume2 = sf.dummy_seopt_chara05"]

	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume05]

[endif]

;	[slider_delete name=chvolume05]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara05 <=100"]
;		[eval exp="sf.dummy_seopt_chara05 = sf.dummy_seopt_chara05*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]

[s]

;-------------------------------------------------------------
;;　　　　　　　　　　キャラボイス06カット
*config_chara06_v
[unlocklink]
[if exp="sf.chara06_v == 1"]
	[button_chgimage num="&sf.bt_num_chara06" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara06_v = 0"]

	;音量0に
	[seopt buf="&sf.chara06_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume06]
[else]
	[button_chgimage num="&sf.bt_num_chara06" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara06_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara06 <=100"]
		[eval exp="sf.dummy_seopt_chara06 = sf.dummy_seopt_chara06*1000"]
	[endif]
	;ボイス音量を元に戻す
	[eval exp="kag.se[sf.chara06_buf].volume2 = sf.dummy_seopt_chara06"]

	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume06]

[endif]

;	[slider_delete name=chvolume06]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara06 <=100"]
;		[eval exp="sf.dummy_seopt_chara06 = sf.dummy_seopt_chara06*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]

[s]

;-------------------------------------------------------------
;;　　　　　　　　　　キャラボイス07カット
*config_chara07_v
[unlocklink]
[if exp="sf.chara07_v == 1"]
	[button_chgimage num="&sf.bt_num_chara07" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara07_v = 0"]

	;音量0に
	[seopt buf="&sf.chara07_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume07]
[else]
	[button_chgimage num="&sf.bt_num_chara07" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara07_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara07 <=100"]
		[eval exp="sf.dummy_seopt_chara07 = sf.dummy_seopt_chara07*1000"]
	[endif]
	;ボイス音量を元に戻す
	[eval exp="kag.se[sf.chara07_buf].volume2 = sf.dummy_seopt_chara07"]

	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume07]

[endif]

;	[slider_delete name=chvolume07]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara07 <=100"]
;		[eval exp="sf.dummy_seopt_chara07 = sf.dummy_seopt_chara07*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]

[s]
;-------------------------------------------------------------
;;　　　　　　　　　　キャラボイス08カット
*config_chara08_v
[unlocklink]
[if exp="sf.chara08_v == 1"]
	[button_chgimage num="&sf.bt_num_chara08" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara08_v = 0"]

	;音量0に
	[seopt buf="&sf.chara08_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume08]
[else]
	[button_chgimage num="&sf.bt_num_chara08" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara08_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara08 <=100"]
		[eval exp="sf.dummy_seopt_chara08 = sf.dummy_seopt_chara08*1000"]
	[endif]
	;ボイス音量を元に戻す
	[eval exp="kag.se[sf.chara08_buf].volume2 = sf.dummy_seopt_chara08"]

	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume08]

[endif]

;	[slider_delete name=chvolume08]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara08 <=100"]
;		[eval exp="sf.dummy_seopt_chara08 = sf.dummy_seopt_chara08*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]

[s]
;-------------------------------------------------------------
;;　　　　　　　　　　キャラボイス09カット
*config_chara09_v
[unlocklink]
[if exp="sf.chara09_v == 1"]
	[button_chgimage num="&sf.bt_num_chara09" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara09_v = 0"]

	;音量0に
	[seopt buf="&sf.chara09_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume09]
[else]
	[button_chgimage num="&sf.bt_num_chara09" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara09_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara09 <=100"]
		[eval exp="sf.dummy_seopt_chara09 = sf.dummy_seopt_chara09*1000"]
	[endif]
	;ボイス音量を元に戻す
	[eval exp="kag.se[sf.chara09_buf].volume2 = sf.dummy_seopt_chara09"]

	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume09]

[endif]

;	[slider_delete name=chvolume09]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara09 <=100"]
;		[eval exp="sf.dummy_seopt_chara09 = sf.dummy_seopt_chara09*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]

[s]

;-------------------------------------------------------------
;;　　　　　　　　　　キャラボイス10カット
*config_chara10_v
[unlocklink]
[if exp="sf.chara10_v == 1"]
	[button_chgimage num="&sf.bt_num_chara10" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara10_v = 0"]

	;音量0に
	[seopt buf="&sf.chara10_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume10]
[else]
	[button_chgimage num="&sf.bt_num_chara10" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara10_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara10 <=100"]
		[eval exp="sf.dummy_seopt_chara10 = sf.dummy_seopt_chara10*1000"]
	[endif]
	;ボイス音量を元に戻す
	[eval exp="kag.se[sf.chara10_buf].volume2 = sf.dummy_seopt_chara10"]

	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume10]

[endif]

;	[slider_delete name=chvolume10]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara10 <=100"]
;		[eval exp="sf.dummy_seopt_chara10 = sf.dummy_seopt_chara10*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]

[s]

;-------------------------------------------------------------
;;　　　　　　　　　　キャラボイス11カット
*config_chara11_v
[unlocklink]
[if exp="sf.chara11_v == 1"]
	[button_chgimage num="&sf.bt_num_chara11" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara11_v = 0"]

	;音量0に
	[seopt buf="&sf.chara11_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume11]
[else]
	[button_chgimage num="&sf.bt_num_chara11" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara11_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara11 <=100"]
		[eval exp="sf.dummy_seopt_chara11 = sf.dummy_seopt_chara11*1000"]
	[endif]
	;ボイス音量を元に戻す
	[eval exp="kag.se[sf.chara11_buf].volume2 = sf.dummy_seopt_chara11"]

	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume11]

[endif]

;	[slider_delete name=chvolume10]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara11 <=100"]
;		[eval exp="sf.dummy_seopt_chara11 = sf.dummy_seopt_chara11*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]

[s]
;-------------------------------------------------------------
;;　　　　　　　　　　キャラボイス12カット
*config_chara12_v
[unlocklink]
[if exp="sf.chara12_v == 1"]
	[button_chgimage num="&sf.bt_num_chara12" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara12_v = 0"]

	;音量0に
	[seopt buf="&sf.chara12_buf" gvolume=0]
	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume12]
[else]
	[button_chgimage num="&sf.bt_num_chara12" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara12_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara12 <=100"]
		[eval exp="sf.dummy_seopt_chara12 = sf.dummy_seopt_chara12*1000"]
	[endif]
	;ボイス音量を元に戻す
	[eval exp="kag.se[sf.chara12_buf].volume2 = sf.dummy_seopt_chara12"]

	;スライダーを再描画しにいく
	[call storage="system_config_srd.ks" target=*chvolume12]

[endif]

;	[slider_delete name=chvolume10]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;つじつま合わせ
;	[if exp="sf.dummy_seopt_chara12 <=100"]
;		[eval exp="sf.dummy_seopt_chara12 = sf.dummy_seopt_chara12*1000"]
;	[endif]
;
;	;デフォルトに戻す処理中ならreturnする
;	[if exp="tf.conf_default == 1"][return][endif]

[s]


;-------------------------------------------------------------
;改ページボイスカット
*config_v_unstop
[unlocklink]
[if exp="sf.v_stop == 0"]
	[freeimage layer="&tf.layer_vstop" page=fore]
	;[button_chgimage num="&sf."16 graphic="cnf_on.png"]
	[button_chgimage num="&sf.bt_num_v_stop" graphic="cnf_onoff"]
	[image left="&tf.cnf_vstop_x[0]" top="&tf.cnf_vstop_y[0]" storage="cnf_on.png" layer=8 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.v_stop = true"]
[else]
	[freeimage layer="&tf.layer_vstop" page=fore]
	;[button_chgimage num="&sf."16 graphic="cnf_off.png"]
	[button_chgimage num="&sf.bt_num_v_stop" graphic="cnf_onoff"]
	[image left="&tf.cnf_vstop_x[0]" top="&tf.cnf_vstop_y[0]" storage="cnf_off.png" layer=8 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.v_stop = false"]
[endif]
;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]


;-------------------------------------------------------------
;改ページボイス再生終了待ち
*config_v_autowait
[unlocklink]
[if exp="sf.v_autowait == 0"]
	[freeimage layer="&tf.layer_vautowait" page=fore]
	;[button_chgimage num="&sf."17 graphic="cnf_on.png"]
	[button_chgimage num="&sf.bt_num_v_autowait" graphic="cnf_onoff"]
	[image left="&tf.cnf_vautowait_x[0]" top="&tf.cnf_vautowait_y[0]" storage="cnf_on.png" layer=9 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.v_autowait = true"]
[else]
	[freeimage layer="&tf.layer_vautowait" page=fore]
	;[button_chgimage num="&sf."17 graphic="cnf_off.png"]
	[button_chgimage num="&sf.bt_num_v_autowait" graphic="cnf_onoff"]
	[image left="&tf.cnf_vautowait_x[0]" top="&tf.cnf_vautowait_y[0]" storage="cnf_off.png" layer=9 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.v_autowait = false"]
[endif]
;デフォルトに戻す処理中ならreturnする
[if exp="tf.conf_default == 1"][return][endif]

[s]


;-------------------------------------------------------------
;///	;　　　　　　　　　　キャラボイスカット
;///	*config_chara01_loop
;///	[unlocklink]
;///	[if exp="sf.chara01_vl == 1"]
;///		[button_chgimage num="&sf."22 graphic="cnf_off_on_smoll.png"]
;///		[eval exp="sf.chara01_vl = 0"]
;///
;///		;音量0に
;///		[seopt buf=5 gvolume=0]
;///
;///		;スライダーを再描画しにいく
;///		[call storage="system_config_srd.ks" target=*chvolume01_loop]
;///
;///
;///	[else]
;///		[button_chgimage num="&sf."22 graphic="cnf_smoll_on_on.png"]
;///		[eval exp="sf.chara01_vl = 1"]
;///		[eval exp="sf.mastergvolume= 1"]
;///
;///		;つじつま合わせ
;///		[if exp="sf.dummy_seopt5 <=100"]
;///			[eval exp="sf.dummy_seopt5 = sf.dummy_seopt5*1000"]
;///		[endif]
;///		;ボイス音量を元に戻す
;///		[eval exp="kag.se[5].volume2 = sf.dummy_seopt5"]
;///
;///		;スライダーを再描画しにいく
;///		[call storage="system_config_srd.ks" target=*chvolume01_loop]
;///
;///	[endif]
;///
;///	;	[slider_delete name=chvolume01_lp]
;///	;	[call storage="system_config_srd.ks" target=*chvolume01_loop]
;///	;	;つじつま合わせ
;///	;	[if exp="sf.dummy_seopt5 <=100"]
;///	;		[eval exp="sf.dummy_seopt5 = sf.dummy_seopt5*1000"]
;///	;	[endif]
;///	;
;///	;	;デフォルトに戻す処理中ならreturnする
;///	;	[if exp="tf.conf_default == 1"][return][endif]
;///
;///	[s]




;-------------------------------------------------------------
;///;　　　　　　　　　　キャラボイス02カット
;///*config_chara02_loop
;///[unlocklink]
;///[if exp="sf.chara02_vl == 1"]
;///	[button_chgimage num="&sf."24 graphic="cnf_off_on_smoll.png"]
;///	[eval exp="sf.chara02_vl = 0"]
;///
;///
;///	;音量0に
;///	[seopt buf=7 gvolume=0]
;///
;///	;スライダーを再描画しにいく
;///	[call storage="system_config_srd.ks" target=*chvolume02_loop]
;///
;///
;///
;///[else]
;///	[button_chgimage num="&sf."24 graphic="cnf_smoll_on_on.png"]
;///	[eval exp="sf.chara02_vl = 1"]
;///	[eval exp="sf.mastergvolume= 1"]
;///
;///	;つじつま合わせ
;///	[if exp="sf.dummy_seopt7 <=100"]
;///		[eval exp="sf.dummy_seopt7 = sf.dummy_seopt7*1000"]
;///	[endif]
;///	;ボイス音量を元に戻す
;///	[eval exp="kag.se[7].volume2 = sf.dummy_seopt7"]
;///
;///	;スライダーを再描画しにいく
;///	[call storage="system_config_srd.ks" target=*chvolume02_loop]
;///
;///[endif]
;///
;///;	[slider_delete name=chvolume02_lp]
;///;	[call storage="system_config_srd.ks" target=*chvolume02_loop]
;///;	;つじつま合わせ
;///;	[if exp="sf.dummy_seopt7 <=100"]
;///;		[eval exp="sf.dummy_seopt7 = sf.dummy_seopt7*1000"]
;///;	[endif]
;///
;///;	;デフォルトに戻す処理中ならreturnする
;///;	[if exp="tf.conf_default == 1"][return][endif]
;///
;///
;///[s]






