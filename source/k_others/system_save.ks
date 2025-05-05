;
; system_save.ks…セーブ画面
;

;
; 使い方：
;   [call storage="system_save.ks" target=*save_menu]
;
; 注意事項：
;   ‐当サブルーチンではメモリ上の栞２を使用している
;   ‐予め、Config.tjsの以下の項目を修正すること
;       storeMenu.visible … falseに変更
;
; 使用している変数：
;   tf.save_message0                 … セーブ画面を作るメッセージレイヤ名（グラフィカルボタン用）
;   tf.save_message1                 … セーブ画面を作るメッセージレイヤ名（栞の日付・見出し表示用）
;   tf.save_message1_layer           … tf.save_message1が指し示すメッセージレイヤオブジェクト
;   sf.saveload_now_page                 … 現在、表示中のページ（0～4）
;   tf.save_x, tf.save_y             … サムネイル画像を描画する座標（配列）
;   tf.save_column                   … サムネイル画像／上書き禁止チェックボックスを描画する列
;   tf.save_line                     … サムネイル画像／上書き禁止チェックボックスを描画する行
;   tf.save_page_x, tf.save_page_y   … ページ番号画像を描画する座標（配列）
;   tf.save_check_x, tf.save_check_y … 上書き禁止チェックボックスを描画する座標（配列）
;   tf.save_click_num                … クリックされたサムネイル画像の番号（0～11）
;   tf.save_check_num                … クリックされた上書き禁止チェックボックスの番号（0～11）
;   tf.save_i                        … ループカウンタ
;

*save_menu

;---------------------------------------------------------------------
;オン状態画像のレイヤ
[eval exp="sf.newmarklayer    = kag.numCharacterLayers - 3"]
[eval exp="tf.layer_sysjump   = kag.numCharacterLayers - 2"]
;---------------------------------------------------------------------

;ゲーム中からくるとボイス再生のままになるので停止
;[stopse buf=3]
;[stopse buf=4]
;m:どうしようなこれ、止めなくていいか。気になるならとめる。

;サンプルウィンドウとテキストのレイヤ消去
[if exp="tf.conf == 1"]
;	[freeimage layer="&sf.mask_dialog" page=fore]
	[freeimage layer="&sf.newmarklayer" page=fore]
	; スライダーを消去する
	[call storage="system_config_srd.ks" target=*スライダー消去]
	[eval exp="tf.conf = 0"]
[endif]

;オンボタンのclip画像を消しておく
[freeimage layer=0 page=fore]
[freeimage layer=1 page=fore]
[freeimage layer=2 page=fore]
[freeimage layer=3 page=fore]
[freeimage layer=4 page=fore]
[freeimage layer=5 page=fore]
[freeimage layer=6 page=fore]
[freeimage layer=7 page=fore]
[freeimage layer=8 page=fore]
[freeimage layer=9 page=fore]
[freeimage layer=10 page=fore]

; セーブ画面でマウス右クリックされたら、「戻る」と同じ動作をさせる
[rclick jump=true target="*save_return" storage="system_save.ks" enabled=true]

; セーブ画面で使用するメッセージレイヤ１つ目（グラフィカルボタンを表示するのに使用；平時はこちらがカレント）
[eval exp="tf.save_message0 = 'message1'"]

; セーブ画面で使用するメッセージレイヤ２つ目（画面下で栞の日付・見出しを表示するのに使用）
[eval exp="tf.save_message1 = 'message2'"]

; tf.save_message1が指し示すメッセージレイヤオブジェクトをtf.save_message1_layerに代入
[eval exp="tf.save_message1_layer = kag.getLayerFromElm(%['layer'=>tf.save_message1, 'page'=>'fore'])"]

;[eval exp="sf.save_text_st = []" cond="sf.save_text_st === void"]
;[eval exp="sf.save_text_la = []" cond="sf.save_text_la === void"]


