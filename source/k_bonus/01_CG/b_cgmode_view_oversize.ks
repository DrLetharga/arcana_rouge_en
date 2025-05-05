;b_cgmode_view_oversize.ks

; アルバム画面でマウス右クリックされたら、「戻る」と同じ動作をさせる
[rclick jump=true target=*rclick storage="b_cgmode_view_oversize.ks" enabled=true]

;画像の大きさ
[eval exp="tf.oversize_gra_w = sf.oversize_gra_w"]
[eval exp="tf.oversize_gra_h = sf.oversize_gra_h"]



;最大移動幅 画像の大きさ-画面の解像度Y*-1
[if    exp="tf.overXY == 'WH'"]
	;縦長
	[eval exp="tf.pos_tabmax_w = (tf.oversize_gra_w - kag.scWidth) * -1"]
	[eval exp="tf.pos_tabmax_h = (tf.oversize_gra_h - kag.scHeight) * -1"]

[elsif exp="tf.overXY == 'W'"]
	;横長
	[eval exp="tf.pos_tabmax_w = (tf.oversize_gra_w - &kag.scWidth) * -1"]

[elsif exp="tf.overXY == 'H'"]
	;縦長
	[eval exp="tf.pos_tabmax_h = (tf.oversize_gra_h - kag.scHeight) * -1"]

[endif]

[eval exp="tf.scroll_bt_lr_x = [0,1230]"]
[eval exp="tf.scroll_bt_lr_y = [50, 50]"]

[eval exp="tf.scroll_bt_ud_x = [50, 50]"]
[eval exp="tf.scroll_bt_ud_y = [ 0,670]"]


;次の差分へがオフなら初期化。それ以外は下記の変数を維持。
;	[if exp="tf.nextcg == 0"]
;		;初期Y座標 初期位置は常に0
;		[eval exp="tf.now_pos_ev = 0"]
;		[eval exp="tf.now_pos_ev_x = 0"]
;		[eval exp="tf.now_pos_ev_y = 0"]
;	[endif]

;1回毎の移動幅
[eval exp="tf.add_pos = 20"]

;-----------------------------------------------------------
*1st

