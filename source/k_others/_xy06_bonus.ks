;===========================================================
;                       CG Gallery                          
;                       Scene Replay                        
;===========================================================


;最大ページ数定義
[eval exp="sf.CG_page_max = 3"]


[eval exp="sf.layer_b_page    = 1"]
[eval exp="sf.layer_b_sysjump = 2"]
[eval exp="sf.layer_b_chara   = 3"]
[eval exp="sf.layer_b_bgm     = 3"]

[eval exp="tf.x = 820"]
[eval exp="tf.xadd = 80"]
[eval exp="tf.y = 10"]


;ページ用ボタン
;1ページ目
[eval exp="sf.b_page01_x = tf.x"]
[eval exp="sf.b_page01_y = tf.y"]

;2ページ目
[eval exp="sf.b_page02_x = tf.x + tf.xadd"]
[eval exp="sf.b_page02_y = tf.y"]

; 3ページ目
[eval exp="sf.b_page03_x = tf.x + tf.xadd * 2"]
[eval exp="sf.b_page03_y = tf.y"]

;4ページ目
[eval exp="sf.b_page04_x = tf.x + tf.xadd * 3"]
[eval exp="sf.b_page04_y = tf.y"]

;5ページ目
[eval exp="sf.b_page05_x = tf.x + tf.xadd * 4"]
[eval exp="sf.b_page05_y = tf.y"]

;オン状態の時に矩形を取る時の画像切り出し座標　x座標　基本的に0になります。
[eval exp="sf.b_page_clipleft   = 0"]
;オン状態の時に矩形を取る時の画像切り出し座標　y座標　基本的にクリック部分かオンカーソル部分のどちらかの座標になります。
[eval exp="sf.b_page_cliptop    = 70"]
;オン状態の時に矩形を取る時の画像切り出し横幅
[eval exp="sf.b_page_clipwidth  = 70"]
;オン状態の時に矩形を取る時の画像切り出し上下幅　画像の全部のサイズではなく表示したい部分のサイズです。
[eval exp="sf.b_page_clipheight = 70"]

;オマケモード間移動用のボタン。CG・Scene・BGM画面で共通
;CG Gallery
[eval exp="sf.b_cg_x  = 720"]
[eval exp="sf.b_cg_y  = 660"]

;SceneReplay
[eval exp="sf.b_sr_x  = 850"]
[eval exp="sf.b_sr_y  = 660"]

;BGM MODE
[eval exp="sf.b_bgm_x = 980"]
[eval exp="sf.b_bgm_y = 660"]

;タイトルに戻るボタン
[eval exp="sf.b_back_x = 1110"]
[eval exp="sf.b_back_y = 660"]

;オン状態の時に矩形を取る時の画像切り出し座標　x座標　基本的に0になります。
[eval exp="sf.bnsjump_clipleft   = 0"]
;オン状態の時に矩形を取る時の画像切り出し座標　y座標　基本的にクリック部分かオンカーソル部分のどちらかの座標になります。
[eval exp="sf.bnsjump_cliptop    = 41"]
;オン状態の時に矩形を取る時の画像切り出し横幅
[eval exp="sf.bnsjump_clipwidth  = 122"]
;オン状態の時に矩形を取る時の画像切り出し上下幅　画像の全部のサイズではなく表示したい部分のサイズです。
[eval exp="sf.bnsjump_clipheight = 41"]



;※サムネイル セーブロードとは定義方法が若干違います。
;横5個、縦4個。並べる個数を変更するには別ファイルでの変更が必要になるので避けてください。

;サムネイルサイズ
[eval exp="sf.cg_thum_w = 205"]
[eval exp="sf.cg_thum_h = 115"]

;サムネイルベースに飾り枠有るとき用のマージン
[eval exp="sf.cg_thum_m_x = 5"]
[eval exp="sf.cg_thum_m_y = 5"]

;セーブデータサムネイル間
[eval exp="sf.cg_thum_offset_x = 30"]
[eval exp="sf.cg_thum_offset_y = 25"]

;ボーナスの使い回し
[eval exp="tf.解像度w = kag.scWidth"]
[eval exp="tf.サムネw = sf.cg_thum_w"]
[eval exp="tf.サムネ間w = sf.cg_thum_m_x + sf.cg_thum_offset_x"]
;左マージン自動計算機
[eval exp="tf.左マージン = (tf.解像度w - ((tf.サムネw*5) + (tf.サムネ間w*4))) / 2"]
;念のために整数化
[eval exp="tf.左マージン = int + tf.左マージン"]

[eval exp="tf.x    = tf.左マージン"]
[eval exp="tf.xadd = sf.cg_thum_w + sf.cg_thum_m_x +sf.cg_thum_offset_x"]
[eval exp="tf.y    = sf.thum_y"]
[eval exp="tf.yadd = sf.cg_thum_h + sf.cg_thum_m_y +sf.cg_thum_offset_y"]

;サムネイル横列のx座標
[eval exp="sf.cg_thum_x01  = tf.x"]
[eval exp="sf.cg_thum_x02  = tf.x + tf.xadd"]
[eval exp="sf.cg_thum_x03  = tf.x + tf.xadd * 2"]
[eval exp="sf.cg_thum_x04  = tf.x + tf.xadd * 3"]
[eval exp="sf.cg_thum_x05  = tf.x + tf.xadd * 4"]