; ページ用ボタンを表示する座標の配列
[eval exp="tf.save_page_x = [sf.saveload_page01_x, sf.saveload_page02_x, sf.saveload_page03_x, sf.saveload_page04_x, sf.saveload_page05_x]" cond="tf.save_page_x === void"]
[eval exp="tf.save_page_y = [sf.saveload_page01_y, sf.saveload_page02_y, sf.saveload_page03_y, sf.saveload_page04_y, sf.saveload_page05_y]" cond="tf.save_page_y === void"]

; システム系画面移動用ボタン座標の配列
[eval exp="tf.sysjump_x = [sf.sysjump_title_x,sf.sysjump_save_x,sf.sysjump_load_x,sf.sysjump_conf_x,sf.sysjump_menu_x,sf.sysjump_game_x]" cond="tf.sysjump_x === void"]
[eval exp="tf.sysjump_y = [sf.sysjump_title_y,sf.sysjump_save_y,sf.sysjump_load_y,sf.sysjump_conf_y,sf.sysjump_menu_y,sf.sysjump_game_y]" cond="tf.sysjump_y === void"]


; サムネイル画像を描画する座標の配列
[eval exp="tf.save_x = []" cond="tf.save_x === void"]
[eval exp="tf.save_y = []" cond="tf.save_y === void"]

;データ保護ボタンを描画する座標の配列
[eval exp="tf.save_lock_x = []" cond="tf.save_lock_x === void"]
[eval exp="tf.save_lock_y = []" cond="tf.save_lock_y === void"]

;データ削除ボタンを描画する座標の配列
[eval exp="tf.save_erase_x = []" cond="tf.save_erase_x === void"]
[eval exp="tf.save_erase_y = []" cond="tf.save_erase_y === void"]

; 上書き禁止チェックボックスを描画する座標の配列
;使用しない
;[eval exp="tf.save_check_x = []" cond="tf.save_check_x === void"]
;[eval exp="tf.save_check_y = []" cond="tf.save_check_y === void"]


;---------------------------------------------------------------------

; ループカウンタを０にする
[eval exp="tf.save_i=0"]

*save_loop1
	; サムネイル画像／上書き禁止チェックボックスを描画する列を計算
	[eval exp="tf.save_column = tf.save_i % 5"]
	; サムネイル画像／上書き禁止チェックボックスを描画する行を計算
	[eval exp="tf.save_line   = tf.save_i \ 5"]
	; サムネイル画像を描画する座標を計算し、配列に格納
	[eval exp="tf.save_x[tf.save_i] = sf.thum_x + (sf.thum_w + sf.thum_offset_x)*tf.save_column"]
	[eval exp="tf.save_y[tf.save_i] = sf.thum_y + (sf.thum_h + sf.thum_offset_y)*tf.save_line"]
	; 上書き禁止チェックボックスを描画する座標を計算し、配列に格納
	[eval exp="tf.save_lock_x[tf.save_i] = sf.data_lock_x + (sf.thum_w + sf.thum_offset_x)*tf.save_column"]
	[eval exp="tf.save_lock_y[tf.save_i] = sf.data_lock_y + (sf.thum_h + sf.thum_offset_y)*tf.save_line"]
	; データ削除ボタンを描画する座標を計算し、配列に格納
	[eval exp="tf.save_erase_x[tf.save_i] = sf.data_erase_x + (sf.thum_w + sf.thum_offset_x)*tf.save_column"]
	[eval exp="tf.save_erase_y[tf.save_i] = sf.data_erase_y + (sf.thum_h + sf.thum_offset_y)*tf.save_line"]


	[jump target=*save_loop1 cond="++tf.save_i<20"]



; 現在、表示中のページ（初めてセーブ画面が呼び出されたら０を代入する）
[eval exp="sf.saveload_now_page = 0" cond="sf.saveload_now_page === void"]

; 履歴レイヤを抑止
[history output=false enabled=false]

; 全メッセージレイヤ表画面、全前景レイヤ表画面を非表示にする
[call storage="system_subroutine.ks" target=*sub_layernoshow]

; 背景レイヤ表画面のクリッカブルマップを無効化
[mapdisable layer=base page=fore]

