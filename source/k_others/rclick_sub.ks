;右クリック設定ここにまとめる
;
;選択肢表示中かつ回想中かつ『ウィンドウを隠す』または『セーブ呼び出し』なら右クリック殺す。
;選択肢表示中かつ『ウィンドウを隠す』なら右クリック殺す。
;回想中なら『セーブ呼び出し』は『ウィンドウを隠す』にする。
;それ以外は通常ゲーム中と見なし、設定通りの動作にする。
;
;name=defaultの場合は、callもfalseにしないとcallの呼び先が生きてるらしい。

;右クリックで画面遷移した場合、f.ksStorageSys、f.ksLabelSysが保存される処理がないので
;以前にシステムボタンで画面遷移したときのファイル・ラベルに戻ってしまうー！どうしよう


;選択肢表示中
[if exp="f.selnow == 1"]
	;シーン回想中ならセーブ呼び出しは不可にウィンドウを隠すにする
	[if exp="tf.scene_mode == 1"]
		[if exp="sf.conf_rclick == 1"]
			[rclick enabled=false]
		[elsif exp="sf.conf_rclick == 2"]
			[rclick enabled=false]
		[elsif exp="sf.conf_rclick == 3"]
			[rclick call=true enabled=true storage="systembutton_sub.ks" target=*sys_config]
		[endif]
	;こっちは通常ゲーム中
	[else]
		;右クリック設定がウィンドウを隠すの時だけ右クリックを殺す
		[if exp="sf.conf_rclick == 1"]
			; 表示中に右クリックされると画像文字の方が残って都合が悪いので右クリックを無効にする。選択肢消去で戻してるから大丈夫なはず。
			[rclick enabled=false]
		;それ以外は右クリック機能を戻す（一度ウィンドウを隠すにすると右クリック殺されたままになってしまうので）
		[elsif exp="sf.conf_rclick == 2"]
			[rclick call=true enabled=true storage="systembutton_sub.ks" target=*sys_save enabled=true]
		[elsif exp="sf.conf_rclick == 3"]
			[rclick call=true enabled=true storage="systembutton_sub.ks" target=*sys_config enabled=true]
		[endif]
	[endif]
;シーン回想中ならセーブ呼び出しは不可にウィンドウを隠すにする
[elsif exp="tf.scene_mode == 1"]
	[if exp="sf.conf_rclick == 1"]
		[rclick enabled=true]
		[rclick jump=false enabled=true call=false name=default]
	[elsif exp="sf.conf_rclick == 2"]
		[rclick enabled=true]
		[rclick jump=false enabled=true call=false name=default]
	[elsif exp="sf.conf_rclick == 3"]
		[rclick enabled=true]
		[rclick call=true enabled=true storage="systembutton_sub.ks" target=*sys_config]
	[endif]

;こっちは通常ゲーム中
[else]
	[if exp="sf.conf_rclick == 1"]
		[rclick jump=false enabled=true call=false name=default]
	[elsif exp="sf.conf_rclick == 2"]
		[rclick enabled=true]
		[rclick call=true enabled=true storage="systembutton_sub.ks" target=*sys_save]
	[elsif exp="sf.conf_rclick == 3"]
		[rclick enabled=true]
		[rclick call=true enabled=true storage="systembutton_sub.ks" target=*sys_config]
	[endif]
[endif]

[return]
