;名前マクロ

;起動時にfirst_sub_xy.ksからcallされる。

;==========================================================
;フェイルウィンドウが存在するキャラ

;デフォの名前の定義
;下記の''を適宜書き換えて下さい。不要分はコメントアウトして構いません。
;01～10はname_chara01～10に対応してます。
[eval  exp="sf.name_def_chara01 = '茜'"]
[eval  exp="sf.name_def_chara02 = '葵'"]
[eval  exp="sf.name_def_chara03 = 'ミア'"]
[eval  exp="sf.name_def_chara04 = '冥'"]
[eval  exp="sf.name_def_chara05 = sf.name2"]
[eval  exp="sf.name_def_chara06 = 'カクエン'"]
[eval  exp="sf.name_def_chara07 = 'ミズチ'"]
[eval  exp="sf.name_def_chara08 = 'ショウジョウ'"]
[eval  exp="sf.name_def_chara09 = '下級冥魔Ａ'"]
[eval  exp="sf.name_def_chara10 = '下級冥魔Ｂ'"]
[eval  exp="sf.name_def_chara11 = '藍'"]
;[eval  exp="sf.name_def_chara12 = ''"]
;[eval  exp="sf.name_def_chara13 = ''"]
;[eval  exp="sf.name_def_chara14 = ''"]
;[eval  exp="sf.name_def_chara15 = ''"]
;[eval  exp="sf.name_def_chara16 = ''"]
;[eval  exp="sf.name_def_chara17 = ''"]
;[eval  exp="sf.name_def_chara18 = ''"]
;[eval  exp="sf.name_def_chara19 = ''"]
;[eval  exp="sf.name_def_chara20 = ''"]

;座標
;表示位置もポーズごとにsfで定義。
;y座標がsf.window_y - 55って計算になってるのは、psdから座標取る時にメッセージウィンドウを基準に使ってるため。
;マクロ内でポーズ１～３の判定があるので、ポーズ３が無いキャラも念の為定義書いておく。

;※邪淫のキャラはポーズ変わってもY座標変わらないから立ちマクロ内でポーズ１に固定してるからポーズ１だけ定義する
;※あとあとのためにキャラの振り分けは、下記の順にしておく。
;※もし邪淫２でデネブやベガを使用しなくてもこのまま固定
;※ ch01 ;緋神　茜
;※ ch02 ;氷上　葵
;※ ch03 ;柏山　ミア
;※ ch04 ;四堂　冥
;※ ch05 
;※ ch06 カクエン
;※ ch07 ミズチ
;※ ch08 ショウジョウ
;※ ch09 下級冥魔Ａ（子鬼タイプ）
;※ ch10 下級冥魔Ｂ（触手タイプ
;※ ch11 藍

;※ ch01 ;緋神　茜
;冥のポーズ2の指が微妙に見切れて気持ち悪いのでヒロインは全部7ピクセル下げる
[eval exp="sf.face_win_char01_pose1_x = -80 + 4 , sf.face_win_char01_pose1_y = sf.window_y - 50 - 4"]
;[eval exp="sf.face_win_char01_pose2_x = -100 , sf.face_win_char01_pose2_y = sf.window_y"]
;[eval exp="sf.face_win_char01_pose3_x = -100 , sf.face_win_char01_pose3_y = sf.window_y"]

;※ ch02 ;氷上　葵
[eval exp="sf.face_win_char02_pose1_x = -180 + 15 , sf.face_win_char02_pose1_y = sf.window_y - 116 + 4"]
;[eval exp="sf.face_win_char02_pose2_x = -100 , sf.face_win_char02_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char02_pose3_x = -100 , sf.face_win_char02_pose3_y = sf.window_y + 1"]

;※ ch03 ;柏山　ミア
[eval exp="sf.face_win_char03_pose1_x = -290 + 16 , sf.face_win_char03_pose1_y = sf.window_y - 160 + 15"]
;[eval exp="sf.face_win_char03_pose2_x = -100 , sf.face_win_char03_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char03_pose3_x = -100 , sf.face_win_char03_pose3_y = sf.window_y + 1"]

;※ ch04 ;四堂　冥
[eval exp="sf.face_win_char04_pose1_x = -350 + 16 , sf.face_win_char04_pose1_y = sf.window_y - 130 - 5"]
;[eval exp="sf.face_win_char04_pose2_x = -100 , sf.face_win_char04_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char04_pose3_x = -100 , sf.face_win_char04_pose3_y = sf.window_y + 1"]

