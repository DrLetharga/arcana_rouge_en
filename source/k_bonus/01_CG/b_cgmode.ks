;b_cgmode.ks
;前のヴァージョンが使いにくいから全改修する
;ページ毎に作った方がカスタマイズしやすいかな

;デバッグ
;[eval exp="sf.BIT_std = 1"]
;[eval exp="sf.GUE_std = 1"]

[if exp="sf.gameclear_RIG == 1"][eval exp="sf.RIG_std = 1"][endif]
[if exp="sf.gameclear_EST == 1"][eval exp="sf.EST_std = 1"][endif]



;[全消去]
[cgthum_int]
;m:メモリ位置要検証
; メモリ上の栞６に現在の状態を保存
[tempsave place=6]
[eval exp="tf.cg_mode = 1"]

;最初のゴチャゴチャした設定するのに必要なんだ
[call storage="&sf.addgameID + 'b_cgmode_init.ks'"]



[freeimage layer=base page=fore]
[freeimage layer=base page=back]

; サムネイルを表示する座標の配列
;２タイトル間で違うかもだからcondこれしちゃだめだ
[eval exp="tf.CGMODE_thum_x = [sf.cg_thum_x01, sf.cg_thum_x02, sf.cg_thum_x03, sf.cg_thum_x04, sf.cg_thum_x05]"]
[eval exp="tf.CGMODE_thum_y = [sf.cg_thum_y01, sf.cg_thum_y02, sf.cg_thum_y03, sf.cg_thum_y04, sf.cg_thum_y05]"]


; ページ用ボタンを表示する座標の配列 [0]は使用しない。ページ数と[n]が同じになるようにする
[eval exp="tf.b_cg_pageX = [sf.b_page00_x, sf.b_page01_x, sf.b_page02_x, sf.b_page03_x, sf.b_page04_x, sf.b_page05_x, sf.b_page06_x, sf.b_page07_x, sf.b_page08_x, sf.b_page09_x, sf.b_page10_x]"]
[eval exp="tf.b_cg_pageY = [sf.b_page00_y, sf.b_page01_y, sf.b_page02_y, sf.b_page03_y, sf.b_page04_y, sf.b_page05_y, sf.b_page06_y, sf.b_page07_y, sf.b_page08_y, sf.b_page09_y, sf.b_page10_y]"]


;;mm tfで計算で出すの危ういんだよな。設定済みフラグで一応避けないとイケナイか
;;-------------------------------------------------
;[if exp="tf.ボタン_CG設定済み != 1"]
;
;	;サムネイルの基本位置設定。タイトルごとに変更可。
;	[eval exp="sf.CGMODE_setX = 40"]
;	[eval exp="sf.CGMODE_defaddX = 250"]
;
;	;座標を配列で用意
;	[eval exp="tf.CGMODE_thum_x = []"]
;
;	;[0]に初期値入れる
;	[eval exp="tf.CGMODE_thum_x[0] = sf.CGMODE_setX"]
;
;	[eval exp="tf.CGMODE_loop = 0"]
;
;	*CGMODE_loop1
;	;ループカウント
;	[eval exp="tf.CGMODE_loop += 1"]
;	;加算用の数値にループカウントの回数をかける
;	[eval exp="tf.CGMODE_addX = sf.CGMODE_defaddX * tf.CGMODE_loop"]
;	;ループカウントの配列に初期値＋加算数を足して格納。
;	[eval exp="tf.CGMODE_thum_x[tf.CGMODE_loop] = sf.CGMODE_setX + tf.CGMODE_addX"]
;
;	[if exp="tf.CGMODE_loop == 5"]
;		[eval exp="tf.CGMODE_loop = 0"]
;		[jump target=*CGMODE_setY]
;	[endif]
;	[jump target=*CGMODE_loop1]
;
;
;	;-------------------------------------------------
;
;	*CGMODE_setY
;
;	;ボタンの基本位置設定。タイトルごとに変更可。
;	[eval exp="sf.CGMODE_addY = 100"]
;	[eval exp="sf.CGMODE_defaddY = 140"]
;
;	;座標を配列で用意
;	[eval exp="tf.CGMODE_thum_y = []"]
;
;	;[0]に初期値入れる
;	[eval exp="tf.CGMODE_thum_y[0] = sf.CGMODE_addY"]
;
;	[eval exp="tf.CGMODE_loop = 0"]
;
;	*CGMODE_loop2
;	;ループカウント
;	[eval exp="tf.CGMODE_loop += 1"]
;	;加算用の数値にループカウントの回数をかける
;	[eval exp="tf.CGMODE_addY = sf.CGMODE_defaddY * tf.CGMODE_loop"]
;	;ループカウントの配列に初期値＋加算数を足して格納。
;	[eval exp="tf.CGMODE_thum_y[tf.CGMODE_loop] = sf.CGMODE_addY + tf.CGMODE_addY"]
;
;	[if exp="tf.CGMODE_loop == 5"]
;		[eval exp="tf.CGMODE_loop = 0"]
;		[jump target=*CGMODE_menu]
;	[endif]
;	[jump target=*CGMODE_loop2]
;
;	[eval exp="tf.ボタン_CG設定済み = 1"]
;[endif]
;;-------------------------------------------------

