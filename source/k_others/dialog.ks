;dialog.ks

;ダイアログの動作をここにまとめる。

;------------------------------------
;ゲーム終了を選んだ時はこっちくる
*game_QUIT
[tempsave place=2]

[eval exp="tf.dialog_QUIT = 1"]

;以下、↓へ進む

;------------------------------------
;通常はここに飛んでくる
*dialog_draw


;選択肢押せちゃったりするからこれいるのかな
[locklink]
; 右クリックを無効にする
[rclick enabled=false]
; 履歴レイヤを抑止
[history output=false enabled=false]


[eval exp="tf.dialog_now = 1"]
;ゲーム中のタイトルボタンもしくはTキー押してたらシステムボタン消す
;systembutton.ksでダイアログ表示中はイネーブルにしたので消さない。2017/05/05
;[if exp="tf.dialog_game_title == 1"]
;	[sysbtopt forevisible=false backvisible=false]
;[endif]

;無いとこは無駄にvoid書かなくていいように先に一旦voidにする
[eval exp="tf.dialog_text02 = void"]
[eval exp="tf.dialog_text03 = void"]
[eval exp="tf.dialog_text04 = void"]

	;first.ksで定義
	;[eval exp="sf.message_dialog = 'message7'"]
	;[eval exp="sf.layer_dialog_yesno = 20"]

	;[eval exp="sf.dialog_text_size = 22"]
	;削除ダイアログにPtextする文字列の左端だけここで設定する。あとは適宜調整数値を加算。
	;[eval exp="sf.erase_dialog_text = 60"]
	;[eval exp="sf.erase_dialog_text_y = 50"]


