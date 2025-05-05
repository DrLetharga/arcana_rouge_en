;===========================================================
;                    タイトル画面                           
;===========================================================


;タイトルbgm
[eval exp="tf.bgmTitle = 'BGM01'"]
;bgmマクロ上書きされててmp.vじゃ通らないなぁ
[macro name="bgmTitle"][bgm storage="&tf.bgmTitle" vol=70][endmacro]

;タイトルbgm
;[eval exp="tf.bgmTitle2 = sf.addgameID + 'BGM01'"]
;sf.addgameIDはbgmマクロの中で付ける


;[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"]
	[eval exp="tf.T_bt_x = 1060"]
	[eval exp="tf.y = 60  + 25"]
	[eval exp="tf.addy = 50"]
;[endif]

;マクロ名の2は個別タイトルのどちらかを指してるのではなく、大元のタイトル画面から2個目のタイトル画面だから2なの。
;この規則ちゃんと決めておかないと共通マクロなのか、タイトル別の01、02を指してるのか混乱しそうだなぁ。
;[macro name="bgmTitle2"][bgm storage="&tf.bgmTitle2"][endmacro]

;ゲーム開始
[eval exp="sf.T_newgame_x = tf.T_bt_x"]
[eval exp="sf.T_newgame_y = tf.y + tf.addy * 1"]

;ロード
[eval exp="sf.T_load_x = tf.T_bt_x"]
[eval exp="sf.T_load_y = tf.y + tf.addy * 2"]

;クイックロード
[eval exp="sf.T_Qload_x = tf.T_bt_x"]
[eval exp="sf.T_Qload_y = tf.y + tf.addy * 3"]

;コンフィグ
[eval exp="sf.T_conf_x = tf.T_bt_x"]
[eval exp="sf.T_conf_y = tf.y + tf.addy * 4"]



;CG Gallery
[eval exp="sf.T_cg_x = tf.T_bt_x"]
[eval exp="sf.T_cg_y = tf.y + tf.addy * 5"]

;Scene Replay
[eval exp="sf.T_sr_x = tf.T_bt_x"]
[eval exp="sf.T_sr_y = tf.y + tf.addy * 6"]

;BGM MOde
[eval exp="sf.T_bgm_x = tf.T_bt_x"]
[eval exp="sf.T_bgm_y = tf.y + tf.addy * 7"]

;	;公式サイトへ
;	[eval exp="sf.T_ohp_x = tf.T_bt_x"]
;	[eval exp="sf.T_ohp_y =  sf.T_newgame_y + (50*7)"]

;	;ゲーム選択に戻る
;	[eval exp="sf.T_return_x = tf.T_bt_x"]
;	[eval exp="sf.T_return_y = tf.y + tf.addy * 7"]

;ゲーム終了
[eval exp="sf.T_quit_x = tf.T_bt_x"]
[eval exp="sf.T_quit_y = tf.y + tf.addy * 8"]

;===========================================================

[return]

