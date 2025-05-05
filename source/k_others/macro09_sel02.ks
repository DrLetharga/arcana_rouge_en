

;選択肢、スクリプト上の記述を簡略化
;スクリプトに記述する際は下記
;※ラベルとラベル名必須
;※ラベル直下にfcマクロ必須
;※最後の選択肢にend必須
;※targetのみ記述可
;※選択肢設置可能数 7
;※選択肢文字列 29文字　（selectimage.pngの横幅800/ＭＳ Ｐゴシック/フォントサイズsf.seltext_size 24/での換算）

;選択肢内容によってラベル名を書き換える必要があるので
;if文などを用いて条件により選択肢を増やしたりするのは不可。その場合はラベルから2パターンを記述。
;
;*SEL01|……立候補します／絶対に立候補しません！
;[fc]
;[sel02 text='……立候補します'       storage="FS_B01.ks" target=*B01_TOP]
;[sel04 text='絶対に立候補しません！' storage="FS_C01.ks" target=*C01_TOP end]
;


;選択肢用のhisoutマクロつくる。名前のマクロmacro_name.ksとは別。
[macro name=sel_hisout]
	[eval exp="kag.historyLayer.store('選択肢『')" cond="kag.historyWriteEnabled"]
;	[eval exp="kag.historyLayer.store('選択肢')" cond="kag.historyWriteEnabled"]
	[eval exp="kag.historyLayer.store(mp.txt)"     cond="kag.historyWriteEnabled"]
	[eval exp="kag.historyLayer.store('』')"       cond="kag.historyWriteEnabled"]
[endmacro]

;選択肢　選択後のhisoutマクロつくる
[macro name=selrun_hisout]
	;くどいか[eval exp="kag.historyLayer.store('選択肢『')" cond="kag.historyWriteEnabled"]
	[eval exp="kag.historyLayer.store('『')" cond="kag.historyWriteEnabled"]
	[eval exp="kag.historyLayer.store(f.seltext)"  cond="kag.historyWriteEnabled"]
	[eval exp="kag.historyLayer.store('』を選択')" cond="kag.historyWriteEnabled"]
;	[eval exp="kag.historyLayer.store('を選択')" cond="kag.historyWriteEnabled"]
	[hr]
	[hr]
[endmacro]

;選択肢用のhisoutマクロつくる。名前のマクロmacro_name.ksとは別。
[macro name=zap_hisout]
	;[eval exp="kag.historyLayer.store('ザッピング選択肢　')" cond="kag.historyWriteEnabled"]
	[eval exp="kag.historyLayer.store(mp.txt)" cond="kag.historyWriteEnabled"]
[endmacro]