*CGMODE_menu

; ページ用ボタンを表示する座標の配列
;[eval exp="tf.b_pageX = [1150, 1150, 1150, 1150, 1150]" cond="tf.b_pageX === void"]
;[eval exp="tf.b_pageY = [200, 240, 280, 320, 360]" cond="tf.b_pageY === void"]


; アルバム画面で使用するメッセージレイヤ
[eval exp="tf.CGMODE_message = 'message1'"]

; アルバム画面でマウス右クリックされたら、「戻る」と同じ動作をさせる
[rclick jump=true target="*CGMODE_return" storage="b_cgmode.ks" enabled=true]

; メッセージレイヤの属性を設定
[position layer="&tf.CGMODE_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[current layer="&tf.CGMODE_message"]


;初回に来た時用
[if exp="sf.CG_page == void"]
	[eval exp="sf.CG_page = 1"]
[endif]

;最大ページ数定義 これはfirst_xyで定義
;[eval exp="sf.CG_page_max = 4"]

;念のタメ ページ変数がページ数より多くなっちゃったら3にしておく
[if exp="sf.CG_page > sf.CG_page_max"]
	[eval exp="sf.CG_page = sf.CG_page_max"]
[endif]
; サムネイルベースを表示

;〆必ずここなら通るかな、シーン回想でオート状態でシーン終了後CG表示止めてる[p]タグがオートで送られるので解除
[cancelautomode]

;------------------------------------------------
*CGMODE再描画
[cm]
[cgthum_int]
; 背景画像を読み込み、表示
[image storage="&sf.addgameID + 'bg_CGMODE01'" layer=base page=fore]



;オマケモード間の移動ボタン呼び出し
[call storage="b_sub.ks"]

; 「戻る」ボタンを表示
[locate x="&tf.b_menuX[3]" y="&tf.b_menuY[3]"]
[button graphic="bnsjump_back" target=*CGMODE_return]

; ページボタン表示
[pagebt_CG]
;	[デバッグ用開放ボタン x=0 y=660]
;------------------------------------------------
; サムネイルベースを表示



; フラグ立ってるCGがあったらサムネを描画。ボタンにして押せるようにする。
;CG_slotが0かつサムネイルvoidでなければ（つまりサムネが設定されている）サムネイルのベースを表示。

;サムネが開いてもbaseの画像は表示したままにする。外側光彩ついてるから
[if exp="sf.CG_slot01 == 0 && sf.CG_thm01 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[0]"]
[elsif exp="sf.CG_slot01"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[0]"]
	[pimage storage="&sf.CG_thm01+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 1"]
[endif]

[if exp="sf.CG_slot02 == 0 && sf.CG_thm02 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[0]"]
[elsif exp="sf.CG_slot02"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[0]"]
	[pimage storage="&sf.CG_thm02+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 2"]
[endif]

[if exp="sf.CG_slot03 == 0 && sf.CG_thm03 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[0]"]
[elsif exp="sf.CG_slot03"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[0]"]
	[pimage storage="&sf.CG_thm03+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 3"]
[endif]

[if exp="sf.CG_slot04 == 0 && sf.CG_thm04 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[0]"]
[elsif exp="sf.CG_slot04"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[0]"]
	[pimage storage="&sf.CG_thm04+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 4"]
[endif]

[if exp="sf.CG_slot05 == 0 && sf.CG_thm05 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[0]"]
[elsif exp="sf.CG_slot05"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[0]"]
	[pimage storage="&sf.CG_thm05+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 5"]
[endif]






[if exp="sf.CG_slot06 == 0 && sf.CG_thm06 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[1]"]
[elsif exp="sf.CG_slot06"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[1]"]
	[pimage storage="&sf.CG_thm06+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 6"]
[endif]

[if exp="sf.CG_slot07 == 0 && sf.CG_thm07 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[1]"]
[elsif exp="sf.CG_slot07"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[1]"]
	[pimage storage="&sf.CG_thm07+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 7"]
[endif]

[if exp="sf.CG_slot08 == 0 && sf.CG_thm08 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[1]"]
[elsif exp="sf.CG_slot08"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[1]"]
	[pimage storage="&sf.CG_thm08+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 8"]
[endif]

[if exp="sf.CG_slot09 == 0 && sf.CG_thm09 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[1]"]
[elsif exp="sf.CG_slot09"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[1]"]
	[pimage storage="&sf.CG_thm09+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 9"]
[endif]

[if exp="sf.CG_slot10 == 0 && sf.CG_thm10 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[1]"]
[elsif exp="sf.CG_slot10"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[1]"]
	[pimage storage="&sf.CG_thm10+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 10"]
[endif]





[if exp="sf.CG_slot11 == 0 && sf.CG_thm11 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[2]"]
[elsif exp="sf.CG_slot11"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[2]"]
	[pimage storage="&sf.CG_thm11+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 11"]
[endif]

[if exp="sf.CG_slot12 == 0 && sf.CG_thm12 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[2]"]
[elsif exp="sf.CG_slot12"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[2]"]
	[pimage storage="&sf.CG_thm12+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 12"]
[endif]

[if exp="sf.CG_slot13 == 0 && sf.CG_thm13 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[2]"]
[elsif exp="sf.CG_slot13"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[2]"]
	[pimage storage="&sf.CG_thm13+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 13"]
[endif]

[if exp="sf.CG_slot14 == 0 && sf.CG_thm14 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[2]"]
[elsif exp="sf.CG_slot14"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[2]"]
	[pimage storage="&sf.CG_thm14+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 14"]
[endif]

[if exp="sf.CG_slot15 == 0 && sf.CG_thm15 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[2]"]
[elsif exp="sf.CG_slot15"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[2]"]
	[pimage storage="&sf.CG_thm15+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 15"]
[endif]




[if exp="sf.CG_slot16 == 0 && sf.CG_thm16 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[3]"]
[elsif exp="sf.CG_slot16"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[3]"]
	[pimage storage="&sf.CG_thm16+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 16"]
[endif]

[if exp="sf.CG_slot17 == 0 && sf.CG_thm17 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[3]"]
[elsif exp="sf.CG_slot17"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[3]"]
	[pimage storage="&sf.CG_thm17+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 17"]
[endif]

[if exp="sf.CG_slot18 == 0 && sf.CG_thm18 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[3]"]
[elsif exp="sf.CG_slot18"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[3]"]
	[pimage storage="&sf.CG_thm18+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 18"]
[endif]

[if exp="sf.CG_slot19 == 0 && sf.CG_thm19 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[3]"]
[elsif exp="sf.CG_slot19"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[3]"]
	[pimage storage="&sf.CG_thm19+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 19"]
[endif]

[if exp="sf.CG_slot20 == 0 && sf.CG_thm20 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[3]"]
[elsif exp="sf.CG_slot20"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[3]"]
	[pimage storage="&sf.CG_thm20+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 20"]
[endif]

[s]




;------------------------------------------------


	;
	; サムネイル画像が選択された
	;
	*album_select

	; リンクのロックを解除
	;[unlocklink]
	; ウェイト解除
	;[delay speed=user]

	; メモリ上の栞7に現在の状態を保存
	[tempsave place=10]

	;クリック待ちグリフをずらして見えなくする為にカレントのレイヤを２に。いらなかったかも
	;[position layer=message3 page=fore left=-50 top=-50 width=50 height=50 frame="" color=0x000000 opacity=255 marginl=0 margint=0 draggable=false visible=true]
	;[current layer=message3]


	[backlay layer=message0]
	[layopt layer=message0 page=back visible=false]
	[trans method="crossfade" time=0]
	[wt]

	;ブラックアウト
	[image storage="black" layer=10 page=fore visible=false]
	[image storage="black" layer=10 page=back visible=true]
	[trans time=150 method=crossfade]
	[wt]

	[call storage="&tf.album_storage[tf.album_select+20*sf.album_page]" target="&tf.album_target[tf.album_select+20*sf.album_page]"]

;------------------------------------------------

*back_from_cg
[eval exp="tf.cgmodestart = 0"]

; メモリ上の栞7を読み込み、状態復帰
;[tempload place=10]

;カレントのレイヤを元に戻す
;[current layer="&tf.album_message"]

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

; アルバム画面でマウス右クリックされたら、「戻る」と同じ動作をさせる
[rclick jump=true target="*CGMODE_return" storage="b_cgmode.ks" enabled=true]


; アルバム画面で使用するメッセージレイヤ
[eval exp="tf.CGMODE_message = 'message1'"]

; アルバム画面でマウス右クリックされたら、「戻る」と同じ動作をさせる
[rclick jump=true target="*CGMODE_return" storage="b_cgmode.ks" enabled=true]

; メッセージレイヤの属性を設定
[position layer="&tf.CGMODE_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[current layer="&tf.CGMODE_message"]


;m:回想から戻った時にBGMならないね。
;BGM再生
;[fadeinbgm storage="bgm01.ogg" loop=true time=100]

;邪淫用　メインタイトルと再生するの別だからgostartしたあとではなくここでやる
;BGM何も鳴ってなければ再生する
[if exp="kag.bgm.currentBuffer.status == 'stop' || kag.bgm.currentBuffer.status == 'unload'"]
	;BGM再生
	[bgmTitle]
[endif]

[jump target=*CGMODE再描画]

;------------------------------------------------




; クリックを待つ
;[waitclick]
; イベント絵の前景レイヤを非表示にする
;[layopt layer="&tf.album_layer" page=fore visible=false]
;[unlocklink]
;[s]


;
; 「戻る」が選択された
;
*CGMODE_return
;[全消去]
[cgthum_int]


[eval exp="tf.cg_mode = 0"]

; メモリ上の栞６を読み込み、状態復帰
;なぜかCGだけテンプロードしててBGM再生されなおされてた
;[tempload place=6]
; マウス右クリックされたときの動作を元に戻す
[rclick enabled=false]
;[call storage="append.ks" target=*append_menu]
;バツっと切れるから一応ちゃんと止めてみる
;[fadeoutbgm time=100][wf canskip=false][stopbgm]
;リターンだと面倒だから直にタイトルへ
;[jump storage="title.ks" target=*title_menu]
[gotostart]
;[return]

;------------------------------------------------
;------------------------------------------------
;デバッグ

*debug_on
[if    exp="sf.gameNo == 1"]
[elsif exp="sf.gameNo == 2"]
[elsif exp="sf.gameNo == 3"]

[elsif exp="sf.gameNo == 4"]
[endif]

[call storage="&sf.addgameID + 'b_cgmode_init.ks'"]
[jump target=*CGMODE再描画]

*debug_off
[if    exp="sf.gameNo == 1"]
[elsif exp="sf.gameNo == 2"]
[elsif exp="sf.gameNo == 3"]

[elsif exp="sf.gameNo == 4"]
[endif]

[call storage="&sf.addgameID + 'b_cgmode_init.ks'"]
[jump target=*CGMODE再描画]







