; macro_bg.ks…背景用マクロ定義


;=============================================================
;タイトル用とかの暗転　シナリオ中は使用禁止
;=============================================================
;タイトル用とかにbaseに貼り込みの必要だわ
[macro name=ブラックアウトbase]
	[freeimage page=fore layer=0][freeimage page=back layer=0]
	[image storage="effect_black" layer=base page=back visible=true left=0 top=0]
[endmacro]

[macro name=ホワイトアウトbase]
	[freeimage page=fore layer=0][freeimage page=back layer=0]
	[image storage="effect_white" layer=base page=back visible=true left=0 top=0]
[endmacro]



;=============================================================
;シナリオ中の暗転マクロ
;=============================================================
;わざわざ一番上のレイヤに黒（白・赤）を貼るのは、Android移植時のため。

;色の指定とtransとhide_chara_intまで、一個のマクロで済むのつくってみたけど移植時に打ち替え面倒だもんなぁ。
[macro name=top]

;	;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
;	[if    exp="mp.winon == void"]
;これ逆にしたほうがいいかなぁ。
	[if    exp="mp.winoff"]
		;システムボタン＆ウィンドウ消去
		[sysbt_meswin clear]
		;[sysbt_SIROKURO clear]
	[endif]

	[eval exp="f.BGorEV = 1"]
	[eval exp="f.stdmsk=0"]
	;イベントCGのマスクフラグオフ
	[eval exp="f.mskon = 0"]

	[if    exp="mp.blk"][eval exp="f.effect_storage = 'effect_black'"]
	[elsif exp="mp.wht"][eval exp="f.effect_storage = 'effect_white'"]
	[elsif exp="mp.red"][eval exp="f.effect_storage = 'effect_red'"]
	[else][eval exp="f.effect_storage = 'effect_black'"]
	[endif]

	;黒（白・赤）を一番上のレイヤに　★
	[backlay_c]
	[image storage="&f.effect_storage" layer="&sf.toplayer" page=back visible=true left=0 top=0 opacity=255]
	[trans_c *  time=%time|1000]

	;前景レイヤを削除して背景（レイヤ0）を黒か白か赤にする
	[hide_chara_int *]

[endmacro]

	;=============================================================
	;シナリオ中の暗転マクロ
	;=============================================================

	[macro name=black_toplayer]

		;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
			;システムボタン＆ウィンドウ消去
			[sysbt_meswin clear]
			;[sysbt_SIROKURO clear]
		[endif]

		[eval exp="f.BGorEV = 1"]
		[eval exp="f.stdmsk=0"]
		;イベントCGのマスクフラグオフ
		[eval exp="f.mskon = 0"]
		;黒を一番上のレイヤに　★
		[backlay_c]
		[image storage="effect_black" layer="&sf.toplayer" page=back visible=true left=0 top=0]
	[endmacro]

	;=============================================================
	;シナリオ中の白転マクロ
	;=============================================================

	[macro name=white_toplayer]

		;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
		[if    exp="mp.winon == void"]
			;システムボタン＆ウィンドウ消去
			[sysbt_meswin clear]
			;[sysbt_SIROKURO clear]
		[endif]

		[eval exp="f.BGorEV = 1"]
		[eval exp="f.stdmsk=0"]
		;イベントCGのマスクフラグオフ
		[eval exp="f.mskon = 0"]
		;白を一番上のレイヤに　★
		[backlay_c]
		[image storage="effect_white" layer="&sf.toplayer" page=back visible=true left=0 top=0]
	[endmacro]

	;=============================================================
	;シナリオ中の赤転マクロ
	;=============================================================

	[macro name=red_toplayer]

		;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
		[if    exp="mp.winon == void"]
			;システムボタン＆ウィンドウ消去
			[sysbt_meswin clear]
			;[sysbt_SIROKURO clear]
		[endif]

		[eval exp="f.BGorEV = 1"]
		[eval exp="f.stdmsk=0"]
		;イベントCGのマスクフラグオフ
		[eval exp="f.mskon = 0"]
		;赤を一番上のレイヤに　★
		[backlay_c]
		[image storage="effect_red" layer="&sf.toplayer" page=back visible=true left=0 top=0]
	[endmacro]


;=============================================================
;前景レイヤを削除して背景（レイヤ0）を黒か白か赤にする
;=============================================================
;これも1個で済むのつくってみた