;～～～よくわからなくなってきたのでマクロじゃなくて直書きにする～～～
;	[macro name=履歴出力復帰]
;		;f.sys_subは無条件でオフに
;		[eval exp="tf.sys_sub = 0,f.sys_sub2 = 0"]
;		;[eval exp="tf.sys_sub = 0"]
;		;無条件で履歴に文字を出力
;		[history output = true]
;		;これもか
;		[eval exp="tf.QuickLoad = 0"]
;	[endmacro]
;
;
;	;選択肢表示マクロ
;	[macro name=selbase]
;
;		;選択肢に入ったら一旦スキップとオート止めないといけないのでは？ fcはまだ踏んでないからf.now_skipautoの中身は直前の状態のまま。
;		[cancelskip]
;		[cancelautomode]
;
;		;セーブ時に見出しを使うためにtrueに変更
;		[eval exp="f.noStoreCurrentMessage = true"]
;
;		;表示フラグオンいるんだっけ？
;		[eval exp="f.selnow = 1"]
;		;なんかフラグ名のせいで判定きかないっぽいから変える
;		[eval exp="f.選択肢表示中だよ = 1"]
;
;		; 右クリック割り当てを一時的に変更する
;		[call storage="rclick_sub.ks"]
;
;		;レイヤ数変更
;		[laycount layers="&kag.numCharacterLayers + 7"]
;
;		;選択肢ボタンベースを表示するためのメッセージレイヤを用意
;		[position layer="&sf.message_selbase" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
;		[layopt layer="&sf.message_selbase" page=fore visible=true]
;		[current layer="&sf.message_selbase" page=fore]
;
;		;[eval exp="sf.layer_seltext = 19"]
;
;		;選択肢のテキスト色（通常時）を指定
;		;[eval exp="tf.seltextcolor = '0xffffff'"]
;
;		;[image storage="chara_int" layer="&sf.layer_seltext" page=fore visible=true left=0 top=0 index=1006000]
;
;	[endmacro]
;～～～～～～～～～～～～


;バックログ関係とベース表示マクロ。個別の選択肢マクロ内でこのマクロを実行する
[macro name=selbase_and_log]
		;eval付けてなかったのって単にあとでevalで変数グレップできないから使わないようにしてたんだっけ？
		;このままだと表示しただけでオンか。個別の選択肢ボタンでexpはつかっちゃってるし
		;[eval *]

		;選択肢のベースがまだ作られてないなら実行
		[if exp="f.selbase == 0"]
			;マクロにfc入れちゃうとロード時にフラグ戻せなくなるからだめか
	;		[fc]
			[pcms_sel]
		[endif]

		;バックログの表示
		[if exp="tf.sys_sub == 0 || tf.選択肢ログ表示してね == 1"]
			;選択肢内容をバックログに表記。改行コード必須。
			[sel_hisout txt="&mp.text"][hr]
		[endif]

		;mp.endが書かれてたら選択肢が最後である変数をオンに。if文でもいいけどcondにしとくか。
		;一回クリアしておかないとシステム画面行って戻る時に立ちっぱか
		[eval exp="f.selset_end = 0"]
		[eval exp="f.selset_end = 1" cond="mp.end"]

		;選択肢が最後ならバックログの改行＋履歴復帰
		[if exp="f.selset_end == 1"]
			[hr]
			;[履歴出力復帰]
			;～～～よくわからなくなってきたのでマクロじゃなくて直書きにする～～～
			;f.sys_subは無条件でオフに
			[eval exp="tf.sys_sub = 0,f.sys_sub2 = 0"]
			;[eval exp="tf.sys_sub = 0"]
			;無条件で履歴に文字を出力
			[history output = true]
			;これもか
			[eval exp="tf.QuickLoad = 0"]
			;～～～～～～
		[endif]

		;選択肢のベースがまだ作られてないなら実行
		[if exp="f.selbase == 0"]
			;選択肢ベース
			;[selbase]
			;～～～よくわからなくなってきたのでマクロじゃなくて直書きにする～～～
			;選択肢に入ったら一旦スキップとオート止めないといけないのでは？ fcはまだ踏んでないからf.now_skipautoの中身は直前の状態のまま。
			[cancelskip]
			[cancelautomode]

			;セーブ時に見出しを使うためにtrueに変更
			[eval exp="f.noStoreCurrentMessage = true"]

			;表示フラグオンいるんだっけ？
			[eval exp="f.selnow = 1"]
			;なんかフラグ名のせいで判定きかないっぽいから変える
			[eval exp="f.選択肢表示中だよ = 1"]

			; 右クリック割り当てを一時的に変更する
			[call storage="rclick_sub.ks"]

			;レイヤ数変更
			;[laycount layers="&kag.numCharacterLayers + 7"]
			;sf.maxlayersは弄ってなかったけどシステム移動に合わせて定義追加
			[eval exp="sf.maxlayers = kag.numCharacterLayers + 7"][laycount layers="&sf.maxlayers"]

			;選択肢ボタンベースを表示するためのメッセージレイヤを用意
			[position layer="&sf.message_selbase" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
			[layopt layer="&sf.message_selbase" page=fore visible=true]
			[current layer="&sf.message_selbase" page=fore]

			;[eval exp="sf.layer_seltext = 19"]

			;選択肢のテキスト色（通常時）を指定
			;[eval exp="tf.seltextcolor = '0xffffff'"]

			;[image storage="chara_int" layer="&sf.layer_seltext" page=fore visible=true left=0 top=0 index=1006000]
			;～～～～～～

			[eval exp="f.selbase = 1"]
		[endif]

[endmacro]

;文字数による自動センタリング装置　マクロ
;こっちでいいか
;現状は最大29文字換算。最大文字数増減（selectimage.pngの左端の飾りの大きさ）するなら要調整。
[macro name=seltext_centering]
		;リセット
		[eval exp="f.seltext_num = 0"]
		;元々厳密じゃないけど禁則文字は特にずれが大きくなっちゃうからある程度避けないといけないか。
		;ユーザーのフォントには合わせられないからあきらめるか。MSゴシックとMSPゴシックですら違うものな。sf.userfontがMSPゴシックじゃなければ左詰にしちゃうとか
		;先に禁則かどうかの判定して変数に入れとく？　もっと簡単に判別できんのかな
	;	[eval exp="f.nocoun = []"]
	;	[eval exp="f.nocoun[0]  = 1" cond="&mp.text.charAt(0)  == '、' || mp.text.charAt(0)  == '。' || mp.text.charAt(0)  == '『' || mp.text.charAt(0)  == '』' || mp.text.charAt(0)  == '「' || mp.text.charAt(0)  == '」' "]
	;	[eval exp="f.nocoun[1]  = 1" cond="&mp.text.charAt(1)  == '、' || mp.text.charAt(1)  == '。' || mp.text.charAt(1)  == '『' || mp.text.charAt(1)  == '』' || mp.text.charAt(1)  == '「' || mp.text.charAt(1)  == '」' "]
	;	[eval exp="f.nocoun[2]  = 1" cond="&mp.text.charAt(2)  == '、' || mp.text.charAt(2)  == '。' || mp.text.charAt(2)  == '『' || mp.text.charAt(2)  == '』' || mp.text.charAt(2)  == '「' || mp.text.charAt(2)  == '」' "]
	;	[eval exp="f.nocoun[3]  = 1" cond="&mp.text.charAt(3)  == '、' || mp.text.charAt(3)  == '。' || mp.text.charAt(3)  == '『' || mp.text.charAt(3)  == '』' || mp.text.charAt(3)  == '「' || mp.text.charAt(3)  == '」' "]
	;	[eval exp="f.nocoun[4]  = 1" cond="&mp.text.charAt(4)  == '、' || mp.text.charAt(4)  == '。' || mp.text.charAt(4)  == '『' || mp.text.charAt(4)  == '』' || mp.text.charAt(4)  == '「' || mp.text.charAt(4)  == '」' "]
	;	[eval exp="f.nocoun[5]  = 1" cond="&mp.text.charAt(5)  == '、' || mp.text.charAt(5)  == '。' || mp.text.charAt(5)  == '『' || mp.text.charAt(5)  == '』' || mp.text.charAt(5)  == '「' || mp.text.charAt(5)  == '」' "]
	;	[eval exp="f.nocoun[6]  = 1" cond="&mp.text.charAt(6)  == '、' || mp.text.charAt(6)  == '。' || mp.text.charAt(6)  == '『' || mp.text.charAt(6)  == '』' || mp.text.charAt(6)  == '「' || mp.text.charAt(6)  == '」' "]
	;	[eval exp="f.nocoun[7]  = 1" cond="&mp.text.charAt(7)  == '、' || mp.text.charAt(7)  == '。' || mp.text.charAt(7)  == '『' || mp.text.charAt(7)  == '』' || mp.text.charAt(7)  == '「' || mp.text.charAt(7)  == '」' "]
	;	[eval exp="f.nocoun[8]  = 1" cond="&mp.text.charAt(8)  == '、' || mp.text.charAt(8)  == '。' || mp.text.charAt(8)  == '『' || mp.text.charAt(8)  == '』' || mp.text.charAt(8)  == '「' || mp.text.charAt(8)  == '」' "]
	;	[eval exp="f.nocoun[9]  = 1" cond="&mp.text.charAt(9)  == '、' || mp.text.charAt(9)  == '。' || mp.text.charAt(9)  == '『' || mp.text.charAt(9)  == '』' || mp.text.charAt(9)  == '「' || mp.text.charAt(9)  == '」' "]
	;	[eval exp="f.nocoun[10] = 1" cond="&mp.text.charAt(10) == '、' || mp.text.charAt(10) == '。' || mp.text.charAt(10) == '『' || mp.text.charAt(10) == '』' || mp.text.charAt(10) == '「' || mp.text.charAt(10) == '」' "]
	;	[eval exp="f.nocoun[11] = 1" cond="&mp.text.charAt(11) == '、' || mp.text.charAt(11) == '。' || mp.text.charAt(11) == '『' || mp.text.charAt(11) == '』' || mp.text.charAt(11) == '「' || mp.text.charAt(11) == '」' "]
	;	[eval exp="f.nocoun[12] = 1" cond="&mp.text.charAt(12) == '、' || mp.text.charAt(12) == '。' || mp.text.charAt(12) == '『' || mp.text.charAt(12) == '』' || mp.text.charAt(12) == '「' || mp.text.charAt(12) == '」' "]
	;	[eval exp="f.nocoun[13] = 1" cond="&mp.text.charAt(13) == '、' || mp.text.charAt(13) == '。' || mp.text.charAt(13) == '『' || mp.text.charAt(13) == '』' || mp.text.charAt(13) == '「' || mp.text.charAt(13) == '」' "]
	;	[eval exp="f.nocoun[14] = 1" cond="&mp.text.charAt(14) == '、' || mp.text.charAt(14) == '。' || mp.text.charAt(14) == '『' || mp.text.charAt(14) == '』' || mp.text.charAt(14) == '「' || mp.text.charAt(14) == '」' "]
	;	[eval exp="f.nocoun[15] = 1" cond="&mp.text.charAt(15) == '、' || mp.text.charAt(15) == '。' || mp.text.charAt(15) == '『' || mp.text.charAt(15) == '』' || mp.text.charAt(15) == '「' || mp.text.charAt(15) == '」' "]
	;	[eval exp="f.nocoun[16] = 1" cond="&mp.text.charAt(16) == '、' || mp.text.charAt(16) == '。' || mp.text.charAt(16) == '『' || mp.text.charAt(16) == '』' || mp.text.charAt(16) == '「' || mp.text.charAt(16) == '」' "]
	;	[eval exp="f.nocoun[17] = 1" cond="&mp.text.charAt(17) == '、' || mp.text.charAt(17) == '。' || mp.text.charAt(17) == '『' || mp.text.charAt(17) == '』' || mp.text.charAt(17) == '「' || mp.text.charAt(17) == '」' "]
	;	[eval exp="f.nocoun[18] = 1" cond="&mp.text.charAt(18) == '、' || mp.text.charAt(18) == '。' || mp.text.charAt(18) == '『' || mp.text.charAt(18) == '』' || mp.text.charAt(18) == '「' || mp.text.charAt(18) == '」' "]
	;	[eval exp="f.nocoun[19] = 1" cond="&mp.text.charAt(19) == '、' || mp.text.charAt(19) == '。' || mp.text.charAt(19) == '『' || mp.text.charAt(19) == '』' || mp.text.charAt(19) == '「' || mp.text.charAt(19) == '」' "]
	;	[eval exp="f.nocoun[20] = 1" cond="&mp.text.charAt(20) == '、' || mp.text.charAt(20) == '。' || mp.text.charAt(20) == '『' || mp.text.charAt(20) == '』' || mp.text.charAt(20) == '「' || mp.text.charAt(20) == '」' "]
	;	[eval exp="f.nocoun[21] = 1" cond="&mp.text.charAt(21) == '、' || mp.text.charAt(21) == '。' || mp.text.charAt(21) == '『' || mp.text.charAt(21) == '』' || mp.text.charAt(21) == '「' || mp.text.charAt(21) == '」' "]
	;	[eval exp="f.nocoun[22] = 1" cond="&mp.text.charAt(22) == '、' || mp.text.charAt(22) == '。' || mp.text.charAt(22) == '『' || mp.text.charAt(22) == '』' || mp.text.charAt(22) == '「' || mp.text.charAt(22) == '」' "]
	;	[eval exp="f.nocoun[23] = 1" cond="&mp.text.charAt(23) == '、' || mp.text.charAt(23) == '。' || mp.text.charAt(23) == '『' || mp.text.charAt(23) == '』' || mp.text.charAt(23) == '「' || mp.text.charAt(23) == '」' "]
	;	[eval exp="f.nocoun[24] = 1" cond="&mp.text.charAt(24) == '、' || mp.text.charAt(24) == '。' || mp.text.charAt(24) == '『' || mp.text.charAt(24) == '』' || mp.text.charAt(24) == '「' || mp.text.charAt(24) == '」' "]
	;	[eval exp="f.nocoun[25] = 1" cond="&mp.text.charAt(25) == '、' || mp.text.charAt(25) == '。' || mp.text.charAt(25) == '『' || mp.text.charAt(25) == '』' || mp.text.charAt(25) == '「' || mp.text.charAt(25) == '」' "]
	;	[eval exp="f.nocoun[26] = 1" cond="&mp.text.charAt(26) == '、' || mp.text.charAt(26) == '。' || mp.text.charAt(26) == '『' || mp.text.charAt(26) == '』' || mp.text.charAt(26) == '「' || mp.text.charAt(26) == '」' "]
	;	[eval exp="f.nocoun[27] = 1" cond="&mp.text.charAt(27) == '、' || mp.text.charAt(27) == '。' || mp.text.charAt(27) == '『' || mp.text.charAt(27) == '』' || mp.text.charAt(27) == '「' || mp.text.charAt(27) == '」' "]
	;	[eval exp="f.nocoun[28] = 1" cond="&mp.text.charAt(28) == '、' || mp.text.charAt(28) == '。' || mp.text.charAt(28) == '『' || mp.text.charAt(28) == '』' || mp.text.charAt(28) == '「' || mp.text.charAt(28) == '」' "]
	;	[eval exp="f.nocoun[29] = 1" cond="&mp.text.charAt(29) == '、' || mp.text.charAt(29) == '。' || mp.text.charAt(29) == '『' || mp.text.charAt(29) == '』' || mp.text.charAt(29) == '「' || mp.text.charAt(29) == '」' "]
	;	[eval exp="f.nocoun[30] = 1" cond="&mp.text.charAt(30) == '、' || mp.text.charAt(30) == '。' || mp.text.charAt(30) == '『' || mp.text.charAt(30) == '』' || mp.text.charAt(30) == '「' || mp.text.charAt(30) == '」' "]
	;	[eval exp="f.nocoun[31] = 1" cond="&mp.text.charAt(31) == '、' || mp.text.charAt(31) == '。' || mp.text.charAt(31) == '『' || mp.text.charAt(31) == '』' || mp.text.charAt(31) == '「' || mp.text.charAt(31) == '」' "]



		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(0)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(1)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(2)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(3)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(4)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(5)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(6)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(7)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(8)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(9)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(10) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(11) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(12) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(13) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(14) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(15) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(16) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(17) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(18) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(19) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(20) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(21) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(22) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(23) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(24) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(25) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(26) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(27) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(28) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(29) != void"]
	;	[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(30) != void"]
	;	[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(31) != void"]

	;左詰めなら上記は無視して変数入れ直す　sf.userfontがMSPゴシックじゃなければ左詰にしちゃうとか
	;ギリ過ぎるから一文字分右にするために1文字減らす
	;[eval exp="f.seltext_num = 28" cond="sf.seltext_align == 'left' || sf.userfont != 'ＭＳ Ｐゴシック'"]
	[eval exp="f.seltext_num = 28" cond="sf.seltext_align == 'left'"]

	;センタリング位置決定
	;25ってなんの数値なんだろ文字のサイズか？ *sf.seltext_sizeにしたらおかしくなった 実際は少し幅狭いな
	[eval exp="sf.seltext_x = int + (kag.scWidth-(f.seltext_num*(sf.seltext_size-3)))/2"]
[endmacro]

;選択肢1
[macro name=sel01]

	;mp.textが入るように*付けとく
	;バックログ関係とベース表示
	[selbase_and_log *]

	;選択肢後にバックログに選択内容入れるために個別に保存
	[eval exp="f.seltext01 = mp.text"]

	[eval exp="f.sel01 = 1"]
	[image storage="chara_int" layer="&sf.layer_seltext+1" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+1000]
	;文字数による自動センタリング装置へ
	;一応左詰めできるようにしておくか 文字数はサイズ大きく変えない限りは32のままでいいはず
	;mp.textが入るように*付けとく
	[seltext_centering *]

;	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+1" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[1] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext01"]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+1" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[1] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext01"]

	;実際の飛び先を保存
	[eval exp="f.sel_storage01 = mp.storage" cond="mp.storage != void"]
	; mp.storageがvoid（同ファイル内のラベルに飛ぶ）なら現在のフィル名を入れる
	[eval exp="f.sel_storage01 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target01  = mp.target"  cond="mp.target  != void"]
	;target指定後に次の選択肢でtarget未指定の場合、最初に指定したtargetが保存されたままなので消す。2018/10/10
	[eval exp="f.sel_target01  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[1]"]
	;ボタンの飛び先は共通で選択肢終了処理

;クリックで変数操作できるように、expにf[mp.flag] = mp.parでテストしたけど、01～07までわけないとだめだな。あとparがstring属性になる。追加するの保留
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 1 , f.seltext = f.seltext01" onenter="kag.fore.layers[sf.layer_seltext+1].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+1].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]

