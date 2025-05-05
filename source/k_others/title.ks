; title.ks…タイトルメニュー画面

*title_menu|

; 「最初に戻る」を有効にする
[startanchor]

;メニューバーで移動した場合、
; スライダーを消去する sndかmesどっちかでいいけど一応両方に
[if exp="tf.conf == 1 && tf.slider_on_snd == 1 && tf.slider_on_mes == 1"]
	[call storage="system_config_srd.ks" target=*スライダー消去]
[endif]
;コンフィグに行ってたフラグをオフ
[eval exp="tf.slider_on_mes = 0"]

;回想中だとここに一旦戻るからここでコンフィグオフらないとだめか
[eval exp="tf.conf = 0"]

;ミニゲーム	;戦闘画面からメニューでタイトルに戻るかもだから
;ミニゲーム	[if exp="tf.battle == 1"]
;ミニゲーム		;ダイアログのレイヤを戻す
;ミニゲーム		[eval exp="sf.layer_dialog_yesno = 12"]
;ミニゲーム		;チュートリアルオフに 
;ミニゲーム		[eval exp="sf.tutorial_unit = 0"]
;ミニゲーム		[eval exp="sf.tutorial_operation = 0"]
;ミニゲーム
;ミニゲーム		;バトルモードフラグオフ
;ミニゲーム		[eval exp="tf.battle = 0"]
;ミニゲーム	[endif]

[layopt layer=0 opacity=255]
[layopt layer=1 opacity=255]
[layopt layer=2 opacity=255]
[layopt layer=3 opacity=255]
[layopt layer=4 opacity=255]
[layopt layer=5 opacity=255]
[layopt layer=6 opacity=255]
[layopt layer=7 opacity=255]
[layopt layer=8 opacity=255]
[layopt layer=9 opacity=255]
[layopt layer=10 opacity=255]

;ダイヤログ開いてる最中にメニューバーから戻ってるかもしれないからダイアログ開いてたフラグオフ
[dialog_flag_init]

;回想閲覧中フラグオフ	
[eval exp="tf.scenestart = 0"]
;ＣＧ閲覧中フラグオフ	
[eval exp="tf.cgmodestart = 0"]

[eval exp="tf.sys_sub = 0"]
;履歴のリセット
[eval exp="kag.historyLayer.clear()"] 

;systembutton.ksを修正すればここに戻らなくていいのにね
;回想中なら回想画面に戻さないと。コンフィグ→タイトルへ（tf.totitle成立時）の時はそのままタイトル表示へ
[if exp="tf.scene_mode ==1 && tf.totitle == 0"]
	;スピーカー画像でるから消す
	;[cfree]
	;背景のタイトル画像出るから0に黒
	[image storage="effect_black" layer=0 page=fore visible=true left=0 top=0]
	;タイトル通過フラグ　これなんで必要なんだろ？新バージョンで無くなってとこあると思うから動作要注意
	[eval exp="tf.title_pass2 = 1"]
	[jump storage="b_scene.ks" target=*back_from_SR2]

[elsif exp="tf.cg_mode ==1 && tf.totitle == 0"]
;	[bgmTitle]
	[image storage="effect_black" layer=0 page=fore visible=true left=0 top=0]
	[eval exp="tf.title_pass2 = 1"]
	[jump storage="b_cgmode.ks" target=*back_from_cg]

[endif]

;フラグのクリア
[clearvar]
	;これでtf消える？　消して大丈夫かなぁ tf.起動 が消えちゃうから要調整
	;[eval exp="(Dictionary.clear incontextof kag.tflags)()"]

;スキップとオート一応止める
[cancelskip]
[cancelautomode]



;履歴のリセット
[eval exp="kag.historyLayer.clear()"]
;カレントレイヤを戻さないとだめっぽい
[current layer=message0]

*スライダー消去終わり

;ゲームの途中で戻って来た場合、ゲーム変数のクリア
;これ一個のフラグに文字列ぶっ込めば良かったなぁ
[eval exp="tf.gameplay = 0"]
[eval exp="tf.save = 0"]
[eval exp="tf.load = 0"]
[eval exp="tf.conf = 0"]
[eval exp="tf.totitle = 0"]
;これなに？[eval exp="f.sel = 0"]
[eval exp="tf.scene_mode = 0"]


;	;ゲームIDがvoidでないなら個別タイトル画面に飛ぶ
;	[if    exp="sf.gameID != void"]
;		[jump target=*title_menu_Individual]
;	[endif]

;==================================================
;==================================================
;　　　　　　　　タイトル選択画面　　　　　　　　　
;==================================================
;==================================================
; 全メッセージレイヤ表画面、全前景レイヤ表画面を非表示にする（詳細は「右クリックサブルーチンを作ろう」を参照）
[call storage="system_subroutine.ks" target=*sub_layernoshow]

; タイトル画面でグラフィカルボタンを表示するメッセージレイヤ名
[eval exp="tf.title_message = 'message1'"]

; メッセージ履歴への出力を停止し、表示不可にする
[history output=false enabled=false]

; 栞にはさめなくする（↑のセーブ可能なラベルtitle_menuは「最初に戻る」ためにのみ使用する）
[disablestore store=true restore=false]

; 右クリックを無効にする
[rclick enabled=false]

