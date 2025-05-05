;
; system_load.ks…ロード画面
;

;
; 使い方：
;   [call storage="system_load.ks" target=*load_menu]
;
; 注意事項：
;   ‐当サブルーチンではメモリ上の栞１を使用している
;   ‐予め、Config.tjsの以下の項目を修正すること
;       restoreMenu.visible … falseに変更
;
; 使用している変数：
;   tf.load_message0                 … ロード画面を作るメッセージレイヤ名（グラフィカルボタン用）
;   tf.load_message1                 … ロード画面を作るメッセージレイヤ名（栞の日付・見出し表示用）
;   tf.load_message1_layer           … tf.load_message1が指し示すメッセージレイヤオブジェクト
;   sf.saveload_now_page                 … 現在、表示中のページ（0～4）
;   tf.load_x, tf.load_y             … サムネイル画像を描画する座標（配列）
;   tf.load_column                   … サムネイル画像を描画する列
;   tf.load_line                     … サムネイル画像を描画する行
;   tf.load_page_x, tf.load_page_y   … ページ番号画像を描画する座標（配列）
;   tf.load_click_num                … クリックされたサムネイル画像の番号（0～11）
;   tf.load_i                        … ループカウンタ
;

*load_menu
;---------------------------------------------------------------------
;オン状態画像のレイヤ
[eval exp="sf.newmarklayer    = kag.numCharacterLayers - 3"]
[eval exp="tf.layer_sysjump   = kag.numCharacterLayers - 2"]
;---------------------------------------------------------------------


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



; ロード画面でマウス右クリックされたら、「戻る」と同じ動作をさせる
[rclick jump=true target="*load_return" storage="system_load.ks" enabled=true]

; ロード画面で使用するメッセージレイヤ１つ目（グラフィカルボタンを表示するのに使用；平時はこちらがカレント）
[eval exp="tf.load_message0 = 'message1'"]

; ロード画面で使用するメッセージレイヤ２つ目（画面下で栞の日付・見出しを表示するのに使用）
[eval exp="tf.load_message1 = 'message2'"]

; tf.load_message1が指し示すメッセージレイヤオブジェクトをtf.load_message1_layerに代入
[eval exp="tf.load_message1_layer = kag.getLayerFromElm(%['layer'=>tf.load_message1, 'page'=>'fore'])"]

; ページ用ボタンを表示する座標の配列
[eval exp="tf.load_page_x = [sf.saveload_page01_x, sf.saveload_page02_x, sf.saveload_page03_x, sf.saveload_page04_x, sf.saveload_page05_x]"]
[eval exp="tf.load_page_y = [sf.saveload_page01_y, sf.saveload_page02_y, sf.saveload_page03_y, sf.saveload_page04_y, sf.saveload_page05_y]"]

; システム系画面移動用ボタン座標の配列
[eval exp="tf.sysjump_x = [sf.sysjump_title_x,sf.sysjump_save_x,sf.sysjump_load_x,sf.sysjump_conf_x,sf.sysjump_menu_x,sf.sysjump_game_x]"]
[eval exp="tf.sysjump_y = [sf.sysjump_title_y,sf.sysjump_save_y,sf.sysjump_load_y,sf.sysjump_conf_y,sf.sysjump_menu_y,sf.sysjump_game_y]"]

; サムネイル画像を描画する座標の配列
[eval exp="tf.load_x = []"]
[eval exp="tf.load_y = []"]

;データ保護ボタンを描画する座標の配列
[eval exp="tf.save_lock_x = []"]
[eval exp="tf.save_lock_y = []"]

;データ削除ボタンを描画する座標の配列
[eval exp="tf.save_erase_x = []"]
[eval exp="tf.save_erase_y = []"]

;---------------------------------------------------------------------

; ループカウンタを０にする
[eval exp="tf.load_i=0"]