;選択肢2
[macro name=sel02]

	;mp.textが入るように*付けとく
	;バックログ関係とベース表示
	[selbase_and_log *]

	;選択肢後にバックログに選択内容入れるために個別に保存
	[eval exp="f.seltext02 = mp.text"]

	[eval exp="f.sel02 = 1"]
	[image storage="chara_int" layer="&sf.layer_seltext+2" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+2000]
	;文字数による自動センタリング装置へ
	[seltext_centering *]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+2" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[2] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext02"]

	;実際の飛び先を保存
	[eval exp="f.sel_storage02 = mp.storage" cond="mp.storage != void"]
	; mp.storageがvoid（同ファイル内のラベルに飛ぶ）なら現在のフィル名を入れる
	[eval exp="f.sel_storage02 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target02  = mp.target"  cond="mp.target  != void"]
	;target指定後に次の選択肢でtarget未指定の場合、最初に指定したtargetが保存されたままなので消す。2018/10/10
	[eval exp="f.sel_target02  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[2]"]
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 2 , f.seltext = f.seltext02" onenter="kag.fore.layers[sf.layer_seltext+2].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+2].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]

;選択肢3
[macro name=sel03]
	;mp.textが入るように*付けとく
	;バックログ関係とベース表示
	[selbase_and_log *]

	;選択肢後にバックログに選択内容入れるために個別に保存
	[eval exp="f.seltext03 = mp.text"]

	[eval exp="f.sel03 = 1"]
	[image storage="chara_int" layer="&sf.layer_seltext+3" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+3000]
	;文字数による自動センタリング装置へ
	[seltext_centering *]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+3" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[3] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext03"]

	;実際の飛び先を保存
	[eval exp="f.sel_storage03 = mp.storage" cond="mp.storage != void"]
	; mp.storageがvoid（同ファイル内のラベルに飛ぶ）なら現在のフィル名を入れる
	[eval exp="f.sel_storage03 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target03  = mp.target"  cond="mp.target  != void"]
	;target指定後に次の選択肢でtarget未指定の場合、最初に指定したtargetが保存されたままなので消す。2018/10/10
	[eval exp="f.sel_target03  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[3]"]
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 3 , f.seltext = f.seltext03" onenter="kag.fore.layers[sf.layer_seltext+3].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+3].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]