[macro name=hide_chara_int]
	;★必要なら適宜増やす
	;condしといたら可変に対応しやすい？
	[freeimage page=fore layer=0  cond="sf.toplayer > 0" ][freeimage page=back layer=0  cond="sf.toplayer > 0" ]
	[freeimage page=fore layer=1  cond="sf.toplayer > 1" ][freeimage page=back layer=1  cond="sf.toplayer > 1" ]
	[freeimage page=fore layer=2  cond="sf.toplayer > 2" ][freeimage page=back layer=2  cond="sf.toplayer > 2" ]
	[freeimage page=fore layer=3  cond="sf.toplayer > 3" ][freeimage page=back layer=3  cond="sf.toplayer > 3" ]
	[freeimage page=fore layer=4  cond="sf.toplayer > 4" ][freeimage page=back layer=4  cond="sf.toplayer > 4" ]
	[freeimage page=fore layer=5  cond="sf.toplayer > 5" ][freeimage page=back layer=5  cond="sf.toplayer > 5" ]
	[freeimage page=fore layer=6  cond="sf.toplayer > 6" ][freeimage page=back layer=6  cond="sf.toplayer > 6" ]
	[freeimage page=fore layer=7  cond="sf.toplayer > 7" ][freeimage page=back layer=7  cond="sf.toplayer > 7" ]
	[freeimage page=fore layer=8  cond="sf.toplayer > 8" ][freeimage page=back layer=8  cond="sf.toplayer > 8" ]
	[freeimage page=fore layer=9  cond="sf.toplayer > 9" ][freeimage page=back layer=9  cond="sf.toplayer > 9" ]
	[freeimage page=fore layer=10 cond="sf.toplayer > 10"][freeimage page=back layer=10 cond="sf.toplayer > 10"]
	[freeimage page=fore layer=11 cond="sf.toplayer > 11"][freeimage page=back layer=11 cond="sf.toplayer > 11"]
;レイヤ15枚あるけど黒を貼るトップはマイナス3で12を定義してるんだ。
	[freeimage page=fore layer=12 cond="sf.toplayer > 12"][freeimage page=back layer=12 cond="sf.toplayer > 12"]
	[freeimage page=fore layer=13 cond="sf.toplayer > 13"][freeimage page=back layer=13 cond="sf.toplayer > 13"]
	[freeimage page=fore layer=14 cond="sf.toplayer > 14"][freeimage page=back layer=14 cond="sf.toplayer > 14"]
	[freeimage page=fore layer=15 cond="sf.toplayer > 15"][freeimage page=back layer=15 cond="sf.toplayer > 15"]
	[freeimage page=fore layer=16 cond="sf.toplayer > 16"][freeimage page=back layer=16 cond="sf.toplayer > 16"]
	[freeimage page=fore layer=17 cond="sf.toplayer > 17"][freeimage page=back layer=17 cond="sf.toplayer > 17"]
	[freeimage page=fore layer=18 cond="sf.toplayer > 18"][freeimage page=back layer=18 cond="sf.toplayer > 18"]
	[freeimage page=fore layer=19 cond="sf.toplayer > 19"][freeimage page=back layer=19 cond="sf.toplayer > 19"]
	[freeimage page=fore layer=20 cond="sf.toplayer > 20"][freeimage page=back layer=20 cond="sf.toplayer > 20"]


	[if    exp="mp.blk"][eval exp="f.effect_storage = 'effect_black'"]
	[elsif exp="mp.wht"][eval exp="f.effect_storage = 'effect_white'"]
	[elsif exp="mp.red"][eval exp="f.effect_storage = 'effect_red'"]
	[else][eval exp="f.effect_storage = 'effect_black'"]
	[endif]

	;黒（白・赤）をベースに black_toplayerと同時やるとだめだからこっちで
	[backlay_c]
	[image * storage="&f.effect_storage" layer=0 page=back visible=true left=0 top=0 opacity=255]
	[trans time=0 method=crossfade][wt_c]

	;このマクロ内で消しとけば暗転から即キャラのみ表示とかできるからこれがいいか
	[freeimage page=fore layer="&sf.toplayer"][freeimage page=back layer="&sf.toplayer"]
