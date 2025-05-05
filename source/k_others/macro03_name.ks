; macro_name.ks


;=============================================================
; 文字をメッセージフレームには出力させず履歴にのみに出力
;=============================================================
;これ[layopt layer=message0 left=0 top=537 visible=true][hr]を名前の後ろに置く。
;[pcms]マクロ内で[layopt layer=message0 left=0 top=578 visible=true]に戻す。

;hisoutタグは、履歴にのみネームチップの[hisout txt="【"]　[hisout txt="】"]を表示するためのマクロ。

; 文字"]で文字が履歴にのみ出力
[macro name=hisout]
	[eval exp="kag.historyLayer.store(mp.txt)" cond="kag.historyWriteEnabled"]
[endmacro]
;=============================================================

	;first.ksで定義
	;ネームチップのメッセージレイヤを定義
	;[eval exp="sf.message_namechip = 'message4'"]
	;名前がセーブデータに表示されるようにするために"&sf.message_hidename"非表示で名前入れる。念の為にねーむちっぷに隠れる座標にする
	;[eval exp="sf.message_hidename = 'message3'"]

;=============================================================
;汎用　ネームチップのセットマクロ
;=============================================================
;使用方法 [ns]名前[nse]


[macro name=ns]
		[if     exp="f.まだ既読ではない == 0 || sf.allskip == 1"]
			[eval exp="tf.namecolor = sf.kidoku_RGB"]
		[else]	
			[eval exp="tf.namecolor = '0xffffff'"]
		[endif]
	[eval exp="f.namechip_on = 1"]
	[layopt layer="&sf.message_namechip" page=fore visible=true]
	[position layer="&sf.message_namechip" page=fore left="&sf.namechip_x" top="&sf.namechip_y" width="&sf.namechip_w" height="&sf.namechip_h" color=0x000000 frame="" opacity=0 marginL="&sf.namechip_ml" marginT="&sf.namechip_mt"]
	[current layer="&sf.message_namechip"]
