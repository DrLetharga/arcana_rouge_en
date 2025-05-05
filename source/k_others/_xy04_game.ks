;===========================================================
;                     ゲーム画面                            
;===========================================================


;システムボタン表示位置　全角40文字対応用
;[eval exp="sf.sysbt_x = 282"]
;[eval exp="sf.sysbt_x = 275"]
[eval exp="sf.sysbt_x = 1095"]
[eval exp="sf.sysbt_y = 570"]
[eval exp="sf.sysbt_offset = 5"]

;ウィンドウ表示位置 全角40文字対応用
;[eval exp="sf.window_x = 150"]
[eval exp="sf.window_x = 0"]
;★[eval exp="sf.window_y = 560"]
;★名前マクロ呼ぶ前に移動[eval exp="sf.window_y = 525"]

;ウィンドウサイズ
;[eval exp="sf.window_w = 1055"]
;[eval exp="sf.window_w = 1125"]
[eval exp="sf.window_w = 1280"]
[eval exp="sf.window_h = 200"]

;ウィンドウを隠すボタン表示位置。systembutton2.ksでも座標定義してるので修正の場合はそちらも。
;[eval exp="sf.winhide_x = 1145"]
;[eval exp="sf.winhide_y = 695"]

;テキスト表示位置 全角40文字対応用
;[eval exp="sf.text_x = 30"]
;[eval exp="sf.text_x = 225"]
;Config.tjsのmarginRChで3文字分とる
;28＊3（話者名行別　プラス禁則） 3行？
;ちょっと合わないから30引く
[eval exp="sf.text_x = 310"]
[eval exp="sf.text_y = 50 + 20"]
[eval exp="sf.text_r = 245"]


;デフォルトのフォント　Config.tjsで決めてるけど、選択肢の表示位置で使うかもしれないので同じものを定義
[eval exp="sf.userfont= 'ＭＳ Ｐゴシック'"]

;デフォルトのフォントサイズ
[deffont size=24]

;クリック待ちグリフ表示位置 Config.tjs glyphFixedTopも一応要変更
[eval exp="sf.glyph_x = 1040"]
;★[eval exp="sf.glyph_y = 90"]
[eval exp="sf.glyph_y = 165"]

;ウィンドウ透過度のデフォ system_config_mes.ksの初期化時の数値も合わせるために一旦デフォ用の変数で定義
[eval exp="sf.graphicframe_def_opacity = 178"]
[eval exp="sf.graphicframe_opacity = sf.graphicframe_def_opacity" cond="sf.graphicframe_opacity === void"]


;ネームチップ表示位置 全角40文字対応用
;[eval exp="sf.namechip_x = 220"]
;[eval exp="sf.namechip_x = 255"]
[eval exp="sf.namechip_x = 290"]
;★[eval exp="sf.namechip_y = 560"]
[eval exp="sf.namechip_y = 510"]

;ネームチップサイズ
[eval exp="sf.namechip_w = 255"]
[eval exp="sf.namechip_h = 50"]
;[eval exp="sf.namechip_size = 30"]
[eval exp="sf.namechip_size = 26"]

;ネームチップマージン。マクロで0にしてもなぜか15ほど下に表示されるのでここでマイナス設定する。
[eval exp="sf.namechip_ml = 15"]
[eval exp="sf.namechip_mt = 0"]

;===========================================================
;                     ゲーム画面 選択肢                     
;===========================================================

;選択肢の座標を配列で用意
[eval exp="sf.sel_bt_x = [250]"]
;[eval exp="sf.sel_bt_x = [140]"]
;座標とマクロ位置合わせにくいから[1]から使用する
[eval exp="sf.sel_bt_y = [0,150,200,250,300,350,400,450,500,550,600]"]
;選択肢のフォントサイズ定義
[eval exp="sf.selfont = 24"]
;選択肢のフォントサイズ定義
[eval exp="sf.seltext_size = 24"]
;文字列のマージントップ
[eval exp="sf.sel_text_mt = 8"]
;文字列の色
[eval exp="sf.sel_text_color = '0xffffff'"]
;文字列のボールドするかどうか
[eval exp="sf.sel_text_bold = 'true'"]
;[eval exp="sf.sel_text_bold = 'false'"]
[eval exp="sf.sel_text_shadow = 'false'"]
[eval exp="sf.sel_text_s_color = '0x696969'"]
[eval exp="sf.sel_text_edge = 'true'"]
[eval exp="sf.sel_text_e_color = '0x696969'"]

;選択肢のオフ時の濃さ
[eval exp="sf.seltextoff_opacity = 153"]

;選択肢テキストの表示位置。左詰めかセンタリングか。どちらか指定必須。right右詰めは無い。
;最大文字数はどちらの場合も現状29文字固定。
;フォントによって幅かわっちゃうから、MSPゴシック限定でしかセンタリングできないなら左詰め固定が無難な気がしてきた
;邪淫の選択肢テキスト短いからセンター復活
;[eval exp="sf.seltext_align = 'left'"]
[eval exp="sf.seltext_align = 'center'"]

;===========================================================

[return]