[endmacro]



	;=============================================================
	;前景レイヤを削除して背景（レイヤ0）を黒にする
	;=============================================================
	;使用方法
	;[black_toplayer][trans_c cross][hide_chara_int]
	;[white_toplayer][trans_c cross][hide_chara_int_w]
	;[red_toplayer][trans_c cross][hide_chara_int_r]
	;トップレイヤへのtransが終わったあとに処理するために別マクロで必要だった。

	[macro name=hide_chara_int_b]
		;★必要なら適宜増やす
		;condしといたら可変に対応しやすい？
		[freeimage page=fore layer=0  cond="sf.toplayer > 0" ][freeimage page=back layer=0  cond="sf.toplayer > 0" ]
		[freeimage page=fore layer=1  cond="sf.toplayer > 1" ][freeimage page=back layer=1  cond="sf.toplayer > 1" ]
		[freeimage page=fore layer=2  cond="sf.toplayer > 2" ][freeimage page=back layer=2  cond="sf.toplayer > 2" ]
		[freeimage page=fore layer=3  cond="sf.toplayer > 3" ][freeimage page=back layer=3  cond="sf.toplayer > 3" ]
		[freeimage page=fore layer=4  cond="sf.toplayer > 4" ][freeimage page=back layer=4  cond="sf.toplayer > 4" ]
		[freeimage page=fore layer=5  cond="sf.toplayer > 5" ][freeimage page=back layer=5  cond="sf.toplayer > 5" ]
		[freeimage page=fore layer=6  cond="sf.toplayer > 6" ][freeimage page=back layer=6  cond="sf.toplayer > 6" ]
		[freeimage page=fore layer=7  cond="sf.toplayer > 7" ][freeimage page=back layer=7  cond="sf.toplayer > 7" ]
		[freeimage page=fore layer=8  cond="sf.toplayer > 8" ][freeimage page=back layer=8  cond="sf.toplayer > 8" ]
		[freeimage page=fore layer=9  cond="sf.toplayer > 9" ][freeimage page=back layer=9  cond="sf.toplayer > 9" ]
		[freeimage page=fore layer=10 cond="sf.toplayer > 10"][freeimage page=back layer=10 cond="sf.toplayer > 10"]
		[freeimage page=fore layer=11 cond="sf.toplayer > 11"][freeimage page=back layer=11 cond="sf.toplayer > 11"]
	;レイヤ15枚あるけど黒を貼るトップはマイナス3で12を定義してるんだ。
		[freeimage page=fore layer=12 cond="sf.toplayer > 12"][freeimage page=back layer=12 cond="sf.toplayer > 12"]
		[freeimage page=fore layer=13 cond="sf.toplayer > 13"][freeimage page=back layer=13 cond="sf.toplayer > 13"]
		[freeimage page=fore layer=14 cond="sf.toplayer > 14"][freeimage page=back layer=14 cond="sf.toplayer > 14"]
		[freeimage page=fore layer=15 cond="sf.toplayer > 15"][freeimage page=back layer=15 cond="sf.toplayer > 15"]
		[freeimage page=fore layer=16 cond="sf.toplayer > 16"][freeimage page=back layer=16 cond="sf.toplayer > 16"]
		[freeimage page=fore layer=17 cond="sf.toplayer > 17"][freeimage page=back layer=17 cond="sf.toplayer > 17"]
		[freeimage page=fore layer=18 cond="sf.toplayer > 18"][freeimage page=back layer=18 cond="sf.toplayer > 18"]
		[freeimage page=fore layer=19 cond="sf.toplayer > 19"][freeimage page=back layer=19 cond="sf.toplayer > 19"]
		[freeimage page=fore layer=20 cond="sf.toplayer > 20"][freeimage page=back layer=20 cond="sf.toplayer > 20"]
		;一番上はまだ消しちゃだめ。bgかevcgタグ時に消す
		;黒をベースに black_toplayerと同時やるとだめだからこっちで
		[backlay]
		[image * storage="effect_black" layer=0 page=back visible=true left=0 top=0 opacity=255][trans time=0 method=crossfade][wt_c]
		;このマクロ内で消しとけば暗転から即キャラのみ表示とかできるからこれがいいか
		[freeimage page=fore layer="&sf.toplayer"][freeimage page=back layer="&sf.toplayer"]
	[endmacro]

	;=============================================================
	;前景レイヤを削除して背景（レイヤ0）を白にする
	;=============================================================

	[macro name=hide_chara_int_w]
		;★必要なら適宜増やす
		[freeimage page=fore layer=0  cond="sf.toplayer > 0" ][freeimage page=back layer=0  cond="sf.toplayer > 0" ]
		[freeimage page=fore layer=1  cond="sf.toplayer > 1" ][freeimage page=back layer=1  cond="sf.toplayer > 1" ]
		[freeimage page=fore layer=2  cond="sf.toplayer > 2" ][freeimage page=back layer=2  cond="sf.toplayer > 2" ]
		[freeimage page=fore layer=3  cond="sf.toplayer > 3" ][freeimage page=back layer=3  cond="sf.toplayer > 3" ]
		[freeimage page=fore layer=4  cond="sf.toplayer > 4" ][freeimage page=back layer=4  cond="sf.toplayer > 4" ]
		[freeimage page=fore layer=5  cond="sf.toplayer > 5" ][freeimage page=back layer=5  cond="sf.toplayer > 5" ]
		[freeimage page=fore layer=6  cond="sf.toplayer > 6" ][freeimage page=back layer=6  cond="sf.toplayer > 6" ]
		[freeimage page=fore layer=7  cond="sf.toplayer > 7" ][freeimage page=back layer=7  cond="sf.toplayer > 7" ]
		[freeimage page=fore layer=8  cond="sf.toplayer > 8" ][freeimage page=back layer=8  cond="sf.toplayer > 8" ]
		[freeimage page=fore layer=9  cond="sf.toplayer > 9" ][freeimage page=back layer=9  cond="sf.toplayer > 9" ]
		[freeimage page=fore layer=10 cond="sf.toplayer > 10"][freeimage page=back layer=10 cond="sf.toplayer > 10"]
		[freeimage page=fore layer=11 cond="sf.toplayer > 11"][freeimage page=back layer=11 cond="sf.toplayer > 11"]
		[freeimage page=fore layer=12 cond="sf.toplayer > 12"][freeimage page=back layer=12 cond="sf.toplayer > 12"]
		[freeimage page=fore layer=13 cond="sf.toplayer > 13"][freeimage page=back layer=13 cond="sf.toplayer > 13"]
		[freeimage page=fore layer=14 cond="sf.toplayer > 14"][freeimage page=back layer=14 cond="sf.toplayer > 14"]
		[freeimage page=fore layer=15 cond="sf.toplayer > 15"][freeimage page=back layer=15 cond="sf.toplayer > 15"]
		[freeimage page=fore layer=16 cond="sf.toplayer > 16"][freeimage page=back layer=16 cond="sf.toplayer > 16"]
		[freeimage page=fore layer=17 cond="sf.toplayer > 17"][freeimage page=back layer=17 cond="sf.toplayer > 17"]
		[freeimage page=fore layer=18 cond="sf.toplayer > 18"][freeimage page=back layer=18 cond="sf.toplayer > 18"]
		[freeimage page=fore layer=19 cond="sf.toplayer > 19"][freeimage page=back layer=19 cond="sf.toplayer > 19"]
		[freeimage page=fore layer=20 cond="sf.toplayer > 20"][freeimage page=back layer=20 cond="sf.toplayer > 20"]
		;一番上はまだ消しちゃだめ。bgかevcgタグ時に消す
		;黒をベースに black_toplayerと同時やるとだめだからこっちで
		[backlay]
		[image * storage="effect_white" layer=0 page=back visible=true left=0 top=0 opacity=255][trans time=0 method=crossfade][wt_c]
		[freeimage page=fore layer="&sf.toplayer"][freeimage page=back layer="&sf.toplayer"]
	[endmacro]

	;=============================================================
	;前景レイヤを削除して背景（レイヤ0）を赤にする
	;=============================================================

	[macro name=hide_chara_int_r]
		;★必要なら適宜増やす
		[freeimage page=fore layer=0  cond="sf.toplayer > 0" ][freeimage page=back layer=0  cond="sf.toplayer > 0" ]
		[freeimage page=fore layer=1  cond="sf.toplayer > 1" ][freeimage page=back layer=1  cond="sf.toplayer > 1" ]
		[freeimage page=fore layer=2  cond="sf.toplayer > 2" ][freeimage page=back layer=2  cond="sf.toplayer > 2" ]
		[freeimage page=fore layer=3  cond="sf.toplayer > 3" ][freeimage page=back layer=3  cond="sf.toplayer > 3" ]
		[freeimage page=fore layer=4  cond="sf.toplayer > 4" ][freeimage page=back layer=4  cond="sf.toplayer > 4" ]
		[freeimage page=fore layer=5  cond="sf.toplayer > 5" ][freeimage page=back layer=5  cond="sf.toplayer > 5" ]
		[freeimage page=fore layer=6  cond="sf.toplayer > 6" ][freeimage page=back layer=6  cond="sf.toplayer > 6" ]
		[freeimage page=fore layer=7  cond="sf.toplayer > 7" ][freeimage page=back layer=7  cond="sf.toplayer > 7" ]
		[freeimage page=fore layer=8  cond="sf.toplayer > 8" ][freeimage page=back layer=8  cond="sf.toplayer > 8" ]
		[freeimage page=fore layer=9  cond="sf.toplayer > 9" ][freeimage page=back layer=9  cond="sf.toplayer > 9" ]
		[freeimage page=fore layer=10 cond="sf.toplayer > 10"][freeimage page=back layer=10 cond="sf.toplayer > 10"]
		[freeimage page=fore layer=11 cond="sf.toplayer > 11"][freeimage page=back layer=11 cond="sf.toplayer > 11"]
		[freeimage page=fore layer=12 cond="sf.toplayer > 12"][freeimage page=back layer=12 cond="sf.toplayer > 12"]
		[freeimage page=fore layer=13 cond="sf.toplayer > 13"][freeimage page=back layer=13 cond="sf.toplayer > 13"]
		[freeimage page=fore layer=14 cond="sf.toplayer > 14"][freeimage page=back layer=14 cond="sf.toplayer > 14"]
		[freeimage page=fore layer=15 cond="sf.toplayer > 15"][freeimage page=back layer=15 cond="sf.toplayer > 15"]
		[freeimage page=fore layer=16 cond="sf.toplayer > 16"][freeimage page=back layer=16 cond="sf.toplayer > 16"]
		[freeimage page=fore layer=17 cond="sf.toplayer > 17"][freeimage page=back layer=17 cond="sf.toplayer > 17"]
		[freeimage page=fore layer=18 cond="sf.toplayer > 18"][freeimage page=back layer=18 cond="sf.toplayer > 18"]
		[freeimage page=fore layer=19 cond="sf.toplayer > 19"][freeimage page=back layer=19 cond="sf.toplayer > 19"]
		[freeimage page=fore layer=20 cond="sf.toplayer > 20"][freeimage page=back layer=20 cond="sf.toplayer > 20"]
		;一番上はまだ消しちゃだめ。bgかevcgタグ時に消す
		;黒をベースに black_toplayerと同時やるとだめだからこっちで
		[backlay]
		[image * storage="effect_red" layer=0 page=back visible=true left=0 top=0 opacity=255][trans time=0 method=crossfade][wt_c]
		[freeimage page=fore layer="&sf.toplayer"][freeimage page=back layer="&sf.toplayer"]
	[endmacro]



