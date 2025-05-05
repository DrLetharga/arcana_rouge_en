;macro10_movie.ks


;ムービー再生のテンプレ。一応マクロ化しておく
[macro name=movie]

	[stopbgm]
	[stopse_all]
	;スキップしてたらとんじゃうからスキップの解除
	[cancelskip]
	; ビデオの属性を設定
	[video visible=true left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" mode=overlay loop=false]
	[openvideo storage=%storage]
	; ビデオの再生
	[playvideo]
	;ムービーの音量変更
	[if exp="sf.bgmplay == 1"]
		;[video volume="&kag.bgm.currentBuffer.volume2"]
		;[video volume=60]
		;これでbgmと同じになるかな？
		;これ、コンフィグ画面に一度も入らないでムービーになったらsf.dummy_bgmoptがvoidのままで音量0だわ……
		;voidならコンフィグのと同じ処理をしておく
		[eval exp="sf.dummy_bgmopt = kag.bgm.currentBuffer.volume2" cond="sf.dummy_bgmopt == void"]
		[video volume="&(sf.dummy_bgmopt/1000)"]
	[elsif exp="sf.bgmplay == 0"]
		[video volume=0]
	[endif]
	;スキップ可能
	[wv canskip=true]
	;mode使ったときはちゃんと停止命令ないと次のmovieが再生できないみたい
	[stopvideo]

[endmacro]






;------------------------------
;シナリオ中のエロムービー命令

;記述例　拡張子は不要　属性loopのみ
;[movie ファイル名 loop]
;マクロ名　movieなのかアニメなのか微妙だけどasdを使ったアニメと混同しちゃうからmovieとする
[macro name=movieH]

	;右クリックサブルーチンでシステム移動→再開の時にwpで停止してしまうので
	;右クリックがウィンドウ消し以外なら無効にする。[stopmovie]マクロ中で元に戻す。
	;システム移動して戻る時も再度このマクロを実行するから処理はここだけでいいはず。
	[if exp="sf.conf_rclick != 1"]
		[rclick enabled=false]
	[endif]

	[layopt layer=1 left=0 top=0 opacity=255]

	;めんどくさいけどループの時の方を指定ありにする
	[if exp="mp.loop"]
		[eval exp="f.movie_loop = 1"]
		[video visible=true left=0 top=0 width=1024 height=768 mode=layer loop=true]
	[else]
		[eval exp="f.movie_loop = 0"]
		[video visible=true left=0 top=0 width=1024 height=768 mode=layer loop=false]
	[endif]
	[freeimage layer=1 page=fore][freeimage layer=1 page=back]

	;movieからmovieのときにこれあるとまずいな
	;黒四角でちゃうけど仕方ない
	[if exp="mp.baseoff == void"]
		;ムービーの入りで画面左上に黒い■出るの気分悪いのでムービーの上のレイヤにイベントCGをforeに貼っておく
		;f.evcg_nameがvoidなら黒を入れておく
		[eval exp="f.evcg_name = 'effect_black'" cond="f.evcg_name == void"]
		[image storage="&f.evcg_name" layer=2 page=fore visible=true left=0 top=0]
	[endif]

	;Backに貼ってフェードで表に持ってこないと白フラとかしたときに見えなくなっちゃうのか?
	;裏からフェードさせるとmovieからmovieが上手くいかないからやっぱ表か
;	[videolayer channel=1 page=back layer=1]
	[videolayer channel=1 page=fore layer=1]
	;これないとレイヤ1がfalseの場合見えないんじゃん
	[layopt layer=1 page=fore visible=true]
;	[layopt layer=1 page=back visible=true]
	[eval exp="f.movieplaynow = 1"]
	[eval *]
	;[eval exp="f.moviefile = 'CGH03_1_MV_tes.mpg'"]
	;変数で指定するの面倒だからmpで全部書いておくか mpに大文字使えないから小文字に
	;オマケ用のフラグ、シナリオ中で直にオンにしちゃったけど一応ここでも立てよう
	[if    exp="mp.cgh03"][eval exp="f.moviefile = 'CGH03_MV.mpg'"][eval exp="sf.g_anime_CGH03 = 1"]
	[elsif exp="mp.cgh06"][eval exp="f.moviefile = 'CGH06_MV.mpg'"][eval exp="sf.g_anime_CGH06 = 1"]
	[elsif exp="mp.cgh11"][eval exp="f.moviefile = 'CGH11_MV.mpg'"][eval exp="sf.g_anime_CGH11 = 1"]
	[elsif exp="mp.cgh31"][eval exp="f.moviefile = 'CGH31_MV.mpg'"][eval exp="sf.g_anime_CGH31 = 1"]
	[else]
;	ファイル名が不正です
	[endif]
	[openvideo storage="&f.moviefile"]
	;なんか準備するやつと準備終了待ち
	[preparevideo]
	;右クリックサブルーチンでシステム移動した場合に、再開の時にここから↓が実行されないくさい。エロムービー中は右クリック移動禁止するしかないか
	[wp for=prepare]
	[playvideo]

	;ムービーの上のレイヤにイベントCGを消去
	[freeimage layer=2 page=fore]
[endmacro]


;エロムービー停止
[macro name=stopmovieH]
	;アニメオンならにしといたほうが良くない？回想の時に頭でオフれるから
	[if    exp="sf.g_anime_skip == 0"]
		[stopvideo]
		;ビデオレイヤ解除
		[clearvideolayer  channel=1]
		[freeimage layer=1 page=fore][freeimage layer=1 page=back]
		[eval exp="f.movie_loop   = 0"]
		[eval exp="f.movieplaynow = 0"]
		[eval exp="f.moviefile    = void"]

		;右クリックを有効に戻す
		;[if exp="sf.conf_rclick != 1"]
		[rclick enabled=true]
		;[endif]
	[endif]
[endmacro]


[return]