;選択肢4
[macro name=sel04]
	;mp.textが入るように*付けとく
	;バックログ関係とベース表示
	[selbase_and_log *]

	;選択肢後にバックログに選択内容入れるために個別に保存
	[eval exp="f.seltext04 = mp.text"]

	[eval exp="f.sel04 = 1"]
	[image storage="chara_int" layer="&sf.layer_seltext+4" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+4000]
	;文字数による自動センタリング装置へ
	[seltext_centering *]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+4" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[4] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext04"]

	;実際の飛び先を保存
	[eval exp="f.sel_storage04 = mp.storage" cond="mp.storage != void"]
	; mp.storageがvoid（同ファイル内のラベルに飛ぶ）なら現在のフィル名を入れる
	[eval exp="f.sel_storage04 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target04  = mp.target"  cond="mp.target  != void"]
	;target指定後に次の選択肢でtarget未指定の場合、最初に指定したtargetが保存されたままなので消す。2018/10/10
	[eval exp="f.sel_target04  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[4]"]
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 4 , f.seltext = f.seltext04" onenter="kag.fore.layers[sf.layer_seltext+4].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+4].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]

;選択肢5
[macro name=sel05]
	;mp.textが入るように*付けとく
	;バックログ関係とベース表示
	[selbase_and_log *]

	;選択肢後にバックログに選択内容入れるために個別に保存
	[eval exp="f.seltext05 = mp.text"]

	[eval exp="f.sel05 = 1"]
	[image storage="chara_int" layer="&sf.layer_seltext+5" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+5000]
	;文字数による自動センタリング装置へ
	[seltext_centering *]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+5" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[5] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext05"]

	;実際の飛び先を保存
	[eval exp="f.sel_storage05 = mp.storage" cond="mp.storage != void"]
	; mp.storageがvoid（同ファイル内のラベルに飛ぶ）なら現在のフィル名を入れる
	[eval exp="f.sel_storage05 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target05  = mp.target"  cond="mp.target  != void"]
	;target指定後に次の選択肢でtarget未指定の場合、最初に指定したtargetが保存されたままなので消す。2018/10/10
	[eval exp="f.sel_target05  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[5]"]
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 5 , f.seltext = f.seltext05" onenter="kag.fore.layers[sf.layer_seltext+5].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+5].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]

