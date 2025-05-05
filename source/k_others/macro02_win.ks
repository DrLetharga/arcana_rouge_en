
;=============================================================
;新しい透過度変更の方法のためのウィンドウ用の新しいマクロ。
;=============================================================
;基本的な流れは同じ。
;古い方はmacro.ksに残しておく。

[macro name=sysbt_meswin]

	[backlay]

		[sysbtopt enterse="&sf.SE_enter_sysbt" forevisible=true backvisible=true left="&sf.sysbt_x" top="&sf.sysbt_y"]
		;ボイスonlyモードボタンあとで消す
		;[sysbtopt2 forevisible=true backvisible=true left=1200 top="&sf.sysbt_y"]


	[if exp="mp.clear!==void"]
		; スキップ・オート表示消去 消えない……
		;[current layer=message3]
		;[layopt layer=message3 page=fore visible=false]
		;[current layer=message0]

		; システムボタン非表示を追加
		[sysbtopt forevisible=false backvisible=false]

		; ウィンドウの色変えられるようにしたからこれも
		;[layopt layer="&sf.layer_win" visible=false page=back]
		[layopt layer=message0 visible=false page=back]
		;[layopt layer=message1 visible=false page=back]
		[if exp="f.face_win"]
			[layopt layer="&sf.layer_face_winbase"  visible=false page=back]
			[layopt layer="&sf.layer_face_win"      visible=false page=back]
			[layopt layer="&sf.layer_face_winflame" visible=false page=back]
		[endif]

		;ネームチップのレイヤ消してなくね？
		;tempsave前にウィンドウ消しに修正。合わせてmacro02_win.ksにネームチップのレイヤ消し追加 2018/02/27
		[layopt layer="&sf.message_namechip" visible=false page=back]
		;フェイスウィンドウ
		[layopt layer="&sf.layer_face_win" visible=false page=back]

		;ウィンドウオンオフフラグ　オフ
		[eval exp="f.winon = 0"]

	[else]

	[if    exp="f.win_narration == 1"]
		[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="window3" opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]
	[else]
		;height=200に関して。ネームチップの改行の関係で実際のウィンドウサイズよりも大きく設定している。ぴったりだと3行の時に自動で改ページしてしまうため。
		;[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="" color=0xffffff opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]
;t		[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="window"       opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]

		;メッセージレイヤ0と同じindex。このレイヤの加算色を操作する
		;[image storage="window" layer="&sf.layer_win" page=back visible=true left="&sf.window_x" top="&sf.window_y" opacity="&sf.graphicframe_opacity" mcolor="&sf.win_RGB" mopacity=255 index=1000000]
		;やっぱmessage0。バックログから帰ってきたときに何もないmessage0を表示してしまうため
		[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="window" opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]
	[endif]
		;ウィンドウオンオフフラグ　オン
		[eval exp="f.winon = 1"]

	[endif]
	;sf.layer_winのindexを1000000にしてるからこっちを1つ上にする
	[current layer=message0][layopt layer=message0 index=1001000]
	;これカレント1じゃないと模様の下に文字入っちゃうことが
;	[current layer=message0]
;	[trans method=crossfade time=100]
	[trans method=crossfade time=0]
	[wt canskip=false]


[endmacro]


;=============================================================
;テキスト再表示用の0秒仕様
;=============================================================
[macro name=s_m]

	[backlay]
		;ボタン選択肢でセーブして戻って来たとき避け
		[if exp="f.selbt == 0"]
		[sysbtopt forevisible=true backvisible=true left="&sf.sysbt_x" top="&sf.sysbt_y"]
		[endif]
		;ボイスonlyモードボタンあとで消す
		;[sysbtopt2 forevisible=true backvisible=true left=1200 top="&sf.sysbt_y"]
	[if exp="mp.clear!==void"]
		; スキップ・オート表示消去 消えない……
		;[current layer=message3]
		;[layopt layer=message3 page=fore visible=false]
		;[current layer=message0]

		; システムボタン非表示を追加
		[sysbtopt forevisible=false backvisible=false]

		; ウィンドウの色変えられるようにしたからこれも
		;[layopt layer="&sf.layer_win" visible=false page=back]
		[layopt layer=message0 visible=false page=back]
		;[layopt layer=message1 visible=false page=back]
		[if exp="f.face_win"]
			[layopt layer="&sf.layer_face_winbase"  visible=false page=back]
			[layopt layer="&sf.layer_face_win"      visible=false page=back]
			[layopt layer="&sf.layer_face_winflame" visible=false page=back]
		[endif]
		;ネームチップのレイヤ消してなくね？
		;tempsave前にウィンドウ消しに修正。合わせてmacro02_win.ksにネームチップのレイヤ消し追加 2018/02/27
		[layopt layer="&sf.message_namechip" visible=false page=back]
		;フェイスウィンドウ
		[layopt layer="&sf.layer_face_win" visible=false page=back]

		;ウィンドウオンオフフラグ　オフ
		[eval exp="f.winon = 0"]

	[elsif exp="f.selbt == 0"]

	[if    exp="f.win_narration == 1"]
		[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="window3" opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]
	[else]
		;height=200に関して。ネームチップの改行の関係で実際のウィンドウサイズよりも大きく設定している。ぴったりだと3行の時に自動で改ページしてしまうため。
;t		[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="window"       opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]

		;メッセージレイヤ0と同じindex。このレイヤの加算色を操作する
		;[image storage="window" layer="&sf.layer_win" page=back visible=true left="&sf.window_x" top="&sf.window_y" opacity="&sf.graphicframe_opacity" mcolor="&sf.win_RGB" mopacity=255 index=900000]
		[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="window" opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]
		;sf.layer_winのindexを1000000にしてるからこっちを1つ上にする
;		[font color=sf.kidoku_RGB]
		;↑なんで既読カラーにしてるんだろ
	[endif]

		;ウィンドウオンオフフラグ　オン
		[eval exp="f.winon = 1"]

	[endif]
	[current layer=message0][layopt layer=message0 index=1001000]
	;これカレント1じゃないと模様の下に文字入っちゃうことが
;	[current layer=message1]

	[trans method=crossfade time=0]
	[wt canskip=false]


[endmacro]

;=============================================================

[macro name=sysbt_meswin3]

	[backlay]

		[sysbtopt forevisible=true backvisible=true left="&sf.sysbt_x" top="&sf.sysbt_y"]
		;ボイスonlyモードボタンあとで消す
		;[sysbtopt2 forevisible=true backvisible=true left=1200 top="&sf.sysbt_y"]


	[if exp="mp.clear!==void"]
		; スキップ・オート表示消去 消えない……
		;[current layer=message3]
		;[layopt layer=message3 page=fore visible=false]
		;[current layer=message0]

		; システムボタン非表示を追加
		[sysbtopt forevisible=false backvisible=false]

		[layopt layer=message0 visible=false page=back]

		;ウィンドウオンオフフラグ　オフ
		[eval exp="f.winon = 0"]

		;グリフ位置を任意の座標に変更
		[glyph fix=true]

	[else]


		;height=200に関して。ネームチップの改行の関係で実際のウィンドウサイズよりも大きく設定している。ぴったりだと3行の時に自動で改ページしてしまうため。
		[position layer=message0 page=back left="&sf.window_x" top="100" width="&sf.window_w" height="520" frame="window3" opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]

		;ウィンドウオンオフフラグ　オン これ用の3にしてみたけど、システムいくときにフラグオフられるからここで入れても意味ない
		[eval exp="f.winon = 1"]

	[endif]
	[current layer=message0]
	[trans method=crossfade time=100]
	[wt canskip=false]



[endmacro]



[return]
