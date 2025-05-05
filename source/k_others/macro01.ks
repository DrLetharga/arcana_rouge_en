;
; macro.ks…マクロ定義
;

;
; 使い方：
;   [call storage="macro.ks"]
;
; 注意事項：
;   ‐first.ksの先頭（セーブ可能なラベルより前に）で当サブルーチンを呼び出すこと
;

;=============================================================
; button_chgimageマクロ
;=============================================================
; 機能概要：
;   グラフィカルボタンの画像を変更する
;
; 属性：
;   num … グラフィカルボタンの番号。省略時０
;   graphic … ボタンの画像ファイル名。指定必須
;   graphickey … カラーキー
;
; 備考：
;   ‐num属性に指定する値は、メッセージレイヤのクリア後、作成したグラフィカルボタンの順番（０オリジン）となる
;
[macro name=button_chgimage]
	[eval exp="kag.current.links[+mp.num].object.loadImages(mp.graphic, mp.graphickey)"]
[endmacro]


;=============================================================
; button_loadthumbnailマクロ
;=============================================================
; 機能概要：
;   グラフィカルボタンにセーブデータのサムネイル画像を描画する
;     通常の状態：セピア調にする
;     ボタンが押された状態：ガンマを上げる
;     ボタン上にマウスがある状態：加工なし
;   グラフィカルボタンの元々の画像データはサムネイル画像の上にαブレンドされる
;
; 属性：
;   num … グラフィカルボタンの番号（０オリジン）
;   place … 栞の番号（０オリジン）
;
; 備考：
;   ‐numに指定する値は、カレントのメッセージレイヤのクリア後、作成したグラフィカルボタンの順番であること。
;     この値は、ハイパーリンク、チェックボックス、エディットボックスもカウントの対象となっているので注意
;   ‐グラフィカルボタンのサイズは幅kag.thumbnailWidth*3×高さkag.thumbnailWidth*kag.scHeight\kag.scWidth
;     ピクセルであること
;       画面サイズ800×600ピクセルなら、デフォルトのグラフィカルボタンは399×99ピクセルとなる
;   ‐Config.tjsのsaveThumbnailがtrueであること
;
[macro name=button_loadthumbnail]
	[eval exp="loadThumbnail(+mp.num, +mp.place)"]
[endmacro]

	;=============================================================
	; sysbt_messagewindowlシステムボタンとメッセージウィンドウ表示
	;=============================================================
	; 機能概要：
	; システムボタンとメッセージウィンドウをフェードイン一括で表示
	; 
	;[macro name=sysbt_messagewindow]
	;	[sysbtopt forevisible=true backvisible=true]
	;	[backlay layer=message0]
	;	[layopt layer=message0 page=back visible=true]
	;	[trans method="crossfade" time=150]
	;	[wt]
	;[endmacro]

	;=============================================================
	; sysbt_messagewindow_intlシステムボタンとメッセージウィンドウ消去
	;=============================================================
	; 機能概要：
	; システムボタンとメッセージウィンドウをフェードアウト一括で消去
	; 
	;[macro name=sysbt_messagewindow_int]
	;	[sysbtopt forevisible=false backvisible=false]
	;	[backlay layer=message2]
	;	[layopt layer=message2 page=back visible=false]
	;	[trans method="crossfade" time=150]
	;	[wt]
	;[endmacro]


	; 背景貼り 2013/03/29追加
	; method属性　crossfade  universal
	; time属性　フェードの時間
	; 記述例
	; [BG storage="BG02a" method=crossfade time=2000]
	; [BG storage="BG02a" rule="blindX" vague=50 time=2000]
	; rule属性　universal時のみ設定
	; vague属性　universal時のみ設定
	;[macro name=BG]
	;	[backlay layer=base]
	;	[image storage="%storage" layer=base page=back]
	;	[trans method=%method rule="%rule" vague=%vague time=%time]
	;	[wt]
	;[endmacro]


;=============================================================
;ダイアログ系のフラグオフ
;=============================================================
;ダイアログ系のフラグをオフにする。
;ダイヤログ開いてる最中にメニューバーから戻ってるかもしれないからダイアログ開いてたフラグオフ
[macro name=dialog_flag_init]

	[eval exp="tf.dialog_conf_def       = 0"]
	[eval exp="tf.dialog_conf_scene     = 0"]
	[eval exp="tf.dialog_game_title     = 0"]
	[eval exp="tf.dialog_load           = 0"]
	[eval exp="tf.dialog_loadtitle      = 0"]
	[eval exp="tf.dialog_save           = 0"]
	[eval exp="tf.dialog_save_overwrite = 0"]
	[eval exp="tf.dialog_savedata_erase = 0"]
	[eval exp="tf.dialog_savedata_lock  = 0"]
	[eval exp="tf.dialog_savetitle      = 0"]
	[eval exp="tf.dialog_noappenddata      = 0"]
	;追加
	[eval exp="tf.dialog_now = 0"]
[endmacro]

;=============================================================
; fcl既読テキスト色変え
;=============================================================
; 機能概要：
; 既読テキスト色変え
; 他色々いっぱいする
; 
[macro name=fc]
;　「*ラベル名|見出し名」 形式のラベルの次には、この ct タグあるいは cm タグを書くべきです。( 栞のロード時にはラベルから実行が始まるが、ロード時には必ずメッセージレイヤ上の文字がクリアされるため )
;ここでも消しとかないとロード前のテキストが残ってるのか
;マクロに入れておけば1箇所で済むけど、[load]タグの前に入れるべきか
;[cm]

