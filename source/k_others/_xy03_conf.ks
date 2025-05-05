;===========================================================
;                    名前定義                     
;===========================================================
;[eval exp="sf.window_y = 525 - 20"]
[eval exp="sf.window_y = 500"]

;_ボイスマクロ設定.txtをcallする
;[call storage="_01RIG_名前マクロ設定.ks"  cond="sf.gameNo == 1"]
;[call storage="_02EST_名前マクロ設定.ks"  cond="sf.gameNo == 2"]
;両タイトル統一
[call storage="_sys_名前マクロ設定.ks"]

;===========================================================
;                     コンフィグ画面                        
;===========================================================

;button_chgimageマクロで使うnumを変数で定義。
;主にキャラボイスの数によって、オンオフボタンのnum番号の調整や
;スライダーの設置数・消去数の調整をいちいちしなくよくするため。



[eval exp="sf.bt_num_skip        = 0"]
[eval exp="sf.bt_num_sel_skip    = 1"]
[eval exp="sf.bt_num_sel_auto    = 2"]
[eval exp="sf.bt_num_efect       = 3"]
[eval exp="sf.bt_num_dialog      = 4"]
[eval exp="sf.bt_num_win_small   = 5"]
[eval exp="sf.bt_num_win_def     = 6"]
[eval exp="sf.bt_num_win_full    = 7"]
[eval exp="sf.bt_num_rclick_hide = 8"]
[eval exp="sf.bt_num_rclick_save = 9"]
[eval exp="sf.bt_num_rclick_conf = 10"]
[eval exp="sf.bt_num_edge        = 11"]
[eval exp="sf.bt_num_bgm         = 12"]
[eval exp="sf.bt_num_se          = 13"]