;=============================================================
;背景
;=============================================================

;storageを直に%graにしちゃうとmpの保存とかも書き換えないといけなくて面倒なので2段階マクロにする。
;[macro name=bg]
;	[bg_ * storage=%gra]
;[endmacro]

;元々のマクロのほうをアンダーバー付きに
;[macro name=bg_]
[macro name=bg]

	[eval exp="f.BGorEV = 1"]

	;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
	[if    exp="mp.winon == void"]
		;システムボタン＆ウィンドウ消去
		[sysbt_meswin clear]
	[endif]

	;キャラ消すから裸だった場合にオンになってるフラグをオフる
	[eval exp="f.stdmsk = 0"]
	;イベントCGのマスクフラグオフ
	[eval exp="f.mskon = 0"]
	[eval exp="f.mskon2 = 0"]

		;layoptだと複数を同時に設定できないから変数に入れてimageタグで効果を実行する
		;でもあんまり使わないのに判定入りまくるのもなぁ
		;効果を記述する時はマクロ名の直後に書くこと！　bg sp って感じで
		;効果:黒白赤加算　ここでもできるようにしておくか
		;mcolorは一回定義されちゃうとそれ毎回入っちゃうんじゃね？だから先にやっとかないとだめか
		[if    exp="mp.blk"]
			[eval exp="f.bg_mcolor = '0x000000'"]
			[layopt layer=%layer|0  mcolor="&f.bg_mcolor" mopacity=%addopa|200]
		[elsif exp="mp.wht"]
			[eval exp="f.bg_mcolor = '0xffffff'"]
			[layopt layer=%layer|0  mcolor="&f.bg_mcolor" mopacity=%addopa|200]
		[elsif exp="mp.red"]
			[eval exp="f.bg_mcolor = '0xff0000'"]
			[layopt layer=%layer|0  mcolor="&f.bg_mcolor" mopacity=%addopa|200]
		[endif]

		;効果:セピア
		[if exp="mp.spi"]
			;[layopt layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 grayscale=true rgamma=1.3 ggamma=1.1]
			[eval exp="f.bg_grayscale = true"]
			[eval exp="f.bg_rgamma    = 2"]
			[eval exp="f.bg_ggamma    = 1.5"]
			[eval exp="f.bg_bgamma    = 1"]
		[elsif exp="mp.tv"]
			[eval exp="f.bg_grayscale = true"]
			[eval exp="f.bg_rgamma    = 0.3"]
			[eval exp="f.bg_ggamma    = 1.2"]
			[eval exp="f.bg_bgamma    = 0.9"]
		[else]
			[eval exp="f.bg_grayscale = false"]
			[eval exp="f.bg_rgamma    = 1"]
			[eval exp="f.bg_ggamma    = 1"]
			[eval exp="f.bg_bgamma    = 1"]
		[endif]


		;効果:白黒グレスケ セピアのグレスケと被っちゃうからspじゃない判定追加
		[if exp="mp.gray && mp.spi && mp.tv == void"]
			;効果:セピア用モヤモヤ　
			[eval exp="f.bg_grayscale = true"]
		[elsif exp="mp.spi == void && mp.tv == void"]
			[eval exp="f.bg_grayscale = false"]
		[endif]

		;効果:ネガポジ反転
		[if exp="mp.nps"]
			;[layopt layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0]
			[eval exp="f.bg_rfloor = 255"]
			[eval exp="f.bg_gfloor = 255"]
			[eval exp="f.bg_bfloor = 255"]
			[eval exp="f.bg_rceil  = 0"]
			[eval exp="f.bg_gceil  = 0"]
			[eval exp="f.bg_bceil  = 0"]
		[else]
			[eval exp="f.bg_rfloor = 0"]
			[eval exp="f.bg_gfloor = 0"]
			[eval exp="f.bg_bfloor = 0"]
			[eval exp="f.bg_rceil  = 255"]
			[eval exp="f.bg_gceil  = 255"]
			[eval exp="f.bg_bceil  = 255"]
		[endif]

		;効果:上下反転
		[if exp="mp.flipud"]
			;[layopt layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 flipud=true]
			[eval exp="f.bg_flipud = true"]
		[else]
			[eval exp="f.bg_flipud = false"]
		[endif]

		;効果:左右反転
		[if exp="mp.fliplr"]
			;[layopt layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 fliplr=true]
			[eval exp="f.bg_fliplr = true"]
		[else]
			[eval exp="f.bg_fliplr = false"]
		[endif]

	[backlay_c]
	;立ちキャラ消しいれちゃ不味いんだっけ？
	;一応cond入れておくか
	[chara_int_all cond="mp.charaon == void && mp.blur_x == void && mp.blur_y == void"]

	;効果:セピア用モヤモヤ　
	;&sf.effectlayer フェイスのフレームと被っちゃってるなぁ
	[image storage="effect_KAISOU" layer="&sf.effectlayer" page=back visible=true left=%x|0 top=%y|0 grayscale=true rgamma=2 ggamma=1.5 cond="mp.spi && mp.efoff == void"]
	[if exp="mp.tv"]
		[image storage="effect_KAISOU" layer="&sf.effectlayer" page=back visible=true left=0 top=0 grayscale=true  grayscale=true grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma" bgamma="&f.evcg_bgamma"]
	[endif]
	;一回使うと貼りっぱなしになっちゃうから消さないとだめか。自動判定だと面倒だからmpで
	[if exp="mp.spioff || mp.tvoff"]
		[freeimage layer="&sf.effectlayer" page=back]
	[endif]

@if exp="(existentImage(mp.storage)!==false)"
	;レイヤとページとビジブルとxyとopacityと各種効果は定義
	[image * layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 grayscale="&f.bg_grayscale"  rgamma="&f.bg_rgamma" ggamma="&f.bg_ggamma"  ggamma="&f.bg_ggamma" rfloor="&f.bg_rfloor" gfloor="&f.bg_gfloor" bfloor="&f.bg_bfloor" rceil="&f.bg_rceil" gceil="&f.bg_gceil" bceil="&f.bg_bceil" flipud="&f.bg_flipud" fliplr="&f.bg_fliplr" ]

	;拡縮用に背景を覚えておく
	[eval exp="f.bg_tmp = mp.storage"]
@endif
;	;黒白赤加算　ここでもできるようにしておくか
;	[if    exp="mp.bl"][eval exp="f.effect_storage = 'effect_black'"]
;	[elsif exp="mp.wh"][eval exp="f.effect_storage = 'effect_white'"]
;	[elsif exp="mp.re"][eval exp="f.effect_storage = 'effect_red'"]
;	;[else][eval exp="f.effect_storage = 'effect_black'"]
;	[endif]
;
;	;黒白赤加算　pimage
;	[if exp="mp.bl || mp.wh || mp.re"]
;	[pimage storage="&f.effect_storage" layer=%layer|0 page=back visible=true dx=0 dy=0 opacity=%bgaddopa]
;	[endif]

	;blurマクロに組み込んだ方がいいのか？
	;blur強度が書かれてればここで変数に入れちゃう。オンはマクロ内で入ってる。
	[eval exp="f.blur_layer = mp.layer" cond="(mp.blur_x != void || mp.blur_y != void) && mp.layer != void"]
	[eval exp="f.blur_layer = 0"        cond="(mp.blur_x != void || mp.blur_y != void) && mp.layer == void"]
	[eval exp="f.blur_x = mp.blur_x" cond="mp.blur_x != void"]
	[eval exp="f.blur_y = mp.blur_y" cond="mp.blur_y != void"]
	;blur命令
	[blur layer="&f.blur_layer" page=back blur_x="&f.blur_x" blur_y="&f.blur_y" cond="mp.blur_x|mp.blur_y"]
	;blur強度が書かれてなければ0にしておく
	[eval exp="f.bluron = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_x = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_y = 0" cond="mp.blur_x == void && mp.blur_y == void"]

;	[trans_c *  time=%time|1000]
[endmacro]
;bgマクロに統合
;	;=============================================================
;	;背景　キャラ消ししないやつ
;	;=============================================================
;	;普通のbgマクロにmpでやってもよさそうだけど
;	[macro name=bg_unint]
;		[eval exp="f.BGorEV = 1"]
;
;		;キャラ消すから裸だった場合にオンになってるフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;		;イベントCGのマスクフラグオフ
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		;属性多すぎるなぁ。*にして全部にするか。レイヤを0に固定するにはどうしたら
;		;[image *]
;		;imaegeに書くと長くて読みにくいからレイヤ設定にデフォを記述
;		;[layopt layer=0 page=back opacity=%opacity|255 grayscale=%grayscale|false rgamma=%rgamma|1.0 ggamma=%ggamma|1.0 bgamma=%bgamma|1.0 mcolor=%mcolor|false mopacity=%mopacity|false rfloor=%rfloor|0 gfloor=%gfloor|0 bfloor=%bfloor|0 rceil=%rceil|255 gceil=%gceil|255 bceil=%bceil|255 fliplr=%fliplr|false flipud=%flipud|false]
;		[backlay_c]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255]
;		;Ｈクエスト用に背景を覚えておく
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;背景 セピア処理
;	;=============================================================
;
;	[macro name=bg_sp]
;		[eval exp="f.BGorEV = 1"]
;
;		;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
;		[if    exp="mp.winon == void"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;
;		;キャラ消すから裸だった場合にオンになってるフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;		;イベントCGのマスクフラグオフ
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;
;		[backlay_c]
;		;立ちキャラ消しいれちゃ不味いんだっけ？
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 grayscale=true rgamma=2 ggamma=1.5]
;
;		;モヤモヤ　不要ならコメントアウトのほうがいいか？
;		[if    exp="mp.efoff == void"]
;		[image storage="effect_KAISOU" layer="&sf.toplayer - 1" page=back visible=true left=%x|0 top=%y|0 grayscale=true rgamma=2 ggamma=1.5]
;		[endif]
;
;		;Ｈクエスト用に背景を覚えておく
;		[eval exp="f.bg_tmp = mp.storage"]
;
;	[endmacro]
;
;	;=============================================================
;	;背景 ネガポジ反転
;	;=============================================================
;
;	[macro name=bg_np]
;		[eval exp="f.BGorEV = 1"]
;
;		;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
;		[if    exp="mp.winon == void"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;
;		;キャラ消すから裸だった場合にオンになってるフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;		;イベントCGのマスクフラグオフ
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		;立ちキャラ消しいれちゃ不味いんだっけ？
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0]
;		;Ｈクエスト用に背景を覚えておく
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;背景 上下反転
;	;=============================================================
;
;	[macro name=bg_ud]
;		[eval exp="f.BGorEV = 1"]
;
;		;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
;		[if    exp="mp.winon == void"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;
;		;キャラ消すから裸だった場合にオンになってるフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;		;イベントCGのマスクフラグオフ
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		;立ちキャラ消しいれちゃ不味いんだっけ？
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 flipud=true]
;		;Ｈクエスト用に背景を覚えておく
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;背景 左右反転
;	;=============================================================
;
;	[macro name=bg_lr]
;		[eval exp="f.BGorEV = 1"]
;
;		;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
;		[if    exp="mp.winon == void"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;
;		;キャラ消すから裸だった場合にオンになってるフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;		;イベントCGのマスクフラグオフ
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		;立ちキャラ消しいれちゃ不味いんだっけ？
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 fliplr=true]
;		;Ｈクエスト用に背景を覚えておく
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;背景 黒加算
;	;=============================================================
;
;	;mcolor=0x00000 mopacity=200でやれば簡単だが移植時の事を考慮してeffect_black等をpimageする
;	;属性 opacity必須
;	[macro name=bg_bl]
;		[eval exp="f.BGorEV = 1"]
;
;		;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
;		[if    exp="mp.winon == void"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;
;		;キャラ消すから裸だった場合にオンになってるフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;		;イベントCGのマスクフラグオフ
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		;立ちキャラ消しいれちゃ不味いんだっけ？
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255]
;		[pimage storage="effect_black" layer=%layer|0 page=back visible=true dx=0 dy=0 opacity=%bgaddopa]
;		;Ｈクエスト用に背景を覚えておく
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;背景 白加算
;	;=============================================================
;
;	;属性 opacity必須
;	[macro name=bg_wh]
;		[eval exp="f.BGorEV = 1"]
;
;		;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
;		[if    exp="mp.winon == void"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;
;		;キャラ消すから裸だった場合にオンになってるフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;		;イベントCGのマスクフラグオフ
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		;立ちキャラ消しいれちゃ不味いんだっけ？
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255]
;		[pimage storage="effect_white" layer=%layer|0 page=back visible=true dx=0 dy=0 opacity=%bgaddopa]
;		;Ｈクエスト用に背景を覚えておく
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;背景 白加算
;	;=============================================================
;
;	;属性 opacity必須
;	[macro name=bg_wh_unint]
;		[eval exp="f.BGorEV = 1"]
;
;		;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
;		[if    exp="mp.winon == void"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;
;		;キャラ消すから裸だった場合にオンになってるフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;		;イベントCGのマスクフラグオフ
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255]
;		[pimage storage="effect_white" layer=%layer|0 page=back visible=true dx=0 dy=0 opacity=%bgaddopa]
;		;Ｈクエスト用に背景を覚えておく
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;背景 赤加算
;	;=============================================================
;
;	;属性 opacity必須
;	[macro name=bg_re]
;		[eval exp="f.BGorEV = 1"]
;
;		;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
;		[if    exp="mp.winon == void"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;
;		;キャラ消すから裸だった場合にオンになってるフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;		;イベントCGのマスクフラグオフ
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		;立ちキャラ消しいれちゃ不味いんだっけ？
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255]
;		[pimage storage="effect_red" layer=%layer|0 page=back visible=true dx=0 dy=0 opacity=%bgaddopa]
;		;Ｈクエスト用に背景を覚えておく
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]


