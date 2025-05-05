;title_nameedit
*TOP

;もしかしてシステムボタンから呼べるんじゃね？
[if    exp="tf.gameplay == 0"]
	;入力欄のメッセージレイヤ
	[eval exp="tf.message_edit = 'message0'"]
	[eval exp="f.layer_bg_nameedit  = 'base'"]
	[eval exp="f.layer_win_nameedit = 1"]

[elsif exp="tf.gameplay == 1"]
	;右クリックサブルーチン不可
	[rclick enabled=false]
	;セーブ不可
	; 栞にはさめなくする
	[disablestore store=false restore=false]
	; 履歴レイヤを抑止
	[history output=false enabled=false]
	; ノーウェイトに戻す
	[delay speed=nowait]

	;入力欄のメッセージレイヤ 3番今開いてるからこれにする
	[eval exp="tf.message_edit = 'message3'"]
	;レイヤ増やしたいけど、選択肢周りが怖いからなぁ
	[eval exp="f.layer_bg_nameedit  = &kag.numCharacterLayers - 3"]
	[eval exp="f.layer_win_nameedit = &kag.numCharacterLayers - 2"]

	;カラ入力対策に一旦別変数に保存
	[eval exp="sf.tmp_name2 = sf.name2"]
[endif]


;右クリックを無効にする
;[rclick enabled=false]

;必要な変数定義
[eval exp="tf.edit_text_size = 40"]
[eval exp="tf.edit_text_max = 5"]


;入力欄のメッセージレイヤの座標
;名字有り[eval exp="tf.edit_x = 400, tf.edit_y = 300"]
[eval exp="tf.edit_x = (kag.scWidth - (tf.edit_text_size * tf.edit_text_max + 10))/2 , tf.edit_y = 260"]

;OKボタン座標
;名字有り[eval exp="tf.edit_OK_x = 150, tf.edit_OK_y = 100"]
[eval exp="tf.edit_OK_x = 50, tf.edit_OK_y = 90"]

;これは一応first.ksでやったほうがいいね。デバッグ中だと即回想回すと名前出ない
;	;デフォルト名字
;	;[eval exp="sf.def_name1 = '国守'"]
;	;デフォルト名前
;	[eval exp="sf.def_name2 = '宗介'"]


[if    exp="tf.gameplay == 0"]
	[backlay_c]
	[image  storage="bg_nameedit" layer="&f.layer_bg_nameedit" page=back visible=true left=0 top=0]
	[trans_c cross time=1000]
[elsif exp="tf.gameplay == 1"]
	;システムボタン＆ウィンドウ消去
	[sysbt_meswin clear]
	[backlay_c]
	[image  storage="bg_nameedit" layer="&f.layer_bg_nameedit" page=back visible=true left=0 top=0 opacity=200]
	[image storage="win_nameedit" layer="&f.layer_win_nameedit" page=back visible=true left=385 top=180 opacity=255]

	;立ちキャラがいれば立ちキャラブラー　適宜追加
	[if    exp="tf.gameplay == 0"]
		[blur layer="&f.layer_ch01" page=back blur_x=5 blur_y=5]
	[endif]

	;背景ブラー
	[blur layer=0 page=back blur_x=5 blur_y=5]
	[trans_c b04 time=1000]
[endif]

;-----------------------------------------------------------
*edit
;名字
;[eval exp="f.name1 = sf.def_name1"]
;名前
[if exp="tf.gameplay == 0"]
	[eval exp="sf.name2 = sf.def_name2"]
[endif]

