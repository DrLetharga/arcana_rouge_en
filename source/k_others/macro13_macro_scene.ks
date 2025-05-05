

;回想に必要なマクロ
[macro name=scene_exp_init]
	;変数初期化マクロ実行
	[exp_init]
	;スキップ解除しとくか
	[cancelskip]
	;オートも解除しとくか
	[cancelautomode]
	;黒やっとかないとしょっぱなのCGがフェードしない？
	[black_toplayer][trans time=100 method=crossfade][wt_c][hide_chara_int]
[endmacro]

;回想一覧に戻る前の処理
[macro name=scene_end_bg]
	;システムボタン＆ウィンドウ消去
	[sysbt_meswin_clear]
	;[black_toplayer][trans time=500 method=crossfade][wt_c][hide_chara_int]

	[stopse_all]
	;BGM停止
	[stopbgm]
	[backlay]
	[layopt layer=base page=back grayscale=true]
	[layopt layer=1    page=back grayscale=true]
	[image storage="effect_black" layer=5 opacity=150 page=back visible=true left=0 top=0]
	[trans time=500 method=crossfade][wt_c]

[endmacro]


[macro name=scene_end]
	;[if exp="f.fromSceneList == 1"]
	;	[scene_end_bg]
	;	[link storage=sceneAgain]もう一度見る[endlink]
	;	[link storage=sceneList]一覧に戻る[endlink]
	;	[s]
	;[endif]

	; 回想モード中なら、回想モード画面に戻る
	[if exp="tf.scene_mode == 1"]
		[bgvstop]
		[jump storage="b_scene.ks" target=*back_from_SR]
	[endif]

[endmacro]

[return]