[macro name=確認ダイアログ]

	;セーブスロットの桁数に応じて表示位置調整
	;押しまくってると微妙に狙った座標じゃないとこに出るな。

	[if exp="tf.dialog_savedata_lock || tf.dialog_savedata_erase"]
		;こっちは削除ダイアログ用定義
		;3桁
		[if exp="tf.save_erase_num+sf.saveload_now_page*20+1+tf.sub >= 100"]
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 85"]
		;2桁
		[elsif exp="tf.save_erase_num+sf.saveload_now_page*20+1+tf.sub >= 10"]
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 90"]
		;1桁
		[else]
			;+3は微調整
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 95 +3"]
		[endif]

	;上書き時の条件がないからおかしいのか？
	[elsif exp="tf.dialog_save || tf.dialog_save_overwrite"]
		;こっちはセーブダイアログ用定義
		;3桁
		[if exp="tf.save_click_num+sf.saveload_now_page*20+1+tf.sub >= 100"]
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 85"]
		;2桁
		[elsif exp="tf.save_click_num+sf.saveload_now_page*20+1+tf.sub >= 10"]
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 90"]
		;1桁
		[else]
			;+3は微調整
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 95 +3"]
		[endif]
	[elsif exp="tf.dialog_load"]

		;こっちはセーブダイアログ用定義
		;3桁
		[if exp="tf.load_click_num+sf.saveload_now_page*20+1+tf.sub >= 100"]
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 85"]
		;2桁
		[elsif exp="tf.load_click_num+sf.saveload_now_page*20+1+tf.sub >= 10"]
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 90"]
		;1桁
		[else]
			;+3は微調整
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 95 +3"]
		[endif]
	[endif]

	;スライダーが3だからそれより上に配置
	[position layer="&sf.message_dialog" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color="&sf.dialog_text_color" opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
	[layopt layer="&sf.message_dialog" page=fore visible=true]
	[current layer="&sf.message_dialog" page=fore]

	;コンフィグのサンプルメッセージ2行書けるようにしたのでindexを1つ上にあげる
	[image storage="&sf.dialog_dialogImage" layer="&sf.layer_dialog_yesno"  page=fore visible=true left="&sf.dialog_x" top="&sf.dialog_y" index=1008000 opacity=255]
	;indexを選択肢の最大値より上に
	;x+472 y+281
	[ptext face="ＭＳ Ｐゴシック" layer="&sf.layer_dialog_yesno" page=fore x="&sf.dialog_caption_x" y="&sf.dialog_caption_y" size="&sf.dialog_text_size" color="&sf.dialog_text_color" shadow="&sf.dialog_text_shadow" edge="&sf.dialog_text_edge" bold="&sf.dialog_text_bold" text="確認"]


	;1行目
	[ptext face="ＭＳ Ｐゴシック" layer="&sf.layer_dialog_yesno" page=fore x="&sf.erase_dialog_text"     y="&sf.erase_dialog_text_y"    size="&sf.dialog_text_size" color="&sf.dialog_text_color" shadow="&sf.dialog_text_shadow" edge="&sf.dialog_text_edge" bold="&sf.dialog_text_bold" text="&tf.dialog_text01"]
	;以降はvoidでなければ表示	
	[if exp="tf.dialog_text02 != void"]
		[ptext face="ＭＳ Ｐゴシック" layer="&sf.layer_dialog_yesno" page=fore x="&sf.erase_dialog_text2"    y="&sf.erase_dialog_text_y"    size="&sf.dialog_text_size" color="&sf.dialog_text_color" shadow="&sf.dialog_text_shadow" edge="&sf.dialog_text_edge" bold="&sf.dialog_text_bold" text="&tf.dialog_text02"]
		[ptext face="ＭＳ Ｐゴシック" layer="&sf.layer_dialog_yesno" page=fore x="&sf.erase_dialog_text+120" y="&sf.erase_dialog_text_y"    size="&sf.dialog_text_size" color="&sf.dialog_text_color" shadow="&sf.dialog_text_shadow" edge="&sf.dialog_text_edge" bold="&sf.dialog_text_bold" text="&tf.dialog_text03"]
	[endif]
	;2行目
	[if exp="tf.dialog_text04 != void"]
		[ptext face="ＭＳ Ｐゴシック" layer="&sf.layer_dialog_yesno" page=fore x="&sf.erase_dialog_text"     y="&sf.erase_dialog_text_y+25" size="&sf.dialog_text_size" color="&sf.dialog_text_color" shadow="&sf.dialog_text_shadow" edge="&sf.dialog_text_edge" bold="&sf.dialog_text_bold" text="&tf.dialog_text04"]
	[endif]
[endmacro]


;コンフィグのタイトルボタンから
[if    exp="tf.dialog_conf_title"]
;スライダーの数値が上にきちゃうから数値消すか
	[eval exp="tf.dialog_text01 = 'タイトルに戻りますか？'"]
	[確認ダイアログ]
;	[eval exp="tf.dialog_conf_title = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_config_mes.ks" target=*Yesだよ exp="tf.dialog_conf_title = 0 , tf.scene_mode = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x" y="&sf.dialog_NO_y"][button graphic="dialog_bt_no" storage="system_config_mes.ks" target=*Noだよ exp="tf.dialog_conf_title = 0 , tf.dialog_now = 0"]

;コンフィグのメニューボタンから
[elsif exp="tf.dialog_conf_scene"]
	[eval exp="tf.dialog_text01 = 'Scene Replay画面に'"]
	[eval exp="tf.dialog_text04 = '　　　戻りますか？'"]
	[確認ダイアログ]
;	[eval exp="tf.dialog_conf_scene = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_config_mes.ks" target=*Yesだよ exp="tf.dialog_conf_scene = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x" y="&sf.dialog_NO_y"][button graphic="dialog_bt_no" storage="system_config_mes.ks" target=*Noだよ exp="tf.dialog_conf_scene = 0 , tf.dialog_now = 0"]


;コンフィグの設定初期化ボタンから
[elsif exp="tf.dialog_conf_def"]
	[eval exp="tf.dialog_text01 = '設定を初期化しますか？'"]
	[確認ダイアログ]
;	[eval exp="tf.dialog_conf_def = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_config_mes.ks" target=*cnf_default実行 exp="tf.dialog_conf_def = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x" y="&sf.dialog_NO_y"][button graphic="dialog_bt_no" storage="system_config_mes.ks" target=*cnf_default実行しない exp="tf.dialog_conf_def = 0 , tf.dialog_now = 0"]

;回想中ゲーム　システムタイトルボタンから
[elsif exp="tf.dialog_game_title && tf.scene_mode"]
;		[eval exp="tf.dialog_text01 = 'シーンリプレイ画面に'"]
;		[eval exp="tf.dialog_text04 = '　　　戻りますか？'"]
;		[確認ダイアログ]
;	;	[eval exp="tf.dialog_game_title = 0"]
;		[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="systembutton_sub.ks" target=*Yesだよ exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
;		[locate x="&sf.dialog_NO_x" y="&sf.dialog_NO_y"][button graphic="dialog_bt_no" storage="systembutton_sub.ks" target=*Noだよ exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]

	;title.ksの頭に戻り処理あるからここは同じラベルに飛ばしても？
	[jump target=*ゲーム中システムボタンタイトル]

;回想中ゲーム　システムタイトルボタンから
[elsif exp="tf.dialog_game_title && tf.cg_mode"]
	[eval exp="tf.dialog_text01 = 'ＣＧギャラリー画面に'"]
	[eval exp="tf.dialog_text04 = '　　　戻りますか？'"]
	[確認ダイアログ]
;	[eval exp="tf.dialog_game_title = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="systembutton_sub.ks" target=*Yesだよ exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x" y="&sf.dialog_NO_y"][button graphic="dialog_bt_no" storage="systembutton_sub.ks" target=*Noだよ exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]



;ゲーム　システムタイトルボタンから
[elsif exp="tf.dialog_game_title"]
;		[eval exp="tf.dialog_text01 = 'タイトルに戻りますか？'"]
;		[確認ダイアログ]
;	;	[eval exp="tf.dialog_game_title = 0"]
;		[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="systembutton_sub.ks" target=*Yesだよ exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
;		[locate x="&sf.dialog_NO_x" y="&sf.dialog_NO_y"][button graphic="dialog_bt_no" storage="systembutton_sub.ks" target=*Noだよ exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]

	;title.ksの頭に戻り処理あるからここは同じラベルに飛ばしても？
	[jump target=*ゲーム中システムボタンタイトル]

;セーブロード　*保護されてます　から
[elsif exp="tf.dialog_savedata_lock"]
	[eval exp="tf.dialog_text01 = '　　　このスロットは'"]
	[eval exp="tf.dialog_text04 = '　 保護されています！'"]
	[確認ダイアログ]
;	[eval exp="tf.dialog_savedata_lock = 0"]
	[locate x="&sf.dialog_YES_x+70" y="&sf.dialog_YES_y"][button graphic="dialog_bt_ok" storage="system_savedata_sub.ks" target=*セーブデータ削除しない exp="tf.dialog_savedata_lock = 0 , tf.dialog_now = 0"]

;セーブロード　*削除します　から
[elsif exp="tf.dialog_savedata_erase"]
	[eval exp="tf.dialog_text01 = 'スロット『'"]
	[eval exp="tf.dialog_text02 = tf.save_erase_num+sf.saveload_now_page*20+1+tf.sub"]
	[eval exp="tf.dialog_text03 = '』のデータを'"]
	[eval exp="tf.dialog_text04 = '削除しますか？'"]
	[確認ダイアログ]
;	[eval exp="tf.dialog_savedata_erase = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_savedata_sub.ks" target=*セーブデータ削除 exp="tf.dialog_savedata_erase = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x"  y="&sf.dialog_NO_y"][button graphic="dialog_bt_no"   storage="system_savedata_sub.ks" target=*セーブデータ削除しない exp="tf.dialog_savedata_erase = 0 , tf.dialog_now = 0"]

;セーブから
[elsif exp="tf.dialog_save_overwrite"]

	[eval exp="tf.dialog_text01 = 'スロット『'"]
	[eval exp="tf.dialog_text02 = tf.save_click_num+sf.saveload_now_page*20+1+tf.sub"]
	[eval exp="tf.dialog_text03 = '』にデータを'"]
	[eval exp="tf.dialog_text04 = '上書きしますか？'"]
	[確認ダイアログ]
;	[eval exp="tf.dialog_save_overwrite = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_savedata_sub.ks" target=*上書きsave exp="tf.dialog_save_overwrite = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x"  y="&sf.dialog_NO_y"][button graphic="dialog_bt_no"   storage="system_savedata_sub.ks" target=*上書きsaveしない exp="tf.dialog_save_overwrite = 0 , tf.dialog_now = 0"]

;セーブから
[elsif exp="tf.dialog_save"]

	[eval exp="tf.dialog_text01 = 'スロット『'"]
	[eval exp="tf.dialog_text02 = tf.save_click_num+sf.saveload_now_page*20+1+tf.sub"]
	[eval exp="tf.dialog_text03 = '』にデータを'"]
	[eval exp="tf.dialog_text04 = 'セーブしますか？'"]
	[確認ダイアログ]
;	[eval exp="tf.dialog_save = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_savedata_sub.ks" target=*save exp="tf.dialog_save = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x"  y="&sf.dialog_NO_y"][button graphic="dialog_bt_no"   storage="system_savedata_sub.ks" target=*saveしない exp="tf.dialog_save = 0 , tf.dialog_now = 0"]

;セーブのタイトルに戻るボタンから
[elsif exp="tf.dialog_savetitle"]
	[eval exp="tf.dialog_text01 = 'タイトルに戻りますか？'"]
	[確認ダイアログ]
;	[eval exp="tf.dialog_savetitle = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes"                          target=*タイトルに戻る exp="tf.dialog_savetitle = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x"  y="&sf.dialog_NO_y"][button graphic="dialog_bt_no"   storage="system_save.ks" target=*saveタイトルに戻らない exp="tf.dialog_savetitle = 0 , tf.dialog_now = 0"]

;ロードから
[elsif exp="tf.dialog_load"]
	[eval exp="tf.dialog_text01 = 'スロット『'"]
	[eval exp="tf.dialog_text02 = tf.load_click_num+sf.saveload_now_page*20+1+tf.sub"]
	[eval exp="tf.dialog_text03 = '』のデータを'"]
	[eval exp="tf.dialog_text04 = 'ロードしますか？'"]
	[確認ダイアログ]
;	[eval exp="tf.dialog_load = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_load.ks" target=*load exp="tf.dialog_load = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x"  y="&sf.dialog_NO_y"][button graphic="dialog_bt_no"   storage="system_load.ks" target=*loadしない exp="tf.dialog_load = 0 , tf.dialog_now = 0"]

;ロードのタイトルに戻るボタンから
[elsif exp="tf.dialog_loadtitle"]
	[eval exp="tf.dialog_text01 = 'タイトルに戻りますか？'"]
	[確認ダイアログ]
;	[eval exp="tf.dialog_loadtitle = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes"                         target=*タイトルに戻る exp="tf.dialog_loadtitle = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x"  y="&sf.dialog_NO_y"][button graphic="dialog_bt_no"  storage="system_load.ks" target=*loadタイトルに戻らない exp="tf.dialog_loadtitle = 0 , tf.dialog_now = 0"]


[endif]





[s]

;----------------------------------------------------
*ゲーム中システムボタンタイトル

;先にフラグオフっていい?
[eval exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]

[gotostart ask=true]

[return]

;-------------------------------
*ゲーム中システムボタンタイトル_ダイアログオフ

;先にフラグオフっていい?
[eval exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]

[gotostart]

;実際にはreturnはしないけど念のタメ
[return]

;----------------------------------------------------

*タイトルに戻る
[call storage="dialog.ks" target=*ダイアログ消去]

[gotostart]



;----------------------------------------------------
*menuタイトルに戻らない

[call storage="dialog.ks" target=*ダイアログ消去]


;これで戻れるかな
;ダメだな
[return]

;----------------------------------------------------
*ダイアログ消去

;ダイアログ消去サブルーチン
;systembutton_sub.ksの*Noだよはなんか動作が若干違うようなのであっちでやる


;ボタンとダイアログ画像クリア
[layopt layer="&sf.message_dialog" page=fore visible=false]
[layopt layer="&sf.message_dialog" page=back visible=false]
;元の枚数に戻す
;[laycount messages=8]
[laycount messages=9]
[freeimage layer="&sf.layer_dialog_yesno" page=back][freeimage layer="&sf.layer_dialog_yesno" page=fore]
;dialog_scene貼ってたレイヤのインデックスを戻す
[layopt layer="&sf.layer_dialog_yesno" index="&sf.layer_dialog_yesno * 1000 + 1000"]
;カレントレイヤを戻す
[current layer=message0]



[return]

;----------------------------------------------------
*ショートカットYES

;コンフィグのタイトルボタンから
[if    exp="tf.dialog_conf_title"]
	[eval exp="tf.dialog_conf_title = 0 , tf.scene_mode = 0 , tf.dialog_now = 0"]
	[jump storage="system_config_mes.ks" target=*Yesだよ]

;コンフィグのメニューボタンから
[elsif exp="tf.dialog_conf_scene"]
	[eval exp="tf.dialog_conf_scene = 0 , tf.dialog_now = 0"]
	[jump  storage="system_config_mes.ks" target=*Yesだよ]

;コンフィグの設定初期化ボタンから
[elsif exp="tf.dialog_conf_def"]
	[eval  exp="tf.dialog_conf_def = 0 , tf.dialog_now = 0"]
	[jump storage="system_config_mes.ks" target=*cnf_default実行]

;回想中ゲーム　システムタイトルボタンから
[elsif exp="tf.dialog_game_title && tf.scene_mode"]
	[eval exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
	[jump storage="systembutton_sub.ks" target=*Yesだよ]

;ゲーム　システムタイトルボタンから
[elsif exp="tf.dialog_game_title"]
	[eval exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
	[jump storage="systembutton_sub.ks" target=*Yesだよ]

;セーブロード　*保護されてます　から
[elsif exp="tf.dialog_savedata_lock"]
	[eval exp="tf.shortcut_use = 1"]
	[eval exp="tf.dialog_savedata_lock = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*セーブデータ削除しない]

;セーブロード　*削除します　から
[elsif exp="tf.dialog_savedata_erase"]
	[eval exp="tf.shortcut_use = 1"]
	[eval exp="tf.dialog_savedata_erase = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*セーブデータ削除]

;セーブから
[elsif exp="tf.dialog_save_overwrite"]
	[eval exp="tf.dialog_save_overwrite = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*上書きsave]

;セーブから
[elsif exp="tf.dialog_save"]
	[eval exp="tf.dialog_save = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*save]

;セーブのタイトルに戻るボタンから
[elsif exp="tf.dialog_savetitle"]
	[eval exp="tf.dialog_savetitle = 0 , tf.dialog_now = 0"]
	[jump                          target=*タイトルに戻る]

;ロードから
[elsif exp="tf.dialog_load"]
	[eval exp="tf.dialog_load = 0 , tf.dialog_now = 0"]
	[jump storage="system_load.ks" target=*load]

;ロードのタイトルに戻るボタンから
[elsif exp="tf.dialog_loadtitle"]
	[eval exp="tf.dialog_loadtitle = 0 , tf.dialog_now = 0"]
	[jump                         target=*タイトルに戻る]

[endif]


[return]

;----------------------------------------------------
*ショートカットNO
[eval exp="tf.shortcut_use = 1"]

;コンフィグのタイトルボタンから
[if    exp="tf.dialog_conf_title"]
	[eval exp="tf.dialog_conf_title = 0 , tf.dialog_now = 0"]
	[jump storage="system_config_mes.ks" target=*Noだよ]

;コンフィグのメニューボタンから
[elsif exp="tf.dialog_conf_scene"]
	[eval exp="tf.dialog_conf_scene = 0 , tf.dialog_now = 0"]
	[jump storage="system_config_mes.ks" target=*Noだよ]

;コンフィグの設定初期化ボタンから
[elsif exp="tf.dialog_conf_def"]
	[eval exp="tf.dialog_conf_def = 0 , tf.dialog_now = 0"]
	[jump storage="system_config_mes.ks" target=*cnf_default実行しない]

;回想中ゲーム　システムタイトルボタンから
[elsif exp="tf.dialog_game_title && tf.scene_mode"]
	[eval exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
	[jump storage="systembutton_sub.ks" target=*Noだよ]

;ゲーム　システムタイトルボタンから
[elsif exp="tf.dialog_game_title"]
	[eval exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
	[jump storage="systembutton_sub.ks" target=*Noだよ]

;セーブロード　*保護されてます　から
[elsif exp="tf.dialog_savedata_lock"]
	[eval exp="tf.shortcut_use = 1"]
	[eval exp="tf.dialog_savedata_lock = 0 , tf.dialog_now = 0"]
	[jump  storage="system_savedata_sub.ks" target=*セーブデータ削除しない]

;セーブロード　*削除します　から
[elsif exp="tf.dialog_savedata_erase"]
	[eval exp="tf.shortcut_use = 1"]
	[eval exp="tf.dialog_savedata_erase = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*セーブデータ削除しない]

;セーブから
[elsif exp="tf.dialog_save_overwrite"]
	[eval exp="tf.dialog_save_overwrite = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*上書きsaveしない]
;セーブから
[elsif exp="tf.dialog_save"]
	[eval exp="tf.dialog_save = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*saveしない]

;セーブのタイトルに戻るボタンから
[elsif exp="tf.dialog_savetitle"]
	[eval exp="tf.dialog_savetitle = 0 , tf.dialog_now = 0"]
	[jump storage="system_save.ks" target=*saveタイトルに戻らない]

;ロードから
[elsif exp="tf.dialog_load"]
	[eval exp="tf.dialog_load = 0 , tf.dialog_now = 0"]
	[jump storage="system_load.ks" target=*loadしない]

;ロードのタイトルに戻るボタンから
[elsif exp="tf.dialog_loadtitle"]
	[eval exp="tf.dialog_loadtitle = 0 , tf.dialog_now = 0"]
	[jump storage="system_load.ks" target=*loadタイトルに戻らない]
[endif]



[return]


