
;===========================================================
;             デバッグ用　起動時にコンソール出すやつ        
;===========================================================
;[iscript]
;//Debug.controller.visible = kag.debugMenu.visible;  // コントローラを表示
;Debug.console.visible = kag.debugMenu.visible;     // コンソールを表示
;[endscript]

;たぶん使えない
; //デバッグ時にだけ前に戻る有効　ダイアログを出さないためのフラグ定義
;[eval exp="sf.returnAsk = false"]

;===========================================================
;                      割用処理                           
;===========================================================

;タイトル画面行く前に定義
[eval exp="sf.gameID_01 ='アルカナルージュ'"]
[eval exp="sf.addgameID_01 = ''"]

;===========================================================
;                      邪淫用処理                           
;===========================================================
;セーブマスク
;個別タイトル定義初期化

;first.ks呼ばれてるってことは起動時だからリセットしていいか？そうしないと次回は終わったタイトルから始まっちゃうから。
;個別タイトルフラグリセット
[eval exp="sf.gameID    = void"]
[eval exp="sf.addgameID = void"]
[eval exp="sf.gameNo    = void"]

;===========================================================
;              システムバージョン情報定義                   
;===========================================================

[call storage="0システムバージョン情報.ks"]

;===========================================================
;                     loadplugin                            
;===========================================================

;ogg
[loadplugin module="wuvorbis.dll"]

;extrans用
[loadplugin module="extrans.dll"]

;===========================================================
;                      プラグイン                           
;===========================================================

;マウスでゲームウィンドウサイズ任意に変更プラグイン
[call storage="WindowResizable.ks"]

[call storage="systembutton.ks"]
;↓横ボタン時にウィンドウにhideボタン付けるためのやつ
;[call storage="systembutton2.ks"]

; 各種パラメータ設定用サブルーチンを呼び出す

; 画面揺らしプラグイン呼び出し
;※※※※シナリオ中使用不可※※※※　バトル画面で必要なので使う
[call storage="QuakeSpPlugin.ks"]

; 選択肢ボタンプラグイン呼び出し
[call storage="ButtonLinkPlugin.ks"]

; レイヤーモーションプラグイン動かすのに必要
[call storage="Interpolation.ks"]

; レイヤーモーションプラグイン
[call storage="LayerMotionPlugin.ks"]


;===========================================================
;              システム系ボタン等座標定義                   
;===========================================================

;システム系ボタン等座標設定サブルーチン呼び出し
[call storage="first_sub_xy.ks"]


;===========================================================
;                    マクロファイル                         
;===========================================================

[call storage="macro01.ks"]
[call storage="macro02_win.ks"]
[call storage="macro03_name.ks"]
[call storage="macro04_sound.ks"]
[call storage="macro05_effect.ks"]
[call storage="macro06_bg.ks"]
[call storage="macro07_evcg.ks"]
[call storage="macro08_std.ks"]
;macro09_sel02にまとめたから不要[call storage="macro09_sel01.ks"]
[call storage="macro09_sel02.ks"]
[call storage="macro10_movie.ks"]
[call storage="macro11_quake.ks"]
[call storage="macro_bonus_page_bt.ks"]
[call storage="macro_bonus.ks"]

[call storage="macro13_macro_scene.ks"]
[call storage="macro14_macro_zoom.ks"]
[call storage="macro15_macro_blur.ks"]
[call storage="macro16_button.ks"]
[call storage="macro17_sys_sub.ks"]
[call storage="macro18_facewin.ks"]

[call storage="stmove.ks"]
[call storage="zoom_back.ks"]
[call storage="zoom.ks"]
[call storage="affine.ks"]