; メッセージレイヤの属性を設定
[position layer="&tf.CGMODE_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[current layer="&tf.CGMODE_message"]

[if exp="tf.overXY == 'WH'"]
	[locate x=0 y=0][button graphic="cgnext" target=*end]
	[locate x="&tf.scroll_bt_lr_x[0]" y="&tf.scroll_bt_lr_y[0]"][button graphic="scroll_l" target=*1st onenter="kag.process('','*l')" onleave="kag.process('','*1st')"]
	[locate x="&tf.scroll_bt_lr_x[1]" y="&tf.scroll_bt_lr_y[1]"][button graphic="scroll_r" target=*1st onenter="kag.process('','*r')" onleave="kag.process('','*1st')"]
	[locate x="&tf.scroll_bt_ud_x[0]" y="&tf.scroll_bt_ud_y[0]"][button graphic="scroll_u" target=*1st onenter="kag.process('','*u')" onleave="kag.process('','*1st')"]
	[locate x="&tf.scroll_bt_ud_x[1]" y="&tf.scroll_bt_ud_y[1]"][button graphic="scroll_d" target=*1st onenter="kag.process('','*d')" onleave="kag.process('','*1st')"]

[elsif exp="tf.overXY == 'W'"]
	[locate x=0 y=0][button graphic="cgnext" target=*end]
	[locate x="&tf.scroll_bt_lr_x[0]" y="&tf.scroll_bt_lr_y[0]"][button graphic="scroll_l" target=*1st onenter="kag.process('','*l')" onleave="kag.process('','*1st')"]
	[locate x="&tf.scroll_bt_lr_x[1]" y="&tf.scroll_bt_lr_y[1]"][button graphic="scroll_r" target=*1st onenter="kag.process('','*r')" onleave="kag.process('','*1st')"]

[elsif exp="tf.overXY == 'H'"]
	[locate x=0 y=0][button graphic="cgnext" target=*end]
	[locate x="&tf.scroll_bt_ud_x[0]" y="&tf.scroll_bt_ud_y[0]"][button graphic="scroll_u" target=*1st onenter="kag.process('','*u')" onleave="kag.process('','*1st')"]
	[locate x="&tf.scroll_bt_ud_x[1]" y="&tf.scroll_bt_ud_y[1]"][button graphic="scroll_d" target=*1st onenter="kag.process('','*d')" onleave="kag.process('','*1st')"]
[endif]

[s]


;縦→横　横→縦に移動した瞬間もとのほうは20ずれる。あと次の差分に行った時も


;-----------------------------------------------------------
*l
;画像の左を見たい！

;最大移動幅と同じになら処理無しで戻る
[if exp="tf.now_pos_ev_x == 0"]
	[jump target=*1st]
[endif]

;現在の座標を再計算
[eval exp="tf.now_pos_ev_x = tf.now_pos_ev_x + tf.add_pos"]

;実際には画像が右に送られる
;移動
[move layer=1 time=20 accel=1 path='&@"((${&tf.now_pos_ev_x},${&tf.now_pos_ev_y},255)"'][wm]


;初期位置（0）と同じになったら処理無しで戻る
[if exp="tf.now_pos_ev_x == 0"]
	[jump target=*1st]
[endif]

[jump target=*l]

;-----------------------------------------------------------
*r
;画像の右を見たい！

;最大移動幅と同じになら処理無しで戻る
[if exp="tf.now_pos_ev_x * -1 >= tf.pos_tabmax_w * -1"]
	[jump target=*1st]
[endif]

;現在の座標を再計算
[eval exp="tf.now_pos_ev_x = tf.now_pos_ev_x - tf.add_pos"]

;実際には画像が左に送られる
;移動
[move layer=1 time=20 accel=1 path='&@"((${&tf.now_pos_ev_x},${&tf.now_pos_ev_y},255)"'][wm]


;最大移動幅と同じになったら処理無しで戻る
[if exp="tf.now_pos_ev_x * -1 >= tf.pos_tabmax_w * -1"]
	[jump target=*1st]
[endif]

[jump target=*r]
;-----------------------------------------------------------
*u
;画像の上を見たい！

;最大移動幅と同じになら処理無しで戻る
[if exp="tf.now_pos_ev_y == 0"]
	[jump target=*1st]
[endif]


;現在の座標を再計算
[eval exp="tf.now_pos_ev_y = tf.now_pos_ev_y + tf.add_pos"]

;実際には画像が下
;移動
;[move layer=1 time=50 accel=1 path='&@"((${&tf.now_pos_ev_x},${&tf.now_pos_ev_y},255)"'][wm]
;邪淫用　ｘ座標は0固定
[move layer=1 time=20 accel=1 path='&@"(0,${&tf.now_pos_ev_y},255)"'][wm]


;初期位置（0）と同じになったら処理無しで戻る
[if exp="tf.now_pos_ev_y == 0"]
	[jump target=*1st]
[endif]

[jump target=*u]

;-----------------------------------------------------------
*d
;画像の下を見たい！

;最大移動幅と同じになら処理無しで戻る
[if exp="tf.now_pos_ev_y * -1 >= tf.pos_tabmax_h * -1"]
	[jump target=*1st]
[endif]

;現在の座標を再計算
[eval exp="tf.now_pos_ev_y = tf.now_pos_ev_y - tf.add_pos"]

;実際には画像が上
;移動
;[move layer=1 time=50 accel=1 path='&@"((${&tf.now_pos_ev_x},${&tf.now_pos_ev_y},255)"'][wm]
;邪淫用　ｘ座標は0固定
[move layer=1 time=20 accel=1 path='&@"((0,${&tf.now_pos_ev_y},255)"'][wm]


;最大移動幅と同じになったら処理無しで戻る
[if exp="tf.now_pos_ev_y * -1 >= tf.pos_tabmax_h * -1"]
	[jump target=*1st]
[endif]

[jump target=*d]


;-----------------------------------------------------------
;-----------------------------------------------------------
;-----------------------------------------------------------
*ul
;画像の上／左を見たい！

;最大移動幅と同じになら処理無しで戻る
[if exp="tf.now_pos_ev == 0"]
	[jump target=*1st]
[endif]

;実際には画像が下/右に送られる
;移動
[if    exp="tf.overXY == 'W'"]
	[move layer=1 time=20 accel=1 path='&@"((${&tf.now_pos_ev + tf.add_pos},0,255)"'][wm]
[elsif exp="tf.overXY == 'H'"]
	[move layer=1 time=20 accel=1 path='&@"((0,${&tf.now_pos_ev + tf.add_pos},255)"'][wm]
[endif]

;現在の座標を再計算
[eval exp="tf.now_pos_ev = tf.now_pos_ev + tf.add_pos"]

;初期位置（0）と同じになったら処理無しで戻る
[if exp="tf.now_pos_ev == 0"]
	[jump target=*1st]
[endif]

[jump target=*ul]

;-----------------------------------------------------------
*dr
;画像の下／右を見たい！

;最大移動幅と同じになら処理無しで戻る
[if exp="tf.now_pos_ev * -1 >= tf.pos_tabmax * -1"]
	[jump target=*1st]
[endif]

;実際には画像が上/左に送られる
;移動
[if    exp="tf.overXY == 'W'"]
	[move layer=1 time=20 accel=1 path='&@"((${&tf.now_pos_ev - tf.add_pos},0,255)"'][wm]
[elsif exp="tf.overXY == 'H'"]
	[move layer=1 time=20 accel=1 path='&@"((0,${&tf.now_pos_ev - tf.add_pos},255)"'][wm]
[endif]

;現在の座標を再計算
[eval exp="tf.now_pos_ev = tf.now_pos_ev - tf.add_pos"]

;最大移動幅と同じになったら処理無しで戻る
[if exp="tf.now_pos_ev * -1 >= tf.pos_tabmax * -1"]
	[jump target=*1st]
[endif]

[jump target=*dr]









;-----------------------------------------------------------
;-----------------------------------------------------------
;-----------------------------------------------------------

*end
[stoptrans][stopmove]

;[eval exp="tf.nextcg = 1"]

[return]

;-----------------------------------------------------------
*rclick
[wait time=150 canskip=false]

;初期Y座標 初期位置は常に0
[eval exp="tf.now_pos_ev = void"]
[eval exp="tf.now_pos_ev_x = void"]
[eval exp="tf.now_pos_ev_y = void"]

[eval exp="tf.nextcg = 0"]

[current layer=message0][layopt layer=message0 left=0 top=0 visible=false]

[return storage="b_cgmode_view.ks"  target=*CGMODEback]

;-----------------------------------------------------------