;;セーブかロード中ならこのあとの処理全部飛ばす
;[if    exp="sf.save == 1"]
;	[current layer="&tf.save_message1" page=fore]
;[elsif exp="sf.load == 1"]
;	[current layer="&tf.load_message1" page=fore]
;[else]



	;ウィンドウフラグがオフなら表示
	;f.graphic_bt_selはグラフィックボタンによる選択肢画面用のフラグ。
	;タイトルにより分かりやすいフラグ名を用意した場合も必ずこの変数に入れ直すこと！
	[if exp="f.winon == 0 && f.graphic_bt_sel == 0"]
		;システムボタン＆ウィンドウ表示
		[sysbt_meswin]
;	[elsif exp="f.txtgra == 1"]
;		;システムボタン＆ウィンドウ消去
;		[s_m clear]
	[endif]


;systembutton_sub.ksを経由してたらテキスト再表示時にノータイム
[if exp="tf.sys_sub == 1"]
	[nowait]
	;履歴に文字を出力しない
	[history output = false]
[endif]


;pcmsで保存してる現在のファイル名と同じならセーブテキストへの多重記録をしないために実行
;AfterInit.tjsを改造するのが難しかったので、f.noStoreCurrentMessageのオンオフで処理する。
[if exp="kag.conductor.curStorage == f.ksStorageSys && kag.conductor.curLabel == f.ksLabelSys"]
	[eval exp="f.noStoreCurrentMessage = true"]
[endif]


[if exp="tf.QuickLoad == 1"]
		;拡縮用画像再表示
		[if    exp="f.zoomon == 1"]
			[zoom_fore]
		[endif]
		
		;blur用画像再表示
		[if    exp="f.bluron == 1"]
			[blur_again]
		[endif]

	;クイックロード時に保存したファイル・ラベルと保存されてるファイル・ラベルが同じなら履歴出力しない
	;空白は打ち出されるけど仕方あるまい
	;[if exp="sf.ksStorageSys_tmp == f.ksStorageSys && sf.ksLabelSys_tmp == kag.currentLabel"]
	;;	;履歴に文字を出力しない
	;	[history output = false]
	;[endif]
	;上手くいってたはずが
	[call storage="systembutton_sub.ks" target=*sys_Qload]