;各タイトル立ちマクロ
[call storage="macro08_std_ch01.ks"]
[call storage="macro08_std_ch02.ks"]
[call storage="macro08_std_ch03.ks"]
[call storage="macro08_std_ch04.ks"]
[call storage="macro08_std_mob_ch05主人公.ks"]
[call storage="macro08_std_mob_ch06カクエン.ks"]
[call storage="macro08_std_mob_ch07ミズチ.ks"]
[call storage="macro08_std_mob_ch08ショウジョウ.ks"]
[call storage="macro08_std_mob_ch09下級冥魔Ａ.ks"]
[call storage="macro08_std_mob_ch10下級冥魔Ｂ.ks"]
[call storage="macro08_std_mob_ch11藍.ks"]

[call storage="_技名マクロ.ks"]
[call storage="_アルカナ専用マクロ.ks"]

;===========================================================
;                     主人公デフォ名前                      
;===========================================================

;デフォルト名字
;[eval exp="sf.def_name1 = '主人公'"]
;デフォルト名前
[eval exp="sf.def_name2 = '主人公'"]

;===========================================================
;                     カーソル変更                          
;===========================================================

;カーソル変更。定数じゃなければ画像も用意しないとだめ。
;[cursor pointed="crStar.cur" click="crStar.cur" draggable="crStar.cur"]


;===========================================================
;                      レイヤ定義                           
;===========================================================

;レイヤ枚数定義　10までシナリオで使えるようにしてQuickが21　選択肢が22にするか。indexはQuickのほうが上。
[eval exp="sf.maxlayers = 26"]
[eval exp="sf.def_maxlayers = sf.maxlayers"]
;ここでsfで入れてるけどfのほうが良かったんじゃ？
[laycount layers="&sf.maxlayers"]
;一番上になるレイヤ番号定義
[eval exp="sf.toplayer = sf.maxlayers - 3"]




;Newマーク
;★セーブロード画面で定義に変更[eval exp="sf.newmarklayer = 13"]
;使ってない	;ザップボタン
;	[eval exp="sf.zap_message = 'message5'"]
;	[eval exp="sf.zap_x = [50,500]"]
;	[eval exp="sf.zap_y = [100,650]"]
;セーブマスク
;[eval exp="sf.layer_msk = 11"]
;[eval exp="sf.layer_msk = kag.numCharacterLayers - 2"]
;上のレイヤにしてindex操作のほうがいいか？面倒だけど。選択肢あるときは選択肢より下になるようにしないと。
;0 イベント
;1 イベント予備
;2 イベント予備
;3のindex マスク
;4 カットイン
;5 カットイン予備
;6のindex マスク

;↓４つはビッチ姫でしか使わない変数
[eval exp="sf.layer_evcg      = 0"]
[eval exp="sf.layer_msk       = kag.numCharacterLayers - 3"]
;;カットイン用　2枚貼るときあるからその分あける
[eval exp="sf.layer_evcg_cutin = 4"]
[eval exp="sf.layer_msk2       = kag.numCharacterLayers - 2"]

;タイトル毎にセーブマスクレイヤのindex打ち分けここで打ち分けしていいんだったかなぁ
;プレイしてるゲームは定義前だから通過してない。↑のレイヤ定義でかなり上のレイヤ指定してるからいいのか
;ここじゃダメ～cgmsk.ksで	[eval exp="sf.layer_msk_index = 4000"]


;フェイスウィンドウのベース
[eval exp="sf.layer_face_winbase  = kag.numCharacterLayers - 5"]
;フェイスウィンドウ
[eval exp="sf.layer_face_win      = kag.numCharacterLayers - 4"]
;フェイスウィンドウのフレーム
[eval exp="sf.layer_face_winflame = kag.numCharacterLayers - 3"]
;ウィンドウ　メッセージレイヤ0と同じindexにしてこのレイヤの加算色を操作する
;[eval exp="sf.layer_win = 23"]

;effect
;[eval exp="sf.effectlayer = 12"]
;&sf.effectlayer フェイスのフレームと被っちゃってるなぁ -2にかえる

[eval exp="sf.effectlayer = kag.numCharacterLayers - 2"]
;effectエロ用
;[eval exp="sf.effectlayerH = 13"]
[eval exp="sf.effectlayerH = kag.numCharacterLayers - 2"]