; 全前景レイヤ表画面のクリッカブルマップを無効化
[eval exp="tf.save_i=0"]
*save_loop0
	[mapdisable page=fore layer="&tf.save_i"]
	[jump target=*save_loop0 cond="++tf.save_i<kag.numCharacterLayers"]
; ノーウェイト
[delay speed=nowait]

; カレントのメッセージレイヤを栞の日付・見出し表示用レイヤに変更
[current layer="&tf.save_message1" page=fore]

; 栞の日付・見出し表示用レイヤの属性を設定
[position layer="&tf.save_message1" page=fore left="&sf.data_num_x" top="&sf.data_num_y" width="&kag.scWidth" height=39 frame="" color=0x000000 opacity=0 marginl=10 margint=0 marginr=0 marginb=0 draggable=false visible=true]

; カレントのメッセージレイヤをグラフィカルボタン表示用レイヤに変更
[current layer="&tf.save_message0" page=fore]

; グラフィカルボタン表示用レイヤの属性を設定
[position layer="&tf.save_message0" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]

; 背景レイヤ表画面にセーブ画面用画像を読み込み、表示
[image storage="&sf.addgameID + 'bg_save'" layer=base page=fore]



; ループカウンタを０にする
[eval exp="tf.save_i = 0"]
*save_loop00
	;セーブデータスロットのベース画像を描画。
	[pimage storage="&sf.addgameID + 'savedata_base'" layer=base page=fore visible=true dx="&tf.save_x[tf.save_i]" dy="&tf.save_y[tf.save_i]"]
	; ループカウンタの値を増やし、ページ用グラフィカルボタンの個数ぶん繰り返す
	[jump target=*save_loop00 cond="++tf.save_i<20"]


; サムネイル画像／ページ用ボタンがクリックされたら、サムネイル画像／ページ用ボタンの変更が反映されるよう*save_redrawに戻って再描画する
*save_redraw
	;♂
	;gameIDによりカウンタにプラス
	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i +=   0"]
	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i += 100"]
	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i +=   0"]
	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i += 100"]
	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="tf.save_i += 400"]
	[endif]
	;gameIDにより減算値確定 tf.subはget_bookmark_data中でも使うのでif分に入る前に定義
	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="tf.sub =  -0"]
	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="tf.sub = -100"]
	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="tf.sub =  -0"]
	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="tf.sub = -100"]
	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="tf.sub = -400"]
	[endif]
	;♂
;Newマーク付きのデータを消してる場合は即データ無しへ
[if exp="sf.new_saveclick == void && sf.save_slot0_on == 0"]
	[jump target=*データ無し]
[endif]

[eval exp="tf.save_i = 0"]

*save_redraw2
;Newマークをレイヤ21を消去
[freeimage layer="&sf.newmarklayer" page=back][freeimage layer="&sf.newmarklayer" page=fore]
;セーブデータが1つでも存在するかどうか 一発で判定できないものか……
[if exp="kag.getBookMarkDate(tf.save_i) != void"]
	[jump target=*データ有り]
