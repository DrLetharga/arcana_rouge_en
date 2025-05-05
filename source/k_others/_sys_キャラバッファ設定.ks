;_キャラバッファ設定

;コンフィグの設定部分と見比べるの大変だから別ファイルに分割

;コンフィグの設定部分と見比べるの大変だから別ファイルに分割
;===========================================================
;                    SEバッファ定義                     
;===========================================================


;	;通常SEとコンフィグ分けるかぁ
;	;通常が0～3
;	[eval exp="sf.SE_buf1 = 0"]
;	[eval exp="sf.SE_buf2 = 1"]
;	[eval exp="sf.SE_buf3 = 2"]
;	[eval exp="sf.SE_buf4 = 3"]
;
;	;HSEに4～6
;	[eval exp="sf.SE_H_buf1 = 4"]
;	[eval exp="sf.SE_H_buf2 = 5"]
;
;	[eval exp="sf.SE_HLoop_buf1 = 6"]
;	[eval exp="sf.SE_HLoop_buf2 = 7"]
;
;システム 1314でいいのかな？このバッファはコンフィグでSE0にしてもなっちゃうから01か
[eval exp="sf.SE_sys_buf1   = 0"]
[eval exp="sf.SE_sys_buf2   = 1"]
[eval exp="sf.SE_enter_buf = sf.SE_sys_buf1"]
[eval exp="sf.SE_click_buf = sf.SE_sys_buf2"]

;BGVだけ追加だからこれだけ定義する
;コンフィグでSEならすバッファ
[eval exp="sf.SE_sys_confsrd_buf = 12"]
;キャラが8以降切りよく11からにするか。10番まで念の為SE用に開けておいて

;
;	;ClickとかオンカーソルのSE定義　タイトルによって要調整
;
;	;タイトル画面
;	[eval exp="sf.SE_enter_title = 'se_click1'"]
;	[eval exp="sf.SE_click_title = 'se_click2'"]
;
;	;選択肢
;	[eval exp="sf.SE_enter_sel = 'se_click1'"]
;	[eval exp="sf.SE_click_sel = 'se_click2'"]
;
;	;システムボタン
;	[eval exp="sf.SE_enter_sysbt = 'se_click1'"]
;	[eval exp="sf.SE_click_sysbt = 'se_click2'"]
;
;	;コンフィグとかセーブロードとかオマケモードとか汎用
;	[eval exp="sf.SE_enter_sys = 'se_click1'"]
;	[eval exp="sf.SE_click_sys = 'se_click2'"]
;
;	;クイックセーブロード
;	;3キャラ分あるからここで定義しないでsystembutton_sub.ksで使用直前に定義
;	;[eval exp="sf.SE_Qsave = 'se_sys_quick_s'"]
;	;[eval exp="sf.SE_Qload = 'se_sys_quick_l'"]
;
;	[eval exp="sf.ogg_se_sys   = 'se_click1.ogg'"]
;	[eval exp="sf.ogg_se       = 'conf_se.ogg'"]
;	[eval exp="sf.ogg_se_H     = 'se_sex01a.ogg'"]
;	[eval exp="sf.ogg_se_HLoop = 'se_sex03.ogg'"]
;
;===========================================================
;                    キャラバッファ定義                     
;===========================================================

;SliderFuntion.tjs
;system_config_btch.ks
;system_config_srd.ks
;上記のバッファ指定を直ではなく下記の変数にしたバージョンを使う
;のでバッファの間は空けずに指定する

;※あとあとのためにキャラの振り分けは、下記の順にしておく。
;※ ch01 ;緋神　茜
;※ ch02 ;氷上　葵
;※ ch03 ;柏山　ミア
;※ ch04 ;四堂　冥

;バッファ
[eval exp="sf.chara01_buf  = 4"]
[eval exp="sf.chara01L_buf = 5"]
[eval exp="sf.chara02_buf  = 6"]
[eval exp="sf.chara02L_buf = 7"]
[eval exp="sf.chara03_buf  = 8"]
[eval exp="sf.chara03L_buf = 9"]
[eval exp="sf.chara04_buf  = 10"]
[eval exp="sf.chara04L_buf = 11"]

;	[eval exp="sf.chara13_buf = 16"]
;	[eval exp="sf.chara14_buf = 17"]
;	[eval exp="sf.chara15_buf = 18"]
;	[eval exp="sf.chara16_buf = 19"]


;コンフィグ用のサンプルボイス　SliderFuntion.tjsで読み込まれる
[eval exp="sf.ogg_chara01  = 'chara01.ogg'"]
[eval exp="sf.ogg_chara01L = 'akane_loop_0001.ogg'"]
[eval exp="sf.ogg_chara02  = 'chara02.ogg'"]
;[eval exp="sf.ogg_chara02L = 'chara02.ogg'"]
[eval exp="sf.ogg_chara03  = 'chara03.ogg'"]
;[eval exp="sf.ogg_chara03L = 'chara03.ogg'"]
[eval exp="sf.ogg_chara04  = 'chara04.ogg'"]
;[eval exp="sf.ogg_chara04L = 'chara04.ogg'"]