;選択肢のテキスト 10だとクイックセーブロードの演出に使ってるsf.mask_dialogとかぶっちゃう
;[eval exp="sf.layer_seltext = 13"]
[eval exp="sf.layer_seltext = kag.numCharacterLayers - 1"]

;ダイアログベース画像　YESNOじゃなかったなこれ、まぁこのままにしておく
;[eval exp="sf.layer_dialog_yesno = 15"]
[eval exp="sf.layer_dialog_yesno =  kag.numCharacterLayers - 1"]


;これ元はセーブマスクとダイアログ貼ってたレイヤだけど、今はクイックセーブロード演出だけか？
;名前変える[eval exp="sf.mask_dialog = 12"]
;kag.numCharacterLayersから引く定義の仕方だと選択肢有るときに可変しちゃうかぁ
; フェイスウィンドウのindexが初期化されてしまう……からレイヤ固定しないとだめだ
;laycount タグを実行すると、この重ね合わせ順序は標準の状態に戻されてしまう場合があるので注意してください。
;選択肢の時もindex戻っちゃってるから、pcmsselでフェイスウィンドウ表示したままにしたい場合は、選択肢のレイヤも固定しないとだめ。
[eval exp="sf.layer_quick = kag.numCharacterLayers - 2"]

;コンフィグメッセージウィンドウのベース画像（このレイヤの濃度が操作される）
;★コンフィグ画面で定義に変更[eval exp="sf.conf_fakemessage = 11"]



;名前がセーブデータに表示されるようにするために"&sf.message_hidename"非表示で名前入れる。念の為にねーむちっぷに隠れる座標にする
[eval exp="sf.message_hidename = 'message3'"]

;ネームチップ
[eval exp="sf.message_namechip = 'message4'"]

;選択肢ボタン
[eval exp="sf.message_selbase = 'message5'"]

;ダイアログボタン
;[eval exp="sf.message_dialog = 'message7'"]
;コンフィグのサンプルメッセージ2行書けるようにしたのでindexを1つ上にあげる
[eval exp="sf.message_dialog = 'message8'"]


;===========================================================
;                   必要な変数定義                          
;===========================================================

;セーブ時にテキスト表示するやつ
[eval exp="f.noStoreCurrentMessage = false"]

;マスク用フラグを0に。voidじゃオフった時にセーブ画面での動作がしないと思うから。
;立ち用だったのかな
[eval exp="f.stdmsk = 0"]

;コンフィグ用フラグ。面倒なのでここでオンにしておく。
[if exp="sf.first != 1"]
	;既読未読スキップ
	[eval exp="sf.allskip = 0"]
	;選択肢後オート
	[eval exp="sf.sel_auto = 0"]
	;選択肢後スキップ
	[eval exp="sf.sel_skip = 0"]
	;画面効果
	[eval exp="sf.efect = 1"]
	;改ページボイスカット
	[eval exp="sf.v_stop = 1"]
	;オート時再生終了待ち
	[eval exp="sf.v_autowait = 1"]
	;確認ダイアログ
	[eval exp="sf.dialog_on = 1"]
	;メッセージ透過度のスライダー
	;[eval exp="sf.winsld_y = 700"]
	;[eval exp="sf.winsld表示 = 1"]
	;画面サイズ定義
	[eval exp="sf.conf_winsize = 2"]
	;右クリック割り当て定義
	[eval exp="sf.conf_rclick = 1"]
	;コンフィグページ
	[eval exp="sf.cnf_mes = 1"]

	[eval exp="sf.defkidoku_R = 255"]
	[eval exp="sf.defkidoku_G = 255"]
	[eval exp="sf.defkidoku_B = 255"]
	[eval exp="sf.defkidoku_edgeR = 0"]
	[eval exp="sf.defkidoku_edgeG = 70"]
	[eval exp="sf.defkidoku_edgeB = 0"]
	[eval exp="sf.kidoku_R     = sf.defkidoku_R"]
	[eval exp="sf.kidoku_G     = sf.defkidoku_G"]
	[eval exp="sf.kidoku_B     = sf.defkidoku_B"]
	[eval exp="sf.kidoku_edgeR = sf.defkidoku_edgeR"]
	[eval exp="sf.kidoku_edgeG = sf.defkidoku_edgeG"]
	[eval exp="sf.kidoku_edgeB = sf.defkidoku_edgeB"]

	[iscript]
			//エッジカラー算出
			sf.kidoku_Edgecolor = '0x%02x%02x%02x'.sprintf(sf.kidoku_edgeR, sf.kidoku_edgeG, sf.kidoku_edgeB);
	[endscript]
	[eval exp="sf.edge_on = 1"]
	[eval exp="sf.kidoku_color_CHOUSEI = 120"]


	;BGMとSEのデフォ音量を設定
	[eval exp="sf.BGM_defvolume   = 60"]
	[eval exp="sf.SE_defvolume    = 80"]
	[eval exp="sf.CHARA_defvolume = 80"]
	[eval exp="sf.BGV_defvolume = 80"]