;選択肢6
[macro name=sel06]
	;mp.textが入るように*付けとく
	;バックログ関係とベース表示
	[selbase_and_log *]

	;選択肢後にバックログに選択内容入れるために個別に保存
	[eval exp="f.seltext06 = mp.text"]

	[eval exp="f.sel06 = 1"]
	[image storage="chara_int" layer="&sf.layer_seltext+6" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+6000]
	;文字数による自動センタリング装置へ
	[seltext_centering *]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+6" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[6] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext06"]

	;実際の飛び先を保存
	[eval exp="f.sel_storage06 = mp.storage" cond="mp.storage != void"]
	; mp.storageがvoid（同ファイル内のラベルに飛ぶ）なら現在のフィル名を入れる
	[eval exp="f.sel_storage06 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target06  = mp.target"  cond="mp.target  != void"]
	;target指定後に次の選択肢でtarget未指定の場合、最初に指定したtargetが保存されたままなので消す。2018/10/10
	[eval exp="f.sel_target06  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[6]"]
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 6 , f.seltext = f.seltext06" onenter="kag.fore.layers[sf.layer_seltext+6].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+6].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]

;選択肢7
[macro name=sel07]
	;mp.textが入るように*付けとく
	;バックログ関係とベース表示
	[selbase_and_log *]

	;選択肢後にバックログに選択内容入れるために個別に保存
	[eval exp="f.seltext07 = mp.text"]

	[image storage="chara_int" layer="&sf.layer_seltext+7" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+7000]
	;文字数による自動センタリング装置へ
	[seltext_centering *]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+7" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[7] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext07"]

	;実際の飛び先を保存
	[eval exp="f.sel_storage07 = mp.storage" cond="mp.storage != void"]
	; mp.storageがvoid（同ファイル内のラベルに飛ぶ）なら現在のフィル名を入れる
	[eval exp="f.sel_storage07 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target07  = mp.target"  cond="mp.target  != void"]
	;target指定後に次の選択肢でtarget未指定の場合、最初に指定したtargetが保存されたままなので消す。2018/10/10
	[eval exp="f.sel_target07  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[7]"]
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 7 , f.seltext = f.seltext07" onenter="kag.fore.layers[sf.layer_seltext+7].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+7].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]


