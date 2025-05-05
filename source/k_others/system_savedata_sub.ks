;セーブデータのロック、アンロック、削除の動作のまとめ。

;-----------------------------------------------------------
*savedata_lock_button_chgimage
[unlocklink]
; セーブデータの保護フラグを変更。この記述はロックされてなければロックかな。
[eval exp="kag.setBookMarkProtectedState(tf.save_lock_num+sf.saveload_now_page*20, !kag.bookMarkProtectedStates[tf.save_lock_num+sf.saveload_now_page*20])"]

[if exp="kag.bookMarkProtectedStates[tf.save_lock_num+sf.saveload_now_page*20]"]
	;♂
	;tf.save_lock_numには実際の値が入ってるから見かけ上の値（ボタンの数）に変更する
	[eval exp="tf.save_lock_num += tf.sub"]
	;♂
	; 真ならチェックマーク付きのチェックボックスに置き換え 20はすでに生成されてるサムネの数。5はすでに生成されてるページボタンの数。
	[button_chgimage graphic="save_lock.png" num="&tf.save_lock_num+20+5"]
[else]
	;♂
	;tf.save_lock_numには実際の値が入ってるから見かけ上の値（ボタンの数）に変更する
	[eval exp="tf.save_lock_num += tf.sub"]
	;♂
	; 偽ならチェックマークなしのチェックボックスに置き換え
	[button_chgimage graphic="save_unlock.png" num="&tf.save_lock_num+20+5"]
[endif]
[return]

;-----------------------------------------------------------
*savedata_erase

[if exp="kag.bookMarkProtectedStates[tf.save_erase_num+sf.saveload_now_page*20]"]
	; 真なら
	[jump target=*保護されてます]
[else]
	; 偽なら
	[jump target=*削除します]
[endif]


*保護されてます
[eval exp="tf.dialog_savedata_lock = 1"]

;//[if exp="sf.dialog_on == 1"]

	;ダイアログ表示
	[jump storage="dialog.ks" target=*dialog_draw]

;//[else]
;//	[jump target=*セーブデータ削除しない]
;//[endif]


*削除します

;データが無い場合はリターンだよ
[if exp="kag.getBookMarkDate(tf.save_erase_num+sf.saveload_now_page*20) == void"]
	[return]
[endif]
[eval exp="tf.dialog_savedata_erase = 1"]

;ダイアログオフなら表示せずに*セーブデータ削除へ移行。
[if exp="sf.dialog_on == 1 && kag.getBookMarkDate(tf.save_erase_num+sf.saveload_now_page*20)"]

	;ダイアログ表示
	[jump storage="dialog.ks" target=*dialog_draw]

[endif]

*セーブデータ削除
;ダイアログオフ時にこれがオフられないままだからまずい？
[eval exp="tf.dialog_savedata_erase = 0"]

;Newマークが付いてるデータならレイヤも削除。
[if exp="(sf.new_saveclick + sf.new_savepage*20) == (tf.save_erase_num+sf.saveload_now_page*20)"]
	;Newマークのフラグをvoidにする。
	[eval exp="sf.new_saveclick = void"]
	[eval exp="sf.new_savepage = void"]
	[freeimage layer="&sf.toplayer" page=back][freeimage layer="&sf.toplayer" page=fore]
[endif]
;削除した場所が0なら専用のフラグをオフる。
[if exp="tf.save_erase_num == 0"]
	[eval exp="sf.save_slot0_on = 0"]
	;0番消してたら0番セーブもオフ
	[eval exp="sf.save_slot0 = 0"]
[endif]
[erasebookmark place="&tf.save_erase_num+sf.saveload_now_page*20"]
*セーブデータ削除しない
;ボタンとダイアログ画像クリア
[cm]
;選択肢マクロ新しいのだとここで選択肢ベース消えちゃう。ベースを作るとこの判定がf.selbase立ったままだから
;一旦f.selbaseをオフにしちゃうか　2048/06/06追加
[if exp="f.selnow == 1"]
	[eval exp="f.selbase = 0"]
[endif]
;CMすると戻った時に選択肢のベース消えちゃうんだわ。でもセーブするたびにボタン多重になってないか？
;fcマクロになにか仕込むしかないか。とりあえず多重はまずいからcmしとこ
[call storage="dialog.ks" target=*ダイアログ消去]

;カレントレイヤを戻す
[current layer="&tf.save_message0" page=fore]


;ショートカットで来た場合returnじゃだめなんだなぁ
;returnだとコールスタックが合わなくなるのでjumpで
[if    exp="tf.shortcut_use == 1 && tf.save"]
	[eval exp="tf.shortcut_use = 0"]
	[jump storage="system_save.ks" target=*ショートカット戻り]