;	[font face="user" size="&sf.namechip_size" font color="&tf.namecolor" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" shadow=false]
;ウィンドウの名前部分の上下幅がシビアなので名前はゴシック固定にする
	[font face="ＭＳ Ｐゴシック" size="&sf.namechip_size" font color="&tf.namecolor" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" shadow=false]
;mm だめだな　marginRCh禁則3文字のせいでうまくセンタリングできない
	;名前センタリング　autoreturn（自動改行）をfalseにして禁則文字無効化
	[style align=center autoreturn=false]
	[nowait]
	;シナリオ中【表示しない
	[hisout txt="【"]
[endmacro]

[macro name=nse]
	;シナリオ中でも【表示しない
	[hisout txt="】"]
	[endnowait][hr][current layer=message0][layopt layer=message0 index=1001000]
	;戻し
	[style align=left autoreturn=true]
;	[endnowait][hr][current layer=message1]
	;これなんだっけ
	;[eval exp="sf.text_x = sf.text_x + sf.text_x_namechip"]
[endmacro]

;=============================================================
;フェイスウィンドウマクロ　共通処理
;=============================================================

[macro name=face_win]
	[eval exp="f.face_win_バックログ対策 = 1"]
;============================
;★和人　立ち絵マクロで使えるように改ざん
;↓ここから
;============================

	;オフ中でonが書かれたら以降offが明示されるまでオン　onnだのofだのの記述ミスへの対応は際限がないので全角大文字と全角小文字だけ追加で入れておく。基本的に半角小文字を使用すること。
	[eval exp="f.face_win_on = 1" cond="f.face_win_on == 0 && (mp.on || mp.ＯＮ || mp.ｏｎ || mp.オン||f.lw_face_on)"]
	;オン中でoffが書かれたら以降onが明示されるまでオフ。
	;あれーoffが効かないぞ
	[eval exp="f.face_win_on = 0" cond="f.face_win_on == 1 && (mp.off || mp.ＯＦＦ || mp.ｏｆｆ || mp.オフ||f.lw_face_off)"]

	[eval exp="f.lw_face_on  = 0"]
	[eval exp="f.lw_face_off = 0"]
;============================
;★和人　立ち絵マクロで使えるように改ざん
;↑ここまで
;============================

;これはmessageレイヤ使用のやつ
;	;ここを立ちキャラの変数（ファイル名と連動）。座標とかも変数か
;	;x座標で調整すれば左右切り落とさなくてもすむかぁ。画像無駄に大きくなっちゃうけど
;	[position layer=message2 page=fore left="&sf.face_win_x" top="&sf.face_win_y" width="&sf.face_win_w" height="&sf.face_win_h" frame="&f.face_win_base"  opacity=255 visible=false]
;	[position layer=message3 page=fore left="&sf.face_win_x" top="&sf.face_win_y" width="&sf.face_win_w" height="&sf.face_win_h" frame="&f.face_win_parts" opacity=255 visible=false]
;	;フェイスウィンドウ表示
;	[layopt layer=message2 page=fore visible=true  cond="f.face_win_on == 1"]
;	[layopt layer=message3 page=fore visible=true  cond="f.face_win_on == 1"]
;	;フェイスウィンドウ非表示 これ要る？要るのかなぁ
;	[layopt layer=message2 page=fore visible=false cond="f.face_win_on == 0"]
;	[layopt layer=message3 page=fore visible=false cond="f.face_win_on == 0"]

	;メッセージレイヤ 1 が 1001000 ネームチップがmessage4。message2のindexでいいか？
	;画像をforeに読み込み。まだvisible=false
	;フェイスウィンドウのベース &sf.graphicframe_opacityとは同期させずに255のままにする
	[image  layer="&sf.layer_face_winbase" storage="window_facewin_base"   page=fore visible=false  left=0 top=455 opacity="255" index=1002000]

	;キャラのベースから↑のレイヤにpimageしようかと思ったけど、座標全部指定する必要が出るからそのままにしておく
	;[image  layer="&sf.layer_face_win" storage="&f.face_win_base"   page=fore visible=false  left="&f.face_win_x" top="&f.face_win_y" opacity=255 index=1003000]
	;メモ　まだ一度もキャラ表示をしてない状態でoffを使うとstorageの変数入って無い状態だからエラーになる。↓のimageタグにも  cond="f.face_win_base != void"が必要
	[image  layer="&sf.layer_face_win" storage="&f.face_win_base"   page=fore visible=false  left="&f.face_win_x" top="&f.face_win_y" opacity=255 index=1003000  cond="f.face_win_base != void"]
	[pimage layer="&sf.layer_face_win" storage="&f.face_win_parts1" page=fore visible=false  dx=0 dy=0 opacity=255  cond="f.face_win_parts1 != false"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	;追加パーツ ほほ染め
	[pimage layer="&sf.layer_face_win" storage="&f.face_win_parts2" page=fore visible=false  dx=0 dy=0 mode=mul opacity=200  cond="f.face_win_parts2 != void"]
	;追加パーツ
	[pimage layer="&sf.layer_face_win" storage="&f.face_win_parts3" page=fore visible=false  dx=0 dy=0 opacity=255  cond="f.face_win_parts3 != void"]

	;フェイスウィンドウのフレーム &sf.graphicframe_opacityとは同期させずに255のままにする
	[image  layer="&sf.layer_face_winflame" storage="window_facewin_flame"   page=fore visible=false left=0 top=455 opacity="255" index=1004000]

	;フェイスウィンドウ表示
	[layopt layer="&sf.layer_face_winbase"  page=fore visible=true  cond="f.face_win_on == 1"]
	[layopt layer="&sf.layer_face_win"      page=fore visible=true  cond="f.face_win_on == 1"]
	[layopt layer="&sf.layer_face_winflame" page=fore visible=true  cond="f.face_win_on == 1"]
	;フェイスウィンドウ非表示 これ要る？要るのかなぁ
	[layopt layer="&sf.layer_face_winbase"  page=fore visible=false cond="f.face_win_on == 0"]
	[layopt layer="&sf.layer_face_win"      page=fore visible=false cond="f.face_win_on == 0"]
	[layopt layer="&sf.layer_face_winflame" page=fore visible=false cond="f.face_win_on == 0"]

	;フェイスウィンドウが表示中か否かの変数。MainWindow.tjsでウィンドウを非表示・表示させた時の判定に使う
	[eval exp="f.face_win = 1"  cond="f.face_win_on == 1"]
	[eval exp="f.face_win = 0"  cond="f.face_win_on == 0"]
[endmacro]

;=============================================================
;個別　フェイスウィンドウ付き
;=============================================================

[macro name=name_chara01]

;	[eval exp="f.face_win_char01_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char01_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char01_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char01_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char01_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char01_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char01_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char01_pose1_y"]
	[elsif exp="f.face_win_char01_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char01_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char01_pose2_y"]
	[elsif exp="f.face_win_char01_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char01_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char01_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara01 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara01 = void"     cond="f.name_chara01 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara01 != void"]
		[ns][emb exp="f.name_chara01"][nse]
	;[elsif exp="f.name_chara02 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara01"][nse]
	[endif]
[endmacro]


[macro name=name_chara02]

;	[eval exp="f.face_win_char02_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char02_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char02_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char02_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char02_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char02_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char02_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char02_pose1_y"]
	[elsif exp="f.face_win_char02_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char02_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char02_pose2_y"]
	[elsif exp="f.face_win_char02_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char02_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char02_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara02 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara02 = void"     cond="f.name_chara02 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara02 != void"]
		[ns][emb exp="f.name_chara02"][nse]
	;[elsif exp="f.name_chara02 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara02"][nse]
	[endif]
[endmacro]


[macro name=name_chara03]

;	[eval exp="f.face_win_char03_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char03_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char03_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char03_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char03_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char03_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char03_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char03_pose1_y"]
	[elsif exp="f.face_win_char03_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char03_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char03_pose2_y"]
	[elsif exp="f.face_win_char03_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char03_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char03_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara03 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara03 = void"     cond="f.name_chara03 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara03 != void"]
		[ns][emb exp="f.name_chara03"][nse]
	;[elsif exp="f.name_chara03 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara03"][nse]
	[endif]
[endmacro]


[macro name=name_chara04]

;	[eval exp="f.face_win_char04_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char04_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char04_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char04_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char04_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char04_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char04_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char04_pose1_y"]
	[elsif exp="f.face_win_char04_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char04_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char04_pose2_y"]
	[elsif exp="f.face_win_char04_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char04_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char04_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara04 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara04 = void"     cond="f.name_chara04 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara04 != void"]
		[ns][emb exp="f.name_chara04"][nse]
	;[elsif exp="f.name_chara04 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara04"][nse]
	[endif]
[endmacro]


[macro name=name_chara05]

;	[eval exp="f.face_win_char05_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char05_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char05_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char05_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char05_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char05_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char05_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char05_pose1_y"]
	[elsif exp="f.face_win_char05_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char05_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char05_pose2_y"]
	[elsif exp="f.face_win_char05_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char05_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char05_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara05 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara05 = void"     cond="f.name_chara05 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara05 != void"]
		[ns][emb exp="f.name_chara05"][nse]
	;[elsif exp="f.name_chara05 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara05"][nse]
	[endif]
[endmacro]


[macro name=name_chara06]

;	[eval exp="f.face_win_char06_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char06_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char06_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char06_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char06_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char06_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char06_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char06_pose1_y"]
	[elsif exp="f.face_win_char06_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char06_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char06_pose2_y"]
	[elsif exp="f.face_win_char06_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char06_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char06_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara06 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara06 = void"     cond="f.name_chara06 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara06 != void"]
		[ns][emb exp="f.name_chara06"][nse]
	;[elsif exp="f.name_chara06 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara06"][nse]
	[endif]
[endmacro]


[macro name=name_chara07]

;	[eval exp="f.face_win_char07_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char07_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char07_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char07_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char07_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char07_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char07_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char07_pose1_y"]
	[elsif exp="f.face_win_char07_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char07_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char07_pose2_y"]
	[elsif exp="f.face_win_char07_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char07_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char07_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara07 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara07 = void"     cond="f.name_chara07 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara07 != void"]
		[ns][emb exp="f.name_chara07"][nse]
	;[elsif exp="f.name_chara07 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara07"][nse]
	[endif]
[endmacro]


[macro name=name_chara08]

;	[eval exp="f.face_win_char08_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char08_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char08_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char08_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char08_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char08_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char08_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char08_pose1_y"]
	[elsif exp="f.face_win_char08_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char08_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char08_pose2_y"]
	[elsif exp="f.face_win_char08_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char08_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char08_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara08 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara08 = void"     cond="f.name_chara08 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara08 != void"]
		[ns][emb exp="f.name_chara08"][nse]
	;[elsif exp="f.name_chara08 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara08"][nse]
	[endif]
[endmacro]


[macro name=name_chara09]

;	[eval exp="f.face_win_char09_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char09_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char09_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char09_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char09_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char09_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char09_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char09_pose1_y"]
	[elsif exp="f.face_win_char09_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char09_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char09_pose2_y"]
	[elsif exp="f.face_win_char09_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char09_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char09_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara09 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara09 = void"     cond="f.name_chara09 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara09 != void"]
		[ns][emb exp="f.name_chara09"][nse]
	;[elsif exp="f.name_chara09 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara09"][nse]
	[endif]
[endmacro]


[macro name=name_chara10]

;	[eval exp="f.face_win_char10_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char10_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char10_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char10_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char10_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char10_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char10_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char10_pose1_y"]
	[elsif exp="f.face_win_char10_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char10_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char10_pose2_y"]
	[elsif exp="f.face_win_char10_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char10_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char10_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara10 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara10 = void"     cond="f.name_chara10 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara10 != void"]
		[ns][emb exp="f.name_chara10"][nse]
	;[elsif exp="f.name_chara10 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara10"][nse]
	[endif]
[endmacro]


[macro name=name_chara11]

;	[eval exp="f.face_win_char11_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char11_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char11_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char11_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char11_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char11_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char11_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char11_pose1_y"]
	[elsif exp="f.face_win_char11_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char11_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char11_pose2_y"]
	[elsif exp="f.face_win_char11_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char11_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char11_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara11 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara11 = void"     cond="f.name_chara11 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara11 != void"]
		[ns][emb exp="f.name_chara11"][nse]
	;[elsif exp="f.name_chara12 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara11"][nse]
	[endif]
[endmacro]


[macro name=name_chara12]

;	[eval exp="f.face_win_char12_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char12_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char12_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char12_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char12_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char12_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char12_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char12_pose1_y"]
	[elsif exp="f.face_win_char12_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char12_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char12_pose2_y"]
	[elsif exp="f.face_win_char12_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char12_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char12_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]
	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara12 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara12 = void"     cond="f.name_chara12 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara12 != void"]
		[ns][emb exp="f.name_chara12"][nse]
	;[elsif exp="f.name_chara12 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara12"][nse]
	[endif]
[endmacro]


[macro name=name_chara13]

;	[eval exp="f.face_win_char13_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char13_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char13_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char13_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char13_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char13_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char13_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char13_pose1_y"]
	[elsif exp="f.face_win_char13_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char13_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char13_pose2_y"]
	[elsif exp="f.face_win_char13_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char13_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char13_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara13 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara13 = void"     cond="f.name_chara13 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara13 != void"]
		[ns][emb exp="f.name_chara13"][nse]
	;[elsif exp="f.name_chara13 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara13"][nse]
	[endif]
[endmacro]


[macro name=name_chara14]

;	[eval exp="f.face_win_char14_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char14_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char14_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char14_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char14_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char14_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char14_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char14_pose1_y"]
	[elsif exp="f.face_win_char14_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char14_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char14_pose2_y"]
	[elsif exp="f.face_win_char14_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char14_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char14_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara14 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara14 = void"     cond="f.name_chara14 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara14 != void"]
		[ns][emb exp="f.name_chara14"][nse]
	;[elsif exp="f.name_chara14 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara14"][nse]
	[endif]
[endmacro]


[macro name=name_chara15]

;	[eval exp="f.face_win_char15_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char15_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char15_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char15_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char15_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char15_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char15_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char15_pose1_y"]
	[elsif exp="f.face_win_char15_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char15_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char15_pose2_y"]
	[elsif exp="f.face_win_char15_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char15_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char15_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara15 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara15 = void"     cond="f.name_chara15 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara15 != void"]
		[ns][emb exp="f.name_chara15"][nse]
	;[elsif exp="f.name_chara15 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara15"][nse]
	[endif]
[endmacro]

[macro name=name_chara16]

;	[eval exp="f.face_win_char16_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char16_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char16_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char16_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char16_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char16_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char16_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char16_pose1_y"]
	[elsif exp="f.face_win_char16_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char16_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char16_pose2_y"]
	[elsif exp="f.face_win_char16_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char16_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char16_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara16 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara16 = void"     cond="f.name_chara16 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara16 != void"]
		[ns][emb exp="f.name_chara16"][nse]
	;[elsif exp="f.name_chara16 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara16"][nse]
	[endif]
[endmacro]

[macro name=name_chara17]

;	[eval exp="f.face_win_char17_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char17_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char17_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char17_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char17_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char17_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char17_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char17_pose1_y"]
	[elsif exp="f.face_win_char17_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char17_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char17_pose2_y"]
	[elsif exp="f.face_win_char17_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char17_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char17_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara17 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara17 = void"     cond="f.name_chara17 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara17 != void"]
		[ns][emb exp="f.name_chara17"][nse]
	;[elsif exp="f.name_chara17 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara17"][nse]
	[endif]
[endmacro]

[macro name=name_chara18]

;	[eval exp="f.face_win_char18_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char18_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char18_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char18_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char18_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char18_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char18_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char18_pose1_y"]
	[elsif exp="f.face_win_char18_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char18_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char18_pose2_y"]
	[elsif exp="f.face_win_char18_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char18_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char18_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara18 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara18 = void"     cond="f.name_chara18 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara18 != void"]
		[ns][emb exp="f.name_chara18"][nse]
	;[elsif exp="f.name_chara18 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara18"][nse]
	[endif]
[endmacro]

[macro name=name_chara19]

;	[eval exp="f.face_win_char19_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char19_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char19_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char19_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char19_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char19_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char19_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char19_pose1_y"]
	[elsif exp="f.face_win_char19_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char19_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char19_pose2_y"]
	[elsif exp="f.face_win_char19_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char19_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char19_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara19 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara19 = void"     cond="f.name_chara19 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara19 != void"]
		[ns][emb exp="f.name_chara19"][nse]
	;[elsif exp="f.name_chara19 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara19"][nse]
	[endif]
[endmacro]

[macro name=name_chara20]

;	[eval exp="f.face_win_char20_base = 'test_std'"]

	;フェイスウィンドウ用の画像定義
	[eval exp="f.face_win_base   = f.face_win_char20_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char20_parts1"]
	;『表情以外』の追加パーツ 現状では2個。タイトルにより要調整
	[eval exp="f.face_win_parts2 = f.face_win_char20_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char20_parts3"]

	;ポーズにより座標定義
	[if    exp="f.face_win_char20_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char20_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char20_pose1_y"]
	[elsif exp="f.face_win_char20_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char20_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char20_pose2_y"]
	[elsif exp="f.face_win_char20_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char20_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char20_pose3_y"]
	[endif]

	;フェイスウィンドウマクロ
	;イベント表示中でないなら表示。もしくは、イベント中オンが書かれてたら表示
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;？？？とか別名にする時のために打ち分け。
	;別名が設定されてない状態でｒ書かれたらvoidに戻す
	[eval exp="f.name_chara20 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara20 = void"     cond="f.name_chara20 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]

	[if    exp="f.name_chara20 != void"]
		[ns][emb exp="f.name_chara20"][nse]
	;[elsif exp="f.name_chara20 == void"]
	;事故防止に条件無しのほうが良いか？
	[else]
	;	
		[ns][emb exp="sf.name_def_chara20"][nse]
	[endif]
[endmacro]


;=============================================================
;主人公名前変更
;=============================================================
;=============================================================
;主人公名前
;=============================================================

;	[macro name="name1"]
;		[emb exp="sf.name1"]
;	[endmacro]
;
;	[macro name="name2"]
;		[emb exp="sf.name2"]
;	[endmacro]

[macro name="主人公name1"]
	[emb exp="sf.name1"]
[endmacro]

[macro name="主人公name2"]
	;事故防止にカラになってたらデフォ名を入れる
	[eval exp="sf.name2 = sf.def_name2" cond="sf.name2 == void"]
	[emb exp="sf.name2"]
[endmacro]


;=============================================================
;ファイル頭で一括で名前リセットするマクロ
;=============================================================

[macro name="name_allreset"]
	[eval exp="f.name_chara01 = void"]
	[eval exp="f.name_chara02 = void"]
	[eval exp="f.name_chara03 = void"]
	[eval exp="f.name_chara04 = void"]
	[eval exp="f.name_chara05 = void"]
	[eval exp="f.name_chara06 = void"]
	[eval exp="f.name_chara07 = void"]
	[eval exp="f.name_chara08 = void"]
	[eval exp="f.name_chara09 = void"]
	[eval exp="f.name_chara10 = void"]
	[eval exp="f.name_chara11 = void"]
[endmacro]

;=============================================================


[return]