;※コラボあるなら要調整 ※モブ不要なら要調整
;[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"]
	[eval exp="sf.bt_num_chara01L    = 14"]
	[eval exp="sf.bt_num_chara01     = 15"]
	[eval exp="sf.bt_num_chara02     = 16"]
;	[eval exp="sf.bt_num_chara02L    = 17"]
	[eval exp="sf.bt_num_chara03     = 17"]
;	[eval exp="sf.bt_num_chara03L    = 19"]
	[eval exp="sf.bt_num_chara04     = 18"]
;	[eval exp="sf.bt_num_chara04L    = 21"]
	[eval exp="sf.bt_num_chara05     = void"]

	[eval exp="sf.bt_num_v_stop      = 19"]
	[eval exp="sf.bt_num_v_autowait  = 20"]
;[endif]


;オフ状態ボタンの透過度。0～255で指定。透過させなくていいなら255で。
;この透過度が適用されるのは、OFFボタン（cnf_off.png）のみです。
[eval exp="sf.opa_offbt = 153"]


[eval exp="tf.step1 = 240"]
[eval exp="tf.addy = 56"]
;複数個あると何個目だかわかりにくいから先に各変数定義しちゃう
[eval exp="tf.step2 = tf.step1 + tf.addy "]
[eval exp="tf.step3 = tf.step1 + tf.addy * 2"]
[eval exp="tf.step4 = tf.step1 + tf.addy * 3"]
[eval exp="tf.step5 = tf.step1 + tf.addy * 4"]
[eval exp="tf.step6 = tf.step1 + tf.addy * 5"]
[eval exp="tf.step7 = tf.step1 + tf.addy * 6"]
[eval exp="tf.step8 = tf.step1 + tf.addy * 7"]
[eval exp="tf.step9 = tf.step1 + tf.addy * 8"]
;0 スキップ
;既読未読スキップ
[eval exp="sf.conf_kidokuskip_x = 260"]
[eval exp="sf.conf_kidokuskip_y = tf.step1"]


;システム移動ボタンのうち、セーブ・ロード・コンフィグだけに使用
;オン状態の時に矩形を取る時の画像切り出し座標　x座標　基本的に0になります。
[eval exp="sf.cnf_kidoku_midoku_skip_clipleft   = 0"]
;オン状態の時に矩形を取る時の画像切り出し座標　y座標　基本的にクリック部分かオンカーソル部分のどちらかの座標になります。
[eval exp="sf.cnf_kidoku_midoku_skip_cliptop    = 41"]
;オン状態の時に矩形を取る時の画像切り出し横幅
[eval exp="sf.cnf_kidoku_midoku_skip_clipwidth  = 122"]
;オン状態の時に矩形を取る時の画像切り出し上下幅　画像の全部のサイズではなく表示したい部分のサイズです。
[eval exp="sf.cnf_kidoku_midoku_skip_clipheight = 41"]

;1 選択肢後スキップ
;ON OFF
[eval exp="sf.conf_selskip_on_x  = 260"]
[eval exp="sf.conf_selskip_on_y  = tf.step2"]

;2 選択肢後オート
;ON OFF
[eval exp="sf.conf_selauto_on_x  = 260"]
[eval exp="sf.conf_selauto_on_y  = tf.step3"]


;3 エフェクトのスキップ
;ON OFF
[eval exp="sf.conf_effectskip_on_x  = 260"]
[eval exp="sf.conf_effectskip_on_y  = tf.step4"]

;4 確認ダイヤログオンオフ
;ON OFF
[eval exp="sf.conf_dialog_on_x  = 260"]
[eval exp="sf.conf_dialog_on_y  = tf.step5"]


;システム移動ボタンのうち、セーブ・ロード・コンフィグだけに使用
;オン状態の時に矩形を取る時の画像切り出し座標　x座標　基本的に0になります。
[eval exp="sf.cnf_onoff_clipleft   = 0"]
;オン状態の時に矩形を取る時の画像切り出し座標　y座標　基本的にクリック部分かオンカーソル部分のどちらかの座標になります。
[eval exp="sf.cnf_onoff_cliptop    = 41"]
;オン状態の時に矩形を取る時の画像切り出し横幅
[eval exp="sf.cnf_onoff_clipwidth  = 122"]
;オン状態の時に矩形を取る時の画像切り出し上下幅　画像の全部のサイズではなく表示したい部分のサイズです。
[eval exp="sf.cnf_onoff_clipheight = 41"]



;5 6 7 ウィンドウ／フルスクリーン選択用マーカーの座標を配列で用意
;960*540
[eval exp="sf.conf_win_small_x   = 50"]
[eval exp="sf.conf_win_small_y   = tf.step7 - 15"]
;1280*720
[eval exp="sf.conf_win_default_x = 161"]
[eval exp="sf.conf_win_default_y = tf.step7 - 15"]
;フルスクリーン
[eval exp="sf.conf_full_x        = 272"]
[eval exp="sf.conf_full_y        = tf.step7 - 15"]

;オン状態の時に矩形を取る時の画像切り出し座標　x座標　基本的に0になります。
[eval exp="sf.cnf_win_clipleft   = 0"]
;オン状態の時に矩形を取る時の画像切り出し座標　y座標　基本的にクリック部分かオンカーソル部分のどちらかの座標になります。
[eval exp="sf.cnf_win_cliptop    = 41"]
;オン状態の時に矩形を取る時の画像切り出し横幅
[eval exp="sf.cnf_win_clipwidth  = 102"]
;オン状態の時に矩形を取る時の画像切り出し上下幅　画像の全部のサイズではなく表示したい部分のサイズです。
[eval exp="sf.cnf_win_clipheight = 41"]


;8 9 10 右クリック割り当ての座標を配列で用意
;ウィンドウを隠す
[eval exp="sf.conf_rclick_winhide_x  = 50"]
[eval exp="sf.conf_rclick_winhide_y  = tf.step8 + 20"]
;セーブ画面呼び出し
[eval exp="sf.conf_rclick_callsave_x = 161"]
[eval exp="sf.conf_rclick_callsave_y = tf.step8 + 20"]
;コンフィグ
[eval exp="sf.conf_rclick_callconf_x = 272 "]
[eval exp="sf.conf_rclick_callconf_y = tf.step8 + 20"]

;オン状態の時に矩形を取る時の画像切り出し座標　x座標　基本的に0になります。
[eval exp="sf.cnf_rclick_clipleft   = 0"]
;オン状態の時に矩形を取る時の画像切り出し座標　y座標　基本的にクリック部分かオンカーソル部分のどちらかの座標になります。
[eval exp="sf.cnf_rclick_cliptop    = 41"]
;オン状態の時に矩形を取る時の画像切り出し横幅
[eval exp="sf.cnf_rclick_clipwidth  = 102"]
;オン状態の時に矩形を取る時の画像切り出し上下幅　画像の全部のサイズではなく表示したい部分のサイズです。
[eval exp="sf.cnf_rclick_clipheight = 41"]


;11 テキスト縁取りオンオフの座標を配列で用意
;ON
[eval exp="sf.conf_txtedge_on_x  = 640"]
[eval exp="sf.conf_txtedge_on_y  = tf.step4"]

;18 改ページ時ボイス停止の座標を配列で用意。
;ON OFF
[eval exp="sf.conf_vstop_on_x  = 1120"]
[eval exp="sf.conf_vstop_on_y  = tf.step6"]


;19 改ページ時ボイス再生終了待ちの座標を配列で用意。
;ON OFF
[eval exp="sf.conf_vautowait_on_x  = 1120"]
[eval exp="sf.conf_vautowait_on_y  = tf.step7"]


;設定の初期化
[eval exp="sf.conf_init_x = 950 + 50"]
[eval exp="sf.conf_init_y = tf.step8 - 10"]


;ボタン順優先して書いてるからまだtf.step再定義できないんだ。定義面倒だからボタン順は無視するか。

;サウンドオンオフボタン
[eval exp="tf.x = 1220"]
[eval exp="tf.step1 = 130"]
[eval exp="tf.addy = 50"]
;複数個あると何個目だかわかりにくいから先に各変数定義しちゃう
[eval exp="tf.step2 = tf.step1 + tf.addy "]
[eval exp="tf.step3 = tf.step1 + tf.addy * 2"]
[eval exp="tf.step4 = tf.step1 + tf.addy * 3"]
[eval exp="tf.step5 = tf.step1 + tf.addy * 4"]
[eval exp="tf.step6 = tf.step1 + tf.addy * 5"]
[eval exp="tf.step7 = tf.step1 + tf.addy * 6"]
[eval exp="tf.step8 = tf.step1 + tf.addy * 7"]
[eval exp="tf.step9 = tf.step1 + tf.addy * 8"]
[eval exp="tf.step10 = tf.step1 + tf.addy * 9"]
[eval exp="tf.step11 = tf.step1 + tf.addy * 10"]
[eval exp="tf.step12 = tf.step1 + tf.addy * 11"]

;12 BGMオンオフボタン
;ON OFF
[eval exp="sf.conf_bgm_onoff_x = tf.x"]
[eval exp="sf.conf_bgm_onoff_y = tf.step1"]

;14 SEオンオフボタン
;ON OFF
[eval exp="sf.conf_se_onoff_x = tf.x"]
[eval exp="sf.conf_se_onoff_y = tf.step2"]

;※コラボあるなら要調整 ※モブ不要なら要調整
;[if    exp="sf.gameNo == 1"]
;-----------------------------------------------------------
;名前画像定義
;-----------------------------------------------------------
	;名前画像用　順番注意
	[eval exp="sf.conf_chname01 = 'bg_conf_mes_t_bgv'"]
	[eval exp="sf.conf_chname02 = 'bg_conf_mes_t_ch01'"]
	[eval exp="sf.conf_chname03 = 'bg_conf_mes_t_ch02'"]
	[eval exp="sf.conf_chname04 = 'bg_conf_mes_t_ch03'"]
	[eval exp="sf.conf_chname05 = 'bg_conf_mes_t_ch04'"]
	[eval exp="sf.conf_chname06 = void"]
	[eval exp="sf.conf_chname07 = void"]
	[eval exp="sf.conf_chname08 = void"]
	[eval exp="sf.conf_chname09 = void"]
	[eval exp="sf.conf_chname10 = void"]

; キャラボイス1ループ
;ON OFF
[eval exp="sf.conf_vo01L_onoff_x = tf.x"]
[eval exp="sf.conf_vo01L_onoff_y = tf.step3"]

	;15 キャラボイス1
	;ON OFF
	[eval exp="sf.conf_vo1_onoff_x = tf.x"]
	[eval exp="sf.conf_vo1_onoff_y = tf.step4"]

	;16 キャラボイス2
	;ON OFF
	[eval exp="sf.conf_vo2_onoff_x = tf.x"]
	[eval exp="sf.conf_vo2_onoff_y = tf.step5"]

;; キャラボイス2ループ
;;ON OFF
;[eval exp="sf.conf_vo02L_onoff_x = tf.x"]
;[eval exp="sf.conf_vo02L_onoff_y = tf.step6"]
	;
	;17 キャラボイス3
	;ON OFF
	[eval exp="sf.conf_vo3_onoff_x = tf.x"]
	[eval exp="sf.conf_vo3_onoff_y = tf.step6"]

;; キャラボイス3ループ
;;ON OFF
;[eval exp="sf.conf_vo03L_onoff_x = tf.x"]
;[eval exp="sf.conf_vo03L_onoff_y = tf.step8"]

	; キャラボイス4
	;ON OFF
	[eval exp="sf.conf_vo4_onoff_x = tf.x"]
	[eval exp="sf.conf_vo4_onoff_y = tf.step7"]

;; キャラボイス3ループ
;;ON OFF
;[eval exp="sf.conf_vo04L_onoff_x = tf.x"]
;[eval exp="sf.conf_vo04L_onoff_y = tf.step10"]

;[endif]


[eval exp="tf.x = 850"]

;名前画像
[eval exp="sf.conf_chname01_x = tf.x , sf.conf_chname01_y = tf.step3 + 7"]
[eval exp="sf.conf_chname02_x = tf.x , sf.conf_chname02_y = tf.step4 + 7"]
[eval exp="sf.conf_chname03_x = tf.x , sf.conf_chname03_y = tf.step5 + 7"]
[eval exp="sf.conf_chname04_x = tf.x , sf.conf_chname04_y = tf.step6 + 7"]
[eval exp="sf.conf_chname05_x = tf.x , sf.conf_chname05_y = tf.step7 + 7"]
[eval exp="sf.conf_chname06_x = tf.x , sf.conf_chname06_y = tf.step8 + 7"]
[eval exp="sf.conf_chname07_x = tf.x , sf.conf_chname07_y = tf.step9 + 7"]
[eval exp="sf.conf_chname08_x = tf.x , sf.conf_chname08_y = tf.step10 + 7"]
[eval exp="sf.conf_chname09_x = tf.x , sf.conf_chname09_y = tf.step11 + 7"]
[eval exp="sf.conf_chname10_x = tf.x , sf.conf_chname10_y = tf.step12 + 7"]



;※フォルダにはピン画像2種類ありますが使用するのはconfig_slider_pin.pngです
;移動幅に関する詳細は、スライダーピンの移動幅.pngを見て下さい。
;スライダーピンの移動幅　メッセージ系
[eval exp="sf.srd_mes_tableftmax = 261"]
;スライダーピンの移動幅　サウンド系
[eval exp="sf.srd_snd_tableftmax = 261"]
;スライダーピンの移動幅　ウィンドウ系
[eval exp="sf.srd_win_tableftmax = 261"]

;基本的にはスライダー画像とピン画像の縦の長さは同じにし、下記の変数は0のままが望ましい。
;スライダーピンのY座標（スライダー画像との相対座標）メッセージ系
[eval exp="sf.srd_mes_tabOffsetY = 0"]
;スライダーピンのY座標（スライダー画像との相対座標）サウンド系
[eval exp="sf.srd_snd_tabOffsetY = 0"]

; メッセージ設定スライダー
; 既読未読兼用
[eval exp="sf.conf_srd_midoku_x = 59"]
[eval exp="sf.conf_srd_midoku_y = 108"]

;	;既読
;	[eval exp="sf.conf_srd_kidoku_x = 304"]
;	[eval exp="sf.conf_srd_kidoku_y = 130"]

;オートスライダー
[eval exp="sf.conf_srd_auto_x   = 59"]
[eval exp="sf.conf_srd_auto_y   = 187"]

[eval exp="tf.step1 = 108"]
[eval exp="tf.addy = 32"]
[eval exp="tf.step2 = tf.step1 + tf.addy "]
[eval exp="tf.step3 = tf.step1 + tf.addy * 2"]


;テキスト既読　RGBスライダー R
[eval exp="sf.conf_srd_mi_R_x   = 482"]
[eval exp="sf.conf_srd_mi_R_y   = tf.step1"]

;テキスト既読　RGBスライダー G
[eval exp="sf.conf_srd_mi_G_x   = 482"]
[eval exp="sf.conf_srd_mi_G_y   = tf.step2"]

;テキスト既読　RGBスライダー B
[eval exp="sf.conf_srd_mi_B_x   = 482"]
[eval exp="sf.conf_srd_mi_B_y   = tf.step3"]

[eval exp="tf.step1 = 287"]
[eval exp="tf.step2 = tf.step1 + 32 "]
[eval exp="tf.step3 = tf.step1 + 32 * 2"]

;テキスト未読　RGBスライダー R
[eval exp="sf.conf_srd_ki_R_x   = 482"]
[eval exp="sf.conf_srd_ki_R_y   = tf.step1"]

;テキスト未読　RGBスライダー G
[eval exp="sf.conf_srd_ki_G_x   = 482"]
[eval exp="sf.conf_srd_ki_G_y   = tf.step2"]

;テキスト未読　RGBスライダー B
[eval exp="sf.conf_srd_ki_B_x   = 482"]
[eval exp="sf.conf_srd_ki_B_y   = tf.step3"]

;メッセージ透過度スライダー
[eval exp="sf.conf_srd_opa_x   = 485"]
[eval exp="sf.conf_srd_opa_y   = 496"]

; サンプルウィンドウのベース画像の座標
[eval exp="sf.sys_samplewin_base_x = 475"]
[eval exp="sf.sys_samplewin_base_y = 535"]

; サンプルウィンドウの座標と大きさ
[eval exp="sf.sys_samplewin_x = 480"]
;[eval exp="sf.sys_samplewin_y = 500"]
[eval exp="sf.sys_samplewin_y = 540"]
;[eval exp="sf.sys_samplewin_w = 300"]
;画像ぴったりだと禁則分で折り返しちゃうことがあるのでちょっと広げる
[eval exp="sf.sys_samplewin_w = 350"]
[eval exp="sf.sys_samplewin_h = 80"]

; サンプルウィンドウ文字列
[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="sf.kidoku_sampletext = '       ' + sf.gameID_01"]
[endif]

;サンプルテキストの表示位置調整を下記の値をうまいこと合わせる。
;↑で直に空白差し込むのはやめたんだっけ？
;右マージンと下マージンは0で固定している。
[eval exp="sf.sampletext_size = 24"]
[eval exp="sf.sampletext_ml = 5"]
[eval exp="sf.sampletext_mt = 0"]



;サウンドスライダー
[eval exp="tf.x = 935"]
[eval exp="tf.step1 = 135"]
[eval exp="tf.addy = 50"]
;複数個あると何個目だかわかりにくいから先に各変数定義しちゃう
[eval exp="tf.step2 = tf.step1 + tf.addy"]
[eval exp="tf.step3 = tf.step1 + tf.addy * 2"]
[eval exp="tf.step4 = tf.step1 + tf.addy * 3"]
[eval exp="tf.step5 = tf.step1 + tf.addy * 4"]
[eval exp="tf.step6 = tf.step1 + tf.addy * 5"]
[eval exp="tf.step7 = tf.step1 + tf.addy * 6"]
[eval exp="tf.step8 = tf.step1 + tf.addy * 7"]
[eval exp="tf.step9 = tf.step1 + tf.addy * 8"]

; サウンドスライダーの座標を配列で用意
;BGM
[eval exp="sf.conf_srd_bgm_x = tf.x"]
[eval exp="sf.conf_srd_bgm_y = tf.step1"]

;SE
[eval exp="sf.conf_srd_se_x  = tf.x"]
[eval exp="sf.conf_srd_se_y  = tf.step2"]

;※コラボあるなら要調整 ※モブ不要なら要調整
;[if    exp="sf.gameNo == 1"]

;キャラボイス1
[eval exp="sf.conf_srd_vo01L_x = tf.x"]
[eval exp="sf.conf_srd_vo01L_y = tf.step3"]

	;キャラボイス1
	[eval exp="sf.conf_srd_vo1_x = tf.x"]
	[eval exp="sf.conf_srd_vo1_y = tf.step4"]

;;キャラボイス1
;[eval exp="sf.conf_srd_vo01L_x = tf.x"]
;[eval exp="sf.conf_srd_vo01L_y = tf.step4"]

	;キャラボイス2
	[eval exp="sf.conf_srd_vo2_x = tf.x"]
	[eval exp="sf.conf_srd_vo2_y = tf.step5"]

;;キャラボイス2
;[eval exp="sf.conf_srd_vo02L_x = tf.x"]
;[eval exp="sf.conf_srd_vo02L_y = tf.step6"]

	;キャラボイス3
	[eval exp="sf.conf_srd_vo3_x = tf.x"]
	[eval exp="sf.conf_srd_vo3_y = tf.step6"]

;;キャラボイス3
;[eval exp="sf.conf_srd_vo03L_x = tf.x"]
;[eval exp="sf.conf_srd_vo03L_y = tf.step8"]

	;キャラボイス4
	[eval exp="sf.conf_srd_vo4_x = tf.x"]
	[eval exp="sf.conf_srd_vo4_y = tf.step7"]

;;キャラボイス4
;[eval exp="sf.conf_srd_vo04L_x = tf.x"]
;[eval exp="sf.conf_srd_vo04L_y = tf.step10"]

;[endif]



;GameSystem Verベース
[eval exp="sf.conf_sysver_x = 1000"]
[eval exp="sf.conf_sysver_y = 13"]

;GameSystem Ver
;数値
[eval exp="sf.conf_sysver_num1_x = 1168"]
[eval exp="sf.conf_sysver_num_y = 14"]
;ドット 以下計算が面倒なのでsf.conf_sysver_num1_xをベースに加算している。
[eval exp="sf.conf_sysver_dot1_x = sf.conf_sysver_num1_x + 11"]
;数値
[eval exp="sf.conf_sysver_num2_x = sf.conf_sysver_num1_x + 20"]
;ドット
[eval exp="sf.conf_sysver_dot2_x = sf.conf_sysver_num1_x + 33"]
;数値
[eval exp="sf.conf_sysver_num3_x = sf.conf_sysver_num1_x + 42"]

;===========================================================

[return]

