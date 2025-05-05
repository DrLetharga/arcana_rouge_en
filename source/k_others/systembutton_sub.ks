;
;
;
;   ‐予め、Config.tjsの以下の項目を修正すること
;       characterMenu.visible … falseに変更
;       displayMenu.visible   … falseに変更
;       storeMenu.visible     … falseに変更
;       restoreMenu.visible   … falseに変更
;




;====================================================================
;
; 「セーブする」が選択された
;
; システムボタンの表示／非表示、マウス右クリックの設定復帰をここで行っていることに注意
; これはタイトルメニュー画面からもロード画面を呼び出せるようにするための措置
; （呼び出し側で辻褄合わせすれば、ロード画面のKAGシナリオを共有できるため）
;
*sys_save

;↓の変数も別々じゃなくて1個にまとめたいけどなぁ
[eval exp="tf.save = 1 , tf.load = 0 , tf.conf = 0"]
;右クリック設定で行く場合にボタン上にマウスがあった時に戻らないためのフラグ
;フラグオンオフだけでif文で使われないけど、どうしたかったんだ俺？
[eval exp="tf.savepass = 1"]

[sys_in]

[if exp="tf.セーブマスクテスト実行中 == 1"]

; 	[if    exp="tf.セーブマスクテスト >= 80"][eval exp="sf.saveload_now_page = 4"][save place="&tf.save_click_num+sf.saveload_now_page*20"]
; 	[elsif exp="tf.セーブマスクテスト >= 60"][eval exp="sf.saveload_now_page = 3"][save place="&tf.save_click_num+sf.saveload_now_page*20"]
; 	[elsif exp="tf.セーブマスクテスト >= 40"][eval exp="sf.saveload_now_page = 2"][save place="&tf.save_click_num+sf.saveload_now_page*20"]
; 	[elsif exp="tf.セーブマスクテスト >= 20"][eval exp="sf.saveload_now_page = 1"][save place="&tf.save_click_num+sf.saveload_now_page*20"]
; 	[elsif exp="tf.セーブマスクテスト <= 20"][eval exp="sf.saveload_now_page = 0"][save place="&tf.save_click_num+sf.saveload_now_page*20"]
; 	[endif]

	[save place="&tf.セーブマスクテスト"]

	[eval exp="tf.セーブマスクテスト += 1"]
; 	[eval exp="tf.save_click_num += 1"]
; 	[if exp="tf.save_click_num == 19"]
		[eval exp="tf.save_click_num = 0"]
; 	[endif]



[else]


; セーブ画面へ
;戻る時にjumpだけどcallでいいんだっけ？
[jump storage="system_save.ks" target=*save_menu]

[endif]


*sys_save_return

[eval exp="tf.save = 0"]
[sys_out]

;systembutton.ksで記録してる現在のファイルとラベルにリターン！
[return storage="&f.ksStorageSys" target="&f.ksLabelSys"]


;====================================================================

;
; 「ロードする」が選択された
;
; システムボタンの表示／非表示、マウス右クリックの設定復帰をここで行っていることに注意
; これはタイトルメニュー画面からもロード画面を呼び出せるようにするための措置
; （呼び出し側で辻褄合わせすれば、ロード画面のKAGシナリオを共有できるため）
;
*sys_load

[eval exp="tf.save = 0 , tf.load = 1 , tf.conf = 0"]

[sys_in]

; ロード画面へ
[jump storage="system_load.ks" target=*load_menu]

*sys_load_return

[eval exp="tf.load = 0"]
[sys_out]

;systembutton.ksで記録してる現在のファイルとラベルにリターン！
[return storage="&f.ksStorageSys" target="&f.ksLabelSys"]


;====================================================================

;
; 「ゲーム設定」が選択された
;
; システムボタンの表示／非表示、マウス右クリックの設定復帰をここで行っていることに注意
; これはタイトルメニュー画面からもコンフィグ画面を呼び出せるようにするための措置
; （呼び出し側で辻褄合わせすれば、コンフィグ画面のKAGシナリオを共有できるため）
;
*sys_config

[eval exp="tf.save = 0 , tf.load = 0 , tf.conf = 1"]
[sys_in]

; コンフィグ画面へ
;[if    exp="sf.cnf_mes == 1"]
	[jump storage="system_config_mes.ks" target=*config_menu]
;[elsif exp="sf.cnf_snd == 1"]
;	[jump storage="system_config_snd.ks" target=*config_menu]
;[endif]

;コンフィグ見終わったらここにリターン
*sys_config_return

[eval exp="tf.conf = 0"]
[sys_out]

;; メモリ上の栞３に保存解除 これいらないよね？
;[eval exp="tf.memori3 = 0"]


;systembutton.ksで記録してる現在のファイルとラベルにリターン！
[return storage="&f.ksStorageSys" target="&f.ksLabelSys"]

;====================================================================


;バックログでウィンドウ消そうかと思ったけど無理っぽい
*sys_log

[return]


;====================================================================
*sys_skip

;====================================================================

*sys_auto

;====================================================================
*sys_hide
;hideボタンだけつけたけど連打すると落ちるので使わない