;=============================================================
;背景 過去回想的な演出
;=============================================================

;青みがかったグレスケ
[macro name=bg_kaisou]
	[eval exp="f.BGorEV = 1"]

	;winonが書かれて無ければ消す。winonがある場合はウィンドウ継続
	[if    exp="mp.winon == void"]
		;システムボタン＆ウィンドウ消去
		[sysbt_meswin clear]
	[endif]

	;キャラ消すから裸だった場合にオンになってるフラグをオフる
	[eval exp="f.stdmsk = 0"]
	;イベントCGのマスクフラグオフ
	[eval exp="f.mskon = 0"]
	[eval exp="f.mskon2 = 0"]
	;属性多すぎるなぁ。*にして全部にするか。レイヤを0に固定するにはどうしたら
	;[image *]
	;imaegeに書くと長くて読みにくいからレイヤ設定にデフォを記述
	;[layopt layer=0 page=back opacity=%opacity|255 grayscale=%grayscale|false rgamma=%rgamma|1.0 ggamma=%ggamma|1.0 bgamma=%bgamma|1.0 mcolor=%mcolor|false mopacity=%mopacity|false rfloor=%rfloor|0 gfloor=%gfloor|0 bfloor=%bfloor|0 rceil=%rceil|255 gceil=%gceil|255 bceil=%bceil|255 fliplr=%fliplr|false flipud=%flipud|false]
	[backlay_c]
	;立ちキャラ消しいれちゃ不味いんだっけ？
	[chara_int_all cond="mp.charaon == void"]
	[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 grayscale=true rgamma=0.5 ggamma=0.5 bgamma=1 rfloor=20 gfloor=20 bfloor=20]

	;モヤモヤ　不要ならコメントアウトのほうがいいか？
	[if    exp="mp.efoff == void"]
	[image storage="effect_KAISOU" layer="&sf.toplayer - 1" page=back visible=true left=%x|0 top=%y|0 grayscale=true rgamma=0.5 ggamma=0.5 bgamma=1 rfloor=20 gfloor=20 bfloor=20]
	[endif]

	;Ｈクエスト用に背景を覚えておく
	[eval exp="f.bg_tmp = mp.storage"]