[endif]
[eval exp="tf.save_i += 1"]
;♂
[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"]
	[if exp="tf.save_i == 100"][jump target=*データ無し][endif]
[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"]
	[if exp="tf.save_i == 200"][jump target=*データ無し][endif]
[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"]
	[if exp="tf.save_i == 300"][jump target=*データ無し][endif]
[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"]
	[if exp="tf.save_i == 400"][jump target=*データ無し][endif]
[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"]
	[if exp="tf.save_i == 500"][jump target=*データ無し][endif]
[endif]
;♂
[jump target=*save_redraw2]

*データ有り
;力技だけど各ページの0番にデータがあるか？
;[if exp="kag.getBookMarkDate(0) != void || kag.getBookMarkDate(20) != void  || kag.getBookMarkDate(40) != void || kag.getBookMarkDate(60) != void || kag.getBookMarkDate(80) != void "]
	;表示ページと最新データをセーブしたページが同じなら、Newマークをレイヤ21インデックスを1004000で貼る。座標はサムネイル画像配列から取得。
	[if exp="sf.new_savepage == sf.saveload_now_page "]

		;これは単純な座標なのでsf.new_saveclickから引く
;♂		[image storage="savenew" layer="&sf.newmarklayer" page=fore visible=true left="&tf.save_x[sf.new_saveclick]+5" top="&tf.save_y[sf.new_saveclick]+5" index=1004000]
		[image storage="savenew" layer="&sf.newmarklayer" page=fore visible=true left="&tf.save_x[sf.new_saveclick + tf.sub]+5" top="&tf.save_y[sf.new_saveclick + tf.sub]+5" index=1004000]
	[endif]
;[endif]


*データ無し


; メッセージレイヤのクリア
[er]

; カレントのメッセージレイヤを栞の日付・見出し表示用レイヤに変更
[current layer="&tf.save_message1" page=fore]

; 栞の日付・見出し表示用レイヤのフォントを変更
[font size="&sf.data_size" face="&sf.data_font"  color="&sf.data_color" italic="&sf.data_italic" rubysize="&sf.data_rubysize" rubyoffset="&sf.data_rubyoffset" shadow="&sf.data_shadow" edge="&sf.data_edge" edgecolor="&sf.data_edgecolor" shadowcolor="&sf.data_shadowcolor" bold="&sf.data_bold"]


; カレントのメッセージレイヤをグラフィカルボタン表示用レイヤに変更
[current layer="&tf.save_message0" page=fore]




*テキスト表示戻り


; ループカウンタを０にする
[eval exp="tf.save_i = 0"]
*save_loop2
	; ページ用グラフィカルボタンの表示位置を指定
	[locate x="&tf.save_page_x[tf.save_i]" y="&tf.save_page_y[tf.save_i]"]
	; 現在、表示中のページ番号か？
	[if exp="sf.saveload_now_page == tf.save_i"]
		; 真ならページ用グラフィカルボタン（現在、表示中）を配置
		;[button graphic="&'page0'+(tf.save_i+1)+'.png'" target=*save_redraw exp="&'sf.saveload_now_page='+tf.save_i"]
		[button graphic="page" target=*save_redraw exp="&'sf.saveload_now_page='+tf.save_i"]
		[image left="&tf.save_page_x[tf.save_i]" top="&tf.save_page_y[tf.save_i]" storage="&'page0'+(tf.save_i+1)+'.png'" layer=1 page=fore visible=true clipleft="&sf.page_clipleft" cliptop="&sf.page_cliptop" clipwidth="&sf.page_clipwidth" clipheight="&sf.page_clipheight" opacity=255]
	[else]
		; 偽ならページ用グラフィカルボタン（現在、非表示中）を配置
		; ↑の（現在、表示中）ボタンとは別ファイルのボタンを表示すためファイル名に注意
		[button graphic="&'page0'+(tf.save_i+1)+'.png'" target=*save_redraw exp="&'sf.saveload_now_page='+tf.save_i"]
	[endif]
	; ループカウンタの値を増やし、ページ用グラフィカルボタンの個数ぶん繰り返す
	[jump target=*save_loop2 cond="++tf.save_i<5"]


; ループカウンタを０にする
[eval exp="tf.save_i = 0"]
	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i_add =   0"]
	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i_add = 100"]
	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i_add =   0"]
	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i_add = 100"]
	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="tf.save_i_add = 400"]
	[endif]
*save_loop3
	; サムネイル画像ボタンの表示位置を指定
	[locate x="&tf.save_x[tf.save_i]+sf.thum_m_x" y="&tf.save_y[tf.save_i]+sf.thum_m_y"]
	; サムネイル画像ボタンを配置
	;元
;♂	[button graphic="thum_mouseover" target=*save_click exp="&'tf.save_click_num = '+tf.save_i" onenter="&'tf.save_message1_layer.clear2(), tf.save_message1_layer.processCh(get_bookmark_data('+(tf.save_i+sf.saveload_now_page*20)+'))'" onleave="tf.save_message1_layer.clear2()"]
	;♂実際のスロットの値を定義
	[eval exp="tf.save_i2 = tf.save_i + tf.save_i_add"]
	[button graphic="thum_mouseover" target=*save_click exp="&'tf.save_click_num = '+tf.save_i2" onenter="&'tf.save_message1_layer.clear2(), tf.save_message1_layer.processCh(get_bookmark_data('+(tf.save_i + tf.save_i_add +sf.saveload_now_page*20)+'))'" onleave="tf.save_message1_layer.clear2()"]

;オンEnterしたら
;sf.save_text_st[tf.save_click_num+sf.saveload_now_page*20]
;sf.save_text_la[tf.save_click_num+sf.saveload_now_page*20]
;に飛んでテキストを描画
;これは直接ファイルのテキストを読みに行く処理を試したのだな
;★
;	[if exp="sf.save_text_st[tf.save_i+sf.saveload_now_page*20] == void"]
;		[button graphic="thum_mouseover" target=*save_click exp="&'tf.save_click_num = '+tf.save_i" onenter="&'tf.save_message1_layer.clear2(), tf.save_message1_layer.processCh(get_bookmark_data('+(tf.save_i+sf.saveload_now_page*20)+'))'" onleave="tf.save_message1_layer.clear2()"]
;	[else]
;		[button graphic="thum_mouseover" target=*save_click exp="&'tf.save_click_num = '+tf.save_i" onenter=" kag.process(sf.save_text_st[tf.save_i+sf.saveload_now_page*20], sf.save_text_la[tf.save_i+sf.saveload_now_page*20])",onleave="tf.save_message1_layer.clear2()"]
;	[endif]
;★

	; セーブデータがあるならサムネイル画像ボタンの画像を書き換える
;♂	[button_loadthumbnail num="&tf.save_i+5" place="&tf.save_i+sf.saveload_now_page*20"]
	[button_loadthumbnail num="&tf.save_i+5" place="&tf.save_i + tf.save_i_add + sf.saveload_now_page*20"]
	; ループカウンタの値を増やし、１ページあたりのセーブ数ぶん繰り返す
	[jump target=*save_loop3 cond="++tf.save_i<20"]






; ループカウンタを０にする
[eval exp="tf.save_i = 0"]
[eval exp="tf.save_i2 = 0"]
*save_loop4
	;♂実際のスロットの値を定義
	[eval exp="tf.save_i2 = tf.save_i + tf.save_i_add"]

	; 上書き禁止チェックボックスの表示位置を指定
	[locate x="&tf.save_lock_x[tf.save_i]" y="&tf.save_lock_y[tf.save_i]"]
	; 該当のセーブデータは上書き禁止状態か？
	;ここでのtf.save_iはロックされてるスロットの実際の値だからtf.save_i2
;♂	[if exp="kag.bookMarkProtectedStates[tf.save_i+sf.saveload_now_page*20]"]
	[if exp="kag.bookMarkProtectedStates[tf.save_i2+sf.saveload_now_page*20]"]
		;実際にロックされるするスロットの値だからtf.save_i2
		; 真ならチェックマーク付きのグラフィカルボタンを作成
;♂		[button graphic="save_lock.png"   target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.save_i"]
		[button graphic="save_lock.png"   target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.save_i2"]
	[else]
		; 偽ならチェックマーク無しのグラフィカルボタンを作成
;♂		[button graphic="save_unlock.png" target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.save_i"]
		[button graphic="save_unlock.png" target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.save_i2"]
	[endif]
	; ループカウンタの値を増やし、１ページあたりのセーブ数ぶん繰り返す
	[jump target=*save_loop4 cond="++tf.save_i<20"]


;データ削除マーク
; ループカウンタを０にする
[eval exp="tf.save_i = 0"]
[eval exp="tf.save_i2 = 0"]
*save_loop5
	;♂実際のスロットの値を定義
	[eval exp="tf.save_i2 = tf.save_i + tf.save_i_add"]

	; 上書き禁止チェックボックスの表示位置を指定
	[locate x="&tf.save_erase_x[tf.save_i]" y="&tf.save_erase_y[tf.save_i]"]
;♂	[button graphic="save_erase.png" target=*savedata_erase exp="&'tf.save_erase_num='+tf.save_i"]
	[button graphic="save_erase.png" target=*savedata_erase exp="&'tf.save_erase_num='+tf.save_i2"]

	; ループカウンタの値を増やし、１ページあたりのセーブ数ぶん繰り返す
	[jump target=*save_loop5 cond="++tf.save_i<20"]






;システム系画面移動用ボタン呼び出し
;[call storage="system_jump_sub.ks"]

;-----------------------------------------------------------
;システム系画面移動用ボタン配置


; タイトルへボタンを表示。タイトルから来てたらbackと同じだから表示しない？
[if exp="tf.title_pass == 0"]
	[locate x="&tf.sysjump_x[0]" y="&tf.sysjump_y[0]"]
	; シーン回想中にタイトル戻るならフラグオフ。これクリック時成立じゃだめだ。戻る可能性があるから exp="tf.scene_mode = 0 , tf.totitle = 1"
	[button graphic="sysjump_title" target=*jump_title exp="tf.totitle = 1"]
[endif]

; 現在SAVEへボタンを表示 シーン回想中ではなく、かつゲーム中なら表示
[if exp="tf.scene_mode == 0 && tf.gameplay == 1"]
	[locate x="&tf.sysjump_x[1]" y="&tf.sysjump_y[1]"]
	;現在SAVEページなのでボタンじゃ無くてnowボタン。押しても何も起こらない。
	;[button graphic="sysjump_save" storage="system_save.ks"]
	[button graphic="sysjump" storage="system_save.ks"]
	[image left="&tf.sysjump_x[1]" top="&tf.sysjump_y[1]" storage="sysjump_save" layer="&tf.layer_sysjump" page=fore visible=true clipleft="&sf.sysjump_clipleft" cliptop="&sf.sysjump_cliptop" clipwidth="&sf.sysjump_clipwidth" clipheight="&sf.sysjump_clipheight" opacity=255]
[endif]

; LOADへボタンを表示 シーン回想中でないなら表示。タイトルから来る場合もあるのでゲーム中かどうかは問わない。
[if exp="tf.scene_mode == 0"]
	[locate x="&tf.sysjump_x[2]" y="&tf.sysjump_y[2]"]
	[button graphic="sysjump_load" storage="system_load.ks" exp="tf.save = 0, tf.load = 1, tf.conf = 0"]
[endif]

;コンフィグページを表示。
[locate x="&tf.sysjump_x[3]" y="&tf.sysjump_y[3]"]
[button graphic="sysjump_config" storage="system_config_mes.ks" exp="tf.save = 0, tf.load = 0, tf.conf = 1"]

;//	; シーン回想中なら回想メニューへボタンを表示
;//	[if exp="tf.scene_mode"]
;//		[locate x="&tf.sysjump_x[0]" y="&tf.sysjump_y[4]"]
;//		[button graphic="sysjump_menu" target=*jump_scene]
;//	[endif]

; 「戻る」ボタンを配置
[locate x="&tf.sysjump_x[5]" y="&tf.sysjump_y[5]"]
[button graphic="sysjump_back" target="*save_return" storage="system_save.ks" recthit=false]

[eval exp="tf.savepass = 0"]
;右クリック機能で来た場合に即座に元の画面に戻らないようにするためのウェイト。time=1でも効果有りだが念の為50mm秒に設定。
[wait time=50 canskip=false]




[s]

;-----------------------------------------------------------



;
; サムネイル画像ボタンがクリックされた
;
*save_click



;クリックしたスロットが保護されてたら保護ダイアログ表示するラベルへ。
[if exp="kag.bookMarkProtectedStates[tf.save_click_num+sf.saveload_now_page*20]"]
	[call storage="system_savedata_sub.ks" target=*保護されてます]

	; セーブ画面でマウス右クリックされたら、「戻る」と同じ動作をさせる
	[rclick jump=true target="*save_return" storage="system_save.ks" enabled=true]

	;リターンしたらredrawへ戻る。
	[jump target=*save_redraw]
[endif]

; セーブ
;データ無し時・上書き時・ダイアログオフ時で3パターンの処理がある。随分面倒なつくりにしちゃったなあ。
[if exp="sf.dialog_on"]

	;クリックした場所の前の記録を一時的に保存
	[eval exp="tf.new_saveclick_temp = sf.new_saveclick"]
	;クリックしたページの前の記録を一時的に保存
	[eval exp="tf.new_savepage_temp = sf.new_savepage"]

	;kag.getBookMarkDateで秒単位も取得できるようにしたので、たぶんこれで行ける。けどもう少し綺麗にしたいなぁ。
	;でーたはあるけど上書きしてない場合はどう判定しよう？
	[if exp="kag.getBookMarkDate(tf.save_click_num+sf.saveload_now_page*20) != void"]

		;現在保存されてるラベルを一時的に保存
		[eval exp="tf.PageName = kag.getBookMarkPageName(tf.save_click_num+sf.saveload_now_page*20)"]
		;現在保存されてる時刻を一時的に保存
		[eval exp="tf.Date     = kag.getBookMarkDate(tf.save_click_num+sf.saveload_now_page*20)"]

		;セーブYESNOダイヤログを開く。
		;[save place="&tf.save_click_num+sf.saveload_now_page*20" ask=true]

		[eval exp="tf.dialog_save_overwrite = 1"]
		;ダイアログ表示
		[jump storage="dialog.ks" target=*dialog_draw]

	[else]
	;こっちはデータが元々なかったスロットをクリックした場合。

		;セーブYESNOダイヤログを開く。
		;[save place="&tf.save_click_num+sf.saveload_now_page*20" ask=true]

		[eval exp="tf.dialog_save = 1"]
		;ダイアログ表示
		;デフォので開くならこうか
		;[eval exp="kag.askSavetest()"]
		[jump storage="dialog.ks" target=*dialog_draw]

	[endif]

[endif]

;クリックした場所を記録
[eval exp="sf.new_saveclick = tf.save_click_num"]
;クリックしたページを記録
[eval exp="sf.new_savepage = sf.saveload_now_page"]
;クリックした場所が0なら専用のフラグを立てる。
[if exp="sf.new_saveclick == 0"]
	[eval exp="sf.save_slot0_on = 1"]
	;★★★最後に0番スロットにセーブしたかどうかフラグがオフのままになってるので修正 2018/02/05
	;0番セーブオン
	[eval exp="sf.save_slot0 = 1"]
	;★★★修正ここまで
[else]
	[eval exp="sf.save_slot0_on = 0"]
	;★★★最後に0番スロットにセーブしたかどうかフラグがオンのままになってるので修正 2018/02/05
	;0番セーブオフ
	[eval exp="sf.save_slot0 = 0"]
	;★★★修正ここまで
[endif]

[save place="&tf.save_click_num+sf.saveload_now_page*20"]
;	;★
;	;現在のファイル名を保存
;	[eval exp="sf.save_text_st[tf.save_click_num+sf.saveload_now_page*20] = f.ksStorageSys"]
;	;現在のラベル名を保存
;	[eval exp="sf.save_text_la[tf.save_click_num+sf.saveload_now_page*20] = f.ksLabelSys"]
;	;★


*ダイアログから戻り
*ダイアログから戻り02



;ボタンとダイアログ画像クリア
;[cm]
[layopt layer="&sf.message_dialog" page=fore visible=false]
[layopt layer="&sf.message_dialog" page=back visible=false]
;CMすると戻った時に選択肢のベース消えちゃうんだわ。でもセーブするたびにボタン多重になってないか？
;fcマクロになにか仕込むしかないか。とりあえず多重はまずいからcmしとこ
[call storage="dialog.ks" target=*ダイアログ消去]


;カレントレイヤを戻す　これ0にしてたから戻りで選択肢消えてたのかしら？
[current layer="&tf.save_message0" page=fore]

; セーブ画面でマウス右クリックされたら、「戻る」と同じ動作をさせる
[rclick jump=true target="*save_return" storage="system_save.ks" enabled=true]

; 最新の状態になるようセーブ画面を再描画する
[jump target=*save_redraw]

;
; 上書き禁止チェックボックスが選択された
;使用しない
;*save_check
; グラフィカルボタンのロックを解除
;[unlocklink]
; セーブデータの保護フラグを変更
;[eval exp="kag.setBookMarkProtectedState(tf.save_check_num+sf.saveload_now_page*20, !kag.bookMarkProtectedStates[tf.save_check_num+sf.saveload_now_page*12])"]
; セーブデータの保護フラグの値は？
;[if exp="kag.bookMarkProtectedStates[tf.save_check_num+sf.saveload_now_page*20]"]
;	; 真ならチェックマーク付きのチェックボックスに置き換え
;	[button_chgimage graphic="savemode_checkbox_box2.png" num="&tf.save_check_num+20+5"]
;[else]
;	; 偽ならチェックマークなしのチェックボックスに置き換え
;	[button_chgimage graphic="savemode_checkbox_box.png" num="&tf.save_check_num+20+5"]
;[endif]
;[s]


;-----------------------------------------------------------
*savedata_lock_button_chgimage

;サブルーチンにロック、アンロックボタンを書き換えにいく。
[call storage="system_savedata_sub.ks" target=*savedata_lock_button_chgimage]

;リターンしたらredrawへ戻る。
[jump target=*save_redraw]

;-----------------------------------------------------------
*savedata_erase

;サブルーチンにセーブデータを削除しにいく。
[call storage="system_savedata_sub.ks" target=*savedata_erase]
*ショートカット戻り
;ボタンとダイアログ画像クリア
[layopt layer=message"&sf.dialog_message" page=fore visible=false]

; セーブ画面でマウス右クリックされたら、「戻る」と同じ動作をさせる
;[rclick jump=true target="*save_return" storage="system_save.ks" enabled=true]
;これ要らないのか。これあると右クリック復帰しない

;リターンしたらmenuへ戻る。
[jump target=*save_menu]

;-----------------------------------------------------------
*jump_title
[if exp="sf.dialog_on"]
		[eval exp="tf.dialog_savetitle = 1"]
		;ダイアログ表示
		[jump storage="dialog.ks" target=*dialog_draw]
[endif]

;-----------------------------------
*saveタイトルに戻る
;ダイアログオフ時の戻り抜けてた
;複数ファイルに書くと面倒だからダイアログサブルーチンのタイトルへ戻るに飛ばす
[jump storage="dialog.ks" target=*タイトルに戻る]
;-----------------------------------






*saveタイトルに戻らない
[call storage="dialog.ks" target=*ダイアログ消去]


;一応ここにも入れる セーブ画面でマウス右クリックされたら、「戻る」と同じ動作をさせる 
[rclick jump=true target="*save_return" storage="system_save.ks" enabled=true]


[jump target=*save_menu]

;-----------------------------------------------------------

;
; 「戻る」が選択された／マウス右クリックされた
;
*save_return

;Newマーク貼ってたレイヤのインデックスを戻す
[layopt layer="&sf.newmarklayer" index="&sf.newmarklayer*1000+1000"]
[freeimage layer="&sf.newmarklayer" page=back][freeimage layer="&sf.newmarklayer" page=fore]

;ここでCMしちゃだめなんだっけ？
;[cm]

; どこから来た？
; タイトル
;[if exp="tf.fromtitle"]
[if exp="tf.title_pass"]
	[jump storage="title.ks" target=*title_menu]
; ゲーム中
[elsif exp="tf.gameplay"]
	;亡国用　モブvoiceオンにしてたら再生し直し。オン連打してても再生し直しちゃうけどそれはスルー
	[if exp="f.mob_voice_on == 1"]
		[eval exp="f.mob_voice_on = 0"]
		[vo_m s="&f.mobbgv_file"]
	[endif]
	[jump storage="systembutton_sub.ks" target=*sys_save_return]
[endif]

; 戻る
[return]