;	[eval exp="sf.BGV_defvolume   = 30"]
	;これ使ってない？↓
	[eval exp="sf.bgmopt   = 70"]
	;BGM.tjsのvar volume = 20000;　にしてある
	[bgmopt gvolume="&sf.BGM_defvolume"]
	;SE
	[seopt buf=0 gvolume="&sf.SE_defvolume"]
	[seopt buf=1 gvolume="&sf.SE_defvolume"]
	[seopt buf=2 gvolume="&sf.SE_defvolume"]
	[seopt buf=3 gvolume="&sf.SE_defvolume"]
	;ボイス first_sub_xydで定義してる変数で判定
	[seopt buf="&sf.chara01_buf"  gvolume="&sf.CHARA_defvolume"]
	[seopt buf="&sf.chara01L_buf" gvolume="&sf.BGV_defvolume"]
	[seopt buf="&sf.chara02_buf"  gvolume="&sf.CHARA_defvolume"]
	[seopt buf="&sf.chara02L_buf" gvolume="&sf.BGV_defvolume"]
	[seopt buf="&sf.chara03_buf"  gvolume="&sf.CHARA_defvolume"]
	[seopt buf="&sf.chara03L_buf" gvolume="&sf.BGV_defvolume"]
	[seopt buf="&sf.chara04_buf" gvolume="&sf.CHARA_defvolume"]
	[seopt buf="&sf.chara04L_buf" gvolume="&sf.BGV_defvolume"]
