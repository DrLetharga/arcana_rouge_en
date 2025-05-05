;===========================================================
;                    クイックセーブ枠                       
;===========================================================
;//　スロット0 99 セーブロード
;//　スロット100 199 セーブロード
;//　スロット200 クイックセーブロード
;//　スロット201 クイックセーブロード
[eval exp="sf.QsaveNo = kag.numBookMarks-1"]
;[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"]
;[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"]
;[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"]
;[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"]
;[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"]
;[endif]

;===========================================================
;               セーブ・ロード画面                          
;===========================================================

;サムネイルのサイズ・サムネイル個数・newマーク等の座標はここでは設定不可。

;セーブデータサムネイルサイズ
[eval exp="sf.thum_w = 205"]
[eval exp="sf.thum_h = 115"]

;セーブデータサムネイルベースに飾り枠有るとき用のマージン
[eval exp="sf.thum_m_x = 4"]
[eval exp="sf.thum_m_y = 4"]

;セーブデータサムネイル間
[eval exp="sf.thum_offset_x = 30"]
[eval exp="sf.thum_offset_y = 25"]

;ボーナスの使い回し
[eval exp="tf.解像度w = kag.scWidth"]
[eval exp="tf.サムネw = sf.thum_w"]
[eval exp="tf.サムネ間w = sf.thum_m_x + sf.thum_offset_x"]
;左マージン自動計算機
[eval exp="tf.左マージン = (tf.解像度w - ((tf.サムネw*5) + (tf.サムネ間w*4))) / 2"]
;念のために整数化
[eval exp="tf.左マージン = int + tf.左マージン"]

;セーブデータサムネイル　横5個、縦4個。左上（1-1）のみ指定。
[eval exp="sf.thum_x = tf.左マージン"]
;[eval exp="sf.thum_y = 80"]
[eval exp="sf.thum_y = 85"]


[eval exp="sf.data_lock_erase_w = 60"]
[eval exp="sf.data_lock_erase_h = 12"]

;セーブデータ保護　左上（1-1）のみ指定。サムネイルと同じ間隔で配置される。
[eval exp="sf.data_lock_x = tf.左マージン + 30"]
[eval exp="sf.data_lock_y = sf.thum_y + sf.thum_h + sf.thum_m_y - sf.data_lock_erase_h"]

;セーブデータ削除　左上（1-1）のみ指定。サムネイルと同じ間隔で配置される。
[eval exp="sf.data_erase_x = sf.data_lock_x + 30 + sf.data_lock_erase_w"]
[eval exp="sf.data_erase_y = sf.thum_y + sf.thum_h + sf.thum_m_y - sf.data_lock_erase_h"]

;セーブデータ日付等
[eval exp="sf.data_num_x       = 50"]
[eval exp="sf.data_num_y       = 625"]
[eval exp="sf.data_size        = 20"]
[eval exp="sf.data_font        = 'ＭＳ ゴシック'"]
[eval exp="sf.data_color       = '0xFFFFFF'"]
[eval exp="sf.data_italic      = 'false'"]
;ルビの設定なんて変えることある？一応書いておくけど
[eval exp="sf.data_rubysize    = 10"]
[eval exp="sf.data_rubyoffset  = 0"]
[eval exp="sf.data_edge        = 'true'"]
[eval exp="sf.data_edgecolor   = '0xffc0c0'"]
[eval exp="sf.data_shadow      = 'false'"]
[eval exp="sf.data_shadowcolor = '0x000000'"]
[eval exp="sf.data_bold        = 'false'"]

[eval exp="tf.x = 820"]
[eval exp="tf.xadd = 80"]
[eval exp="tf.y = 10"]


;ページ用ボタン
;1ページ目
[eval exp="sf.saveload_page01_x = tf.x"]
[eval exp="sf.saveload_page01_y = tf.y"]

;2ページ目
[eval exp="sf.saveload_page02_x = tf.x + tf.xadd"]
[eval exp="sf.saveload_page02_y = tf.y"]

; 3ページ目
[eval exp="sf.saveload_page03_x = tf.x + tf.xadd * 2"]
[eval exp="sf.saveload_page03_y = tf.y"]

;4ページ目
[eval exp="sf.saveload_page04_x = tf.x + tf.xadd * 3"]
[eval exp="sf.saveload_page04_y = tf.y"]

;5ページ目
[eval exp="sf.saveload_page05_x = tf.x + tf.xadd * 4"]
[eval exp="sf.saveload_page05_y = tf.y"]



;	;6ページ目
;	[eval exp="sf.saveload_page06_x = 1180"]
;	[eval exp="sf.saveload_page06_y = 350"]
;
;	;7ページ目
;	[eval exp="sf.saveload_page07_x = 1180"]
;	[eval exp="sf.saveload_page07_y = 390"]


;オン状態の時に矩形を取る時の画像切り出し座標　x座標　基本的に0になります。
[eval exp="sf.page_clipleft   = 0"]
;オン状態の時に矩形を取る時の画像切り出し座標　y座標　基本的にクリック部分かオンカーソル部分のどちらかの座標になります。
[eval exp="sf.page_cliptop    = 70"]
;オン状態の時に矩形を取る時の画像切り出し横幅
[eval exp="sf.page_clipwidth  = 70"]
;オン状態の時に矩形を取る時の画像切り出し上下幅　画像の全部のサイズではなく表示したい部分のサイズです。
[eval exp="sf.page_clipheight = 70"]


;システム系画面移動用ボタン座標
;※コンフィグ画面とも座標は兼用です。

[eval exp="tf.x = 640"]
[eval exp="tf.addx = 122+5"]
[eval exp="tf.y = 670"]

;システム移動　タイトルへ
[eval exp="sf.sysjump_title_x = tf.x"]
[eval exp="sf.sysjump_title_y = tf.y"]

;システム移動　セーブへ
[eval exp="sf.sysjump_save_x = tf.x + tf.addx * 1"]
[eval exp="sf.sysjump_save_y = tf.y"]

;システム移動　ロードへ
[eval exp="sf.sysjump_load_x = tf.x + tf.addx * 2"]
[eval exp="sf.sysjump_load_y = tf.y"]

;システム移動　メニューへ（シーン回想中きた場合のみ）セーブと同位置にする。 右詰めだからロードの位置か
[eval exp="sf.sysjump_menu_x = tf.x + tf.addx * 2"]
[eval exp="sf.sysjump_menu_y = tf.y"]

;システム移動　コンフィグへ
[eval exp="sf.sysjump_conf_x = tf.x + tf.addx * 3"]
[eval exp="sf.sysjump_conf_y = tf.y"]

;システム移動　戻る
[eval exp="sf.sysjump_game_x = tf.x + tf.addx * 4"]
[eval exp="sf.sysjump_game_y =  tf.y"]

;システム移動ボタンのうち、セーブ・ロード・コンフィグだけに使用
;オン状態の時に矩形を取る時の画像切り出し座標　x座標　基本的に0になります。
[eval exp="sf.sysjump_clipleft   = 0"]
;オン状態の時に矩形を取る時の画像切り出し座標　y座標　基本的にクリック部分かオンカーソル部分のどちらかの座標になります。
[eval exp="sf.sysjump_cliptop    = 41"]
;オン状態の時に矩形を取る時の画像切り出し横幅
[eval exp="sf.sysjump_clipwidth  = 122"]
;オン状態の時に矩形を取る時の画像切り出し上下幅　画像の全部のサイズではなく表示したい部分のサイズです。
[eval exp="sf.sysjump_clipheight = 41"]

;===========================================================

[return]