[endmacro]


;=============================================================
;キャラ大になったら背景も大にするためのマクロ
;=============================================================

	;現在のサイズが小か中なら、大なら背景も大に。mp.nobigは大きくしないためのmp
	;んー、他のキャラが小だった場合は、これじゃダメじゃね？ch4が最後に表示したサイズで判定しちゃうからあぁ

;立ちに組み込むと例外的な処理（ブラーしないとか大にしないとか）が面倒くさい
;	[macro name=bg_size_change]
;		;直前のキャラの大きさを保存しておかないといけないのか。例えば大と小を同時に貼ってある場合の判定は……
;
;		;直前がキャラ小中→大へ
;		[if    exp="mp.l && mp.nobig == void && (f.stdsize == 's' || f.stdsize == 'm')"]
;
;			;あとで元のサイズに戻すために、変数に今の背景のファイル名を保存
;			[eval exp="f.bg_tmp2 = f.bg_tmp"]
;			;f.bg_tmpに大をつけてblurもかけるか
;			;winon（ウィンドウ消さない）を入れておかないと、ウィンドウ消し処理入ってtransしてしまうのでキャラ同時消し効かなくなる
;			[bg  storage="&f.bg_tmp + '大'" winon charaon blur_x=5 blur_y=5]
;
;		;立ち大と同時に貼ってる場合は、mpで処理無しの判定。↓の条件より先におかないとだめ。
;		[elsif exp="(mp.andl)"]
;
;		;直前がキャラ大→小中へ
;		[elsif exp="(mp.s || mp.m) && f.stdsize == 'l'"]
;			;保存してたtmp2を書き戻す
;			[eval exp="f.bg_tmp = f.bg_tmp2"]
;			;winon（ウィンドウ消さない）を入れておかないと、ウィンドウ消し処理入ってtransしてしまうのでキャラ同時消し効かなくなる
;			;f.bg_tmp
;			[bg  storage="&f.bg_tmp" winon charaon]
;
;		[endif]
;
;	[endmacro]