*load_loop1
	; サムネイル画像／上書き禁止チェックボックスを描画する列を計算
	;m:列、行ともにどちらかの最大値で合わせること。
	[eval exp="tf.load_column = tf.load_i % 5"]
	; サムネイル画像／上書き禁止チェックボックスを描画する行を計算
	[eval exp="tf.load_line   = tf.load_i \ 5"]
	;m:ページ内のサムネイル数を変える時は↑の数値と各所のサムネイル数（このファイルだと20を指定してる箇所）を変える。
	; サムネイル画像を描画する座標を計算し、配列に格納
	[eval exp="tf.load_x[tf.load_i] = sf.thum_x + (sf.thum_w + sf.thum_offset_x)*tf.load_column"]
	[eval exp="tf.load_y[tf.load_i] = sf.thum_y + (sf.thum_h + sf.thum_offset_y)*tf.load_line"]
	; 上書き禁止チェックボックスを描画する座標を計算し、配列に格納
	[eval exp="tf.save_lock_x[tf.load_i] = sf.data_lock_x + (sf.thum_w + sf.thum_offset_x)*tf.load_column"]
	[eval exp="tf.save_lock_y[tf.load_i] = sf.data_lock_y + (sf.thum_h + sf.thum_offset_y)*tf.load_line"]
	; データ削除ボタンを描画する座標を計算し、配列に格納
	[eval exp="tf.save_erase_x[tf.load_i] = sf.data_erase_x + (sf.thum_w + sf.thum_offset_x)*tf.load_column"]
	[eval exp="tf.save_erase_y[tf.load_i] = sf.data_erase_y + (sf.thum_h + sf.thum_offset_y)*tf.load_line"]
	[jump target=*load_loop1 cond="++tf.load_i<20"]




; 現在、表示中のページ（初めてロード画面が呼び出されたら０を代入する）
[eval exp="sf.saveload_now_page = 0" cond="sf.saveload_now_page === void"]

; 履歴レイヤを抑止
[history output=false enabled=false]

; 全メッセージレイヤ表画面、全前景レイヤ表画面を非表示にする
[call storage="system_subroutine.ks" target=*sub_layernoshow]

; 背景レイヤ表画面のクリッカブルマップを無効化
[mapdisable layer=base page=fore]


[eval exp="tf.load_i=0"]
*load_loop0
	[mapdisable page=fore layer="&tf.load_i"]
	[jump target=*load_loop0 cond="++tf.load_i<kag.numCharacterLayers"]
; ノーウェイト
[delay speed=nowait]

; カレントのメッセージレイヤを栞の日付・見出し表示用レイヤに変更
[current layer="&tf.load_message1" page=fore]

; 栞の日付・見出し表示用レイヤの属性を設定
[position layer="&tf.load_message1" page=fore left="&sf.data_num_x" top="&sf.data_num_y" width="&kag.scWidth" height=39 frame="" color=0x000000 opacity=0 marginl=10 margint=0 marginr=0 marginb=0 draggable=false visible=true]

; カレントのメッセージレイヤをグラフィカルボタン表示用レイヤに変更
[current layer="&tf.load_message0" page=fore]

; グラフィカルボタン表示用レイヤの属性を設定
[position layer="&tf.load_message0" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]

; 背景レイヤ表画面にロード画面用画像を読み込み、表示
[image storage="&sf.addgameID + 'bg_load'" layer=base page=fore]


; ループカウンタを０にする
[eval exp="tf.load_i = 0"]

*load_loop00
	;セーブデータスロットのベース画像を描画。
	[pimage storage="&sf.addgameID + 'savedata_base'" layer=base page=fore visible=true dx="&tf.load_x[tf.load_i]" dy="&tf.load_y[tf.load_i]"]
	; ループカウンタの値を増やし、ページ用グラフィカルボタンの個数ぶん繰り返す
	[jump target=*load_loop00 cond="++tf.load_i<20"]

	;♂
	;gameIDによりカウンタにプラス
	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i +=   0"]
	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i += 100"]
	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i +=   0"]
	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i += 100"]
	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="tf.load_i += 400"]
	[endif]
	;gameIDにより減算値確定 tf.subはget_bookmark_data中でも使うのでif分に入る前に定義
	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="tf.sub =  -0"]
	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="tf.sub = -100"]
	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="tf.sub =  -0"]
	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="tf.sub = -100"]
	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="tf.sub = -400"]
	[endif]
	;♂

