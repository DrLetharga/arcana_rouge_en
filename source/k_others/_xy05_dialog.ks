;===========================================================
;                     ダイアログ                            
;===========================================================

;ダイアログ座標設定各種修正＆追加　2016/10/04
;タイトルに戻る・ゲーム終了等は吉里吉里の標準のダイアログシステムです。
;dialog_base.pngに余分な余白を入れると白い線が出ますので、四隅以外に余分な余白は取らないでください。
;吉里吉里の標準のダイアログは、『半透明は使えません』。画像に半透明を使用しても、表示される際は透過無しになります。
;吉里吉里の標準のダイアログの表示座標は、画面の中央付近（左右均等・Y座標は画像サイズにより変わる）に自動的に設定されます。

;追加　2016/10/04
;タイトルに戻る・ゲーム終了等　ダイアログボックスYESNO表示位置。
;こちらはdialog_base.pngとの相対座標です。
[eval exp="sf.dialog_def_YES_x = 120"]
[eval exp="sf.dialog_def_YES_y = 160"]
[eval exp="sf.dialog_def_NO_x = 270"]
[eval exp="sf.dialog_def_NO_y = 160"]


;自作と同じサイズ
;	[eval exp="tf.dialog_w = 367"]
;	[eval exp="tf.YESNO_w  = 122"]
;	[eval exp="tf.dialog_h = 173"]
;	[eval exp="tf.YESNO_h  = 41"]
;	[eval exp="sf.dialog_def_YES_x = int + ((tf.dialog_w - tf.YESNO_w*2)/3)"]
;	[eval exp="sf.dialog_def_YES_y = tf.dialog_h - tf.YESNO_h - 10"]
;	[eval exp="sf.dialog_def_NO_x =  sf.dialog_def_YES_x + tf.YESNO_w +sf.dialog_def_YES_x"]
;	[eval exp="sf.dialog_def_NO_y =  tf.dialog_h - tf.YESNO_h - 10"]


;★追加　2017/05/05
[eval exp="sf.dialog_def_dialogImage = sf.addgameID + 'dialog_base_quit'"]
;[eval exp="sf.dialog_def_dialogImage = 'dialog_base_quit'"]
	;自作と同じサイズ[eval exp="sf.dialog_def_dialogImage = 'dialog_base'"]
;メッセージのフォント高さ
[eval exp="sf.dialog_def_FontHeight = 30"]
	;自作と同じサイズ[eval exp="sf.dialog_def_FontHeight = 22"]
;メッセージのフォント
[eval exp="sf.dialog_def_FontFace = 'ＭＳ Ｐゴシック'"]
;メッセージを太字にする場合はtrue しない場合はfalse
[eval exp="sf.dialog_def_FontBold = 'true'"]
;メッセージの色（0xRRGGBB形式/色定数）
[eval exp="sf.dialog_def_FontColor = '0xffffff'"]
;影の不透明度（0:影なし） 0~255
[eval exp="sf.dialog_def_ShadowLevel = 204"]
;影の色（0xRRGGBB形式/色定数）
[eval exp="sf.dialog_def_ShadowColor = '0x000000'"]
;影の幅（0:シャープ～ぼける）
[eval exp="sf.dialog_def_ShadowWidth = 2"]
;影の位置のＸ座標（0:真下）
[eval exp="sf.dialog_def_ShadowOffsetX = 3"]
;同、Ｙ座標（0:真下）
[eval exp="sf.dialog_defShadowOffsetY = 3"]
;メッセージ描画領域の左上隅Ｘ座標（ピクセル）
[eval exp="sf.dialog_def_MessageLeft = 10"]
;同、Ｙ座標（ピクセル）
[eval exp="sf.dialog_def_MessageTop = 80"]
	;自作と同じサイズ[eval exp="sf.dialog_def_MessageTop = 60"]
;メッセージ描画領域の最大横幅（ピクセル）
;画像ぴったりじゃだめだな1文字分くらい小さくしないと
[eval exp="sf.dialog_def_MessageWidth = 500 - 10"]
	;自作と同じサイズ[eval exp="sf.dialog_def_MessageWidth = 367 - 5"]
;同、高さ（ピクセル）
[eval exp="sf.dialog_def_MessageHeight = 235"]
	;自作と同じサイズ[eval exp="sf.dialog_def_MessageHeight = 173"]
;タイトルバーキャプションのフォント高さ（ピクセル）
[eval exp="sf.dialog_def_CaptionFontHeight = 24"]
;同、Ｙ座標（ピクセル）
[eval exp="sf.dialog_def_CaptionTop = 25"]


;自作ダイアログボックス表示位置 全画面の画像でなければだいたいこの位置。全画面画像を使う場合は0　0
[eval exp="sf.dialog_dialogImage = sf.addgameID + 'dialog_base'"]
;[eval exp="sf.dialog_x = 472"]
;[eval exp="sf.dialog_y = 259"]
[eval exp="sf.dialog_x = 0"]
[eval exp="sf.dialog_y = 0"]
;自作ダイアログボックスYESNO表示位置  全画面の画像なのでこの数値
[eval exp="sf.dialog_YES_x = 509"]
[eval exp="sf.dialog_YES_y = 360 +20"]
[eval exp="sf.dialog_NO_x = 653"]
[eval exp="sf.dialog_NO_y = 360 +20"]

;自作ダイアログボックス　テキストサイズ
[eval exp="sf.dialog_text_size = 22"]

;自作ダイアログボックス　キャプション「確認」の文字の位置
[eval exp="sf.dialog_caption_x = 612"]
[eval exp="sf.dialog_caption_y = 271+20"]

;自作ダイアログボックス　テキスト位置　ダイアログだけの画像の場合は　x60 y50
[eval exp="sf.erase_dialog_text =   60+452 +20"]
[eval exp="sf.erase_dialog_text_y = 50+251 +20"]

;ダイアログテキスト設定 true false カラーコード0xRRGGBBで指定
;	システム管理者用メモ
;	エッジとボールドは両立しない
;	デフォのダイアログ エッジ指定不可
;	セーブデータの保護削除ダイアログsystem_savedata_sub.ks内でダイアログ表示。
;	デフォのダイアログのシャドウとptextのシャドウの濃さがなんか違うのでシャドウはオフにしておく。
;色
[eval exp="sf.dialog_text_color       = '0xffffff'"]
;;イタリック（斜体）
;[eval exp="sf.dialog_text_italic      = 'false'"]
;シャドウ
[eval exp="sf.dialog_text_shadow      = 'true'"]
;シャドウ色　↑をtrueにしないと反映されない
[eval exp="sf.dialog_text_shadowcolor = '0x000000'"]
;エッジ
[eval exp="sf.dialog_text_edge        = 'false'"]
;;エッジ色　↑をtrueにしないと反映されない
;[eval exp="sf.dialog_text_edgecolor   = '0x000000'"]
;ボールド（太字）
[eval exp="sf.dialog_text_bold        = 'true'"]

;===========================================================

[return]