;---------------------------------------------------
; タイトルメニュー画面用メッセージレイヤの各種設定
[position layer="&tf.title_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[layopt layer="&tf.title_message" page=fore visible=true]
[current layer="&tf.title_message" page=fore]
;---------------------------------------------------
;ゲーム選択ボタン座標
;1280/2 640 (640-400)/2


;	;	[eval exp="sf.T_game_sel01_x = 140"]
;	;	[eval exp="sf.T_game_sel01_y = 600"]
;	;
;	;	[eval exp="sf.T_game_sel02_x = 1280/2 + sf.T_game_sel01_x"]
;	;	[eval exp="sf.T_game_sel02_y = 600"]
;
;	;ボタンサイズ変更
;	[eval exp="sf.T_game_sel01_x = 127 + 10"]
;	[eval exp="sf.T_game_sel01_y = 41"]
;
;	[eval exp="sf.T_game_sel02_x = 640 + 127 + 10"]
;	[eval exp="sf.T_game_sel02_y = 41"]
;
;
;	;	[eval exp="sf.T_game_sel01_x = 0"]
;	;	[eval exp="sf.T_game_sel01_y = 0"]
;	;
;	;	[eval exp="sf.T_game_sel02_x = 521"]
;	;	[eval exp="sf.T_game_sel02_y = 0"]
;
;	;座標を配列で用意
;	[eval exp="sf.title_game_selX = [sf.T_game_sel01_x,sf.T_game_sel02_x]"]
;	[eval exp="sf.title_game_selY = [sf.T_game_sel01_y,sf.T_game_sel02_y]"]
;
;	;タイトル
;	[eval exp="sf.T_maintitle_x = 310"]
;	[eval exp="sf.T_maintitle_y = 447"]
;	;ロゴ
;	[eval exp="sf.T_brandlogo_x = 1123"]
;	[eval exp="sf.T_brandlogo_y = 5"]
;
;
;
;	;---------------------------------------------------
;	;タイトル変わってもここだけ書き換えで済むようにする
;	;なんかタイトル順はビアンカを優先みたいな感じだけど、
;	;タイトル名はアルテアのほうが先だからメニューバーでの移動順の並びを考慮してこのまま
;	;01アルテア　02ビアンカとしておく
;	;ゲームナンバーとかも
;	[eval exp="sf.gameID_01 ='触手姫アルテア'"]
;	[eval exp="sf.gameID_02 ='魔子宮遣いビアンカ'"]
;	[eval exp="sf.gameID_03 = '女勇者と修道女'"]
;	[eval exp="sf.gameID_04 = '触手地獄に堕ちたダークエルフと聖女'"]
;	[eval exp="sf.gameID_05 = void"]
;
;	[eval exp="sf.addgameID_01 = 'ALT_'"]
;	[eval exp="sf.addgameID_02 = 'BIA_'"]
;	[eval exp="sf.addgameID_03 = 'RIG_'"]
;	[eval exp="sf.addgameID_04 = 'EST_'"]
;	[eval exp="sf.addgameID_05 = void"]
;
;
;
;	;---------------------------------------------------
;	;メニューバーを経由しての個別タイトルへ移動
;	;個別のマクロ呼び出しとＩＤ定義があるから、個別ラベルに飛ばないといけない。
;
;	;判定に使われる変数はMainWindow.tjs
;	;function onGoToStartMenuItemClick_gameID_01
;	;function onGoToStartMenuItemClick_gameID_02
;	;で定義される
;	;使用した変数オフってから飛ぶ
;	[if    exp="tf.go_gameNo == 1"][eval exp="tf.go_gameNo = void"][jump target=*title_01]
;	[elsif exp="tf.go_gameNo == 2"][eval exp="tf.go_gameNo = void"][jump target=*title_02]
;	[elsif exp="tf.go_gameNo == 3"][eval exp="tf.go_gameNo = void"][jump target=*title_03]
;	[elsif exp="tf.go_gameNo == 4"][eval exp="tf.go_gameNo = void"][jump target=*title_04]
;	;[elsif exp="tf.go_gameNo == 5"]
;	[endif]
;	;メインに行くときも一応オフか
;	[eval exp="tf.go_gameNo = void"]
;	;メインにいくならゲームID消さないといけないのでは？
;	;	;個別タイトルフラグリセット
;	;	[eval exp="sf.gameID    = void"]
;	;	[eval exp="sf.addgameID = void"]
;	;	[eval exp="sf.gameNo = void"]
;	;やっぱ消しちゃだめなんだ。MainWindow.tjs　function goToStartWithAsk()で消さないと
;
;	;---------------------------------------------------
;	;判定フラグどっちでもいいけどvoidじゃなければ個別タイトルに突入してるから個別タイトル画面へ
;	;[if exp="sf.gameNo == void"]
;	[if exp="sf.gameID != void"]
;	;	[eval exp="System.inform('ここきてるのかなぁ↑の条件分岐で直に飛ぶから来ないのでは？')"]
;		[jump target=*title_menu_Individual]
;	[endif]
;
;	;---------------------------------------------------
;	;↑の分岐後だからここか
;	;タイトルの状態。このフラグだけで判別するぞ！
;	[eval exp="tf.nowtitle = 'main'"]
;	;個別タイトルから戻った時にsf.addgameID入ったままの設定になってるから定義しなおし。
;	[eval exp="sf.dialog_def_dialogImage = sf.addgameID + 'dialog_base_quit'"]
;
;	[if exp="tf.起動 == 1"]
;		;BGM再生
;		[bgmTitle]
;		[backlay]
;		[image storage="bg_title1" layer=base page=back visible=true]
;		;デバッグ用ママキタボタン。オンならCGが全部黒加算になる
;		[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
;		;[trans_c cross time=1000]
;		;うーん
;		;[trans_c wave3 time=3000]
;		[trans_c cross time=1000]
;	;	;ボタンの無音オンカーソルSEで止まっちゃうからバッファ1に
;	;	;タイトルコール
;	;	[se buf=1 storage="callvoice_T"]
;		;[se buf=1 storage="callvoice_TR"]
;	;	[backlay]
;	;	[image storage="bg_title2" layer=base page=back visible=true]
;	;	;デバッグ用ママキタボタン。オンならCGが全部黒加算になる
;	;	[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
;	;	[trans_c cross time=1000]
;		[wait time=1000]
;		[backlay]
;		[image storage="bg_title2" layer=base page=back visible=true]
;		[trans_c cross time=2000]
;
;	[elsif exp="tf.起動 == 0"]
;		;BGM再生
;		;[fadeinbgm storage="bgm08" loop=true time=100]
;		; タイトルメニュー画面を背景レイヤ表画面に読み込む
;		[backlay]
;		[image storage="bg_title2" layer=base page=back visible=true]
;	;	[image storage="bg_title2" layer=base page=back visible=true]
;		;デバッグ用ママキタボタン。オンならCGが全部黒加算になる
;		[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
;		;起動0ならまだゲームNoはリセットされてないから判定できるはず
;		;明るいタイトルじゃないからwaveでいい気がしてきた
;		;うーん
;		;[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][trans_c pat_rt]
;		;[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][trans_c pat_lt]
;		;[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][trans_c pat_rt]
;		;[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][trans_c pat_lt]
;		;[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][trans_c pat_rt]
;		;;フェイルセーフ
;		;[else][trans_c cross time=300]
;		;[endif]
;		[trans_c cross time=300]
;		;個別タイトルフラグリセット
;		[eval exp="sf.gameNo    = void"]
;	[endif]
;
;
;	; ↓各メニューから戻ってくるラベル
;	*title_menu_loop_main
;
;	;デバッグ用　システム系ボタン等座標設定サブルーチン呼び出し
;	;[call storage="first_sub_xy.ks"]
;
;
;	; ノーウェイト
;	[delay speed=nowait]
;
;
;	;タイトル通過フラグリセット
;	[eval exp="tf.title_pass = 0"]
;
;	;ショートカットでの判定用現在タイトルフラグ
;	;ショートカット判定用[eval exp="tf.title = 1"]
;
;
;	;[if exp="tf.起動 == 0"]
;	;BGM何も鳴ってなければ再生する
;	[if exp="kag.bgm.currentBuffer.status == 'stop' || kag.bgm.currentBuffer.status == 'unload'"]
;		;BGM再生
;		[bgmTitle]
;	[endif]
;
;	; メッセージレイヤをクリア
;	[er]
;
;	[if exp="tf.起動 == 1"]
;		;ボタン画像のボタンじゃないやつ読み込み　レイヤ01はロゴで使ってるから23
;		[image storage="bg_title_selbt_RIG_" layer=2 page=fore visible=true left="&sf.title_game_selX[0]" top="&sf.title_game_selY[0]-540" opacity=0 mcolor=0x00000 mopacity=100]
;		[image storage="bg_title_selbt_EST_" layer=3 page=fore visible=true left="&sf.title_game_selX[1]" top="&sf.title_game_selY[1]-540" opacity=0 mcolor=0x00000 mopacity=100]
;
;		;ふわふわくるくるさせる
;		;	[affine layer=0  page=fore storage="bg_title_selbt_BIA_" time=2500 accel=-2 cx=0 cy=0 sx="&sf.title_game_selX[0]" sy=-540  smag=1 dmag=1  srot=0  drot=0 opa=0 path='&@"(${&sf.title_game_selX[0]},-540,0)(${&sf.title_game_selX[0]*2},${&sf.title_game_selY[0]*2},255)"']
;		;	;[affine layer=1  page=fore storage="bg_title_selbt_ALT_" time=2500 accel=-2 cx=c cy=c smag=1 dmag=1  srot=0.5  drot=1 opa=0 path='&@"(${&sf.title_game_selX[1]/2},-540/2,0)(${&sf.title_game_selX[1]/2},${&sf.title_game_selY[1]/2},255)"']
;		;	[waffine]
;
;		;	[fgzoom storage="bg_title_selbt_BIA_" layer=0 sl="&sf.title_game_selX[0]+143" st="&sf.title_game_selY[0]" sw=0 sh=540 dl="&sf.title_game_selX[0]" dt="&sf.title_game_selY[0]" dw=386 dh=540 time=2000 accel=-1]
;		;	[wfgzoom]
;		;	[fgzoom storage="bg_title_selbt_ALT_" layer=1 sl="&sf.title_game_selX[1]+143" st="&sf.title_game_selY[1]" sw=0 sh=540 dl="&sf.title_game_selX[1]" dt="&sf.title_game_selY[1]" dw=386 dh=540 time=2000 accel=-1]
;		;	[wfgzoom]
;
;		[image storage="bg_title_maintitle" layer=1 page=fore visible=true left="&sf.T_maintitle_x" top="&sf.T_maintitle_y-50" opacity=0 index=1003000]
;		;とりあえずこれでいいか
;	;;	[move layer=2 page=fore time=2500 accel=-2 path=(0,0,255)"']
;	;;	[move layer=3 page=fore time=2500 accel=-2 path=(0,0,255)"']
;		[move layer=2 page=fore time=2500 accel=-2 path='&@"(${&sf.title_game_selX[0]},${&sf.title_game_selY[0]},255)"']
;		[move layer=3 page=fore time=2500 accel=-2 path='&@"(${&sf.title_game_selX[1]},${&sf.title_game_selY[1]},255)"']
;		;[wait time=1500 canskip=false]
;		[wm ]
;		[wm ]
;		[move layer=1 page=fore time=1500 accel=-2 path='&@"(${&sf.T_maintitle_x},${&sf.T_maintitle_y},255)"']
;		[wm ]
;	[endif]
;
;	;ボタン表示終わってからタイトルロゴとブランドロゴ表示 indexは"tf.title_message = 'message1'"より上に
;	[backlay_c]
;	;メインタイトル
;	[image storage="bg_title_maintitle" layer=0 page=back visible=true left="&sf.T_maintitle_x" top="&sf.T_maintitle_y" opacity=255 index=1003000]
;	;ロゴ
;	[image storage="bg_title_brandlogo" layer=1 page=back visible=true left="&sf.T_brandlogo_x" top="&sf.T_brandlogo_y" opacity=255 index=1003000]
;	[image storage="bg_title_selbt_RIG" layer=2 page=back visible=true left="&sf.title_game_selX[0]" top="&sf.title_game_selY[0]" clipleft=0  cliptop=0   clipwidth=406 clipheight=560]
;	[image storage="bg_title_selbt_EST" layer=3 page=back visible=true left="&sf.title_game_selX[1]" top="&sf.title_game_selY[1]" clipleft=0  cliptop=0   clipwidth=406 clipheight=560]
;	[trans_c cross time=1000]
;	;[unlocklink]
;
;	;なんかビアンカを左配置らしいんでtargetを逆にしとくか
;
;
;	;エスターの方が下になってないといけないのでエスター側を先に貼る
;	;アルテア2
;	[locate x="&sf.title_game_selX[0]" y="&sf.title_game_selY[0]"]
;	;[button graphic="title_LOAD" target=*title_menu_load recthit=true enterse="se_enter"]
;	;[button graphic="title_START02" target=*title_01 recthit=true exp="tf.menuitem = 0"]
;	[button graphic="bg_title_selbt_RIG" target=*title_03 recthit=false exp="tf.menuitem = 0"]
;	;ビアンカ2
;	[locate x="&sf.title_game_selX[1]" y="&sf.title_game_selY[1]"]
;	;[button graphic="title_START" target=*title_menu_start recthit=true enterse="se_enter" clickse="se_click"]
;	;[button graphic="title_START01" target=*title_02 recthit=true exp="tf.menuitem = 0"]
;	[button graphic="bg_title_selbt_EST" target=*title_04 recthit=false exp="tf.menuitem = 0"]
;	;;	;ビアンカ2
;	;;	[locate x="&sf.title_game_selX[1]" y="&sf.title_game_selY[1]"]
;	;;	;[button graphic="title_START" target=*title_menu_start recthit=true enterse="se_enter" clickse="se_click"]
;	;;	;[button graphic="title_START01" target=*title_02 recthit=true exp="tf.menuitem = 0"]
;	;;	[button graphic="bg_title_selbt_EST" target=*title_04 recthit=false exp="tf.menuitem = 0"  onenter="kag.process('','*onenter02')" onleave="kag.process('','*onleave02')" enterse="seD017"]
;	;;
;	;;	;アルテア2
;	;;	[locate x="&sf.title_game_selX[0]" y="&sf.title_game_selY[0]"]
;	;;	;[button graphic="title_LOAD" target=*title_menu_load recthit=true enterse="se_enter"]
;	;;	;[button graphic="title_START02" target=*title_01 recthit=true exp="tf.menuitem = 0"]
;	;;	[button graphic="bg_title_selbt_RIG" target=*title_03 recthit=false exp="tf.menuitem = 0"  onenter="kag.process('','*onenter01')" onleave="kag.process('','*onleave01')" enterse="seD017"]
;
;
;
;	;メニュー移動使えるようになるフラグオン。どこかでまたオフにすべきか
;	;ボタン押した時にオフにする。個別画面表示終わったらまたオンに戻す
;	[eval exp="tf.menuitem = 1"]
;
;	;[locklink]
;
;	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
;	[freeimage layer=3 page=fore][freeimage layer=3 page=back]
;
;	;[デバッグ用]
;
;
;	[s]
;
;	;--------------------------------------------------
;
;	*onenter01
;	;02のボタンをグレーアウト
;	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
;	[image storage="bg_title_selbt_EST_off" layer=3 page=fore visible=true left="&sf.title_game_selX[1]" top="&sf.title_game_selY[1]" opacity=255 index=1002000]
;	[s]
;
;	*onenter02
;	;01のボタンをグレーアウト
;	[freeimage layer=3 page=fore][freeimage layer=3 page=back]
;	[image storage="bg_title_selbt_RIG_off" layer=2 page=fore visible=true left="&sf.title_game_selX[0]" top="&sf.title_game_selY[0]" opacity=255 index=1002000]
;	[s]
;
;	*onleave01
;	;02のボタンをグレーアウト解除
;	[freeimage layer=3 page=fore][freeimage layer=3 page=back]
;	[s]
;
;	*onleave02
;	;01のボタンをグレーアウト解除
;	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
;	[s]
;	;--------------------------------------------------
;	;--------------------------------------------------
;	*title_03
;
;	[タイトル画面からの移動 bgmoff]
;
;	;タイトルコール鳴らす為にもう1度オンに
;	[eval exp="tf.起動 = 1"]
;
;	;タイトルの状態
;	[eval exp="tf.nowtitle = 3"]
;
;	;必要ならタイトル別のマクロ呼び出し
;	; これsoundとかもファイル名変えてるなら最初に読んだ方が無難じゃね？
;
;	[eval exp="sf.gameID    = sf.gameID_03"]
;	[eval exp="sf.addgameID = sf.addgameID_03"]
;
;
;
;	[jump target=*title_menu_Individual00]
;	;[jump storage="title_altair.ks"]
;
;	;--------------------------------------------------
;	;--------------------------------------------------
;	*title_04
;
;	[タイトル画面からの移動 bgmoff]
;
;	;タイトルコール鳴らす為にもう1度オンに
;	[eval exp="tf.起動 = 1"]
;
;	;タイトルの状態
;	[eval exp="tf.nowtitle = 4"]
;
;	;必要ならタイトル別のマクロ呼び出し
;
;
;	[eval exp="sf.gameID    = sf.gameID_04"]
;	[eval exp="sf.addgameID = sf.addgameID_04"]
;
;
;	[jump target=*title_menu_Individual00]
;	;[jump storage="title_bianca.ks"]


;タイトルの状態
[eval exp="tf.nowtitle = 1"]
[eval exp="sf.gameID    = sf.gameID_01"]
[eval exp="sf.addgameID = sf.addgameID_01"]

;==================================================
;==================================================
;　　　　　　　　個別タイトル画面　　　　　　　　　
;==================================================
;==================================================
*title_menu_Individual00

[call storage="&sf.addgameID + '0システムバージョン情報.ks'"]

;個別タイトル名じゃなくてさらに汎用変数にぶっ込んだ方がいいかなぁ。あとあと複数タイトルとかあると
;first_sub_xy.ksでやると初回起動時にsf.gameID == sf.gameID_01が両方voidで通っちゃうからだめ
[if    exp="sf.gameID == sf.gameID_01 && sf.game_total >= sf.gameNo"][eval exp="sf.gameNo = 1"]
[elsif exp="sf.gameID == sf.gameID_02 && sf.game_total >= sf.gameNo"][eval exp="sf.gameNo = 2"]
[elsif exp="sf.gameID == sf.gameID_03 && sf.game_total >= sf.gameNo"][eval exp="sf.gameNo = 3"]
[elsif exp="sf.gameID == sf.gameID_04 && sf.game_total >= sf.gameNo"][eval exp="sf.gameNo = 4"]
[elsif exp="sf.gameID == sf.gameID_05 && sf.game_total == sf.gameNo"][eval exp="sf.gameNo = 5"]
[endif]

;システム系ボタン等座標設定サブルーチン呼び出し
[call storage="first_sub_xy.ks"]

;1タイトルのみでこれしちゃうと、クリック箇所を変数に書き戻し（*title_menu_returnでやってる処理）をしないと行けないから不要
;	;タイトル別に呼び出しておかないとまずような変数
;	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"]
;		;storageとラベル　これは書き戻す意味はないが最悪これだけ監視すれば良いように保存
;		;現在のファイル名
;		[eval exp="sf.ksStorageSys監視用 = sf.ksStorageSys監視用_game01"]
;		;現在のラベル名
;		[eval exp="sf.ksLabelSys監視用 = sf.ksLabelSys監視用_game01"]
;		;セーブロードの表示中ページ
;		[eval exp="sf.saveload_now_page = sf.saveload_now_page_game01"]
;		;クリックした場所を記録
;		[eval exp="sf.new_saveclick     = sf.new_saveclick_game01"]
;		;クリックしたページを記録
;		[eval exp="sf.new_savepage      = sf.new_savepage_game01"]
;		;オマケ閲覧中ページ
;		[eval exp="sf.CG_page = sf.CG_page_game01"]
;		[eval exp="sf.SR_page = sf.SR_page_game01"]
;	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"]
;		;storageとラベル　これは書き戻す意味はないが最悪これだけ監視すれば良いように保存
;		;現在のファイル名
;		[eval exp="sf.ksStorageSys監視用 = sf.ksStorageSys監視用_game02"]
;		;現在のラベル名
;		[eval exp="sf.ksLabelSys監視用 = sf.ksLabelSys監視用_game02"]
;		;セーブロードの表示中ページ
;		[eval exp="sf.saveload_now_page = sf.saveload_now_page_game02"]
;		;クリックした場所を記録
;		[eval exp="sf.new_saveclick     = sf.new_saveclick_game02"]
;		;クリックしたページを記録
;		[eval exp="sf.new_savepage      = sf.new_savepage_game02"]
;		;オマケ閲覧中ページ
;		[eval exp="sf.CG_page = sf.CG_page_game02"]
;		[eval exp="sf.SR_page = sf.SR_page_game02"]
;	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"]
;		;storageとラベル　これは書き戻す意味はないが最悪これだけ監視すれば良いように保存
;		;現在のファイル名
;		[eval exp="sf.ksStorageSys監視用 = sf.ksStorageSys監視用_game03"]
;		;現在のラベル名
;		[eval exp="sf.ksLabelSys監視用 = sf.ksLabelSys監視用_game03"]
;		;セーブロードの表示中ページ
;		[eval exp="sf.saveload_now_page = sf.saveload_now_page_game03"]
;		;クリックした場所を記録
;		[eval exp="sf.new_saveclick     = sf.new_saveclick_game03"]
;		;クリックしたページを記録
;		[eval exp="sf.new_savepage      = sf.new_savepage_game03"]
;		;オマケ閲覧中ページ
;		[eval exp="sf.CG_page = sf.CG_page_game03"]
;		[eval exp="sf.SR_page = sf.SR_page_game03"]
;	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"]
;		;storageとラベル　これは書き戻す意味はないが最悪これだけ監視すれば良いように保存
;		;現在のファイル名
;		[eval exp="sf.ksStorageSys監視用 = sf.ksStorageSys監視用_game04"]
;		;現在のラベル名
;		[eval exp="sf.ksLabelSys監視用 = sf.ksLabelSys監視用_game04"]
;		;セーブロードの表示中ページ
;		[eval exp="sf.saveload_now_page = sf.saveload_now_page_game04"]
;		;クリックした場所を記録
;		[eval exp="sf.new_saveclick     = sf.new_saveclick_game04"]
;		;クリックしたページを記録
;		[eval exp="sf.new_savepage      = sf.new_savepage_game04"]
;		;オマケ閲覧中ページ
;		[eval exp="sf.CG_page = sf.CG_page_game04"]
;		[eval exp="sf.SR_page = sf.SR_page_game04"]
;	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"]
;		;storageとラベル　これは書き戻す意味はないが最悪これだけ監視すれば良いように保存
;		;現在のファイル名
;		[eval exp="sf.ksStorageSys監視用 = sf.ksStorageSys監視用_game05"]
;		;現在のラベル名
;		[eval exp="sf.ksLabelSys監視用 = sf.ksLabelSys監視用_game05"]
;		;セーブロードの表示中ページ
;		[eval exp="sf.saveload_now_page = sf.saveload_now_page_game05"]
;		;クリックした場所を記録
;		[eval exp="sf.new_saveclick     = sf.new_saveclick_game05"]
;		;クリックしたページを記録
;		[eval exp="sf.new_savepage      = sf.new_savepage_game05"]
;		;オマケ閲覧中ページ
;		[eval exp="sf.CG_page = sf.CG_page_game05"]
;		[eval exp="sf.SR_page = sf.SR_page_game05"]
;	[endif]

;---------------------------------------------------
*title_menu_Individual

; タイトルメニュー画面用メッセージレイヤの各種設定
[position layer="&tf.title_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[layopt layer="&tf.title_message" page=fore visible=true]
[current layer="&tf.title_message" page=fore]


;座標を配列で用意 タイトル別に変える必要があるならここに来る直前に定義にする。
[eval exp="sf.titleX = [sf.T_newgame_x,sf.T_load_x,sf.T_conf_x,sf.T_cg_x,sf.T_sr_x,sf.T_bgm_x,sf.T_ohp_x,sf.T_quit_x,sf.T_Qload_x,sf.T_pski_x,sf.T_return_x]"]
[eval exp="sf.titleY = [sf.T_newgame_y,sf.T_load_y,sf.T_conf_y,sf.T_cg_y,sf.T_sr_y,sf.T_bgm_y,sf.T_ohp_y,sf.T_quit_y,sf.T_Qload_y,sf.T_pski_y,sf.T_return_y]"]

;---------------------------------------------------
;ロゴが画像に入って無いので入れる
;[eval exp="tf.logo_x = 1100 ,tf.logo_y = 650" cond="sf.gameNo == 3"]
;[eval exp="tf.logo_x = 50 ,tf.logo_y = 650"   cond="sf.gameNo == 4"]
[eval exp="tf.logo_x = 1100 ,tf.logo_y = 650"]


[if exp="tf.起動 == 1"]
	;BGM再生
	[bgmTitle]
	[backlay]
	[image storage="&sf.addgameID + 'bg_title1'" layer=base page=back visible=true]
	;デバッグ用ママキタボタン。オンならCGが全部黒加算になる
	[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
	[trans_c cross time=1000]

	;タイトルコール
	[se buf=1 storage="&sf.addgameID + 'callvoice_T'"]
	;[se buf=1 storage="callvoice_TR"]
	[backlay]
	[image storage="&sf.addgameID + 'bg_title2'" layer=base page=back visible=true]
	;ロゴが画像に入って無いので入れる
	;[pimage storage="bg_title_brandlogo" layer=base page=back visible=true dx="&tf.logo_x" dy="&tf.logo_y"]
	;デバッグ用ママキタボタン。オンならCGが全部黒加算になる
	[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
	[trans time=1000 method=crossfade][wt]

	;うーん
	;[trans_c wave]
[elsif exp="tf.起動 == 0"]
	;BGM再生
	;[fadeinbgm storage="bgm08" loop=true time=100]
	; タイトルメニュー画面を背景レイヤ表画面に読み込む
	[backlay]
	[image storage="&sf.addgameID + 'bg_title2'" layer=base page=back visible=true]
	;ロゴが画像に入って無いので入れる
	;[pimage storage="bg_title_brandlogo" layer=base page=back visible=true dx="&tf.logo_x" dy="&tf.logo_y"]
	;デバッグ用ママキタボタン。オンならCGが全部黒加算になる
	[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
	[trans_c cross time=0]

[endif]

; ↓各メニューから戻ってくるラベル
*title_menu_loop

;デバッグ用　システム系ボタン等座標設定サブルーチン呼び出し
;[call storage="first_sub_xy.ks"]


; ノーウェイト
[delay speed=nowait]


;タイトル通過フラグリセット
[eval exp="tf.title_pass = 0"]

;ショートカットでの判定用現在タイトルフラグ
;ショートカット判定用[eval exp="tf.title = 1"]


;[if exp="tf.起動 == 0"]
;BGM何も鳴ってなければ再生する
[if exp="kag.bgm.currentBuffer.status == 'stop' || kag.bgm.currentBuffer.status == 'unload'"]
	;BGM再生
	[bgmTitle]
[endif]

; メッセージレイヤをクリア
[er]
[locate x="&sf.titleX[0]" y="&sf.titleY[0]"]
;[button graphic="title_START" target=*title_menu_start recthit=true enterse="se_enter" clickse="se_click"]
[button graphic="title_START" target=*title_menu_start recthit=true]

[locate x="&sf.titleX[1]" y="&sf.titleY[1]"]
;[button graphic="title_LOAD" target=*title_menu_load recthit=true enterse="se_enter"]
[button graphic="title_LOAD" target=*title_menu_load recthit=true]


;[if exp="sf.pskip == 1"]
;	;座標暫定
;	[locate x="&sf.titleX[2]" y="&sf.titleY[0]"]
;	[button graphic="title_pskip.png" target=*title_menu_start exp="tf.pskip = 1"]
;[else]
;	[image storage="title_pskip_off.png"    layer=4 page=fore visible=true left="&sf.titleX[2]" top="&sf.titleY[0]"]
;[endif]

;クイックセーブ枠から保存日時を取得
[eval exp="tf.Qload_date = kag.getBookMarkDate(sf.QsaveNo)"]


;データあったらボタン表示。押せないときはグレーアウト。
[if exp="tf.Qload_date != ''"]
	;[locate x="&sf.titleX[8]" y="&sf.titleY[8]"][button graphic="title_quickload" recthit=true target=*title_QLOAD recthit=true enterse="se_enter"]
	[locate x="&sf.titleX[8]" y="&sf.titleY[8]"][button graphic="title_quickload" recthit=true target=*title_QLOAD recthit=true]
[else]
	;[image storage="title_quickload" layer=0 page=fore visible=true left="&sf.titleX[8]+40" top="&sf.titleY[8]" clipleft=0  cliptop=0 clipwidth=10 clipheight=0]
	;pimageだと何回も同じ事繰り返すからQuitをNoしたときとかにどんどん重なっちゃうんだなぁ。フラグ入れて避けるか↑のレイヤ0にしておくかどっちがいいか
	;レイヤだと消し忘れとか面倒だしなぁ
	[if exp="tf.exitpass == 0"]
		[pimage storage="title_quickload" layer=base page=fore visible=true dx="&sf.titleX[8]" dy="&sf.titleY[8]" sx=0 sy=0 sw=258 sh=36 mcolor=0x00000 mopacity=110 opacity=140]
	[endif]
[endif]

;タイトル画面の「終了」ボタンを通過したフラグオフ
[eval exp="tf.exitpass = 0"]

[locate x="&sf.titleX[2]" y="&sf.titleY[2]"]
;[button graphic="title_CONFIG" target=*title_menu_config enterse="se_enter"]
[button graphic="title_CONFIG" target=*title_menu_config]



;//テスト用だから避ける[if exp="sf.gameclera"]


	[locate x="&sf.titleX[3]" y="&sf.titleY[3]"]
	;[button graphic="title_cgmode" target=*title_menu_album recthit=true enterse="se_enter"]
	[button graphic="title_cgmode" target=*title_menu_album recthit=true]

	[locate x="&sf.titleX[4]" y="&sf.titleY[4]"]
	;[button graphic="title_scenemode" target=*title_menu_scene recthit=true enterse="se_enter"]
	[button graphic="title_scenemode" target=*title_menu_scene recthit=true]

	[locate x="&sf.titleX[5]" y="&sf.titleY[5]"]
	;[button graphic="title_bgmmode" target=*title_menu_sound recthit=true enterse="se_enter"]
	[button graphic="title_bgmmode" target=*title_menu_sound recthit=true]


;//テスト用だから避ける[endif]

;	[locate x="&sf.titleX[10]" y="&sf.titleY[10]"]
;	;[button graphic="title_EXIT.png" target=*title_menu_exit recthit=true enterse="se_enter"]
;	[button graphic="title_return.png" target=*title_menu_return recthit=true]


[locate x="&sf.titleX[7]" y="&sf.titleY[7]"]
;[button graphic="title_EXIT.png" target=*title_menu_exit recthit=true enterse="se_enter"]
[button graphic="title_EXIT.png" target=*title_menu_exit recthit=true]

;	;デバッグ用ママキタボタン。オンならCGが全部黒加算になる
;	[if exp="sf.evcgoff == 1"]
;		[locate x="950" y="140"]
;		[button graphic="cnf_on" target=*evcgoff recthit=true exp="sf.evcgoff = 0"]
;	[elsif exp="sf.evcgoff == 0"]
;		[locate x="1000" y="140"]
;		[button graphic="cnf_off" target=*evcgoff recthit=true exp="sf.evcgoff = 1"]
;	[endif]

;	;デバッグ用　リリース時にはファイルも消すこと
;	[call storage="title_デバッグ.ks"]

;メニュー移動使えるようになるフラグオン。
;ボタン押した時にオフにする?
[eval exp="tf.menuitem = 1"]

;[デバッグ用]


[s]

;--------------------------------------------------
*evcgoff
[backlay]
;[image storage="bg_title1" layer=base page=back visible=true]
[image storage="bg_title2" layer=base page=back visible=true]
;デバッグ用ママキタボタン。オンならCGが全部黒加算になる
[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
[trans_c cross time=0]

[cm]

[jump target=*title_menu_loop]
;--------------------------------------------------

;--------------------------------------------------
; 「続きから」が選択された
;
*title_menu_load

;[タイトル画面からの移動 time=100]
[cm]

;続きからコールランダム再生。
[eval exp="tf.random_voice=intrandom(1,4)"]
[eval exp="tf.title_pass = 1"]
;ショートカット判定用[eval exp="tf.title = 0"]
[eval exp="tf.save = 0 , tf.load = 1 , tf.conf = 0"]

[eval exp="tf.起動 = 0"]

; ロード画面へ
[jump storage="system_load.ks" target=*load_menu]



;--------------------------------------------------
*title_QLOAD

;[タイトル画面からの移動 time=100]
;コンフィグボタンとか残ってるぽいから消し
[cm]

; ウェイト解除
[delay speed=user]
; タイトルメニュー画面用メッセージレイヤを非表示
[layopt layer="&tf.title_message" page=fore visible=false]
; ; 右クリックサブルーチンの設定を変更
;ロード直前に右クリック設定してもだめらしいのでフラグを立てる
[eval exp="sf.ロード後右クリック未設定 = 1"]

; 栞にはさめるようにする
[disablestore store=false restore=false]
; メッセージ履歴への出力を再開、表示可にする
[history output=true enabled=true]
;BGM停止
[fadeoutbgm time=1000]

[eval exp="tf.fromtitle = 0"]
;ショートカット判定用[eval exp="tf.title = 0"]


[eval exp="tf.起動 = 0"]
;データスロットのクイックロード用のデータを呼び出す

;ロード前のメッセージ消去
[cm]

;タイトル画面のクイックロード押したフラグ
[eval exp="tf.QuickLoad_title = 1"]

;[load place="&kag.numBookMarks-1"]
[load place="&sf.QsaveNo"]


;--------------------------------------------------
; 「コンフィグ」が選択された
;
*title_menu_config

;[タイトル画面からの移動 time=100]
[cm]

; ウェイト解除
;[delay speed=user]

;[freeimage layer=0 page=fore]
;[playse buf=0 storage="title_click.ogg"]
;タイトル通過フラグ
[eval exp="tf.title_pass = 1"]

;↓スライダー式 どっちを開くか判断
;タイトル通過フラグ
[eval exp="tf.fromtitle = 1"]
;ショートカット判定用[eval exp="tf.title = 0"]
[eval exp="tf.save = 0 , tf.load = 0 , tf.conf = 1"]

[eval exp="tf.起動 = 0"]

;コンフィグ画面へ
[jump storage="system_config_mes.ks" target=*config_menu]

;--------------------------------------------------
; 「シーンモード」が選択された
;
*title_menu_scene

;オマケだけなんでボタン残したまま暗転にしてたんだっけなぁ
;[タイトル画面からの移動 time=0]
[cm]

[eval exp="tf.起動 = 0"]
;ショートカット判定用[eval exp="tf.title = 0"]

;callしたまま回想行くとエラー出るからだめ！
[jump storage="b_scene.ks"]

;--------------------------------------------------
; 「CGモード」が選択された
;
*title_menu_album

;[タイトル画面からの移動 time=0]
[cm]

[eval exp="tf.起動 = 0"]
;ショートカット判定用[eval exp="tf.title = 0"]

[jump storage="b_cgmode.ks"]

;--------------------------------------------------
; 「BGMモード」が選択された
;
*title_menu_sound

;[タイトル画面からの移動 time=0]
[cm]

[eval exp="tf.起動 = 0"]
;ショートカット判定用[eval exp="tf.title = 0"]

; サウンドテスト画面へ
[jump storage="b_bgmmode.ks"]

;---------------------------------------
*title_menu_return

[eval exp="tf.return = 1"]

[タイトル画面からの移動 bgmoff]


;;ここ以外にもウィンドウ左上のｘボタンとメニューのメインタイトルと終了時にも保存しないといけないよ
;これでいけんのか？ ナンバーで制御してて良かった
	;;タイトル別に記録しておかないとまずような変数
	;storageとラベル　これは書き戻す意味はないが最悪これだけ監視すれば良いように保存
	;現在のファイル名
	[eval exp="sf['ksStorageSys監視用_game0' + sf.gameNo] = sf.ksStorageSys監視用"]
	;現在のラベル名
	[eval exp="sf['ksLabelSys監視用_game0' + sf.gameNo] = sf.ksLabelSys監視用"]

	;セーブロードの表示中ページ
	[eval exp="sf['saveload_now_page_game0' + sf.gameNo] = sf.saveload_now_page"]
	;クリックした場所を記録
	[eval exp="sf['new_saveclick_game0' + sf.gameNo] = sf.new_saveclick"]
	;クリックしたページを記録
	[eval exp="sf['new_savepage_game0' + sf.gameNo] = sf.new_savepage"]
	;ロックしたスロットを記録

	;オマケ閲覧中ページ
	[eval exp="sf['CG_page_game0' + sf.gameNo] = sf.CG_page"]
	[eval exp="sf['SR_page_game0' + sf.gameNo] = sf.SR_page"]

	;そんでリセットしておくべき？
	;セーブロードの表示中ページ
	[eval exp="sf.saveload_now_page = void"]
	;クリックした場所を記録
	[eval exp="sf.new_saveclick     = void"]
	;クリックしたページを記録
	[eval exp="sf.new_savepage      = void"]
	;オマケ閲覧中ページ
	[eval exp="sf.CG_page = void"]
	[eval exp="sf.SR_page = void"]

;個別タイトルフラグリセット
[eval exp="sf.gameID    = void"]
[eval exp="sf.addgameID = void"]
;sf.gameNoはここで消すと戻り画面のtransできないからそれ終わってから
;[eval exp="sf.gameNo    = void"]






[eval exp="tf.起動 = 0"]

[gotostart]

;---------------------------------------
;
; 「終了」が選択された
;
*title_menu_exit

;function onExitMenuItemClick(sender)にも書いてるけど効かないから置いておくか　YESでもNOでも保存しておく
;MainWindow.tjsのonCloseQueryが実行されてるからここはやらなくていいんじゃないかな？
;	;;タイトル別に記録しておかないとまずような変数

;	;storageとラベル　これは書き戻す意味はないが最悪これだけ監視すれば良いように保存
;	;現在のファイル名
;	[eval exp="sf['ksStorageSys監視用_game0' + sf.gameNo] = sf.ksStorageSys監視用"]
;	;現在のラベル名
;	[eval exp="sf['ksLabelSys監視用_game0' + sf.gameNo] = sf.ksLabelSys監視用"]
;
;	;セーブロードの表示中ページ
;	[eval exp="sf['saveload_now_page_game0' + sf.gameNo] = sf.saveload_now_page"]
;	;クリックした場所を記録
;	[eval exp="sf['new_saveclick_game0' + sf.gameNo] = sf.new_saveclick"]
;	;クリックしたページを記録
;	[eval exp="sf['new_savepage_game0' + sf.gameNo] = sf.new_savepage"]
;	;オマケ閲覧中ページ
;	[eval exp="sf['CG_page0' + sf.gameNo] = sf.CG_page"]
;	[eval exp="sf['SR_page0' + sf.gameNo] = sf.SR_page"]

[if exp="sf.dialog_on"]
	[close]
	;No押したら↓こっちへ
	;もっかいbg貼り直すのもなぁ。ファイル名変わったときに面倒だしやっぱフラグか
	;[image storage="&sf.addgameID + 'bg_title2'" layer=base page=fore visible=true]
	[eval exp="tf.exitpass = 1"]
	[jump target=*title_menu_loop]
[endif]
;‐確認ダイアログボックスを開くことなく、直ちに終了させる場合は、kag.shutdown()を呼び出すこと
;ってあるからやっぱこっちでやらないとだめなのかなぁ
;[close ask=false]
[eval exp="kag.shutdown()"]

;ダイアログオフなら↑ですぐに閉じるから↓には実際には行かない。
;No押したら↓こっちへ
[jump target=*title_menu_loop]
;---------------------------------------
; 「ゲーム開始」が選択された；設定を復帰する
;
*title_menu_start
[freeimage layer=0 page=fore]
[if exp="tf.pskip == 1"]
	[jump target=*ランダムボイス完了]
[endif]


*ランダムボイス完了

;タイトルコール止め。こんだけ止めておけばボイスバッファでやってても安心だろう。
[stopse buf=0]
[stopse buf=1]
[stopse buf=2]
[stopse buf=3]
[stopse buf=4]
[stopse buf=6]

[タイトル画面からの移動 time=500]

; ウェイト解除
[delay speed=user]
; タイトルメニュー画面用メッセージレイヤを非表示
[layopt layer="&tf.title_message" page=fore visible=false]


;名前設定画面へ
[call storage="title_nameedit.ks"]



; ; 右クリックサブルーチンの設定を変更
; [rclick call=true target="*rclick_menu" storage="rclick.ks" enabled=true]
[rclick call=false jump=false enabled=true]


;右クリックの設定をする
[call storage="rclick_sub.ks"]

; 栞にはさめるようにする
[disablestore store=false restore=false]
; メッセージ履歴への出力を再開、表示可にする
[history output=true enabled=true]
;BGM停止
[fadeoutbgm time=1000]

[eval exp="tf.fromtitle = 0"]

;CGMODEで開放チェックに使うフラグオフ
;[eval exp="tf.CG開放チェック = 0"]

[eval exp="tf.起動 = 0"]
;ショートカット判定用[eval exp="tf.title = 0"]
;ショートカットキーのセーブ有効 これはsystem_savedata_sub.ksでも判定に含んでて消すの怖いからそのまま
[eval exp="f.shortcut_save = 1"]

;
; 実際のシナリオへ…
;

[wt canskip=fales]

[wait time=500 canskip=fales]

[if exp="tf.サンプル == 1"]
	[eval exp="tf.サンプル = 0"]
	[jump storage="サンプルスクリプト.ks"]
[endif]

;ゲームプレイ中のフラグオン　システム戻りでつかうtf.gameplayとは別。
;ゲームプレイ中は常にオンのまま。タイトル画面に戻った時に自動でオフになるはず。
[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="f.gameplay = 1"]
[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="f.gameplay = 2"]
[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="f.gameplay = 3"]
[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="f.gameplay = 4"]
[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="f.gameplay = 5"]
[endif]

;skipの飛ばしあんまここでやらないほうがいいよな。0000にしよう
;[if    exp="tf.pskip == 1"]
;	[eval exp="tf.pskip = 0"]
;	[jump storage="0008.ks"]
;[endif]

;それぞれのゲームの頭へ
[jump storage="&sf.addgameID + '0000.ks'"]