;	[seopt buf="&sf.chara05_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara06_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara07_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara08_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara09_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara10_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara11_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara12_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara13_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara14_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara15_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara16_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf=5  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=7  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=9  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=11 gvolume="&sf.BGV_defvolume"]
	;BGM・SE・ボイスオンオフ用フラグ。起動時はオン。
	[eval exp="sf.bgmplay = 1"]
	[eval exp="sf.seplay = 1"]

;	[seopt buf=5  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=7  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=9  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=11 gvolume="&sf.BGV_defvolume"]
	;BGM・SE・ボイスオンオフ用フラグ。起動時はオン。
	[eval exp="sf.bgmplay = 1"]
	[eval exp="sf.seplay = 1"]

;初回起動時ではまだキャラ数が定義してないので条件無しで全部定義
;バッファキャラ毎に固定に変更するのでここで設定してしまう
; ※モブ不要なら要調整
	[eval exp="sf.chara01_v = 1" cond="sf.bt_num_chara01  != void"]
	[eval exp="sf.chara01_L = 1" cond="sf.bt_num_chara01L != void"]
	[eval exp="sf.chara02_v = 1" cond="sf.bt_num_chara02  != void"]
	[eval exp="sf.chara02_L = 1" cond="sf.bt_num_chara02L != void"]
	[eval exp="sf.chara03_v = 1" cond="sf.bt_num_chara03  != void"]
	[eval exp="sf.chara03_L = 1" cond="sf.bt_num_chara03L != void"]
	[eval exp="sf.chara04_v = 1" cond="sf.bt_num_chara04  != void"]
	[eval exp="sf.chara04_L = 1" cond="sf.bt_num_chara04L != void"]
;	[eval exp="sf.chara05_v = 1" cond="sf.bt_num_chara05  != void"]
;	[eval exp="sf.chara05_v = 1"]
;	[eval exp="sf.chara06_v = 1"]
;	[eval exp="sf.chara07_v = 1"]
;	[eval exp="sf.chara08_v = 1"]
;	[eval exp="sf.chara09_v = 1"]
;	[eval exp="sf.chara10_v = 1"]
;	[eval exp="sf.chara11_v = 1"]
;	[eval exp="sf.chara12_v = 1"]
;	[eval exp="sf.chara13_v = 1"]
;	[eval exp="sf.chara14_v = 1"]
;	[eval exp="sf.chara15_v = 1"]
;	[eval exp="sf.chara16_v = 1"]

;	[eval exp="sf.chara01_vl = 1"]
;	[eval exp="sf.chara02_vl = 1"]
;	[eval exp="sf.chara03_vl = 1"]
;	[eval exp="sf.chara04_vl = 1"]
;	[eval exp="sf.chara05_vl = 1"]

;	[eval exp="sf.charaALL_lv = 1"]

[endif]

;===========================================================
;                ブランドロゴ・警告文                       
;===========================================================





;--------------------
;ブランドロゴ　ムービーバージョン
;[se buf=0 storage="callvoice_B"]


; ビデオの属性を設定 ウィンドウのサイズによってムービーのWHも変えるから画面比率変わるときは注意
[if exp="sf.conf_winsize == 1"]
	[video visible=true left=0 top=0 width=960 height=540]
[else]
	[video visible=true left=0 top=0 width=1280 height=720]
[endif]

;[openvideo storage="brand_chaos.mpg"]
;ブランドムービー
[if    exp="sf.callvoice_TB == 0"]
	[eval exp="sf.callvoice_TB += 1"]
	;
	[openvideo storage="CHAOS-RbrandCall_aka.mpg"]

[elsif exp="sf.callvoice_TB == 1"]
	[eval exp="sf.callvoice_TB += 1"]
	;
	[openvideo storage="CHAOS-RbrandCall_aoi.mpg"]

[elsif exp="sf.callvoice_TB == 2"]
	[eval exp="sf.callvoice_TB += 1"]
	;
	[openvideo storage="CHAOS-RbrandCall_mia.mpg"]

[elsif exp="sf.callvoice_TB >= 3"]
	[eval exp="sf.callvoice_TB = 0"]
	;
	[openvideo storage="CHAOS-RbrandCall_mei.mpg"]

[endif]



; ビデオの再生
[playvideo]
[video volume=50]

;スキップ可能
[wv canskip=true]
;[ws buf=0 canskip=true]
;[stopse buf=0]
;mode使ったときはちゃんと停止命令ないと次のmovieが再生できないみたい
[stopvideo]
;--------------------

;起動時はメインからだからもうここでフラグオンにしておこう。一応title.ksでも入れてるけど。
;タイトルの状態。
[eval exp="tf.nowtitle = 'main'"]


;--------------------
;--------------------


;	;警告文
;	[bg storage="title_attention0"][trans_c cross time=1000]
;
;	[wait time=2000]
;警告文
[bg storage="title_attention"][trans_c cross time=1000]
[wait time=2000]

[black_toplayer][trans_c cross time=1000][hide_chara_int]

[eval exp="tf.起動 = 1"]

;===========================================================

;初回起動フラグオン
[eval exp="sf.first = 1"]

; タイトルメニュー画面へ
;
[jump storage="title.ks"]