; 名前入力画面用メッセージレイヤの各種設定
;名前のエディット行の座標を優先してるのでOKボタンとバックボタンの座標は変なとこにあるので注意
[position layer="&tf.message_edit" page=fore left="&tf.edit_x" top="&tf.edit_y" width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[layopt   layer="&tf.message_edit" page=fore visible=true]
[current  layer="&tf.message_edit" page=fore]

;苗字は固定
;[edit color="0x0000FF" length=200 maxchars=4 name=f.name1][r]
;フォント変更
[font face="ＭＳ ゴシック" size=40]
;名前のみをf.name2で定義する。
;[edit bgcolor="0x000000" opacity=51 color="0x9df5ff" length="&tf.edit_text_size * tf.edit_text_max + 10" maxchars="&tf.edit_text_max" name=f.name1]　
[edit bgcolor="0x000000" opacity=51 color="0xffffff" length="&tf.edit_text_size * tf.edit_text_max + 10" maxchars="&tf.edit_text_max" name=sf.name2]
[if    exp="tf.gameplay == 0"]
	[image storage="win_nameedit" layer="&f.layer_win_nameedit" page=fore visible=true left=385 top=180 opacity=255]
[endif]


[locate x="&tf.edit_OK_x" y="&tf.edit_OK_y"][button graphic="dialog_bt_ok" recthit=false target=*ck_name clickse="se_click"]

;[locate x=445 y=300][button_ecse graphic="title_back" recthit=false storage="title.ks"]

;リンクフォーカス→苗字部分のエディット欄にフォーカスします
;links[0]ってなんだろ何個目かか
[eval exp="kag.fore.messages[&tf.message_edit.charAt(7)].links[0].object.focus()"]
[s]

;-----------------------------------------------------------
*ck_name

; 入力内容を確定します
[commit]
[nowait]

;名前欄が空白
[if exp="sf.name2 == ''"]
	[cm]

	;デフォルト名をいれてそのまま開始
	[eval exp="sf.name2 = sf.def_name2" cond="tf.gameplay == 0"]
	[eval exp="sf.name2 = sf.tmp_name2" cond="tf.gameplay == 1"]
	[font face="ＭＳ ゴシック" size=40]
	[edit bgcolor="0x000000" opacity=51 color="0xffffff" length="&tf.edit_text_size * tf.edit_text_max + 10" maxchars="&tf.edit_text_max" name=sf.name2]
	;「名前欄が空白です。名前を入力してね。」[p]
	;[jump target=*edit]
[endif]

;使って欲しくない名前を入力されたとき
[if exp="f.name2 == '茜' || f.name2 == '葵' || f.name2 == 'ミア' || f.name2 == '冥'"]
	[se_sys buf1 storage="se167"]
	[ptext layer="&f.layer_win_nameedit" visible=true page=fore x=50 y=55 size=20  color="0xff0000" text="&sf.name2 + 'は使えません。別の名前にして下さい。'"]

	[waitclick]

	[jump target=*edit]

[endif]

;文字数オーバー
;[if exp="f.name1.length > tf.edit_text_max  || f.name2.length > tf.edit_text_max "]
[if exp="sf.name2.length > tf.edit_text_max "]
	文字数オーバーです。[p]
	[jump target=*edit]
[endif]

[ jump target=*ck_name2]

;-----------------------------------------------------------
; デフォルト名に戻したいとき
;これどこからくるんだっけ
*defaultname
;[eval exp="f.name1 = sf.def_name1"]
[eval exp="sf.name2 = sf.def_name2"]
[jump target=*edit]


;-----------------------------------------------------------
; 名前の最終確認
*ck_name2

;最終確認いらないかな
;	[cm]
;フォントリセット
[resetfont]
;	;確定した主人公名を表示
;	[ptext face="ＭＳ ゴシック" layer=2 page=fore x=3 y=3 size=44 color=0x9df5ff shadow=false text="&f.name1"]　
;	[ptext face="ＭＳ ゴシック" layer=2 page=fore x=3 y=3 size=44 color=0x9df5ff shadow=false text="&f.name2"]
;
;	;メッセージウィンドウのみ表示
;
;	あなたのお名前は、[emb exp=f.name1]　[emb exp=f.name2]ね[ハート][r]
;	　この名前でよろしいですか？
;
;
;	[locate x="&tf.edit_OK_x - 100" y="&tf.edit_OK_y"][button_ecse graphic="dialog_bt_yes" recthit=false target=*ck_OK]
;	[locate x="&tf.edit_OK_x + 100" y="&tf.edit_OK_y"][button_ecse graphic="dialog_bt_no" recthit=false target=*edit]
;
;
;	[s]

;-----------------------------------------------------------
*ck_OK
;シナリオ中なら専用の画面抜け処理へ
[if exp="tf.gameplay == 1"]
	[jump target=*gameplay]
[endif]

;リンクロックしておかなくていいのかなぁ
[locklink]

;ボタン貼る前に黒をmessageレイヤより上に
[backlay_c]
[image storage="effect_black" layer="&sf.toplayer" page=back visible=true left=0 top=0 opacity=255 index=1002000]
[trans_c cross time=1000]

[cm]
[freeimage layer=1 page=fore]
;一番上に貼った黒を消し　背景貼り直し
[backlay_c]
[layopt layer="&sf.toplayer"  page=back visible=false]
[image storage="effect_black" layer=base page=back visible=true]
[trans_c cross time=0]

;一番上のレイヤのindexもとに戻す
[layopt layer="&sf.toplayer"  page=back  index="&sf.toplayer * 1000 +1000"]
[layopt layer="&sf.toplayer"  page=back  index="&sf.toplayer * 1000 +1000"]
[fadeoutbgm time=500][wb canskip=true]

[layopt layer=message"&tf.message_edit" page=fore visible=false]
[layopt layer=message"&tf.message_edit" page=back visible=false]

[unlocklink]

;-----------------------------------------------------------
[return]

;=================================================
;画面抜け処理　シナリオ中
;=================================================
;シナリオ中の変更機能は無し
;	*gameplay
;	;リンクロックしておかなくていいのかなぁ
;	[locklink]
;
;	[cm]
;
;	[backlay_c]
;	;背景ブラー解除
;	[blur_off]
;	;立ちキャラブラー解除　適宜追加　立ちキャラは貼り直さないと無理か なんかこれ先に無いとtransうまくしない
;	;立ちキャラがいれば立ちキャラブラー　適宜追加
;	[if    exp="tf.gameplay == 0"]
;		[blur_off_ch01]
;	[endif]
;	[freeimage layer="&f.layer_bg_nameedit"  page=back]
;	[freeimage layer="&f.layer_win_nameedit" page=back]
;	;↑だと消えないなぁ
;	;[chara_int layer="&f.layer_bg_nameedit" ]
;	;[chara_int layer="&f.layer_win_nameedit"]
;	[trans_c b04 time=1000]
;
;	;念の為foreも消し
;	[freeimage layer="&f.layer_bg_nameedit"  page=fore]
;	[freeimage layer="&f.layer_win_nameedit" page=fore]
;
;	[unlocklink]
;
;	; 栞にはさめるように
;	[disablestore store=true restore=true]
;	; 履歴レイヤ
;	[history output=true enabled=true]
;
;	;ここから下はsystembutton_sub.ksの流用
;
;	;拡大処理打ち分け なるべくテンプロード後すぐにやりたいからfcマクロじゃんくてここにおく。あんまりよくはない。
;	[if exp="f.zoomon == 1"]
;		[zoom_fore]
;	[endif]
;
;	;blur用画像再表示
;	[if    exp="f.bluron == 1"]
;		[blur_again]
;	[endif]
;
;	;〆シーン回想中に起動直後のみボタンが消えない現象があったため追加
;	;mm 通常プレイ時の選択肢がおかしくなるからcondつけておく
;	[cm cond="f.scene_modeV == 1"]
;	;mm 選択肢ベース消えちゃうから一旦f.selbaseをオフにして再度表示実行させる
;	[if exp="f.selnow == 1"]
;		[eval exp="f.selbase = 0"]
;	[endif]
;
;		;システム画面中でダイアログ押してるとcmしてる関係で、戻った時にベース消えちゃっててかっこ悪いのでpテキストしてるレイヤも一旦消しておく
;		[if exp="f.selbt == 1 || f.selnow == 1"]
;		;別にボタン消えて無いんだけど。むしろ戻る前にボタン消さないとfreimegeしてるレイヤを操作しようとしてエラーに
;		[cm]
;		[freeimage layer="&sf.layer_seltext+1" page=fore][freeimage layer="&sf.layer_seltext+1" page=back]
;		[freeimage layer="&sf.layer_seltext+2" page=fore][freeimage layer="&sf.layer_seltext+2" page=back]
;		[freeimage layer="&sf.layer_seltext+3" page=fore][freeimage layer="&sf.layer_seltext+3" page=back]
;		[freeimage layer="&sf.layer_seltext+4" page=fore][freeimage layer="&sf.layer_seltext+4" page=back]
;		[freeimage layer="&sf.layer_seltext+5" page=fore][freeimage layer="&sf.layer_seltext+5" page=back]
;		[freeimage layer="&sf.layer_seltext+6" page=fore][freeimage layer="&sf.layer_seltext+6" page=back]
;		[freeimage layer="&sf.layer_seltext+7" page=fore][freeimage layer="&sf.layer_seltext+7" page=back]
;		;選択肢マクロでこの形式で増やしてるから一旦戻さないとだめか
;		[eval exp="sf.maxlayers = kag.numCharacterLayers - 7"][laycount layers="&sf.maxlayers"]
;		[endif]
;
;	;ゲーム中解除
;	[eval exp="tf.gameplay = 0"]
;	;[eval exp="tf.conf = 0"]
;	;セリフ中演出を飛ばすかどうかの判定に使う。オフはシナリオ中で
;	[eval exp="tf.sys_return = 1"]
;
;	;; メモリ上の栞３に保存解除
;	[eval exp="tf.memori3 = 0"]
;	;スロットにデータをロード
;	;[load place=101]
;
;	;カレントレイヤを戻す
;	[current layer=message0]
;
;	;[sysbt_meswin2]
;
;
;	;マスク画像消去
;	;[freeimage layer="&sf.layer_quick" page=fore][freeimage layer="&sf.layer_quick" page=back]
;
;
;	; マウス右クリックされたときの動作を元に戻す（system_config.ks内でマウス右クリックの設定が変わっているため）
;	[rclick call=false jump=false]
;
;	;コンフィグからの戻り時だけチラつくなぁ。なんとかならんかなあ。
;	;//;選択肢表示中に来ていたらsel_sub.ksを呼び出して選択肢を再表示する。
;	;//[if exp="f.selnow"]
;	;//	[call storage="sel_sub.ks" target=*sel_sub]
;	;//[endif]
;
;	;//[eval exp="sf.sys_sub = 1"]
;
;	; 右クリック割り当てを設定する
;	[call storage="rclick_sub.ks"]
;
;	;ウィンドウ透過度スライダーを表示しなおす
;	;[setSliderPosition left="&sf.winsld_x" top="&sf.winsld_y"]
;
;	;〆シーンリプレイ中にセーブ・ロードの後、コンフィグを開いて閉じた時の表示バグ回避
;	;mm 通常プレイ時の選択肢がおかしくなるからcondつけておく
;	[cm cond="f.scene_modeV == 1"]
;	;mm 選択肢ベース消えちゃうから一旦f.selbaseをオフにして再度表示実行させる
;	[if exp="f.selnow == 1"]
;		[eval exp="f.selbase = 0"]
;	[endif]
;
;	;これはだめ
;	;[jump storage="&f.ksStorageSys" target="&f.ksLabelSys"]
;
;	;ウィンドウを0秒で再表示
;	;f.win_narration == 1はナレーション用の判定
;	[if exp="f.win_narration == 1"]
;		;[sysbt_meswin3]
;		[layopt layer=message0 visible=true page=back]
;		[layopt layer=message0 visible=true page=fore]
;	[else]
;		[s_m cond="f.graphic_bt_sel == 0"]
;	[endif]
;	;透過度を反映
;	[eval exp="kag.fore.messages[0].frameOpacity = sf.graphicframe_opacity"]
;	[eval exp="kag.back.messages[0].frameOpacity = sf.graphicframe_opacity"]
;	;テキスト再表示時にノータイムにするためのフラグオン
;	[eval exp="tf.sys_sub = 1" cond="f.graphic_bt_sel == 0"]
;
;	;systembutton.ksで記録してる現在のファイルとラベルにリターン！
;	[return storage="&f.ksStorageSys" target="&f.ksLabelSys"]