;レイヤのindex戻したりレイヤ数戻したり
[macro name=sellayer_index_init]
	;タイトル画面に戻った時にレイヤ数をデフォに戻す処理を追加したため、タイトル画面から選択肢中のクイックロードするとレイヤが無くて怒られる。
	;タイトルからのクイックロードだったら処理飛ばすか？
	;選択肢→セーブ→クイックセーブ→クイックロードでも出るな
[if exp="tf.QuickLoad == 0 && tf.QuickLoad_title == 0"]
	[freeimage layer="&sf.layer_seltext+1" page=fore  cond="f.sel01"]
	[freeimage layer="&sf.layer_seltext+2" page=fore  cond="f.sel02"]
	[freeimage layer="&sf.layer_seltext+3" page=fore  cond="f.sel03"]
	[freeimage layer="&sf.layer_seltext+4" page=fore  cond="f.sel04"]
	[freeimage layer="&sf.layer_seltext+5" page=fore  cond="f.sel05"]
	[freeimage layer="&sf.layer_seltext+6" page=fore  cond="f.sel06"]
	[freeimage layer="&sf.layer_seltext+7" page=fore  cond="f.sel07"]
	;選択肢baseを非表示
	[layopt layer="&sf.message_selbase" page=fore visible=false]
	[current layer=message0][layopt layer=message0 index=1001000]
	;フェイスウィンドウの処理によってはカレント１