[endif]

	;m:オート・スキップ解除時にグリフと被ってしまうので処理保留
	;[if exp="kag.autoMode"]
	;	[layopt layer=message3 page=fore visible=true]
	;	[position layer=message3 page=fore left=979 top=705 width="&kag.scWidth" height="&kag.scHeight" frame="game_auto_now" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
	;	[current layer=message1]
	;[endif]
	;[if exp="kag.skipMode"]
	;	[layopt layer=message3 page=fore visible=true]
	;	[position layer=message3 page=fore left=979 top=705 width="&kag.scWidth" height="&kag.scHeight" frame="game_skip_now" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
	;	[current layer=message1]
	;[endif]
	;[if exp="!kag.autoMode && !kag.skipMode"]
	;	[layopt layer=message3 page=fore visible=false]
	;	[current layer=message1]
	;[endif]

	;m 選択肢後再開するかどうかの判断に使う
	;m:スキップとオートが同時に行われることはないので、sf.now_skipauto=1がオート、2がスキップとする。



	;選択肢表示中ではないのでそれぞれのモードに合わせてフラグオン
	[if exp="f.selnow == 0 && f.briefing == 0"]
		[if exp="kag.autoMode"]
			[eval exp="f.now_skipauto = 1"]
		[elsif exp="kag.skipMode"]
			[eval exp="f.now_skipauto = 2"]
		[else]
			[eval exp="f.now_skipauto = 0"]
		[endif]
	[endif]

	;選択肢があったら消去 だけど選択肢表示中にシステム画面に行っただけかもなので
	;選択肢が表示中、かつ、システム戻りフラグがオンでなければ選択肢を消す処理
	;選択肢のデータをクイックロードするとここ踏んじゃってるけど良いのかな
	;この処理は通常プレイ時に選択肢通過後の為の処理
	;なのでシステム画面からの戻り時は実行しない、ロード直後も実行しない。
	[if exp="f.selnow == 1 && tf.sys_sub == 0 && sf.ロード後右クリック未設定 != 1"]
	;[if exp="f.selnow == 1"]
;亡国用カット		[freeimage layer="&sf.layer_seltext" page=fore]
;亡国用カット		;選択肢baseを非表示
;亡国用カット		[layopt layer="&sf.message_selbase" page=fore visible=false]
;亡国用カット		[current layer=message0]
;亡国用カット		;レイヤのインデックス戻し
;亡国用カット		[layopt layer="&sf.layer_seltext" index="&sf.layer_seltext*1000+1000"]

		[sellayer_index_init]
	[cm]
		;選択肢後スキップ継続かつスキップ中だったならスキップ開始
		[if exp="sf.sel_skip == 1 && f.now_skipauto == 2"]
			[eval exp="kag.skipToStop()"]
		;選択肢後オート継続かつオート中だったならスキップ開始
		[elsif exp="sf.sel_auto == 1 && f.now_skipauto == 1"]
			[eval exp="kag.enterAutoMode()"]
		[endif]

		;セーブ時にテキスト表示にするためにfalseに戻す
		[eval exp="f.noStoreCurrentMessage = false"]

		;選択肢フラグオフ
		[eval exp="f.selnow = 0"]
		[eval exp="f.選択肢表示中だよ = 0"]
		; 右クリック割り当てを戻す 選択肢表示フラグオフってから右クリ再設定
		[call storage="rclick_sub.ks"]



	[endif]





	;ロード時に右クリック設定する。何度も下記の条件通るのもアレなのでフラグがオンなら実行
	[if exp="sf.ロード後右クリック未設定 == 1"]

		;拡縮用画像再表示
		[if    exp="f.zoomon == 1"]
			[zoom_fore]
		[endif]

		;blur用画像再表示 こっちはQuickLoadを経由してなければ実行
		[if    exp="f.bluron == 1 && tf.QuickLoad != 1"]
			[blur_again]
		[endif]


		;ロードデータの白黒設定にsfを合わせる
		;[eval exp="sf.SIROKURO = f.SIROKURO"]
		[eval exp="f.loadnow = 1"]

		; 右クリック割り当てを設定する
		[call storage="rclick_sub.ks"]
		[eval exp="sf.ロード後右クリック未設定 = 0"]
		;SEフェード 一応戻しておこう
;SEマクロ内でデフォに戻すからこれは無し
;		[seopt buf=0 volume=100]
;		[seopt buf=1 volume=100]
;		[seopt buf=2 volume=100]
;		[seopt buf=3 volume=100]
;		[seopt buf=4 volume=100]

		;念の為タイトル状態もオフ
		[eval exp="tf.title = 0"]

		;クロード時に保存したファイル・ラベルと保存されてるファイル・ラベルが同じなら履歴出力しない
		;空白は打ち出されるけど仕方あるまい
		;[if exp="sf.ksStorageSys_tmpload == f.ksStorageSys && sf.ksLabelSys_tmpload == kag.currentLabel"]
		;;	;履歴に文字を出力しない
		;	[history output = false]
		;[endif]

		;ロード時ならたとえ選択肢の直前までスキップorオート（f.now_skipauto）だろうとキャンセルしておく。
		;上の方の、選択肢があったら消去用のif文内でやるほうがいいだろうけどごちゃごちゃしてるからここで問答無用で。
		[eval exp="f.now_skipauto = 0"]
		[cancelskip]
		[cancelautomode]
		;コレしとかないとセーブ時の透過度になってる 2016/11/26
		;f.win_narration == 1は亡国用の判定
;		[if    exp="f.win_narration == 1"]
;			[sysbt_meswin3]
;		;ブリーフィング画面に入っていないなら表示
;		[elsif exp="f.winon == 0 && f.briefing == 0 && f.txtgra == 0"]
			[s_m cond="f.graphic_bt_sel == 0"]
;		[endif]

		[eval exp="kag.fore.messages[0].frameOpacity = sf.graphicframe_opacity"]
		[eval exp="kag.back.messages[0].frameOpacity = sf.graphicframe_opacity"]

		;フェードアウトさせたバッファを念のタメ停止　2017/10/14
		[if exp="f.stopse_fadeout != void"]
			[stopse buf=0  cond="f.stopse_fadeout == 0"]
			[stopse buf=1  cond="f.stopse_fadeout == 1"]
			[stopse buf=2  cond="f.stopse_fadeout == 2"]
			[stopse buf=3  cond="f.stopse_fadeout == 3"]
			[eval exp="f.stopse_fadeout = void"]
		[endif]

	[endif]


	;システム画面帰り用の既読判定
	[if exp="tf.sys_sub == 1"]

	;なんで次のクリックから再開なんだ？てかシスの戻りの時じゃないと毎回鳴っちゃうな
	[se_HLoop buf1 storage="&f.tmp_se_HLoop1" cond="f.tmp_se_HLoop1 != void"]
	[se_HLoop buf2 storage="&f.tmp_se_HLoop2" cond="f.tmp_se_HLoop2 != void"]
	;BGV再度再生
	[bgv_aka s="&f.tmp_bgv_ch01" cond="f.tmp_bgv_ch01 != void"]
	[bgv_aoi s="&f.tmp_bgv_ch02" cond="f.tmp_bgv_ch02 != void"]
	[bgv_mia s="&f.tmp_bgv_ch03" cond="f.tmp_bgv_ch03 != void"]
	[bgv_mei s="&f.tmp_bgv_ch04" cond="f.tmp_bgv_ch04 != void"]

		;既読のハズ、もしくは未読もスキップなので処理する
		[if     exp="f.まだ既読ではない == 0 || sf.allskip == 1"]
			[font face="user" color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor"]

		;まだ既読ではない
		[elsif  exp="f.まだ既読ではない == 1"]
		;既読色替えはしないので処理無しで抜ける
			[font face="user" color="0xffffff" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor"]
		[endif]

	;こっちは通常時の既読判定
	[else]

		;既読テキスト色変え
;		[if exp="kag.getCurrentRead() == true && f.既読色替えしない != 1"]
		;↑なんか余計なフラグが
		[if exp="kag.getCurrentRead() == true"]
			[font color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor"]
			[eval face="user" exp="f.まだ既読ではない = 0"]
		[else]
			;まだ既読ではない
			[eval exp="f.まだ既読ではない = 1"]
			[font face="user" color="0xffffff" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor"]

		[endif]
	[endif]



;エロムービー用	;なんか↑のほうのLoad時のとこでやるとムービー再生できないからここで
;エロムービー用	;マクロにするとファイル名が無いからだめか
;エロムービー用	;フォルト用　movie再生中ならmovie命令実行　とりあえずループ命令だけだけど1ショットのも必要かも
;エロムービー用	[if exp="f.loadnow == 1 && f.movieplaynow == 1"]
;エロムービー用
;エロムービー用		;アニメスキップしない
;エロムービー用		[eval exp="sf.g_anime_skip = 0"]
;エロムービー用
;エロムービー用		[if exp="f.movie_loop == 1"]
;エロムービー用			[video visible=true left=0 top=0 width=1024 height=768 mode=layer loop=true]
;エロムービー用		[else]
;エロムービー用			[video visible=true left=0 top=0 width=1024 height=768 mode=layer loop=false]
;エロムービー用		[endif]
;エロムービー用		[videolayer channel=1 page=fore layer=1]
;エロムービー用		[openvideo storage="&f.moviefile"]
;エロムービー用		[preparevideo][wp for=prepare]
;エロムービー用		[playvideo]
;エロムービー用	[endif]

	;タイトル画面のクイックロード押したフラグ
	[eval exp="tf.QuickLoad_title = 0"]

[endmacro]

;=============================================================
; pcmsl改ページ、メッセージクリア、ボイス即時停止
;=============================================================

;何もしないマーカー代わりのマクロ
[macro name=nor]
[endmacro]



; 機能概要：
; 改ページ、メッセージクリア、ボイス即時停止
; オートモードの時はボイス再生待ちをする。
; 
[macro name=pcms]

;グリフ位置を任意の座標に変更
[glyph fix=true]
[eval exp="f.loadnow = 0"]
;	;★
;	;セーブかロード中ならリターン
;	[if exp="sf.save == 1"]
;		[jump storage="system_save.ks" target=*テキスト表示戻り]
;
;	[elsif exp="sf.load == 1"]
;		[jump storage="system_load.ks" target=*テキスト表示戻り]
;
;	[endif]
;	;★


;pcmsで保存してる現在のファイル名と同じならセーブテキストへの記録をしないために実行したからfalseに戻す
[if exp="kag.conductor.curStorage == f.ksStorageSys && kag.conductor.curLabel == f.ksLabelSys"]
	[eval exp="f.noStoreCurrentMessage = false"]
[endif]

;右クリックで画面遷移した場合にフラグを保存できないので、保存処理をここでやる。
;現在のファイル名
[eval exp="f.ksStorageSys = (kag.conductor.curStorage)"]
;現在のラベル名
[eval exp="f.ksLabelSys = (kag.conductor.curLabel)"]
;邪淫で監視用にsfにも保存　QuickLoadで同じ名前使ってるからちょっと名前変える
[eval exp="sf.ksStorageSys監視用 = (kag.conductor.curStorage)"]
[eval exp="sf.ksLabelSys監視用 = (kag.conductor.curLabel)"]

;;//ログ多重出力よけの判定の為のフラグ保存 ロードしたら消えちゃうからsfか
;[eval exp="sf.ksStorageSys_tmpload = (kag.conductor.curStorage)"]
;;//kag.conductor.currentLabelだとうまくいかない
;[eval exp="sf.ksLabelSys_tmpload = (kag.currentLabel)"]

	[ws buf="&sf.chara01_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara01 != void"]
	[ws buf="&sf.chara02_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara02 != void"]
	[ws buf="&sf.chara03_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara03 != void"]
	[ws buf="&sf.chara04_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara04 != void"]
	[ws buf="&sf.chara05_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara05 != void"]
	[ws buf="&sf.chara06_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara06 != void"]
	[ws buf="&sf.chara07_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara07 != void"]
	[ws buf="&sf.chara08_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara08 != void"]
	[ws buf="&sf.chara09_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara09 != void"]
	[ws buf="&sf.chara10_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara10 != void"]
	[ws buf="&sf.chara11_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara11 != void"]
	[ws buf="&sf.chara12_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara12 != void"]
;//	[ws buf=16 canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara07 != void"]
;//	[ws buf=5 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=7 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=9 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=11 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=13 canskip=true cond="kag.autoMode && sf.v_autowait"]


	;systembutton_sub.ksを経由してたらテキスト再表示時にエンドノータイム。フラグをオフに
	[if exp="tf.sys_sub == 1"]
		[endnowait]


		[eval exp="tf.sys_sub = 0"]
		[p]
		[cm]

		;履歴に文字を出力
		[history output = true]



;	[elsif exp="sf.ロード後右クリック未設定 == 1"]
;		[p]
;		[cm]
;		;履歴に文字を出力
;		[history output = true]
;		[eval exp="sf.ロード後右クリック未設定 = 0"]
	[else]

		[hr]

		[eval exp="tf.QuickLoad = 0"]

		[p]
		[cm]
		
		;履歴に文字を出力
		[history output = true]

		[endif]

	[endif]



	;画面揺らし中なら止める
	[if exp="f.quakesp_now == 1"]
		[eval exp="f.quakesp_now = 0"]
		[stopquakesp]
	[endif]


	;f.ゲーム中ボタンがvoidでなければサブルーチンを呼びにいきボタンを表示。
	;このサブルーチンは視点変更ボタン等で使用予定。
	[if exp="f.ゲーム中ボタン != void"]
		[call storage="gameplay_bt_sub.ks"]
	[endif]

	[if exp="f.namechip_on == 1"]
		[layopt layer=message4 page=fore visible=false]
		;フェイスウィンドウ消し
		;オン中なら常にオン返しちゃうから地の文で表示されちゃうからvisible制御じゃなくてfreeimageする
		[freeimage layer="&sf.layer_face_winbase"  page=fore][freeimage layer="&sf.layer_face_winbase"  page=back]
		[freeimage layer="&sf.layer_face_win"      page=fore][freeimage layer="&sf.layer_face_win"      page=back]
		[freeimage layer="&sf.layer_face_winflame" page=fore][freeimage layer="&sf.layer_face_winflame" page=back]

;画像ネームチップの場合は不要
;//		;ネームチップを表示してた場合メッセージのマージンが変わってるから戻す。ネームチップの表示をテキストでもmessage4にしてるからホントはここで再設定いらないけど残しておく
;//		[layopt layer=message1 left="&sf.window_x" top="&sf.window_y+sf.window_chousei" visible=true]
;//		;クリック待ちグリフの座標元に戻す
;//		[glyph page=PageBreak fix=true left="&sf.glyph_x" top="&sf.glyph_y"]
		[eval exp="f.namechip_on = 0"]
	[endif]

;ボイスカットオンなら改ページ時にそれぞれのバッファを停止
	[if exp="sf.v_stop"]
		;[stopse buf=4]
		;[stopse buf=6]
		;[stopse buf=8]
		;[stopse buf=10]
		;[stopse buf=12]
		;フェードの方がいいかな？ やたらブチブチいうので少し長くする
		[fadeoutse buf="&sf.chara01_buf" time=200 cond="sf.bt_num_chara01 != void"]
		[fadeoutse buf="&sf.chara02_buf" time=200 cond="sf.bt_num_chara02 != void"]
		[fadeoutse buf="&sf.chara03_buf" time=200 cond="sf.bt_num_chara03 != void"]
		[fadeoutse buf="&sf.chara04_buf" time=200 cond="sf.bt_num_chara04 != void"]
		[fadeoutse buf="&sf.chara05_buf" time=200 cond="sf.bt_num_chara05 != void"]
		[fadeoutse buf="&sf.chara06_buf" time=200 cond="sf.bt_num_chara06 != void"]
		[fadeoutse buf="&sf.chara07_buf" time=200 cond="sf.bt_num_chara07 != void"]
		[fadeoutse buf="&sf.chara08_buf" time=200 cond="sf.bt_num_chara08 != void"]
		[fadeoutse buf="&sf.chara09_buf" time=200 cond="sf.bt_num_chara09 != void"]
		[fadeoutse buf="&sf.chara10_buf" time=200 cond="sf.bt_num_chara10 != void"]
		[fadeoutse buf="&sf.chara11_buf" time=200 cond="sf.bt_num_chara11 != void"]
		[fadeoutse buf="&sf.chara12_buf" time=200 cond="sf.bt_num_chara12 != void"]
	[endif]


;		;ボイスOnlyモードならスキップ開始
;		[if exp="tf.voiceonly == 1"]
;			[eval exp="kag.enterAutoMode()"]
;		[endif]

	;ボイスオンならば　だな
	;最初はオンだったけどボイス再生してからコンフィグいってオフにした場合は、これだと音量もとに戻らないか
	;sf.chara01_vは不要か？音量ちゃんと同じままかなぁ
	;複数キャラならf.bgvnowも複数必要か？
;	[if exp="f.bgvnow"]
		;[bgv_a s="&f.tmp_bgv_ch01"]
		[seopt buf="&sf.chara01L_buf" volume="&f.tmp_seopt_chara01L"  cond="f.bgvnow_ch01"]
		[seopt buf="&sf.chara02L_buf" volume="&f.tmp_seopt_chara02L"  cond="f.bgvnow_ch02"]
		[seopt buf="&sf.chara03L_buf" volume="&f.tmp_seopt_chara03L"  cond="f.bgvnow_ch03"]
		[seopt buf="&sf.chara04L_buf" volume="&f.tmp_seopt_chara04L"  cond="f.bgvnow_ch04"]
;	[endif]



	;セリフ中演出を飛ばすかどうかの判定に使う。[p]過ぎてるからオフに
	[eval exp="tf.sys_return = 0"]

	;フェードアウトさせたバッファを念のタメ停止　2017/10/14
	;やっぱこっちでも処理しないと止めたフラグが立ちっぱになるな
	;あれ　とめてpcmsまたがないで同じバッファでループさすとフラグオンのままだから止まっちゃうな
	;fcに入れるとすぐに止まっちゃうしなぁどうしよう。止めがいらないのか
	[if exp="f.stopse_fadeout != void"]
		;[stopse buf=0  cond="f.stopse_fadeout == 0"]
		;[stopse buf=1  cond="f.stopse_fadeout == 1"]
		;[stopse buf=2  cond="f.stopse_fadeout == 2"]
		;[stopse buf=3  cond="f.stopse_fadeout == 3"]
		[eval exp="f.stopse_fadeout = void"]
	[endif]

	;ボイス再生だったらに限定しておいたほうがいいか
	;メッセージ履歴アクションの終了 これ別にいらなかったのかな。ないのに普通に動作してるし
	[if exp="f.voice_now == 1"]
		;これなんでここでやってたんだろ
;		[endhact]
		[eval exp="f.voice_now = 0"]
	[endif]

	;フェイス表示フラグOFF
	;このフラグはface_winタグ内部で必ずONになる、立ち絵表示の場合必ずONになる
	;バックログ表示した後の再表示判定に使う　記載箇所「MainWindow.tjs(4031): 	function showMessageLayerByUser()」
	;バックログ表示からフェイスが表示されてるときに、再表示すればいいだけなのでpcms通過後は初期化しても問題ないはず
	[eval exp="f.face_win_バックログ対策 = 0"]

[endmacro]

;でっかいメッセージウィンドウの改ページマクロ。文字を消さない
[macro name=lrs]

;グリフ位置を任意の座標に変更
[glyph fix=false]
[eval exp="f.loadnow = 0"]
;	;★
;	;セーブかロード中ならリターン
;	[if exp="sf.save == 1"]
;		[jump storage="system_save.ks" target=*テキスト表示戻り]
;
;	[elsif exp="sf.load == 1"]
;		[jump storage="system_load.ks" target=*テキスト表示戻り]
;
;	[endif]
;	;★


;pcmsで保存してる現在のファイル名と同じならセーブテキストへの記録をしないために実行したからfalseに戻す
[if exp="kag.conductor.curStorage == f.ksStorageSys && kag.conductor.curLabel == f.ksLabelSys"]
	[eval exp="f.noStoreCurrentMessage = false"]
[endif]

;右クリックで画面遷移した場合にフラグを保存できないので、保存処理をここでやる。
;現在のファイル名
[eval exp="f.ksStorageSys = (kag.conductor.curStorage)"]
;現在のラベル名
[eval exp="f.ksLabelSys = (kag.conductor.curLabel)"]
;邪淫で監視用にsfにも保存　QuickLoadで同じ名前使ってるからちょっと名前変える
[eval exp="sf.ksStorageSys監視用 = (kag.conductor.curStorage)"]
[eval exp="sf.ksLabelSys監視用 = (kag.conductor.curLabel)"]

;;//ログ多重出力よけの判定の為のフラグ保存 ロードしたら消えちゃうからsfか
;[eval exp="sf.ksStorageSys_tmpload = (kag.conductor.curStorage)"]
;;//kag.conductor.currentLabelだとうまくいかない
;[eval exp="sf.ksLabelSys_tmpload = (kag.currentLabel)"]

	[ws buf="&sf.chara01_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara01 != void"]
	[ws buf="&sf.chara02_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara02 != void"]
	[ws buf="&sf.chara03_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara03 != void"]
	[ws buf="&sf.chara04_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara04 != void"]
	[ws buf="&sf.chara05_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara05 != void"]
	[ws buf="&sf.chara06_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara06 != void"]
	[ws buf="&sf.chara07_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara07 != void"]
	[ws buf="&sf.chara08_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara08 != void"]
	[ws buf="&sf.chara09_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara09 != void"]
	[ws buf="&sf.chara10_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara10 != void"]
	[ws buf="&sf.chara11_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara11 != void"]
	[ws buf="&sf.chara12_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara12 != void"]
;//	[ws buf=16 canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara07 != void"]
;//	[ws buf=5 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=7 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=9 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=11 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=13 canskip=true cond="kag.autoMode && sf.v_autowait"]


	;systembutton_sub.ksを経由してたらテキスト再表示時にエンドノータイム。フラグをオフに
	[if exp="tf.sys_sub == 1"]
		[endnowait]


		[eval exp="tf.sys_sub = 0"]
		[l]
		[r]

		;履歴に文字を出力
		[history output = true]



;	[elsif exp="sf.ロード後右クリック未設定 == 1"]
;		[p]
;		[cm]
;		;履歴に文字を出力
;		[history output = true]
;		[eval exp="sf.ロード後右クリック未設定 = 0"]
	[else]

		[hr]

		[eval exp="tf.QuickLoad = 0"]

		[l]
		[r]
		
		;履歴に文字を出力
		[history output = true]

		[endif]

	[endif]



	;画面揺らし中なら止める
	[if exp="f.quakesp_now == 1"]
		[eval exp="f.quakesp_now = 0"]
		[stopquakesp]
	[endif]


	;f.ゲーム中ボタンがvoidでなければサブルーチンを呼びにいきボタンを表示。
	;このサブルーチンは視点変更ボタン等で使用予定。
	[if exp="f.ゲーム中ボタン != void"]
		[call storage="gameplay_bt_sub.ks"]
	[endif]

	[if exp="f.namechip_on == 1"]
		[layopt layer=message4 page=fore visible=false]
		;フェイスウィンドウ消し
		;オン中なら常にオン返しちゃうから地の文で表示されちゃうからvisible制御じゃなくてfreeimageする
		;無し	[freeimage layer="&sf.layer_face_winbase"  page=fore][freeimage layer="&sf.layer_face_winbase"  page=back]
		[freeimage layer="&sf.layer_face_win"      page=fore][freeimage layer="&sf.layer_face_win"      page=back]
		;無し	[freeimage layer="&sf.layer_face_winflame" page=fore][freeimage layer="&sf.layer_face_winflame" page=back]

;画像ネームチップの場合は不要
;//		;ネームチップを表示してた場合メッセージのマージンが変わってるから戻す。ネームチップの表示をテキストでもmessage4にしてるからホントはここで再設定いらないけど残しておく
;//		[layopt layer=message1 left="&sf.window_x" top="&sf.window_y+sf.window_chousei" visible=true]
;//		;クリック待ちグリフの座標元に戻す
;//		[glyph page=PageBreak fix=true left="&sf.glyph_x" top="&sf.glyph_y"]
		[eval exp="f.namechip_on = 0"]
	[endif]

;ボイスカットオンなら改ページ時にそれぞれのバッファを停止
	[if exp="sf.v_stop"]
		;[stopse buf=4]
		;[stopse buf=6]
		;[stopse buf=8]
		;[stopse buf=10]
		;[stopse buf=12]
		;フェードの方がいいかな？ やたらブチブチいうので少し長くする
		[fadeoutse buf="&sf.chara01_buf" time=200 cond="sf.bt_num_chara01 != void"]
		[fadeoutse buf="&sf.chara02_buf" time=200 cond="sf.bt_num_chara02 != void"]
		[fadeoutse buf="&sf.chara03_buf" time=200 cond="sf.bt_num_chara03 != void"]
		[fadeoutse buf="&sf.chara04_buf" time=200 cond="sf.bt_num_chara04 != void"]
		[fadeoutse buf="&sf.chara05_buf" time=200 cond="sf.bt_num_chara05 != void"]
		[fadeoutse buf="&sf.chara06_buf" time=200 cond="sf.bt_num_chara06 != void"]
		[fadeoutse buf="&sf.chara07_buf" time=200 cond="sf.bt_num_chara07 != void"]
		[fadeoutse buf="&sf.chara08_buf" time=200 cond="sf.bt_num_chara08 != void"]
		[fadeoutse buf="&sf.chara09_buf" time=200 cond="sf.bt_num_chara09 != void"]
		[fadeoutse buf="&sf.chara10_buf" time=200 cond="sf.bt_num_chara10 != void"]
		[fadeoutse buf="&sf.chara11_buf" time=200 cond="sf.bt_num_chara11 != void"]
		[fadeoutse buf="&sf.chara12_buf" time=200 cond="sf.bt_num_chara12 != void"]
	[endif]


;		;ボイスOnlyモードならスキップ開始
;		[if exp="tf.voiceonly == 1"]
;			[eval exp="kag.enterAutoMode()"]
;		[endif]

	;セリフ中演出を飛ばすかどうかの判定に使う。[p]過ぎてるからオフに
	[eval exp="tf.sys_return = 0"]

	;フェードアウトさせたバッファを念のタメ停止　2017/10/14
	;やっぱこっちでも処理しないと止めたフラグが立ちっぱになるな
	;あれ　とめてpcmsまたがないで同じバッファでループさすとフラグオンのままだから止まっちゃうな
	;fcに入れるとすぐに止まっちゃうしなぁどうしよう。止めがいらないのか
	[if exp="f.stopse_fadeout != void"]
		;[stopse buf=0  cond="f.stopse_fadeout == 0"]
		;[stopse buf=1  cond="f.stopse_fadeout == 1"]
		;[stopse buf=2  cond="f.stopse_fadeout == 2"]
		;[stopse buf=3  cond="f.stopse_fadeout == 3"]
		[eval exp="f.stopse_fadeout = void"]
	[endif]

	;ボイス再生だったらに限定しておいたほうがいいか
	;メッセージ履歴アクションの終了 これ別にいらなかったのかな。ないのに普通に動作してるし
	[if exp="f.voice_now == 1"]
;		[endhact]
		[eval exp="f.voice_now = 0"]
	[endif]


[endmacro]


;ウィンドウ3時にシステム画面から戻った時の処理
[macro name=win3wait]
	[eval exp="f.loadnow = 0"]
	[l cond="tf.sys_sub == 1"][r cond="tf.sys_sub == 1"][eval exp="tf.sys_sub = 0"]
[endmacro]

;=============================================================
;選択肢表示中用のマクロ
;実際にはpタグは置かないが、理解しやすくするためこの名前。
[macro name=pcms_sel]

	;ショートカットロック解除
	;[eval exp="tf.shortcut = 1"] 使ってない？

	;右クリックで画面遷移した場合にフラグを保存できないので、保存処理をpcmsマクロ内でやってるんだけど
	;現在のファイル名
	[eval exp="f.ksStorageSys = (kag.conductor.curStorage)"]
	;現在のラベル名
	[eval exp="f.ksLabelSys = (kag.conductor.curLabel)"]
	;邪淫で監視用にsfにも保存　QuickLoadで同じ名前使ってるからちょっと名前変える
	[eval exp="sf.ksStorageSys監視用 = (kag.conductor.curStorage)"]
	[eval exp="sf.ksLabelSys監視用 = (kag.conductor.curLabel)"]

	[r]
	[hr]

	;履歴出力オンにするために処理をpcms内に移動
	[if exp="tf.QuickLoad == 1"]
		;履歴に文字を出力
		[history output = true]
		[eval exp="tf.QuickLoad = 0"]
	[endif]


	;[if exp="sf.ロード後右クリック未設定 == 1"]
	;	;履歴に文字を出力
	;	[history output = true]
	;	[eval exp="sf.ロード後右クリック未設定 = 0"]
	;[endif]


	;画面揺らし中なら止める
	[if exp="f.quakesp_now == 1"]
		[eval exp="f.quakesp_now = 0"]
		[stopquakesp]
	[endif]

	;フェードアウトさせたバッファを念のタメ停止　2017/10/14
	;やっぱこっちでも処理しないと止めたフラグが立ちっぱになるな
	[if exp="f.stopse_fadeout != void"]
		;[stopse buf=0  cond="f.stopse_fadeout == 0"]
		;[stopse buf=1  cond="f.stopse_fadeout == 1"]
		;[stopse buf=2  cond="f.stopse_fadeout == 2"]
		;[stopse buf=3  cond="f.stopse_fadeout == 3"]
		[eval exp="f.stopse_fadeout = void"]
	[endif]

[endmacro]

;=============================================================
;CGギャラリー、サムネベースクリア用のまくろ
;サムネベースはpimageに変えたからこのマクロ意味ないとおもったけど消すと戻り時にCGと回想の背景出なくなる
[macro name="cgthum_int"]
	[freeimage layer=0 page=back][freeimage layer=0 page=fore]
	[freeimage layer=1 page=back][freeimage layer=1 page=fore]
	[freeimage layer=2 page=back][freeimage layer=2 page=fore]
	[freeimage layer=3 page=back][freeimage layer=3 page=fore]
	[freeimage layer=4 page=back][freeimage layer=4 page=fore]
	[freeimage layer=5 page=back][freeimage layer=5 page=fore]
	[freeimage layer=6 page=back][freeimage layer=6 page=fore]
	[freeimage layer=7 page=back][freeimage layer=7 page=fore]
	[freeimage layer=8 page=back][freeimage layer=8 page=fore]
	[freeimage layer=9 page=back][freeimage layer=9 page=fore]
	[freeimage layer=10 page=back][freeimage layer=10 page=fore]
	[freeimage layer=11 page=back][freeimage layer=11 page=fore]
	[freeimage layer=12 page=back][freeimage layer=12 page=fore]
	[freeimage layer=13 page=back][freeimage layer=13 page=fore]
[endmacro]


;=============================================================
;全消去マクロ。cm入れてるからメッセージ内容も消えるので、ゲーム中とかコンフィグにはだめ。オマケモード用に使う。
;なんか消え方に間ができて気持ち悪いからcgthum_intでいいや。
;使い道があるかもだから残しておくけど。
[macro name="全消去"]
	[cm]
	[backlay]
	; *all_eraseをサブルーチンコール
	[call storage=allint.ks target=*all_erase]
	[trans method=crossfade time=1]
	[wt]
[endmacro]

;=============================================================
;ルビ
;=============================================================
;アンドロから置換とかアンドロに置換する時に記述順が逆でめんどくさいからマクロ化する
;使い方
;[ruby_c t="漢字" r="かんじ"]
;いままでのテンプレと逆で、テキスト、ルビの順になる。

[macro name="ruby_c"]
	[ruby text=%r][ch text=%t]
[endmacro]

;=============================================================
;
; ●天気
;
; 晴れ
@macro name=clearweather
	[ch text="&$0x2600"]
@endmacro
; 曇り
@macro name=cloud
	[ch text="&$0x2601"]
@endmacro
; 雨
@macro name=rain
	[ch text="&$0x2602"]
@endmacro
; 雪
@macro name=snow
	[ch text="&$0x2603"]
@endmacro
;
; ●危険
;
; 骨
@macro name=bone
	[ch text="&$0x2620"]
@endmacro
; 放射能
@macro name=radioactive
	[ch text="&$0x2622"]
@endmacro
; バイオハザード
@macro name=biohazard
	[ch text="&$0x2623"]
@endmacro
;
; ●トランプ
;
; スペード（白抜き）
@macro name=spade1
	[ch text="&$0x2664"]
@endmacro
; スペード（塗りつぶし）
@macro name=spade2
	[ch text="&$0x2660"]
@endmacro
; ハート（白抜き）
@macro name=heart1
	[ch text="&$0x2661"]
@endmacro
; ハート（塗りつぶし）
@macro name=heart2
	[ch text="&$0x2665"]
@endmacro
; ダイヤ（白抜き）
@macro name=dia1
	[ch text="&$0x2662"]
@endmacro
; ダイヤ（塗りつぶし）
@macro name=dia2
	[ch text="&$0x2666"]
@endmacro
; クローバー（白抜き）
@macro name=clover1
	[ch text="&$0x2667"]
@endmacro
; クローバー（塗りつぶし）
@macro name=clover2
	[ch text="&$0x2663"]
@endmacro
;
; ●著作権・商標
;
; コピーライト
@macro name=maru_c
	[ch text="&$0x00a9"]
@endmacro
; 登録商標
@macro name=maru_r
	[ch text="&$0x00ae"]
@endmacro
; 商標
@macro name=tm
	[ch text="&$0x2122"]
@endmacro
;
; ●その他
;
; 温泉
@macro name=hotspring
	[ch text="&$0x2668"]
@endmacro

;インライン画像 ; ハート
[macro name="heart"][graph storage="インライン画像_heart" alt="(は～と)" key=0x000000][endmacro]


;インライン画像 ; ハート ピンク
;前後に半角スペースは消さないように！！！
;[macro name="heart_p"]
[macro name="ハート"]
;この半角スペースは必要なものです！！！
 
[font color=0xff9c9c]
[graph storage="インライン画像_heart" alt="(は～と)" key=0x000000]
;この半角スペースは必要なものです！！！
 
[font color="&sf.kidoku_RGB" cond="f.まだ既読ではない == 0 || sf.allskip == 1"]
[font color="0xffffff" cond="f.まだ既読ではない == 1"]
[endmacro]

;=============================================================
[macro name=セーブマスクテスト開始]

	[eval exp="tf.セーブマスクテスト実行中 = 1"]

	[if    exp="sf.gameNo == 3"][eval exp="tf.セーブマスクテスト = 0"]
	[elsif exp="sf.gameNo == 4"][eval exp="tf.セーブマスクテスト = 100"]
	[endif]

[endmacro]

[macro name=セーブマスクテスト]


	[if exp="(tf.セーブマスクテスト == 100 && sf.gameNo == 3) || (tf.セーブマスクテスト == 200 && sf.gameNo == 4)"]
		;システムボタン＆ウィンドウ表示
		[sysbt_meswin]

		セーブ枠がいっぱいになりました。
		;現在の差分名をコンソールからメモしてください。[p][cm]
		ロード画面でサムネを確認してください。[r]
		現在の行数[emb exp="kag.conductor.curLine"] [emb exp="tf.最終差分"]です。[r]
		見た範囲のevcgはコメントアウトして、再度テストを開始して下さい。[p][cm]



		;システムボタン＆ウィンドウ消去
		[sysbt_meswin clear]
		;[sysbt_SIROKURO clear]
		[eval exp="tf.セーブマスクテスト実行中 = 0"]

		[jump storage="title.ks"]
	[endif]

[call storage="systembutton_sub.ks" target=*sys_save]

[endmacro]

;=============================================================
;=============================================================
[macro name=デバッグ用]

	[position layer=message1 page=ffore left=0 top=0 width=350 height=300 color=0x000000 frame="" opacity="&sf.graphicframe_opacity" marginl=10 margint=10 marginr="&sf.text_r" marginb=0 visible=true]
	[current layer=message1]

	tf.nowtitle [emb exp="tf.nowtitle"][r]
	                       now  01  02[r]
	saveload_now_page ｜[emb exp="sf.saveload_now_page"] ｜ [emb exp="sf.saveload_now_page01"] ｜ [emb exp="sf.saveload_now_page02"][r]
	new_saveclick     ｜[emb exp="sf.new_saveclick"] ｜ [emb exp="sf.new_saveclick01"]  ｜ [emb exp="sf.new_saveclick02"][r]
	new_savepage      ｜[emb exp="sf.new_savepage"] ｜ [emb exp="sf.new_savepage01"] ｜  [emb exp="sf.new_savepage02"][r]
	CG_page           ｜[emb exp="sf.CG_page"] ｜ [emb exp="sf.CG_page01"] ｜ [emb exp="sf.CG_page02"][r]
	SR_page           ｜[emb exp="sf.SR_page"] ｜ [emb exp="sf.SR_page01"] ｜ [emb exp="sf.SR_page02"][r]



[endmacro]

;=============================================================
[return]
