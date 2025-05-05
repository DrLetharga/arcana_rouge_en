;b_scene.ks
;前のヴァージョンが使いにくいから全改修する
;ページ毎に作った方がカスタマイズしやすいかな

*scene_menu

[call storage="&sf.addgameID + 'b_scene_init.ks'"]

;[全消去]
[cgthum_int]
; メモリ上の栞６に現在の状態を保存 これするとシーン回想からタイトルバックしたときにタイトル背景出ちゃう
;[tempsave place=6]

; シーン回想中であることを示す変数（呼び出し先のKAGシナリオでシーン回想中か否かを判定する）
[eval exp="tf.scene_mode = 1"]

[freeimage layer=base page=fore]
[freeimage layer=base page=back]


; サムネイルベースを表示
; サムネイルを表示する座標の配列 //sf.sr_thum_x03を追加
;２タイトル間で違うかもだからcondこれしちゃだめだ
[eval exp="tf.scene_thum_x = [sf.sr_thum_x01, sf.sr_thum_x02, sf.sr_thum_x03, sf.sr_thum_x04, sf.sr_thum_x05]"]
[eval exp="tf.scene_thum_y = [sf.sr_thum_y01, sf.sr_thum_y02, sf.sr_thum_y03, sf.sr_thum_y04, sf.sr_thum_y05]"]

; ページ用ボタンを表示する座標の配列 [0]は使用しない。ページ数と[n]が同じになるようにする
[eval exp="tf.b_sr_pageX = [sf.b_page00_x, sf.b_page01_x, sf.b_page02_x, sf.b_page03_x, sf.b_page04_x, sf.b_page05_x, sf.b_page06_x, sf.b_page07_x, sf.b_page08_x, sf.b_page09_x, sf.b_page10_x]"]
[eval exp="tf.b_sr_pageY = [sf.b_page00_y, sf.b_page01_y, sf.b_page02_y, sf.b_page03_y, sf.b_page04_y, sf.b_page05_y, sf.b_page06_y, sf.b_page07_y, sf.b_page08_y, sf.b_page09_y, sf.b_page10_y]"]



; アルバム画面で使用するメッセージレイヤ
[eval exp="tf.scene_message = 'message1'"]

; アルバム画面でマウス右クリックされたら、「戻る」と同じ動作をさせる
[rclick jump=true target="*scene_return" storage="b_scene.ks" enabled=true]