;※ ch05 主人公
[eval exp="sf.face_win_char05_pose1_x = -60 , sf.face_win_char05_pose1_y = sf.window_y - 20"]
;[eval exp="sf.face_win_char05_pose2_x = -100 , sf.face_win_char05_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char05_pose3_x = -100 , sf.face_win_char05_pose3_y = sf.window_y + 1"]

;※ ch06 カクエン
[eval exp="sf.face_win_char06_pose1_x = -390 + 20 , sf.face_win_char06_pose1_y = sf.window_y - 190 + 12"]
;[eval exp="sf.face_win_char06_pose2_x = -100 , sf.face_win_char06_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char06_pose3_x = -100 , sf.face_win_char06_pose3_y = sf.window_y + 1"]

;※ ch07 ミズチ
[eval exp="sf.face_win_char07_pose1_x = -300 + 16 , sf.face_win_char07_pose1_y = sf.window_y - 120 + 3"]
;[eval exp="sf.face_win_char07_pose2_x = -100 , sf.face_win_char07_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char07_pose3_x = -100 , sf.face_win_char07_pose3_y = sf.window_y + 1"]

;※ ch08 ショウジョウ
[eval exp="sf.face_win_char08_pose1_x = -220 + 14 , sf.face_win_char08_pose1_y = sf.window_y - 60 + 10"]
;[eval exp="sf.face_win_char08_pose2_x = -100 , sf.face_win_char08_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char08_pose3_x = -100 , sf.face_win_char08_pose3_y = sf.window_y + 1"]

;※ ch09 雑魚A
[eval exp="sf.face_win_char09_pose1_x = -350 - 2 , sf.face_win_char09_pose1_y = sf.window_y - 250 + 10"]
;[eval exp="sf.face_win_char09_pose2_x = -100 , sf.face_win_char09_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char09_pose3_x = -100 , sf.face_win_char09_pose3_y = sf.window_y + 1"]

;※ ch10 雑魚B
[eval exp="sf.face_win_char10_pose1_x = -350 - 1 , sf.face_win_char10_pose1_y = sf.window_y - 250 - 16"]
;[eval exp="sf.face_win_char10_pose2_x = -100 , sf.face_win_char10_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char10_pose3_x = -100 , sf.face_win_char10_pose3_y = sf.window_y + 1"]

;※ ch11 藍
[eval exp="sf.face_win_char11_pose1_x = sf.face_win_char04_pose1_x - 2 , sf.face_win_char11_pose1_y = sf.face_win_char04_pose1_y + 5"]
;[eval exp="sf.face_win_char11_pose2_x = -100 , sf.face_win_char11_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char11_pose3_x = -100 , sf.face_win_char11_pose3_y = sf.window_y + 1"]

;[eval exp="sf.face_win_char12_pose1_x = -100 , sf.face_win_char12_pose1_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char12_pose2_x = -100 , sf.face_win_char12_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char12_pose3_x = -100 , sf.face_win_char12_pose3_y = sf.window_y + 1"]

;[eval exp="sf.face_win_char13_pose1_x = -100 , sf.face_win_char13_pose1_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char13_pose2_x = -100 , sf.face_win_char13_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char13_pose3_x = -100 , sf.face_win_char13_pose3_y = sf.window_y + 1"]

;[eval exp="sf.face_win_char14_pose1_x = -100 , sf.face_win_char14_pose1_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char14_pose2_x = -100 , sf.face_win_char14_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char14_pose3_x = -100 , sf.face_win_char14_pose3_y = sf.window_y + 1"]

;[eval exp="sf.face_win_char15_pose1_x = -100 , sf.face_win_char15_pose1_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char15_pose2_x = -100 , sf.face_win_char15_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char15_pose3_x = -100 , sf.face_win_char15_pose3_y = sf.window_y + 1"]

;[eval exp="sf.face_win_char16_pose1_x = -100 , sf.face_win_char16_pose1_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char16_pose2_x = -100 , sf.face_win_char16_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char16_pose3_x = -100 , sf.face_win_char16_pose3_y = sf.window_y + 1"]