;サムネイル縦列のy座標
[eval exp="sf.cg_thum_y01  = tf.y"]
[eval exp="sf.cg_thum_y02  = tf.y + tf.yadd"]
[eval exp="sf.cg_thum_y03  = tf.y + tf.yadd * 2"]
[eval exp="sf.cg_thum_y04  = tf.y + tf.yadd * 3"]

;===========================================================
;                       Scene Replay                        
;===========================================================

;最大ページ数定義
[eval exp="sf.SR_page_max = 2"]


;サムネイルサイズ
[eval exp="sf.sr_thum_w = 205"]
[eval exp="sf.sr_thum_h = 115"]

;サムネイルベースに飾り枠有るとき用のマージン
[eval exp="sf.sr_thum_m_x = 5"]
[eval exp="sf.sr_thum_m_y = 5"]

;セーブデータサムネイル間
[eval exp="sf.sr_thum_offset_x = 30"]
[eval exp="sf.sr_thum_offset_y = 25"]

;ボーナスの使い回し
[eval exp="tf.解像度w = kag.scWidth"]
[eval exp="tf.サムネw = sf.sr_thum_w"]
[eval exp="tf.サムネ間w = sf.sr_thum_m_x + sf.sr_thum_offset_x"]
;左マージン自動計算機
[eval exp="tf.左マージン = (tf.解像度w - ((tf.サムネw*5) + (tf.サムネ間w*4))) / 2"]
;念のために整数化
[eval exp="tf.左マージン = int + tf.左マージン"]

[eval exp="tf.x    = tf.左マージン"]
[eval exp="tf.xadd = sf.sr_thum_w + sf.sr_thum_m_x +sf.sr_thum_offset_x"]
[eval exp="tf.y    = sf.thum_y"]
[eval exp="tf.yadd = sf.sr_thum_h + sf.sr_thum_m_y +sf.sr_thum_offset_y"]


;サムネイル横列のx座標
[eval exp="sf.sr_thum_x01  = tf.x"]
[eval exp="sf.sr_thum_x02  = tf.x + tf.xadd"]
[eval exp="sf.sr_thum_x03  = tf.x + tf.xadd * 2"]
[eval exp="sf.sr_thum_x04  = tf.x + tf.xadd * 3"]
[eval exp="sf.sr_thum_x05  = tf.x + tf.xadd * 4"]

;サムネイル縦列のy座標
[eval exp="sf.sr_thum_y01  = tf.y"]
[eval exp="sf.sr_thum_y02  = tf.y + tf.yadd"]
[eval exp="sf.sr_thum_y03  = tf.y + tf.yadd * 2"]
[eval exp="sf.sr_thum_y04  = tf.y + tf.yadd * 3"]

;===========================================================
;                         BGM MODE                          
;===========================================================


[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][jump target=*gameNo01_bgm]
[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][jump target=*gameNo02_bgm]
[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][jump target=*gameNo03_bgm]
[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][jump target=*gameNo04_bgm]
[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][jump target=*gameNo05_bgm]
[endif]

;--------------------------------------
*gameNo01_bgm
*gameNo02_bgm
*gameNo03_bgm
*gameNo04_bgm
;どちらのタイトルでも兼用

;最大ページ数定義
[eval exp="sf.BGM_page_max = 1"]

;★新仕様用追加
;システム移動ボタンのうち、セーブ・ロード・コンフィグだけに使用
;オン状態の時に矩形を取る時の画像切り出し座標　x座標　基本的に0になります。
[eval exp="sf.bgm_clipleft   = 0"]
;オン状態の時に矩形を取る時の画像切り出し座標　y座標　基本的にクリック部分かオンカーソル部分のどちらかの座標になります。
[eval exp="sf.bgm_cliptop    = 40"]
;オン状態の時に矩形を取る時の画像切り出し横幅
[eval exp="sf.bgm_clipwidth  = 500"]
;オン状態の時に矩形を取る時の画像切り出し上下幅　画像の全部のサイズではなく表示したい部分のサイズです。
[eval exp="sf.bgm_clipheight = 40"]


[eval exp="sf.bgmw  = sf.bgm_clipwidth"]
;[eval exp="sf.bgmxadd  = 20"]

[eval exp="tf.解像度w = kag.scWidth"]
[eval exp="sf.bgm_x1 = (tf.解像度w - sf.bgmw) /2"]
;[eval exp="sf.bgm_x2 = sf.bgm_x1 + (sf.bgmw + sf.bgmxadd)"]

;複数個あると何個目だかわかりにくいから先に各変数定義しちゃう
[eval exp="sf.bgmh  = sf.bgm_clipheight"]
[eval exp="sf.bgmyadd  = 15"]

[eval exp="sf.bgm_y01 = 90"]
[eval exp="sf.bgm_y02 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 1"]
[eval exp="sf.bgm_y03 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 2"]
[eval exp="sf.bgm_y04 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 3"]
[eval exp="sf.bgm_y05 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 4"]
[eval exp="sf.bgm_y06 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 5"]
[eval exp="sf.bgm_y07 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 6"]
[eval exp="sf.bgm_y08 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 7"]
[eval exp="sf.bgm_y09 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 8"]
[eval exp="sf.bgm_y10 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 9"]

;===========================================================

[return]