;テスト用に↑のマクロ切り分けたの
[macro name=bg_l]
;	[if    exp="mp.nobig == void && (f.stdsize == 's' || f.stdsize == 'm')"]
	;サイズで避けちゃうと、別の背景大から別の背景大に切り替わらなくなっちゃうか
;	[if    exp="f.bg_size == 0"]
		;あとで元のサイズに戻すために、変数に今の背景のファイル名を保存
		[eval exp="f.bg_tmp2 = f.bg_tmp"]
;		;BG拡大中フラグ 1なら拡大中、0なら通常
;		[eval exp="f.bg_size = 1"]

		;f.bg_tmpに大をつけてblurもかけるか
		;もしすでに大を貼ってるのに大にしちゃうと大大になるから自動でエラー出ないようにしないといけないか
		;bg_001_雨大
		;01234567 8
		;winon（ウィンドウ消さない）を入れておかないと、ウィンドウ消し処理入ってtransしてしまうのでキャラ同時消し効かなくなる
		;Y-90じゃなくて0のほうが自然かな
		[if    exp="mp.noblur != void && f.bg_tmp.substring(8,1) != '大'"][bg * storage="&f.bg_tmp + '大'" winon charaon  x=%x|-160 y=%y|0]
		[elsif exp="mp.noblur == void && f.bg_tmp.substring(8,1) != '大'"][bg * storage="&f.bg_tmp + '大'" winon charaon blur_x=%blur_x|3 blur_y=%blur_y|3 x=%x|-160 y=%y|0]
		[elsif exp="mp.noblur != void && f.bg_tmp.substring(8,1) == '大'"][bg * storage="&f.bg_tmp"        winon charaon x=%x|-160 y=%y|0]
		[elsif exp="mp.noblur == void && f.bg_tmp.substring(8,1) == '大'"][bg * storage="&f.bg_tmp"        winon charaon blur_x=%blur_x|3 blur_y=%blur_y|3 x=%x|-160 y=%y|0]
		[endif]
;	[endif]
[endmacro]


[macro name=bg_s]
	;立ち大と同時に貼ってる場合は、mpで処理無しの判定
	;[if    exp="(mp.andl)"]
	;[if exp="f.stdsize == 'l'"]
;	[if    exp="f.bg_size == 1"]
		;保存してたtmp2を書き戻す
		[eval exp="f.bg_tmp = f.bg_tmp2"]
;		;BG拡大中フラグ 1なら拡大中、0なら通常
;		[eval exp="f.bg_size = 0"]

		;f.bg_tmp
		[bg * storage="&f.bg_tmp" winon charaon x=%x|0 y=%y|0]

		;念の為カラにしておく　カラのままこのマクロでbgを切り替えようとした場合は。bgマクロ内のフェイルセーフで背景は更新されない
		;これが有るのはbg_lのまま別背景に切り変えたとき対策だっけ？
		;これ外に出しちゃうとbg_s2回踏みでバグになっちゃうなぁ
		[eval exp="f.bg_tmp2 = void"]

;	[endif]
[endmacro]

[macro name=bg_m][bg_s][endmacro]

[return]