;	[current layer=message1]
	[layopt layer="&sf.layer_seltext+1" index="&sf.layer_seltext*1000+1000"  cond="f.sel01"]
	[layopt layer="&sf.layer_seltext+2" index="&sf.layer_seltext*2000+1000"  cond="f.sel02"]
	[layopt layer="&sf.layer_seltext+3" index="&sf.layer_seltext*3000+1000"  cond="f.sel03"]
	[layopt layer="&sf.layer_seltext+4" index="&sf.layer_seltext*4000+1000"  cond="f.sel04"]
	[layopt layer="&sf.layer_seltext+5" index="&sf.layer_seltext*5000+1000"  cond="f.sel05"]
	[layopt layer="&sf.layer_seltext+6" index="&sf.layer_seltext*6000+1000"  cond="f.sel06"]
	[layopt layer="&sf.layer_seltext+7" index="&sf.layer_seltext*7000+1000"  cond="f.sel07"]

	;レイヤ数変更
	;[laycount layers="&sf.maxlayers"]
	;sf.maxlayersは弄ってなかったけどシステム移動に合わせて定義追加
	[eval exp="sf.maxlayers = kag.numCharacterLayers - 7"][laycount layers="&sf.maxlayers"]

	;表示フラグオンいるんだっけ？
	[eval exp="f.selnow = 0"]
	[eval exp="f.selbt = 0"]
	;なんかフラグ名のせいで判定きかないっぽいから変える
	[eval exp="f.選択肢表示中だよ = 0"]

	[eval exp="f.selset_end = 0"]
	[eval exp="f.selbase   = 0"]
	[eval exp="f.seltext01  = void"]
	[eval exp="f.seltext02  = void"]
	[eval exp="f.seltext03  = void"]
	[eval exp="f.seltext04  = void"]
	[eval exp="f.seltext05  = void"]
	[eval exp="f.seltext06  = void"]
	[eval exp="f.seltext07  = void"]
	

	[eval exp="f.sel01 = 0"]
	[eval exp="f.sel02 = 0"]
	[eval exp="f.sel03 = 0"]
	[eval exp="f.sel04 = 0"]
	[eval exp="f.sel05 = 0"]
	[eval exp="f.sel06 = 0"]
	[eval exp="f.sel07 = 0"]

	;ちょっと間が
	[wait_c time=200 cond="f.graphic_bt_sel == 0"]
[endif]

;タイトル画面のクイックロード押したフラグ　ここじゃ踏めないからｆｃに
;[eval exp="tf.QuickLoad_title = 0"]
[endmacro]

;これはfc内で処理されてるから不要？　メッセージ履歴への出力を再開、表示可が未処理になる気がするけど
;ちゃんとひょうじされてるな。そもそも出力停止してないから再開は不要なのか
;	[macro name=selbt_clear]
;
;		[eval exp="f.selbt = 0"]
;
;		[cm]
;
;		;カレントレイヤを戻す
;		[current layer=message0]
;
;		; メッセージ履歴への出力を再開、表示可にする
;		[history output=true enabled=true]
;
;		;セーブ時に見出しを使わないに戻す
;		[eval exp="f.noStoreCurrentMessage = false"]
;
;		;f.selnow使うと通常選択肢とかぶって面倒なのでここで個別に行う
;		;選択肢後スキップ継続かつスキップ中だったならスキップ開始
;		[if exp="sf.sel_skip == 1 && f.now_skipauto == 2"]
;			[eval exp="kag.skipToStop()"]
;		;選択肢後オート継続かつオート中だったならスキップ開始
;		[elsif exp="sf.sel_auto == 1 && f.now_skipauto == 1"]
;			[eval exp="kag.enterAutoMode()"]
;		[endif]
;
;
;	[endmacro]

[return]
;--------------------------------------------------------
;--------------------------------------------------------
;--------------------------------------------------------
;選択肢後共通処理のサブルーチン
*selend
;[sellayer_index_init]
;をやるんだけど実際にはfcマクロ内で処理

;選択肢内容をバックログに
[selrun_hisout]
[fc]