;ボイスマクロ
;キャラの順番（vo_chara01~4）は暫定。
;コンフィグの名前順とサンプルボイスに関係があるので変更するならbg_conf_mes_t.pngも修正すること。

;緋神　茜
[macro name="vo_aka"]
	;止めちゃうほうが無難か　再開させないといけないから"bgvstop_chara01"マクロは使わない
	;[fadeoutse buf="&sf.chara01L_buf" time=100]
	;ボイス再生中はbgvの音量を0に。操作するのvolumeでいいのかな
	;ボイスオンならば かつ、音量0ではない　だな
	[if exp="sf.chara01_v == 1 && kag.se[sf.chara01_buf].volume2 != 0"]
		[seopt buf="&sf.chara01L_buf" volume=0]
	[endif]
	[vo_chara01 *]
[endmacro]

;bgvマクロ
[macro name="bgv_aka"]
	[if    exp="mp.toiki01 || mp.to01"][eval exp="f.bgv = 'akane_loop_0001'"]
	[elsif exp="mp.toiki02 || mp.to02"][eval exp="f.bgv = 'akane_loop_0002'"]
	[elsif exp="mp.toiki03 || mp.to03"][eval exp="f.bgv = 'akane_loop_0003'"]
	[elsif exp="mp.fella01 || mp.fe01"][eval exp="f.bgv = 'akane_loop_0004'"]
	[elsif exp="mp.fella02 || mp.fe02"][eval exp="f.bgv = 'akane_loop_0005'"]
	[else][eval exp="f.bgv = mp.s"]
	[endif]
	[bgv_chara01 *  s="&f.bgv" cond="f.bgv != void"]
[endmacro]

;氷上　葵
[macro name="vo_aoi"]
	[if exp="sf.chara02_v == 1 && kag.se[sf.chara02_buf].volume2 != 0"]
		[seopt buf="&sf.chara02L_buf" volume=0]
	[endif]
	[vo_chara02 *]
[endmacro]


;bgvマクロ
[macro name="bgv_aoi"]
	[if    exp="mp.toiki01 || mp.to01"][eval exp="f.bgv = 'aoi_loop_0001'"]
	[elsif exp="mp.toiki02 || mp.to02"][eval exp="f.bgv = 'aoi_loop_0002'"]
	[elsif exp="mp.toiki03 || mp.to03"][eval exp="f.bgv = 'aoi_loop_0003'"]
	[elsif exp="mp.fella01 || mp.fe01"][eval exp="f.bgv = 'aoi_loop_0004'"]
	[elsif exp="mp.fella02 || mp.fe02"][eval exp="f.bgv = 'aoi_loop_0005'"]
	[else][eval exp="f.bgv = mp.s"]
	[endif]
	[bgv_chara02 *  s="&f.bgv" cond="f.bgv != void"]
[endmacro]

;柏山　ミア
[macro name="vo_mia"]
	[if exp="sf.chara03_v == 1 && kag.se[sf.chara03_buf].volume2 != 0"]
		[seopt buf="&sf.chara03L_buf" volume=0]
	[endif]
	[vo_chara03 *]
[endmacro]

;bgvマクロ
[macro name="bgv_mia"]
	[if    exp="mp.toiki01 || mp.to01"][eval exp="f.bgv = 'mia_loop_0001'"]
	[elsif exp="mp.toiki02 || mp.to02"][eval exp="f.bgv = 'mia_loop_0002'"]
	[elsif exp="mp.toiki03 || mp.to03"][eval exp="f.bgv = 'mia_loop_0003'"]
	[elsif exp="mp.fella01 || mp.fe01"][eval exp="f.bgv = 'mia_loop_0004'"]
	[elsif exp="mp.fella02 || mp.fe02"][eval exp="f.bgv = 'mia_loop_0005'"]
	[else][eval exp="f.bgv = mp.s"]
	[endif]
	[bgv_chara03 *  s="&f.bgv" cond="f.bgv != void"]
[endmacro]

;四堂　冥
[macro name="vo_mei"]
	[if exp="sf.chara04_v == 1 && kag.se[sf.chara04_buf].volume2 != 0"]
		[seopt buf="&sf.chara04L_buf" volume=0]
	[endif]
	[vo_chara04 *]
[endmacro]

;bgvマクロ
[macro name="bgv_mei"]
	[if    exp="mp.toiki01 || mp.to01"][eval exp="f.bgv = 'mei_loop_0001'"]
	[elsif exp="mp.toiki02 || mp.to02"][eval exp="f.bgv = 'mei_loop_0002'"]
	[elsif exp="mp.toiki03 || mp.to03"][eval exp="f.bgv = 'mei_loop_0003'"]
	[elsif exp="mp.fella01 || mp.fe01"][eval exp="f.bgv = 'mei_loop_0004'"]
	[elsif exp="mp.fella02 || mp.fe02"][eval exp="f.bgv = 'mei_loop_0005'"]
	[else][eval exp="f.bgv = mp.s"]
	[endif]
	[bgv_chara04 *  s="&f.bgv" cond="f.bgv != void"]
[endmacro]



;モブ1　念の為
[macro name="vo_mob1"][vo_chara11 *][endmacro]

;モブ2　念の為
[macro name="vo_mob2"][vo_chara12 *][endmacro]



[return]