;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;
;	[wait time=100 canskip=false]
;
;	[layopt layer=message5 visible=false page=fore]
;
;	;ユーザーのクリックを待つ。グリフは出ない。
;	[waitclick]
;
;	;システムボタン＆ウィンドウ表示
;	[sysbt_meswin]
;
;	[layopt layer=message5 visible=true page=fore]
;
;	[wait time=200 canskip=false]
;
;	;元のファイルとラベルに戻る
;	[jump storage="&f.ksStorage" target="&f.ksLabel"]


;====================================================================
;〆クイックセーブクイックロードの画像座標変更　専用ボイスが無いのでボイスコメントアウト
*sys_Qsave
[locklink]


[if exp="sf.efect == 1"]

	[if    exp="sf.Qsave_v == 0"][eval exp="sf.SE_Qsave = 'se_sys_quick_s_aka'"][eval exp="sf.Qsave_v = 1"]
	[elsif exp="sf.Qsave_v == 1"][eval exp="sf.SE_Qsave = 'se_sys_quick_s_aoi'"][eval exp="sf.Qsave_v = 0"]
	[endif]

	;SEがループで鳴ってる可能性があるなぁ0番を本編で使用不可にするか
	[se buf="&sf.SE_sys_buf1" storage="&sf.SE_Qsave"]
;	[se_sys buf1 storage="&sf.SE_Qsave"]
	;選択肢表示中も考慮してインデックスは選択肢の文字より手前に
	;[image  storage="quicksave演出" layer="&sf.layer_quick" page=fore visible=true left=336 top=242 opacity=0 index="1016000"]
	;[stmove storage="quicksave演出" layer="&sf.layer_quick" page=fore time=150  accel=5 cx=0 cy=0 path=(236,204,2)(436,279,1)(436,279,1) index="1016000" spline=false  opacity=255 type=false flipud= fliplr=false blur=true blur_x=0 blur_y=0 ]
	;[wstmove]
	;[wait_c time=100]
	;[backlay][image storage="chara_int" layer="&sf.layer_quick" page=back visible=true left=450 top=300 opacity=0 index=1016000][trans time=200 method=crossfade][wt_c]
	;[layopt layer="&sf.layer_quick" opacity=255 index="&sf.layer_quick*1000+1000"]
	[image  storage="quicksave演出" layer="&sf.layer_quick" page=fore visible=true left=436 top=300 opacity=0 index="1016000"]
	[move layer="&sf.layer_quick" time=300 accel=-1 path="(436,260,255)"]
	[wm]
	[wait_c time=300]
	[move layer="&sf.layer_quick" time=300 accel=1 path="(436,220,0)"]
	[wm]
	[backlay][image storage="chara_int" layer="&sf.layer_quick" page=back visible=true left=0 top=0 opacity=0 index=1016000][trans time=200 method=crossfade][wt_c]
	[layopt layer="&sf.layer_quick" opacity=255 index="&sf.layer_quick*1000+1000"]

[endif]
[unlocklink]

[return]

;====================================================================
*sys_Qload

;ウィンドウが多重になってるっぽいな
;システムボタン＆ウィンドウ＆ネームチップも一応消去
[s_m clear]
[layopt layer="&sf.message_namechip" page=fore visible=false]


[current layer=message0]
;レイヤのインデックス戻し
;[layopt layer="&sf.layer_seltext" index="&sf.layer_quick*1000+1000"]
[layopt layer="&sf.layer_seltext" index="&sf.layer_seltext*1000+1000"]


;データロード後FCタグ内でtf.QuickLoadを判定しこのサブルーチンに飛んでくる。
;tf.QuickLoadはsystembutton.ksでオンになる。

;亡国は選択肢の仕様が違うのでここの処理も他のタイトルと違う
[if exp="f.selnow == 1"]
	[sellayer_index_init]
[endif]

;データロード後FCタグ内でtf.QuickLoadを判定しこのサブルーチンに飛んでくる。
;tf.QuickLoadはsystembutton.ksでオンになる。



[if exp="sf.efect == 1"]

	[if    exp="sf.Qload_v == 0"][eval exp="sf.SE_Qload = 'se_sys_quick_l_mia'"][eval exp="sf.Qload_v = 1"]
	[elsif exp="sf.Qload_v == 1"][eval exp="sf.SE_Qload = 'se_sys_quick_l_mei'"][eval exp="sf.Qload_v = 0"]
	[endif]

	;SEがループで鳴ってる可能性があるなぁ0番を本編で使用不可にするか
	[se buf="&sf.SE_sys_buf1" storage="&sf.SE_Qload"]