;実際の飛び先へ
[if    exp="f.selrun == 1"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage01" target="&f.sel_target01"]
[elsif exp="f.selrun == 2"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage02" target="&f.sel_target02"]
[elsif exp="f.selrun == 3"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage03" target="&f.sel_target03"]
[elsif exp="f.selrun == 4"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage04" target="&f.sel_target04"]
[elsif exp="f.selrun == 5"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage05" target="&f.sel_target05"]
[elsif exp="f.selrun == 6"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage06" target="&f.sel_target06"]
[elsif exp="f.selrun == 7"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage07" target="&f.sel_target07"]
[endif]

;フェイルセーフ
[returntitle]

;--------------------------------------------------------
;--------------------------------------------------------
;--------------------------------------------------------
;使わない　文字数による自動センタリング装置　サブルーチン

*call01
[eval exp="f.seltext = f.seltext01"][jump target=*script]
*call02
[eval exp="f.seltext = f.seltext02"][jump target=*script]
*call03
[eval exp="f.seltext = f.seltext03"][jump target=*script]
*call04
[eval exp="f.seltext = f.seltext04"][jump target=*script]
*call05
[eval exp="f.seltext = f.seltext05"][jump target=*script]
*call06
[eval exp="f.seltext = f.seltext06"][jump target=*script]
*call07
[eval exp="f.seltext = f.seltext07"][jump target=*script]

*script
[iscript]
	var str = f.seltext;
	var ch01 = str.charAt(0);//
	var ch02 = str.charAt(1);//
	var ch03 = str.charAt(2);//
	var ch04 = str.charAt(3);//
	var ch05 = str.charAt(4);//
	var ch06 = str.charAt(5);//
	var ch07 = str.charAt(6);//
	var ch08 = str.charAt(7);//
	var ch09 = str.charAt(8);//
	var ch10 = str.charAt(9);//
	var ch11 = str.charAt(10);//
	var ch12 = str.charAt(11);//
	var ch13 = str.charAt(12);//
	var ch14 = str.charAt(13);//
	var ch15 = str.charAt(14);//
	var ch16 = str.charAt(15);//
	var ch17 = str.charAt(16);//
	var ch18 = str.charAt(17);//
	var ch19 = str.charAt(18);//
	var ch20 = str.charAt(19);//
	var ch21 = str.charAt(20);//
	var ch22 = str.charAt(21);//
	var ch23 = str.charAt(22);//
	var ch24 = str.charAt(23);//
	var ch25 = str.charAt(24);//
	var ch26 = str.charAt(25);//
	var ch27 = str.charAt(26);//
	var ch28 = str.charAt(27);//
	var ch29 = str.charAt(28);//
	var ch30 = str.charAt(29);//
	var ch31 = str.charAt(30);//
	var ch32 = str.charAt(31);//

[endscript]

;リセット
[eval exp="f.seltext_num = 0"]
;3文字結合してフラグつくって
[eval exp="f.seltext_num += 1" cond="ch01 != void"]
[eval exp="f.seltext_num += 1" cond="ch02 != void"]
[eval exp="f.seltext_num += 1" cond="ch03 != void"]
[eval exp="f.seltext_num += 1" cond="ch04 != void"]
[eval exp="f.seltext_num += 1" cond="ch05 != void"]
[eval exp="f.seltext_num += 1" cond="ch06 != void"]
[eval exp="f.seltext_num += 1" cond="ch07 != void"]
[eval exp="f.seltext_num += 1" cond="ch08 != void"]
[eval exp="f.seltext_num += 1" cond="ch09 != void"]
[eval exp="f.seltext_num += 1" cond="ch10 != void"]
[eval exp="f.seltext_num += 1" cond="ch11 != void"]
[eval exp="f.seltext_num += 1" cond="ch12 != void"]
[eval exp="f.seltext_num += 1" cond="ch13 != void"]
[eval exp="f.seltext_num += 1" cond="ch14 != void"]
[eval exp="f.seltext_num += 1" cond="ch15 != void"]
[eval exp="f.seltext_num += 1" cond="ch16 != void"]
[eval exp="f.seltext_num += 1" cond="ch17 != void"]
[eval exp="f.seltext_num += 1" cond="ch18 != void"]
[eval exp="f.seltext_num += 1" cond="ch19 != void"]
[eval exp="f.seltext_num += 1" cond="ch20 != void"]
[eval exp="f.seltext_num += 1" cond="ch21 != void"]
[eval exp="f.seltext_num += 1" cond="ch22 != void"]
[eval exp="f.seltext_num += 1" cond="ch23 != void"]
[eval exp="f.seltext_num += 1" cond="ch24 != void"]
[eval exp="f.seltext_num += 1" cond="ch25 != void"]
[eval exp="f.seltext_num += 1" cond="ch26 != void"]
[eval exp="f.seltext_num += 1" cond="ch27 != void"]
[eval exp="f.seltext_num += 1" cond="ch28 != void"]
[eval exp="f.seltext_num += 1" cond="ch29 != void"]
[eval exp="f.seltext_num += 1" cond="ch30 != void"]
[eval exp="f.seltext_num += 1" cond="ch31 != void"]
[eval exp="f.seltext_num += 1" cond="ch32 != void"]

[return]