; メッセージレイヤの属性を設定
[position layer="&tf.scene_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[current layer="&tf.scene_message"]

;キャプション用レイヤの定義 1と2はページボタンと移動ボタンで使用済み
[eval exp="tf.layer_cap01 = 3"]
[eval exp="tf.layer_cap02 = 4"]
[eval exp="tf.layer_cap03 = 5"]
[eval exp="tf.layer_cap04 = 6"]
[eval exp="tf.layer_cap05 = 7"]
[eval exp="tf.layer_cap06 = 8"]
;これ以上増やす場合はレイヤ数の調整が必要
;[eval exp="tf.layer_cap07 = "]
;[eval exp="tf.layer_cap08 = "]
;[eval exp="tf.layer_cap09 = "]
;[eval exp="tf.layer_cap10 = "]
;[eval exp="tf.layer_cap11 = "]
;[eval exp="tf.layer_cap12 = "]
;[eval exp="tf.layer_cap13 = "]
;[eval exp="tf.layer_cap14 = "]
;[eval exp="tf.layer_cap15 = "]
;[eval exp="tf.layer_cap16 = "]
;[eval exp="tf.layer_cap17 = "]
;[eval exp="tf.layer_cap18 = "]
;[eval exp="tf.layer_cap19 = "]
;[eval exp="tf.layer_cap20 = "]


;初回に来た時用
[if exp="sf.SR_page == void"]
	[eval exp="sf.SR_page = 1"]
[endif]

;最大ページ数定義 これはfirst_xyで定義
;[eval exp="sf.SR_page_max = 4"]

;念のタメ ページ変数がページ数より多くなっちゃったら3にしておく
[if exp="sf.SR_page > sf.SR_page_max"]
	[eval exp="sf.SR_page = sf.SR_page_max"]
[endif]


; ページ内容描画へ。飛び先でまたジャンプあるからcallじゃなくてjumpにしておく。
;[jump storage="b_scene_sub.ks"]

;邪淫用　メインタイトルと再生するの別だからgostartしたあとではなくここでやる
;BGM何も鳴ってなければ再生する
[if exp="kag.bgm.currentBuffer.status == 'stop' || kag.bgm.currentBuffer.status == 'unload'"]
	;BGM再生
	[bgmTitle]
[endif]
;-------------------------------------------
;--------------scene_sub.ks-----------------
;-------------------------------------------
;------------------------------------------------
*SR再描画
[cm]
[cgthum_int]
; 背景画像を読み込み、表示
[image storage="&sf.addgameID + 'bg_scene01'" layer=base page=fore]


;オマケモード間の移動ボタン呼び出し
[call storage="b_sub.ks"]


; 「戻る」ボタンを表示
[locate x="&tf.b_menuX[3]" y="&tf.b_menuY[3]"]
[button graphic="bnsjump_back" target=*scene_return]


; ページボタン表示
[pagebt_SR]

;	[デバッグ用開放ボタン x=0 y=660]

;------------------------------------------------
; サムネイルベースを表示


[if    exp="sf.SR_slot01 == 0 && sf.SR_thm01 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[0]"]
[elsif exp="sf.SR_slot01"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[0]"]
	[pimage storage="&sf.SR_thm01+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[0] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[0] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 1"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 1"  onenter="kag.fore.layers[tf.layer_cap01].opacity = 255" onleave="kag.fore.layers[tf.layer_cap01].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap01" layer="&tf.layer_cap01" page=fore visible=true left="&tf.scene_thum_x[0]" top="&tf.scene_thum_y[0]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot02 == 0 && sf.SR_thm02 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[0]"]
[elsif exp="sf.SR_slot02"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[0]"]
	[pimage storage="&sf.SR_thm02+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[1] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[1] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 2"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 2"  onenter="kag.fore.layers[tf.layer_cap02].opacity = 255" onleave="kag.fore.layers[tf.layer_cap02].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap02" layer="&tf.layer_cap02" page=fore visible=true left="&tf.scene_thum_x[1]" top="&tf.scene_thum_y[0]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot03 == 0 && sf.SR_thm03 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[0]"]
[elsif exp="sf.SR_slot03"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[0]"]
	[pimage storage="&sf.SR_thm03+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[2] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[2] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 3"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 3"  onenter="kag.fore.layers[tf.layer_cap03].opacity = 255" onleave="kag.fore.layers[tf.layer_cap03].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap03" layer="&tf.layer_cap03" page=fore visible=true left="&tf.scene_thum_x[2]" top="&tf.scene_thum_y[0]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot04 == 0 && sf.SR_thm04 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[0]"]
[elsif exp="sf.SR_slot04"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[0]"]
	[pimage storage="&sf.SR_thm04+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[3] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[3] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 4"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 4"  onenter="kag.fore.layers[tf.layer_cap04].opacity = 255" onleave="kag.fore.layers[tf.layer_cap04].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap04" layer="&tf.layer_cap04" page=fore visible=true left="&tf.scene_thum_x[3]" top="&tf.scene_thum_y[0]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot05 == 0 && sf.SR_thm05 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[0]"]
[elsif exp="sf.SR_slot05"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[0]"]
	[pimage storage="&sf.SR_thm05+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[4] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[4] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 5"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 5"  onenter="kag.fore.layers[tf.layer_cap05].opacity = 255" onleave="kag.fore.layers[tf.layer_cap05].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap05" layer="&tf.layer_cap05" page=fore visible=true left="&tf.scene_thum_x[4]" top="&tf.scene_thum_y[0]" opacity="&tf.capopa_off"]
	[endif]
[endif]

;-----------------------------------------------------
[if    exp="sf.SR_slot06 == 0 && sf.SR_thm06 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[1]"]
[elsif exp="sf.SR_slot06"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[1]"]
	[pimage storage="&sf.SR_thm06+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[0] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[0] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 6"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 6"  onenter="kag.fore.layers[tf.layer_cap06].opacity = 255" onleave="kag.fore.layers[tf.layer_cap06].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap06" layer="&tf.layer_cap06" page=fore visible=true left="&tf.scene_thum_x[0]" top="&tf.scene_thum_y[1]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot07 == 0 && sf.SR_thm07 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[1]"]
[elsif exp="sf.SR_slot07"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[1]"]
	[pimage storage="&sf.SR_thm07+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[1] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[1] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 7"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 7"  onenter="kag.fore.layers[tf.layer_cap07].opacity = 255" onleave="kag.fore.layers[tf.layer_cap07].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap07" layer="&tf.layer_cap07" page=fore visible=true left="&tf.scene_thum_x[1]" top="&tf.scene_thum_y[1]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot08 == 0 && sf.SR_thm08 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[1]"]
[elsif exp="sf.SR_slot08"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[1]"]
	[pimage storage="&sf.SR_thm08+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[2] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[2] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 8"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 8"  onenter="kag.fore.layers[tf.layer_cap08].opacity = 255" onleave="kag.fore.layers[tf.layer_cap08].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap08" layer="&tf.layer_cap08" page=fore visible=true left="&tf.scene_thum_x[2]" top="&tf.scene_thum_y[1]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot09 == 0 && sf.SR_thm09 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[1]"]
[elsif exp="sf.SR_slot09"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[1]"]
	[pimage storage="&sf.SR_thm09+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[3] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[3] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 9"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 9"  onenter="kag.fore.layers[tf.layer_cap09].opacity = 255" onleave="kag.fore.layers[tf.layer_cap09].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap09" layer="&tf.layer_cap09" page=fore visible=true left="&tf.scene_thum_x[3]" top="&tf.scene_thum_y[1]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot10 == 0 && sf.SR_thm10 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[1]"]
[elsif exp="sf.SR_slot10"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[1]"]
	[pimage storage="&sf.SR_thm10+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[4] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[4] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 10"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 10" onenter="kag.fore.layers[tf.layer_cap10].opacity = 255" onleave="kag.fore.layers[tf.layer_cap10].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap10" layer="&tf.layer_cap10" page=fore visible=true left="&tf.scene_thum_x[4]" top="&tf.scene_thum_y[1]" opacity="&tf.capopa_off"]
	[endif]
[endif]

;-----------------------------------------------------
[if    exp="sf.SR_slot11 == 0 && sf.SR_thm11 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[2]"]
[elsif exp="sf.SR_slot11"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[2]"]
	[pimage storage="&sf.SR_thm11+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[0] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[0] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 11"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 11" onenter="kag.fore.layers[tf.layer_cap11].opacity = 255" onleave="kag.fore.layers[tf.layer_cap11].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap11" layer="&tf.layer_cap11" page=fore visible=true left="&tf.scene_thum_x[0]" top="&tf.scene_thum_y[2]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot12 == 0 && sf.SR_thm12 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[2]"]
[elsif exp="sf.SR_slot12"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[2]"]
	[pimage storage="&sf.SR_thm12+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[1] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[1] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 12"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 12" onenter="kag.fore.layers[tf.layer_cap12].opacity = 255" onleave="kag.fore.layers[tf.layer_cap12].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap12" layer="&tf.layer_cap12" page=fore visible=true left="&tf.scene_thum_x[1]" top="&tf.scene_thum_y[2]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot13 == 0 && sf.SR_thm13 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[2]"]
[elsif exp="sf.SR_slot13"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[2]"]
	[pimage storage="&sf.SR_thm13+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[2] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[2] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 13"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 13" onenter="kag.fore.layers[tf.layer_cap13].opacity = 255" onleave="kag.fore.layers[tf.layer_cap13].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap13" layer="&tf.layer_cap13" page=fore visible=true left="&tf.scene_thum_x[2]" top="&tf.scene_thum_y[2]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot14 == 0 && sf.SR_thm14 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[2]"]
[elsif exp="sf.SR_slot14"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[2]"]
	[pimage storage="&sf.SR_thm14+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[3] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[3] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 14"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 14" onenter="kag.fore.layers[tf.layer_cap14].opacity = 255" onleave="kag.fore.layers[tf.layer_cap14].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap14" layer="&tf.layer_cap14" page=fore visible=true left="&tf.scene_thum_x[3]" top="&tf.scene_thum_y[2]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot15 == 0 && sf.SR_thm15 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[2]"]
[elsif exp="sf.SR_slot15"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[2]"]
	[pimage storage="&sf.SR_thm15+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[4] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[4] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 15"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 15" onenter="kag.fore.layers[tf.layer_cap15].opacity = 255" onleave="kag.fore.layers[tf.layer_cap15].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap15" layer="&tf.layer_cap15" page=fore visible=true left="&tf.scene_thum_x[4]" top="&tf.scene_thum_y[2]" opacity="&tf.capopa_off"]
	[endif]
[endif]


;-----------------------------------------------------
[if    exp="sf.SR_slot16 == 0 && sf.SR_thm16 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[3]"]
[elsif exp="sf.SR_slot16"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[3]"]
	[pimage storage="&sf.SR_thm16+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[0] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[0] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 16"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 16" onenter="kag.fore.layers[tf.layer_cap16].opacity = 255" onleave="kag.fore.layers[tf.layer_cap16].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap16" layer="&tf.layer_cap16" page=fore visible=true left="&tf.scene_thum_x[0]" top="&tf.scene_thum_y[3]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot17 == 0 && sf.SR_thm17 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[3]"]
[elsif exp="sf.SR_slot17"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[3]"]
	[pimage storage="&sf.SR_thm17+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[1] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[1] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 17"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 17" onenter="kag.fore.layers[tf.layer_cap17].opacity = 255" onleave="kag.fore.layers[tf.layer_cap17].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap17" layer="&tf.layer_cap17" page=fore visible=true left="&tf.scene_thum_x[1]" top="&tf.scene_thum_y[3]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot18 == 0 && sf.SR_thm18 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[3]"]
[elsif exp="sf.SR_slot18"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[3]"]
	[pimage storage="&sf.SR_thm18+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[2] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[2] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 18"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 18" onenter="kag.fore.layers[tf.layer_cap18].opacity = 255" onleave="kag.fore.layers[tf.layer_cap18].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap18" layer="&tf.layer_cap18" page=fore visible=true left="&tf.scene_thum_x[2]" top="&tf.scene_thum_y[3]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot19 == 0 && sf.SR_thm19 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[3]"]
[elsif exp="sf.SR_slot19"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[3]"]
	[pimage storage="&sf.SR_thm19+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[3] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[3] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 19"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 19" onenter="kag.fore.layers[tf.layer_cap19].opacity = 255" onleave="kag.fore.layers[tf.layer_cap19].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap19" layer="&tf.layer_cap19" page=fore visible=true left="&tf.scene_thum_x[3]" top="&tf.scene_thum_y[3]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot20 == 0 && sf.SR_thm20 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[3]"]
[elsif exp="sf.SR_slot20"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[3]"]
	[pimage storage="&sf.SR_thm20+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[4] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[4] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 20"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 20" onenter="kag.fore.layers[tf.layer_cap20].opacity = 255" onleave="kag.fore.layers[tf.layer_cap20].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap20" layer="&tf.layer_cap20" page=fore visible=true left="&tf.scene_thum_x[4]" top="&tf.scene_thum_y[3]" opacity="&tf.capopa_off"]
	[endif]
[endif]


[s]


;------------------------------------------------

; シーンが選択された
*scene_select

;unlocklinkの前にボタンとか消さないとtrance中にボタン押せて危ない
;ブラックアウト前にサムネイルとサムネイルベースを消去　2014/01/27
;なんやこれはレイヤ間違えてるしそも消さなくていいのでは？
;[current layer=message0][layopt layer=message0 left=0 top=0 visible=true]
;[layopt layer="&tf.scene_message" visible=false]

;ブラックアウト
[image storage="effect_black" layer=0 page=fore visible=false left=0 top=0]
[image storage="effect_black" layer=0 page=back visible=true left=0 top=0]
[trans time=500 method=crossfade]
[wt canskip=false]

[cm]
[cgthum_int]

;[tempsave place=6]

; リンクのロックを解除
[unlocklink]
; ウェイト解除
[delay speed=user]
; 栞の機能を無効化（呼び出し先のKAGシナリオにセーブ可能なラベルがあるため）
[store enabled=false]

;右クリックの設定をする
[call storage="rclick_sub.ks"]

; 履歴レイヤを有効化
[history output=true enabled=true]
; 「自動的に読み進む」のを解除
[cancelautomode]
; スキップも解除
[cancelskip]
;BGM即時停止
[stopbgm]


;[backlay layer=message0]
;[layopt layer=message0 page=back visible=false]
;[trans method="crossfade" time=0]
;[wt]


;[layopt layer=0 page=back index=1000]

[wait_c time=500]
;こっちのcmは不要なのでオフる　2014/01/27
;シーン回想画面のボタン消去
;[cm]
[eval exp="tf.scenestart = 1"]

;回想飛ぶ前に白黒設定にsfを合わせる
[eval exp="f.SIROKURO = sf.SIROKURO"]

;フェイスオン が必要だけど服貼ってないとフレームだけになるから今回はやめとこ
;[eval exp="f.face_win_on = 1"]

;------------------------------------------------
;各シーンにジャンプ

;ページ分岐はいらないはず
;[if    exp="sf.SR_page == 1"]
	[if    exp="tf.SR_click ==  1"][eval exp="tf.scenesel_bg = sf.SR_thm01"][jump storage="&sf.SR_filename01 + '.ks'" target="&sf.SR_target01"]
	[elsif exp="tf.SR_click ==  2"][eval exp="tf.scenesel_bg = sf.SR_thm02"][jump storage="&sf.SR_filename02 + '.ks'" target="&sf.SR_target02"]
	[elsif exp="tf.SR_click ==  3"][eval exp="tf.scenesel_bg = sf.SR_thm03"][jump storage="&sf.SR_filename03 + '.ks'" target="&sf.SR_target03"]
	[elsif exp="tf.SR_click ==  4"][eval exp="tf.scenesel_bg = sf.SR_thm04"][jump storage="&sf.SR_filename04 + '.ks'" target="&sf.SR_target04"]
	[elsif exp="tf.SR_click ==  5"][eval exp="tf.scenesel_bg = sf.SR_thm05"][jump storage="&sf.SR_filename05 + '.ks'" target="&sf.SR_target05"]
	[elsif exp="tf.SR_click ==  6"][eval exp="tf.scenesel_bg = sf.SR_thm06"][jump storage="&sf.SR_filename06 + '.ks'" target="&sf.SR_target06"]
	[elsif exp="tf.SR_click ==  7"][eval exp="tf.scenesel_bg = sf.SR_thm07"][jump storage="&sf.SR_filename07 + '.ks'" target="&sf.SR_target07"]
	[elsif exp="tf.SR_click ==  8"][eval exp="tf.scenesel_bg = sf.SR_thm08"][jump storage="&sf.SR_filename08 + '.ks'" target="&sf.SR_target08"]
	[elsif exp="tf.SR_click ==  9"][eval exp="tf.scenesel_bg = sf.SR_thm09"][jump storage="&sf.SR_filename09 + '.ks'" target="&sf.SR_target09"]
	[elsif exp="tf.SR_click == 10"][eval exp="tf.scenesel_bg = sf.SR_thm10"][jump storage="&sf.SR_filename10 + '.ks'" target="&sf.SR_target10"]
	[elsif exp="tf.SR_click == 11"][eval exp="tf.scenesel_bg = sf.SR_thm11"][jump storage="&sf.SR_filename11 + '.ks'" target="&sf.SR_target11"]
	[elsif exp="tf.SR_click == 12"][eval exp="tf.scenesel_bg = sf.SR_thm12"][jump storage="&sf.SR_filename12 + '.ks'" target="&sf.SR_target12"]
	[elsif exp="tf.SR_click == 13"][eval exp="tf.scenesel_bg = sf.SR_thm13"][jump storage="&sf.SR_filename13 + '.ks'" target="&sf.SR_target13"]
	[elsif exp="tf.SR_click == 14"][eval exp="tf.scenesel_bg = sf.SR_thm14"][jump storage="&sf.SR_filename14 + '.ks'" target="&sf.SR_target14"]
	[elsif exp="tf.SR_click == 15"][eval exp="tf.scenesel_bg = sf.SR_thm15"][jump storage="&sf.SR_filename15 + '.ks'" target="&sf.SR_target15"]
	[elsif exp="tf.SR_click == 16"][eval exp="tf.scenesel_bg = sf.SR_thm16"][jump storage="&sf.SR_filename16 + '.ks'" target="&sf.SR_target16"]
	[elsif exp="tf.SR_click == 17"][eval exp="tf.scenesel_bg = sf.SR_thm17"][jump storage="&sf.SR_filename17 + '.ks'" target="&sf.SR_target17"]
	[elsif exp="tf.SR_click == 18"][eval exp="tf.scenesel_bg = sf.SR_thm18"][jump storage="&sf.SR_filename18 + '.ks'" target="&sf.SR_target18"]
	[elsif exp="tf.SR_click == 19"][eval exp="tf.scenesel_bg = sf.SR_thm19"][jump storage="&sf.SR_filename19 + '.ks'" target="&sf.SR_target19"]
	[elsif exp="tf.SR_click == 20"][eval exp="tf.scenesel_bg = sf.SR_thm20"][jump storage="&sf.SR_filename20 + '.ks'" target="&sf.SR_target20"]
	[endif]
;[endif]
;フェイルセーフ
[jump target=*back_from_SR2]

;-----------------------------------------------------------
;*sceneback
*back_from_SR
*back_from_SR2
;[tempload place=6]

;シーン回想からの戻り位置

;コンフィグに行ってたフラグをオフ
[eval exp="tf.slider_on_mes = 0"]
;回想中だとここに一旦戻るからここでコンフィグオフらないとだめか
[eval exp="tf.conf = 0"]






;クリックした場所のフラグオフ
[eval exp="tf.SR_click = 0"]
[eval exp="tf.scenestart = 0"]
[eval exp="tf.髪 = 0"]

;システムボタン＆ウィンドウ消去
[sysbt_meswin clear]


[stopse_all]


;m:回想中→タイトルだと、どうもBGの切り替えに間ができるのでちょっとブラックアウトを避ける
[if exp="tf.title_pass2 == 0"]
	;BGM停止
	[fadeoutbgm time=500]
	[black_toplayer][trans_c cross][hide_chara_int]
	[wait time=500 canskip=false]
[endif]

;通過処理終わったのでオフる
[eval exp="tf.title_pass2 = 0"]



;BGM即時停止
[stopbgm]
;SEフェード 一応戻しておこう
[seopt buf=0 volume=100]
[seopt buf=1 volume=100]
[seopt buf=2 volume=100]
[seopt buf=3 volume=100]

;白黒フラグを一端sfに保存
;[eval exp="sf.SIROKURO = f.SIROKURO"]

;回想中に使ったフラグのクリア
[clearvar]
;ここでクリアしちゃうから回想出た後は必ず白猫になっちゃうなぁ、やっぱsfでもったほうがいいか

;白黒フラグをfに書き戻し
;[eval exp="f.SIROKURO = sf.SIROKURO"]


;システムボタン＆ウィンドウ消去
[sysbt_meswin clear]

; マウス右クリックの設定を元に戻す
[rclick jump=true target="*scene_return" storage="b_scene.ks" enabled=true]

; 栞の機能を有効化（栞をはさむ／たどる共に有効になるため、更に↓のdisablestoreタグを使う）
[store enabled=true]
; 栞にはさめなくする（タイトルメニュー画面での設定に戻す）
[disablestore store=true restore=false]
;履歴のリセット
[eval exp="kag.historyLayer.clear()"] 
; 履歴レイヤを抑止
[history output=false enabled=false]

; ノーウェイトに戻す
[delay speed=nowait]


; アルバム画面で使用するメッセージレイヤ
[eval exp="tf.scene_message = 'message1'"]

; アルバム画面でマウス右クリックされたら、「戻る」と同じ動作をさせる
[rclick jump=true target="*scene_return" storage="b_scene.ks" enabled=true]

; メッセージレイヤの属性を設定
[position layer="&tf.scene_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[current layer="&tf.scene_message"]

;BGM何も鳴ってなければ再生する
[if exp="kag.bgm.currentBuffer.status == 'stop' || kag.bgm.currentBuffer.status == 'unload'"]
	;BGM再生
	[bgmTitle]
[endif]

[jump target=*SR再描画]

;------------------------------------------------

;
; 「戻る」が選択された
;
*scene_return

;[全消去]
[cgthum_int]
; メモリ上の栞６を読み込み、状態復帰
;[tempload place=6]

; マウス右クリックされたときの動作を元に戻す
[rclick enabled=false]

;シーンモード解除
[eval exp="tf.scene_mode = 0"]


;リターンだと面倒だから直にタイトルへ
;[jump storage="title.ks" target=*title_menu]
;バツっと切れるから一応ちゃんと止めてみる
;[fadeoutbgm time=100][wf canskip=false][stopbgm]
[gotostart]
;[return]

;------------------------------------------------
*debug_on
[if    exp="sf.gameNo == 1"]
[elsif exp="sf.gameNo == 2"]
[elsif exp="sf.gameNo == 3"]
[elsif exp="sf.gameNo == 4"]
[endif]
[call storage="&sf.addgameID + 'b_scene_init.ks'"]
[jump target=*SR再描画]

*debug_off
[if    exp="sf.gameNo == 1"]
[elsif exp="sf.gameNo == 2"]
[elsif exp="sf.gameNo == 3"]
[elsif exp="sf.gameNo == 4"]

[endif]
[call storage="&sf.addgameID + 'b_scene_init.ks'"]
[jump target=*SR再描画]