[elsif exp="tf.shortcut_use == 1 && tf.load"]
	[eval exp="tf.shortcut_use = 0"]
	[jump storage="system_load.ks" target=*ショートカット戻り]
[endif]
[return]



;-----------------------------------------------------------
*上書きsave
[save place="&tf.save_click_num+sf.saveload_now_page*20"]

;	;★
;	;現在のファイル名を保存
;	[eval exp="sf.save_text_st[tf.save_click_num+sf.saveload_now_page*20] = f.ksStorageSys"]
;	;現在のラベル名を保存
;	[eval exp="sf.save_text_la[tf.save_click_num+sf.saveload_now_page*20] = f.ksLabelSys"]
;	;★

*上書きsaveしない

;新規に保存されてたと思われるラベルを一時的に保存
[eval exp="tf.new_PageName = kag.getBookMarkPageName(tf.save_click_num+sf.saveload_now_page*20)"]
;新規に保存されてたと思われる時刻を一時的に保存
[eval exp="tf.new_Date = kag.getBookMarkDate(tf.save_click_num+sf.saveload_now_page*20)"]

;一時的に保存されてるラベルと時刻が新規に保存したものと同じならNOを押したと見なして、Newマークの記録を一時的に保存したものに書き戻す。
[if exp="tf.PageName == tf.new_PageName && tf.Date == tf.new_Date"]
	;一時的に保存した記録を書き戻す
	[eval exp="sf.new_saveclick = tf.new_saveclick_temp"]
	;一時的に保存した記録を書き戻す
	[eval exp="sf.new_savepage = tf.new_savepage_temp"]
[else]
	;クリックした場所を記録
	[eval exp="sf.new_saveclick = tf.save_click_num"]
	;クリックしたページを記録
	[eval exp="sf.new_savepage = sf.saveload_now_page"]
	;クリックした場所が0なら専用のフラグを立てる。
	[if exp="sf.new_saveclick == 0"]
		[eval exp="sf.save_slot0_on = 1"]
		;★★★最後に0番スロットにセーブしたかどうかフラグがオフのままになってるので修正 2018/02/05
		;0番セーブオン
		[eval exp="sf.save_slot0 = 1"]
		;★★★修正ここまで
	[else]
		[eval exp="sf.save_slot0_on = 0"]
		;★★★最後に0番スロットにセーブしたかどうかフラグがオフのままになってるので修正 2018/02/05
		;0番セーブオフ
		[eval exp="sf.save_slot0 = 0"]
		;★★★修正ここまで
	[endif]
[endif]




[jump storage="system_save.ks" target=*ダイアログから戻り]

;-----------------------------------------------------------
*save
;クリックした場所が0番かつデータがvoidであれば
[if exp="tf.save_click_num == 0 && kag.getBookMarkDate(tf.save_click_num+sf.saveload_now_page*20) == void"]
	;0番セーブオン
	[eval exp="sf.save_slot0 = 1"]
[else]
	[eval exp="sf.save_slot0 = 0"]
[endif]
[save place="&tf.save_click_num+sf.saveload_now_page*20"]

*saveしない

;↓YESかNOが押された。

;クリックした場所を記録
[eval exp="sf.new_saveclick = tf.save_click_num"]
;クリックしたページを記録
[eval exp="sf.new_savepage = sf.saveload_now_page"]

;データがvoidならセーブはしてないので前の記録位置に戻す。
[if exp="kag.getBookMarkDate(tf.save_click_num+sf.saveload_now_page*20) == void"]
	;一時的に保存した記録を書き戻す
	[eval exp="sf.new_saveclick = tf.new_saveclick_temp"]
	;一時的に保存した記録を書き戻す
	[eval exp="sf.new_savepage = tf.new_savepage_temp"]
[endif]

;クリックした場所が0なら専用のフラグを立てる。
;Newのデータを消してる場合この時点でsf.new_saveclickがvoidなので0と判別付かずにオンになってしまってる。
;sf.save_slot0_onは0番にNewデータマークを貼るかどうかの判定フラグだからsf.save_slot0_newonとかが正しかったな
;0番をクリックかつ0番セーブオンなら
[if exp="sf.new_saveclick == 0 && sf.save_slot0 == 1"]
	;0番Newデータオン
	[eval exp="sf.save_slot0_on = 1"]
[else]
	[eval exp="sf.save_slot0_on = 0"]
[endif]


; 最新の状態になるようセーブ画面を再描画する
[jump storage="system_save.ks" target=*ダイアログから戻り02]

;-----------------------------------------------------------