; サムネイル画像／ページ用ボタンがクリックされたら、サムネイル画像／ページ用ボタンの変更が反映されるよう*load_redrawに戻って再描画する
*load_redraw
;Newマーク付きのデータを消してる場合は即データ無しへ
[if exp="sf.new_saveclick == void && sf.save_slot0_on == 0"]
	[jump target=*データ無し]
[endif]

;//邪淫用に増やす
;//アルテア　スロット1 100 セーブロード
;//ビアンカ　スロット101 200 セーブロード
;//アルテア　スロット201 クイックセーブロード
;//ビアンカ　スロット202 クイックセーブロード
;;numBookMarks = 203;

[eval exp="tf.load_i = 0"]
*load_redraw2
;Newマークをレイヤ21を消去
[freeimage layer="&sf.newmarklayer" page=back][freeimage layer="&sf.newmarklayer" page=fore]
;セーブデータが1つでも存在するかどうか 一発で判定できないものか……
[if exp="kag.getBookMarkDate(tf.load_i) != void"]
	[freeimage layer="&sf.newmarklayer" page=back][freeimage layer="&sf.newmarklayer" page=fore]
	[jump target=*データ有り]
[endif]
[eval exp="tf.load_i += 1"]
;♂
[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"]
	[if exp="tf.load_i == 100"][jump target=*データ無し][endif]
[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"]
	[if exp="tf.load_i == 200"][jump target=*データ無し][endif]
[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"]
	[if exp="tf.load_i == 300"][jump target=*データ無し][endif]
[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"]
	[if exp="tf.load_i == 400"][jump target=*データ無し][endif]
[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"]
	[if exp="tf.load_i == 500"][jump target=*データ無し][endif]
[endif]
;♂
[jump target=*load_redraw2]

*データ有り
;力技だけど各ページの0番にデータがあるか？
;[if exp="kag.getBookMarkDate(0) != void || kag.getBookMarkDate(20) != void  || kag.getBookMarkDate(40) != void || kag.getBookMarkDate(60) != void || kag.getBookMarkDate(80) != void "]
	;表示ページと最新データをセーブしたページが同じなら、Newマークをレイヤ21インデックスを1004000で貼る。座標はサムネイル画像配列から取得。
	[if exp="sf.new_savepage == sf.saveload_now_page "]

		;これは単純な座標なのでsf.new_saveclickから引く
;♂		[image storage="savenew" layer="&sf.newmarklayer" page=fore visible=true left="&tf.load_x[sf.new_saveclick]+5" top="&tf.load_y[sf.new_saveclick]+5" index=1004000]
		[image storage="savenew" layer="&sf.newmarklayer" page=fore visible=true left="&tf.load_x[sf.new_saveclick + tf.sub]+5" top="&tf.load_y[sf.new_saveclick + tf.sub]+5" index=1004000]
	[endif]
;[endif]

*データ無し

; メッセージレイヤのクリア
[er]

; カレントのメッセージレイヤを栞の日付・見出し表示用レイヤに変更
[current layer="&tf.load_message1" page=fore]

; 栞の日付・見出し表示用レイヤのフォントを変更
;なぜか変数の指定が効かない！なぜ？
;[font size="&sf.data_size" face="&sf.data_font"  color="&sf.data_color" italic="&sf.data_italic" rubysize="&sf.data_rubysize" rubyoffset="&sf.data_rubyoffset" shadow="&sf.data_shadow" edge="&sf.data_edge" edgecolo="&sf.data_edgecolor" shadowcolor="&sf.data_shadowcolor" bold="&sf.data_bold"]
[font size="&sf.data_size"              face="ＭＳ ゴシック" color=0xFFFFFF         italic=false             rubysize=10                  rubyoffset=0                     shadow=false             edge=true            edgecolor=0xffc0c0            shadowcolor=0x000000               bold=false]

; カレントのメッセージレイヤをグラフィカルボタン表示用レイヤに変更
[current layer="&tf.load_message0" page=fore]




; ループカウンタを０にする
[eval exp="tf.load_i = 0"]
*load_loop2
	; ページ用グラフィカルボタンの表示位置を指定
	[locate x="&tf.load_page_x[tf.load_i]" y="&tf.load_page_y[tf.load_i]"]
	; 現在、表示中のページ番号か？
	[if exp="sf.saveload_now_page == tf.load_i"]
		; 真ならページ用グラフィカルボタン（現在、表示中）を配置
		;[button graphic="&'page0'+(tf.load_i+1)+'_on.png'" target=*load_redraw exp="&'sf.saveload_now_page='+tf.load_i"]
		[button graphic="page" target=*load_redraw exp="&'sf.saveload_now_page='+tf.load_i"]
		[image left="&tf.load_page_x[tf.load_i]" top="&tf.load_page_y[tf.load_i]" storage="&'page0'+(tf.load_i+1)+'.png'" layer=1 page=fore visible=true clipleft="&sf.page_clipleft" cliptop="&sf.page_cliptop" clipwidth="&sf.page_clipwidth" clipheight="&sf.page_clipheight" opacity=255]
	[else]
		; 偽ならページ用グラフィカルボタン（現在、非表示中）を配置
		[button graphic="&'page0'+(tf.load_i+1)+'.png'" target=*load_redraw exp="&'sf.saveload_now_page='+tf.load_i"]
	[endif]
	; ループカウンタの値を増やし、ページ用グラフィカルボタンの個数ぶん繰り返す
	[jump target=*load_loop2 cond="++tf.load_i<5"]


; ループカウンタを０にする
[eval exp="tf.load_i = 0"]
	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i_add =   0"]
	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i_add = 100"]
	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i_add =   0"]
	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i_add = 100"]
	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="tf.load_i_add = 400"]
	[endif]
*load_loop3
	; サムネイル画像ボタンの表示位置を指定
	[locate x="&tf.load_x[tf.load_i]+sf.thum_m_x" y="&tf.load_y[tf.load_i]+sf.thum_m_y"]
	; サムネイル画像ボタンを配置
;♂	[button graphic="thum_mouseover" target=*load_click exp="&'tf.load_click_num = '+tf.load_i" onenter="&'tf.load_message1_layer.clear2(), tf.load_message1_layer.processCh(get_bookmark_data('+(tf.load_i+sf.saveload_now_page*20)+'))'" onleave="tf.load_message1_layer.clear2()"]
	;♂実際のスロットの値を定義
	[eval exp="tf.load_i2 = tf.load_i + tf.load_i_add"]
	[button graphic="thum_mouseover" target=*load_click exp="&'tf.load_click_num = '+tf.load_i2" onenter="&'tf.load_message1_layer.clear2(), tf.load_message1_layer.processCh(get_bookmark_data('+(tf.load_i + tf.load_i_add +sf.saveload_now_page*20)+'))'" onleave="tf.load_message1_layer.clear2()"]

	;★;これは直接ファイルのテキストを読みに行く処理を試したのだな
	;[button graphic="thum_mouseover" target=*save_click exp="&'tf.save_click_num = '+tf.load_i" onenter=" kag.process('','*sub')",onleave="tf.save_message1_layer.clear2()"]
	;★


	; セーブデータがあるならサムネイル画像ボタンの画像を書き換える
;	[button_loadthumbnail num="&tf.load_i+5" place="&tf.load_i+sf.saveload_now_page*20"]
	[button_loadthumbnail num="&tf.load_i+5" place="&tf.load_i + tf.load_i_add + sf.saveload_now_page*20"]
	; ループカウンタの値を増やし、１ページあたりのセーブ数ぶん繰り返す
	[jump target=*load_loop3 cond="++tf.load_i<20"]


; ループカウンタを０にする
[eval exp="tf.load_i = 0"]
[eval exp="tf.load_i2 = 0"]
*load_loop4
	;♂実際のスロットの値を定義
	[eval exp="tf.load_i2 = tf.load_i + tf.load_i_add"]
	; 上書き禁止チェックボックスの表示位置を指定
	[locate x="&tf.save_lock_x[tf.load_i]" y="&tf.save_lock_y[tf.load_i]"]
	; 該当のセーブデータは上書き禁止状態か？
	;ここでのtf.load_iはロックされてるスロットの実際の値だからtf.load_i2
;♂	[if exp="kag.bookMarkProtectedStates[tf.load_i+sf.saveload_now_page*20]"]
	[if exp="kag.bookMarkProtectedStates[tf.load_i2+sf.saveload_now_page*20]"]
		;実際にロックされるするスロットの値だからtf.load_i2
		; 真ならチェックマーク付きのグラフィカルボタンを作成
;♂		[button graphic="save_lock.png"   target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.load_i"]
		[button graphic="save_lock.png"   target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.load_i2"]
	[else]
		; 偽ならチェックマーク無しのグラフィカルボタンを作成
;♂		[button graphic="save_unlock.png" target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.load_i"]
		[button graphic="save_unlock.png" target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.load_i2"]
	[endif]
	; ループカウンタの値を増やし、１ページあたりのセーブ数ぶん繰り返す
	[jump target=*load_loop4 cond="++tf.load_i<20"]


;データ削除マーク
; ループカウンタを０にする
[eval exp="tf.load_i = 0"]
[eval exp="tf.load_i2 = 0"]
*load_loop5
	;♂実際のスロットの値を定義
	[eval exp="tf.load_i2 = tf.load_i + tf.load_i_add"]
	; 上書き禁止チェックボックスの表示位置を指定
	[locate x="&tf.save_erase_x[tf.load_i]" y="&tf.save_erase_y[tf.load_i]"]
	;ここでのtf.load_iは削除するスロットの実際の値だからtf.load_i2
;♂	[button graphic="save_erase.png" target=*savedata_erase exp="&'tf.save_erase_num='+tf.load_i"]
	[button graphic="save_erase.png" target=*savedata_erase exp="&'tf.save_erase_num='+tf.load_i2"]

	; ループカウンタの値を増やし、１ページあたりのセーブ数ぶん繰り返す
	[jump target=*load_loop5 cond="++tf.load_i<20"]


;-----------------------------------------------------------
;システム系画面移動用ボタン配置

; タイトルへボタンを表示。タイトルから来てたらbackと同じだから表示しない？
[if exp="tf.title_pass == 0"]
	[locate x="&tf.sysjump_x[0]" y="&tf.sysjump_y[0]"]
	; シーン回想中にタイトル戻るならフラグオフ。これクリック時成立じゃだめだ。戻る可能性があるから exp="tf.scene_mode = 0 , tf.totitle = 1"
	[button graphic="sysjump_title" target=*jump_title exp="tf.totitle = 1"]
[endif]

; SAVEへボタンを表示 シーン回想中ではなく、かつゲーム中、かつタイトル画面経由してないなら表示
[if exp="tf.scene_mode == 0 && tf.gameplay == 1 && tf.title_pass == 0"]
	[locate x="&tf.sysjump_x[1]" y="&tf.sysjump_y[1]"]
	[button graphic="sysjump_save" storage="system_save.ks" exp="tf.save = 1, tf.load = 0, tf.conf = 0"]
[endif]


;title→ロード→BACKだとコールリターンのつじつまが合わないようなのでtitleからロードに来た場合はコンフィグへボタン表示しない
;  現在LOADへボタンを表示 シーン回想中でないなら表示。タイトルから来る場合もあるのでゲーム中かどうかは問わない。
[if exp="tf.scene_mode == 0"]
	[locate x="&tf.sysjump_x[2]" y="&tf.sysjump_y[2]"]
	;現在LOADページなのでボタンじゃ無くてnowボタン。押しても何も起こらない。
	;[button graphic="sysjump_load" storage="system_load.ks"]
	[button graphic="sysjump" storage="system_load.ks"]
	[image left="&tf.sysjump_x[2]" top="&tf.sysjump_y[2]" storage="sysjump_load" layer="&tf.layer_sysjump" page=fore visible=true clipleft="&sf.sysjump_clipleft" cliptop="&sf.sysjump_cliptop" clipwidth="&sf.sysjump_clipwidth" clipheight="&sf.sysjump_clipheight" opacity=255]
[endif]


;[if exp="tf.title_pass == 0"]
	;コンフィグページを表示。
	[locate x="&tf.sysjump_x[3]" y="&tf.sysjump_y[3]"]
	[button graphic="sysjump_config" storage="system_config_mes.ks" exp="tf.save = 0, tf.load = 0, tf.conf = 1"]
;[endif]

;//	; シーン回想中なら回想メニューへボタンを表示
;//	[if exp="tf.scene_mode"]
;//		[locate x="&tf.sysjump_x[0]" y="&tf.sysjump_y[4]"]
;//		[button graphic="sysjump_menu" target=*jump_scene]
;//	[endif]


; 「戻る」ボタンを配置
[locate x="&tf.sysjump_x[5]" y="&tf.sysjump_y[5]"]
[button graphic="sysjump_back" target="*load_return" storage="system_load.ks" recthit=false]
[s]

;-----------------------------------------------------------

;
; サムネイル画像ボタンがクリックされた
;
*load_click

[if exp="kag.getBookMarkDate(tf.load_click_num+sf.saveload_now_page*20) == void"]
	[jump target=*load_menu]
[endif]

; グラフィカルボタンのロックを解除
;[unlocklink]
;↑これがあるとダイアログ出てもサムネ押せちゃうのか


; ロード
[if exp="sf.dialog_on"]
;ダイアログオンでくくってるけど、それ以外でも必要なの含まれてね？
	; スナップショットのロック解除しておかないとまずい？右クリはここで戻してないけど良いのかな？
	;[unlocksnapshot]

	;これオフらんとまずい？よくわかんなくなったから似たようなの両方オフる。
	[if exp="tf.fromtitle == 1 || tf.title_pass == 1 "]
		[eval exp="f.タイトル通過フラグをオフった = 1"]
		[eval exp="tf.fromtitle = 0"]
		[eval exp="tf.title_pass = 0"]
	[endif]

	;CGMODEで開放チェックに使うフラグオフ
	[eval exp="tf.CG開放チェック = 0"]

	;ロード直前に右クリック設定してもだめらしいのでフラグを立てる
	;このフラグたてておかないとロード後の右クリック設定されなかった。2015/04/28
	[eval exp="sf.ロード後右クリック未設定 = 1"]
	;↑ダイアログオンでくくってる中に入ってたけど、これはfc内でロード直後の判定に使ってるから外にないとだめじゃね


	;各画面から戻る時にf.sys_subをオン これ何に使ってるんじゃろ？
	;//[eval exp="sf.sys_sub = 1"]
	[eval exp="tf.load = 0"]
	;[load place="&tf.load_click_num+sf.saveload_now_page*20" ask=true]

	[eval exp="tf.dialog_load = 1"]
	;ダイアログ表示
	[jump storage="dialog.ks" target=*dialog_draw]


[endif]

;↑ダイアログオンでくくってる中に入ってたけど、これはfc内でロード直後の判定に使ってるから外にないとだめじゃね
[eval exp="sf.ロード後右クリック未設定 = 1"]

[eval exp="tf.fromtitle = 0"]
[eval exp="tf.title_pass = 0"]
[eval exp="tf.load = 0"]

[eval exp="tf.選択肢ログ表示してね = 1"]
;ロード前のメッセージ消去
[cm]
;ダイアログオフならそのままロード
[load place="&tf.load_click_num+sf.saveload_now_page*20"]
[s]


*load
[eval exp="tf.fromtitle = 0"]
[eval exp="tf.title_pass = 0"]
[eval exp="tf.load = 0"]
[eval exp="tf.選択肢ログ表示してね = 1"]
;ロード前のメッセージ消去
;マクロに入れておけば1箇所で済むけど、[load]タグの前に入れるべきか
[cm]
[load place="&tf.load_click_num+sf.saveload_now_page*20"]

;No押したら↓こっちへ？
*loadしない
;右クリック設定フラグをオフ
;このフラグたてておかないとロード後の右クリック設定されなかった。2015/04/28
[eval exp="sf.ロード後右クリック未設定 = 0"]

[eval exp="tf.load = 1"]

[if exp="f.タイトル通過フラグをオフった == 1"]
	[eval exp="f.タイトル通過フラグをオフった = 0"]
	[eval exp="tf.fromtitle = 1"]
	[eval exp="tf.title_pass = 1"]
[endif]

[jump target=*load_menu]




;-----------------------------------------------------------
*savedata_lock_button_chgimage

;サブルーチンにロック、アンロックボタンを書き換えにいく。
[call storage="system_savedata_sub.ks" target=*savedata_lock_button_chgimage]

;リターンしたらredrawへ戻る。
[jump target=*load_redraw]

;-----------------------------------------------------------
*savedata_erase

;サブルーチンにセーブデータを削除しにいく。
[call storage="system_savedata_sub.ks" target=*savedata_erase]
*ショートカット戻り

; ロード画面でマウス右クリックされたら、「戻る」と同じ動作をさせる
;[rclick jump=true target="*load_return" storage="system_load.ks" enabled=true]
;これ要らないのか。これあると右クリック復帰しない


;リターンしたらmenuへ戻る。
[jump target=*load_menu]


;-----------------------------------------------------------
*jump_title
[if exp="sf.dialog_on"]
		[eval exp="tf.dialog_loadtitle = 1"]
		;ダイアログ表示
		[jump storage="dialog.ks" target=*dialog_draw]
[endif]

;-----------------------------------
*loadタイトルに戻る
;ダイアログオフ時の戻り抜けてた
;複数ファイルに書くと面倒だからダイアログサブルーチンのタイトルへ戻るに飛ばす
[jump storage="dialog.ks" target=*タイトルに戻る]
;-----------------------------------

*loadタイトルに戻らない
;[cm]なかったけど
[layopt layer="&sf.message_dialog" page=fore visible=false]
[layopt layer="&sf.message_dialog" page=back visible=false]

[call storage="dialog.ks" target=*ダイアログ消去]


;一応ここにも入れる ロード画面でマウス右クリックされたら、「戻る」と同じ動作をさせる
[rclick jump=true target="*load_return" storage="system_load.ks" enabled=true]


[jump target=*load_menu]


;-----------------------------------------------------------

;
; 「戻る」が選択された／マウス右クリックされた
;
*load_return

;Newマーク貼ってたレイヤのインデックスを戻す
[layopt layer="&sf.newmarklayer" index="&sf.newmarklayer*1000+1000"]
[freeimage layer="&sf.newmarklayer" page=back][freeimage layer="&sf.newmarklayer" page=fore]

;ここでCMしちゃだめなんだっけ？
;[cm]

; どこから来た？
; タイトル　なんか同じような用途のフラグをつくってしまってるな
;[if exp="tf.fromtitle"]
[if exp="tf.title_pass"]
	;[jump storage="title.ks" target=*title_menu]
	;タイトルコンフィグロードで戻れないの↓じゃないからか。コンフィグと同じ処理になってなかった。
	[gotostart]
; ゲーム中
[elsif exp="tf.gameplay"]
	;亡国用　モブvoiceオンにしてたら再生し直し。オン連打してても再生し直しちゃうけどそれはスルー
	[if exp="f.mob_voice_on == 1"]
		[eval exp="f.mob_voice_on = 0"]
		[vo_m s="&f.mobbgv_file"]
	[endif]
	[jump storage="systembutton_sub.ks" target=*sys_load_return]
[endif]

[return]


;もう少しsfじゃやっぱだめだ
;*sub
;[eval exp="sf.save = 1"]
;[load place="&tf.load_i+sf.saveload_now_page*20"]
;[return]