;[eval exp="sf.face_win_char17_pose1_x = -100 , sf.face_win_char17_pose1_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char17_pose2_x = -100 , sf.face_win_char17_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char17_pose3_x = -100 , sf.face_win_char17_pose3_y = sf.window_y + 1"]

;[eval exp="sf.face_win_char18_pose1_x = -100 , sf.face_win_char18_pose1_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char18_pose2_x = -100 , sf.face_win_char18_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char18_pose3_x = -100 , sf.face_win_char18_pose3_y = sf.window_y + 1"]

;[eval exp="sf.face_win_char19_pose1_x = -100 , sf.face_win_char19_pose1_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char19_pose2_x = -100 , sf.face_win_char19_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char19_pose3_x = -100 , sf.face_win_char19_pose3_y = sf.window_y + 1"]

;[eval exp="sf.face_win_char20_pose1_x = -100 , sf.face_win_char20_pose1_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char20_pose2_x = -100 , sf.face_win_char20_pose2_y = sf.window_y + 1"]
;[eval exp="sf.face_win_char20_pose3_x = -100 , sf.face_win_char20_pose3_y = sf.window_y + 1"]

;[name_chara01 *]は macro03_name.ks に記載してる

[macro name="【茜】"][name_chara01 *][endmacro]
[macro name="【葵】"][name_chara02 *][endmacro]
[macro name="【ミア】"][name_chara03 *][endmacro]
[macro name="【冥】"][name_chara04 *][endmacro]

[macro name="【主人公】"]
;	;？？？とか別名にする時のために打ち分け。
;	;別名が設定されてない状態でｒ書かれたらvoidに戻す
;	[eval exp="f.name_chara05 = mp.name"  cond="mp.name != void"]
;	[eval exp="f.name_chara05 = void"     cond="f.name_chara05 != void && (mp.r || mp.reset || mp.ｒ || mp.リセット)"]
;
;	[if    exp="f.name_chara05 != void"]
;		[ns][emb exp="f.name_chara05"][nse]
;	;[elsif exp="f.name_chara05 == void"]
;	;事故防止に条件無しのほうが良いか？
;	[else]
;	;	
;		[ns][emb exp="sf.name_def_chara05"][nse]
;		[ns][主人公name2][nse]
;	[endif]
;↑の処理が必要だったけど今からマクロ変えるの怖いから該当箇所だけ直に書き換えるか
	[ns][主人公name2][nse]
[endmacro]





;立ち＆フェイス有り用 いらないか？
[macro name="【主人公_立ち＆フェイス有り用】"][name_chara05 *][endmacro]

[macro name="【カクエン】"][name_chara06 *][endmacro]
[macro name="【ミズチ】"][name_chara07 *][endmacro]
[macro name="【ショウジョウ】"][name_chara08 *][endmacro]
[macro name="【下級Ａ】"][name_chara09 *][endmacro]
[macro name="【下級Ｂ】"][name_chara10 *][endmacro]
[macro name="【藍】"][name_chara11 *][endmacro]
;[macro name="【】"][name_chara12 *][endmacro]
;[macro name="【】"][name_chara13 *][endmacro]
;[macro name="【】"][name_chara14 *][endmacro]
;[macro name="【】"][name_chara15 *][endmacro]
;[macro name="【】"][name_chara16 *][endmacro]
;[macro name="【】"][name_chara17 *][endmacro]

;[macro name="【】"][name_chara18 *][endmacro]
;[macro name="【】"][name_chara19 *][endmacro]
;[macro name="【】"][name_chara20 *][endmacro]

;==========================================================
;フェイルウィンドウが存在しないキャラ。モブ用

;従来の[ns]話者名[nse]を使用しますので下記の
;"【】"
;話者名
;を適宜、書き換え、追加して下さい。
;マクロ化せずに、シナリオ中に[ns]話者名[nse]で記述しても構いません。
[macro name="【】"][ns]話者名[nse][endmacro]

;==========================================================

;;下記は書き換えない。消さない。
;[eval  exp="sf.name_def_chara01 = sf.キャラ11のデフォルト名"]
;[eval  exp="sf.name_def_chara02 = sf.キャラ12のデフォルト名"]
;[eval  exp="sf.name_def_chara03 = sf.キャラ13のデフォルト名"]
;[eval  exp="sf.name_def_chara04 = sf.キャラ14のデフォルト名"]
;[eval  exp="sf.name_def_chara05 = sf.キャラ15のデフォルト名"]

[return]