;	[se_sys buf1 storage="&sf.SE_Qload"]

	;選択肢表示中も考慮してインデックスは選択肢の文字より手前に
	;選択肢表示中も考慮してインデックスは選択肢の文字より手前に
	;[image  storage="quickload演出" layer="&sf.layer_quick" page=fore visible=true left=336 top=242 opacity=0 index=1016000]
	;[stmove storage="quickload演出" layer="&sf.layer_quick" page=fore time=150  accel=5 cx=0 cy=0 path=(236,204,2)(436,279,1)(436,279,1) index=1016000 spline=false  opacity=255 type=false flipud= fliplr=false blur=true blur_x=0 blur_y=0 ]
	;[wstmove]
	;[wait_c time=100]
	;[backlay][image storage="chara_int" layer="&sf.layer_quick" page=back visible=true left=450 top=300 opacity=0 index=1016000][trans time=200 method=crossfade][wt_c]
	;[layopt layer="&sf.layer_quick" opacity=255 index="&sf.layer_quick*1000+1000"]
	[image  storage="quickload演出" layer="&sf.layer_quick" page=fore visible=true left=436 top=300 opacity=0 index="1016000"]
	[move layer="&sf.layer_quick" time=300 accel=-1 path="(436,260,255)"]
	[wm]
	[wait_c time=300]
	[move layer="&sf.layer_quick" time=300 accel=1 path="(436,220,0)"]
	[wm]
	[backlay][image storage="chara_int" layer="&sf.layer_quick" page=back visible=true left=0 top=0 opacity=0 index=1016000][trans time=200 method=crossfade][wt_c]
	[layopt layer="&sf.layer_quick" opacity=255 index="&sf.layer_quick*1000+1000"]

	;演出後判定用フラグをオフ
	;[eval exp="tf.QuickLoad = 0"]
[endif]

;システムボタン＆ウィンドウ＆再表示。ネームチップのmessageは再表示不要かな
;f.win_narration == 1はナレーション用の判定
[if exp="f.win_narration == 1"]
	[sysbt_meswin3]
[else]
	[s_m cond="f.graphic_bt_sel == 0"]
[endif]

[return]


;====================================================================


;
; 「タイトルへ戻る」が選択された
;
*sys_title
*sys_scene
;↑のラベルには飛んでこないようにした


*Yesだよ
;ボタンとダイアログ画像クリア
[cm]
[call storage="dialog.ks" target=*ダイアログ消去]

;シーン回想メニューに戻る
;[jump storage="b_sceneV.ks" target=*back_from_SR]
;直にjumpだとなんかcallreturnの辻褄が合わないようなので、gotostartで一旦タイトルに戻す。
[gotostart]


;No押したら↓こっちへ ゲームに戻る
*Noだよ
;ボタンとダイアログ画像クリア
;[cm]
;[layopt layer=message"&tf.dialog_message" page=fore visible=false]
;なんか↑だとメッセージウィンドウ消えちゃうのよね。なのであえてダイアログ消去マクロは使用しない
;↑でlayer=message"&tf.dialog_message"こんな記述だからおかしかっただけだ
[layopt layer=message page=fore visible=false]
;↓これだと消えるけどvisibleはtureのままで、ボタンとかがまた出ちゃうから↑でvisible操作
[eval exp="kag.current.clear2()"]

[freeimage layer="&sf.layer_dialog_yesno" page=back][freeimage layer="&sf.layer_dialog_yesno" page=fore]
;dialog_scene貼ってたレイヤのインデックスを戻す
[layopt layer="&sf.layer_dialog_yesno" index="&sf.layer_quick*1000+1000"]

; 右クリック割り当てを設定する
[call storage="rclick_sub.ks"]


; 履歴レイヤを有効化
[history output=true enabled=true]

;システムボタン再表示　回想鑑賞中は先に判定しないとだめか
[if    exp="tf.scenestart == 1"]
	[sysbtopt forevisible=true backvisible=true]
[elsif exp="tf.cg_mode == 0 && tf.scene_mode == 0 && tf.bgm_mode == 0"]
	[sysbtopt forevisible=true backvisible=true]
[endif]

;カレントレイヤを戻す 0とは限らないんだよなぁ。ここでメッセージレイヤ各画面用に設定するしかない？
;システム画面は戻ったあとにカレント操作されるから大丈夫か
[if    exp="tf.cg_mode    == 1"][current layer="&tf.CGMODE_message"]
[elsif exp="tf.scene_mode == 1 && tf.scenestart == 0"][current layer="&tf.scene_message"]
[elsif exp="tf.bgm_mode   == 1"][current layer="&tf.sound_message"]
[else][current layer=message0]
[endif]

;ダイヤログ時に消してたボタンを再表示
;[sysbtopt forevisible=true backvisible=true left="&sf.sysbt_x" top="&sf.sysbt_y"]


;回想に戻る
[return]

;
; 「ゲームを終了する」が選択された
;使用してない
*sys_exit
[close]
[if    exp="tf.save == 1"]
	[jump storage="system_save.ks" target=*save_menu]
[elsif exp="tf.load == 1"]
	[jump storage="system_load.ks" target=*load_menu]
[elsif exp="tf.conf == 1"]
	[jump storage="system_config_mes.ks" target=*config_menu]
[elsif exp="tf.cg_mode == 1"]
	[jump storage="b_cgmode.ks"]
[elsif exp="tf.scene_mode == 1"]
	[jump storage="b_scene.ks"]
[elsif exp="f.scene_modeV == 1"]
	[jump storage="b_sceneV.ks"]
[elsif exp="tf.bgm_mode == 1"]
	[jump storage="b_bgmmode.ks"]
[endif]
[return]

;====================================================================


