;演出系マクロまとめ
;作品によっては該当画像入れて無かったりするので注意。

;=============================================================
;;;;;;;;;;;;;;;;Android移植しやすいようにマクロ追加
;カスタムbacklay
;=============================================================
[macro name=backlay_c]

	;backlay実行中フラグがオフならbacklayしてフラグをオンにする。
	[if exp="f.backlay_on == 0"]
		[eval exp="f.backlay_on = 1"]
		[backlay]
	[endif]

[endmacro]

;=============================================================
;カスタムWT
;=============================================================
;シナリオ内でのトランスは基本的にwt_cで記述する。マクロとかの場合は適宜。

[macro name=wt_c]

	;スキップモードならcanskip=falseしない
	[if exp="kag.skipMode >= 3"]
		[wt]
	[else]
;スキップ可に2016/10/24
		[wt canskip=true]
;		[wt]
	[endif]
	[eval exp="f.backlay_on = 0"]

	;入れてみるか
	;立ちキャラマクロでオンにするのめんどくせからやめた
	;[freeimage layer=1  page=fore cond="f.layer1  == 0"][freeimage layer=1  page=back cond="f.layer1  == 0"]
	;[freeimage layer=2  page=fore cond="f.layer2  == 0"][freeimage layer=2  page=back cond="f.layer2  == 0"]
	;[freeimage layer=3  page=fore cond="f.layer3  == 0"][freeimage layer=3  page=back cond="f.layer3  == 0"]
	;[freeimage layer=4  page=fore cond="f.layer4  == 0"][freeimage layer=4  page=back cond="f.layer4  == 0"]
	;[freeimage layer=5  page=fore cond="f.layer5  == 0"][freeimage layer=5  page=back cond="f.layer5  == 0"]
	;[freeimage layer=6  page=fore cond="f.layer6  == 0"][freeimage layer=6  page=back cond="f.layer6  == 0"]
	;[freeimage layer=7  page=fore cond="f.layer7  == 0"][freeimage layer=7  page=back cond="f.layer7  == 0"]
	;[freeimage layer=8  page=fore cond="f.layer8  == 0"][freeimage layer=8  page=back cond="f.layer8  == 0"]
	;[freeimage layer=9  page=fore cond="f.layer9  == 0"][freeimage layer=9  page=back cond="f.layer9  == 0"]
	;[freeimage layer=10 page=fore cond="f.layer10 == 0"][freeimage layer=10 page=back cond="f.layer10 == 0"]
	;[freeimage layer=11 page=fore cond="f.layer11 == 0"][freeimage layer=11 page=back cond="f.layer11 == 0"]
	;[freeimage layer=12 page=fore cond="f.layer12 == 0"][freeimage layer=12 page=back cond="f.layer12 == 0"]
	;[freeimage layer="&sf.layerC"  page=fore cond="f.layerC  == 0"][freeimage layer="&sf.layerC"  page=back cond="f.layerC  == 0"]
	;[freeimage layer="&sf.layerL"  page=fore cond="f.layerL  == 0"][freeimage layer="&sf.layerL"  page=back cond="f.layerL  == 0"]
	;[freeimage layer="&sf.layerR"  page=fore cond="f.layerR  == 0"][freeimage layer="&sf.layerR"  page=back cond="f.layerR  == 0"]
	;[freeimage layer="&sf.layerLC" page=fore cond="f.layerLC == 0"][freeimage layer="&sf.layerLC" page=back cond="f.layerLC == 0"]
	;[freeimage layer="&sf.layerRC" page=fore cond="f.layerRC == 0"][freeimage layer="&sf.layerRC" page=back cond="f.layerRC == 0"]


[endmacro]

;;;;;;;;;;;;;;;;Android移植しやすいようにマクロ追加

;押下中は4なのか？

;=============================================================
;カスタムウェイト
;=============================================================
;無意味なのでデフォのwaitでやる

[macro name=wait_c]
	;スキップモードならcanskip=falseしない
	[if exp="kag.skipMode >= 3"]
		[wait time=%time]
	[else]
;スキップ可に2016/10/24
		[wait time=%time canskip=true]
;		[wait time=%time]
	[endif]
[endmacro]

;=============================================================
;カスタムウェイト エンディング用
;=============================================================
[macro name=wait_c2]
	;スキップモードならcanskip=falseしない
	[if exp="kag.skipMode >= 3"]
		[wait time=0]
	[else]
		[wait time=%time canskip=false]
;		[wait time=%time]
	[endif]
[endmacro]


;=============================================================
;カスタムWM これはいらないか
;=============================================================
[macro name=wm_c]
	;スキップモードならcanskip=falseしない
	[if exp="kag.skipMode >= 3"]
		[wm]
	[else]
;		[wm canskip=false]
		[wm]

	[endif]
[endmacro]




;=============================================================
; 白フラ
;=============================================================
[macro name=白フラ]
	; エフェクトがオンなら白フラ
	[if exp="sf.efect"]
	;システムボタン＆ウィンドウ消去
	[sysbt_meswin clear]

		[backlay][image storage="effect_white" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
;[trans method=universal rule="wipe2" vague=300 time=100][wt_c]
[trans time=%time|100 method=crossfade][wt]
		[wait time=100]
		[backlay][image storage="chara_int" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans time=%time|300 method=crossfade][wt]
		[freeimage layer="&sf.effectlayer" page=back]
		[freeimage layer="&sf.effectlayer" page=fore]

	;メッセージ＆システムボタン表示
	;[sysbt_meswin]
	[endif]
[endmacro]

;=============================================================
; 赤フラ
;=============================================================
[macro name=赤フラ]
	; エフェクトがオンなら赤フラ
	[if exp="sf.efect"]
	;システムボタン＆ウィンドウ消去
	[sysbt_meswin clear]

		[backlay][image storage="effect_red" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		[wait time=100]
		[backlay][image storage="chara_int" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans time=%time|300 method=crossfade][wt]
		[freeimage layer="&sf.effectlayer" page=back]
		[freeimage layer="&sf.effectlayer" page=fore]

	;メッセージ＆システムボタン表示
	;[sysbt_meswin]
	[endif]
[endmacro]


;=============================================================
; 黒フラ
;=============================================================
[macro name=黒フラ]
	; エフェクトがオンなら黒フラ
	[if exp="sf.efect"]
	;システムボタン＆ウィンドウ消去
	[sysbt_meswin clear]

		[backlay][image storage="effect_black" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
;[trans time=%time|100 method=crossfade][wt]
[trans_c * time=%time|100]
;[trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		[wait time=100]
		[backlay][image storage="chara_int" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
;[trans time=%time|300 method=crossfade][wt]
[trans_c * time=%time|100]
		[freeimage layer="&sf.effectlayer" page=back]
		[freeimage layer="&sf.effectlayer" page=fore]

	;メッセージ＆システムボタン表示
	;[sysbt_meswin]
	[endif]
[endmacro]


;=============================================================
; 雷フラ　透過80くらいの画像なので色々注意
;=============================================================
; システムボタン＆ウィンドウのオンオフは別途命令を入れる。
;[macro name=雷フラ]
;	; エフェクトがオンなら雷フラ
;	[if exp="sf.efect"]
;		[wait time=100]
;		[backlay]
;		[image storage="thunder2" layer=10 page=back visible=true left=0 top=0]
;		[trans time=0 method=crossfade]
;		[wt]
;		[wait time=200]
;		[backlay]
;		[image storage="chara_int" layer=10 page=back visible=true left=0 top=0]
;		[trans time=500 method=crossfade]
;		[wt]
;		[freeimage layer=10 page=back][freeimage layer=10 page=fore]
;	[endif]
;[endmacro]


;=============================================================
;射精フラAB 使わない。面倒だから。
;=============================================================
;			;
;			; syaseil射精フラ
;			;
;			;使い方
;			;[射精フラA]
;			;[image storage="EVE001a" layer=base page=back visible=true]
;			;[射精フラB]
;			;
;			;射精フラAパーツ
;			[macro name=射精フラA]
;				; エフェクトがオンなら射精フラ
;				[if exp="sf.efect == 1"]
;
;					;システムボタン＆ウィンドウ消去
;					[sysbt_meswin clear]
;					[backlay][image storage="effect_white" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
;
;					[wait time=50]
;					[backlay][image storage="chara_int" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans time=150 method=crossfade][wt]
;
;					[wait time=150]
;
;					[backlay][image storage="effect_white" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
;					[wait time=50]
;					[backlay][image storage="chara_int" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans time=150 method=crossfade][wt]
;				
;					[wait time=150]
;
;					[backlay][image storage="effect_white" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
;				[endif]
;			[endmacro]
;
;			;射精フラBパーツ
;			[macro name=射精フラB]
;				; エフェクトがオンなら射精フラ
;				[if exp="sf.efect == 1"]
;					[backlay][image storage="chara_int" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans time=500 method=crossfade][wt_c]
;				[endif]
;
;				;[trans time=500 method=crossfade]
;				;[wt]
;
;				[if exp="sf.efect == 1"]
;					[freeimage layer="&sf.effectlayer" page=back]
;					[freeimage layer="&sf.effectlayer" page=fore]
;					;メッセージ＆システムボタン表示
;					[sysbt_meswin]
;				[endif]
;			[endmacro]

;=============================================================


;;;;;;;;;;;;;;;;Android移植しやすいようにマクロ追加


;=============================================================
;evcg射精フラ
;=============================================================
;属性
;layer 記述しなければbase
;left  記述しなければ0
;top   記述しなければ0
[macro name=evcg射精フラ]



	; エフェクトがオンなら射精フラ
	[if exp="sf.efect == 1"]

		;システムボタン＆ウィンドウ消去
		[sysbt_meswin clear]
		;[sysbt_SIROKURO clear]

		;[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=0][wt_c]
		[wait time=150]
		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0][trans time=150 method=crossfade][wt_c]

		[wait time=150]

		;[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt]
		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=0][wt_c]
		[wait time=300]
		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0][trans time=300 method=crossfade][wt_c]
	
		[wait time=150]
	[endif]

	[if    exp="mp.seoff == void"]
		[stopse buf=1]
		[stopse buf=2]
		[stopse buf=3]
		[se buf=0 storage=%se|se_sex01a]
	[endif]

	;射精差分                               sf.efectがオンなら白も貼る
	;[evcg storage=%storage layer=%layer|0]
	[evcg * cond="mp.storage != void"]
	[evcg_cutin * storage=%cutin cond="mp.cutin != void"]

	[image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 cond="sf.efect"]

	[if exp="sf.efect == 1"]
		[trans time=0 method=crossfade][wt_c]
		[wait time=300]
		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0][trans time=800 method=crossfade][wt_c]

		[freeimage layer="&sf.effectlayerH" page=back]
		[freeimage layer="&sf.effectlayerH" page=fore]

		;メッセージ＆システムボタン表示
		;[sysbt_meswin]
	[else]
		[trans time=300 method=crossfade][wt_c]
	[endif]

[endmacro]

;;;;;;;;;;;;;;;;Android移植しやすいようにマクロ追加


;=============================================================
;メスフラ
;=============================================================
[macro name=メスフラ]
	; エフェクトがオンなら白フラ
	[if exp="sf.efect"]
		;システムボタン＆ウィンドウ消去
		[sysbt_meswin clear]
		;[sysbt_SIROKURO clear]

		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		[wait time=50]
		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans time=150 method=crossfade][wt]


		[wait time=150]

		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		[wait time=50]
		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans time=300 method=crossfade][wt]


		[wait time=150]

		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		[wait time=50]
		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans time=%time|300 method=crossfade][wt]

		[freeimage layer="&sf.effectlayerH" page=back]
		[freeimage layer="&sf.effectlayerH" page=fore]


		;システムボタン＆ウィンドウ表示
		;[sysbt_meswin]
	[endif]
[endmacro]

;=============================================================
;bg白フラ
;=============================================================
;backlayとtranceはマクロ内で行うので記述不要。使い方は下記。
;例
;[bg赤フラ storage="EV23_02" layer=0 page=back visible=true left=0 top=0]
;
[macro name=bg白フラ]
	; エフェクトがオンなら射精フラ
	[if exp="sf.efect == 1"]
		;システムボタン＆ウィンドウ消去
		[sysbt_meswin clear]

		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans_c cross time=0]
		;イベントCG
		;[bg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=0 method=crossfade][wt_c]
		[bg * cond="mp.storage != void"]
		[trans time=0 method=crossfade][wt_c]

		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans_c *]

		;システムボタン＆ウィンドウ表示
		;[sysbt_meswin]

	[else]
		;[bg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=%time|300 method=crossfade][wt_c]
		[bg * cond="mp.storage != void"]
		[trans time=%time|300 method=crossfade][wt_c]
	[endif]
[endmacro]



;=============================================================
;bg赤フラ
;=============================================================
;backlayとtranceはマクロ内で行うので記述不要。使い方は下記。
;例
;[bg赤フラ storage="EV23_02" layer=0 page=back visible=true left=0 top=0]
;
[macro name=bg赤フラ]
	; エフェクトがオンなら射精フラ
	[if exp="sf.efect == 1"]
		;システムボタン＆ウィンドウ消去
		[sysbt_meswin clear]

		[backlay][image storage="effect_red" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans_c cross time=0]
		;イベントCG
		;[bg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=0 method=crossfade][wt_c]
		[bg * cond="mp.storage != void"]
		[trans time=0 method=crossfade][wt_c]

		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans_c *]

		;システムボタン＆ウィンドウ表示
		;[sysbt_meswin]

	[else]
		;[bg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=%time|300 method=crossfade][wt_c]
		[bg * cond="mp.storage != void"]
		[trans time=%time|300 method=crossfade][wt_c]
	[endif]
[endmacro]

;=============================================================



;=============================================================
;bg黒フラ
;=============================================================
;backlayとtranceはマクロ内で行うので記述不要。使い方は下記。
;例
;[bg赤フラ storage="EV23_02" layer=0 page=back visible=true left=0 top=0]
;
[macro name=bg黒フラ]
	; エフェクトがオンなら射精フラ
	[if exp="sf.efect == 1"]
		;システムボタン＆ウィンドウ消去
		[sysbt_meswin clear]

		[backlay][image storage="effect_black" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans_c cross time=0]
		;イベントCG
		;[bg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=0 method=crossfade][wt_c]
		[bg * cond="mp.storage != void"]
		[trans time=0 method=crossfade][wt_c]

		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans_c *]

		;システムボタン＆ウィンドウ表示
		;[sysbt_meswin]

	[else]
		;[bg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=%time|300 method=crossfade][wt_c]
		[bg * cond="mp.storage != void"]
		[trans time=%time|300 method=crossfade][wt_c]
	[endif]
[endmacro]



;=============================================================
;evcg白フラ
;=============================================================
;backlayとtranceはマクロ内で行うので記述不要。使い方は下記。
;例
;[evcg赤フラ storage="EV23_02" layer=0 page=back visible=true left=0 top=0]
;
[macro name=evcg白フラ]
	; エフェクトがオンなら射精フラ
	[if exp="sf.efect == 1"]
		;システムボタン＆ウィンドウ消去
		[sysbt_meswin clear]

		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		;イベントCG
		;[evcg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=0 method=crossfade][wt_c]
		[evcg * cond="mp.storage != void"]
		[evcg_cutin * storage=%cutin cond="mp.cutin != void"]
		[trans time=0 method=crossfade][wt_c]

		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans time=%time|500 method=crossfade][wt]

		;システムボタン＆ウィンドウ表示
		;[sysbt_meswin]

	[else]
		;[evcg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=%time|300 method=crossfade][wt_c]
		[evcg * cond="mp.storage != void"]
		[evcg_cutin * storage=%cutin cond="mp.cutin != void"]
		[trans time=%time|300 method=crossfade][wt_c]
	[endif]
[endmacro]



;=============================================================
;evcg赤フラ
;=============================================================
;backlayとtranceはマクロ内で行うので記述不要。使い方は下記。
;例
;[evcg赤フラ storage="EV23_02" layer=0 page=back visible=true left=0 top=0]
;
[macro name=evcg赤フラ]
	; エフェクトがオンなら射精フラ
	[if exp="sf.efect == 1"]
		;システムボタン＆ウィンドウ消去
		[sysbt_meswin clear]

		[backlay][image storage="effect_red" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		;イベントCG
		;[evcg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=0 method=crossfade][wt_c]
		[evcg * cond="mp.storage != void"]
		[evcg_cutin * storage=%cutin cond="mp.cutin != void"]
		[trans time=0 method=crossfade][wt_c]

		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans time=%time|500 method=crossfade][wt]

		;システムボタン＆ウィンドウ表示
		;[sysbt_meswin]

	[else]
		;[evcg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=%time|300 method=crossfade][wt_c]
		[evcg * cond="mp.storage != void"]
		[evcg_cutin * storage=%cutin cond="mp.cutin != void"]
		[trans time=%time|300 method=crossfade][wt_c]
	[endif]
[endmacro]

;=============================================================


;freeimageあってないかも

;同名マクロある
;	;ザッピングボタンの消去＆暗転用マクロ。
;	;tranceは姦染用にrandomにしとくので別作品で使うなら適宜修正。
;	;属性無し
;	[macro name=selbt_clear]
;
;
;	;移植用	;キャラ消し＆ベース暗転じゃなくて上に黒
;	;移植用	[backlay][image storage="effect_black" layer=9 page=back visible=true left=0 top=0]
;	;移植用	[trans method=universal rule="random" vague=10 time=1000][wt_c]
;	;移植用
;	;移植用	;ベースを黒に
;	;移植用	[image storage="effect_black" layer=base page=fore visible=true left=0 top=0]
;	;移植用	;こっちでキャラ消し
;	;移植用	[freeimage layer=0 page=fore][freeimage layer=0 page=back]
;	;移植用	[freeimage layer=1 page=fore][freeimage layer=1 page=back]
;	;移植用	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
;	;移植用	[freeimage layer=3 page=fore][freeimage layer=3 page=back]
;	;移植用	[freeimage layer=4 page=fore][freeimage layer=4 page=back]
;	;移植用	[freeimage layer=5 page=fore][freeimage layer=5 page=back]
;	;移植用	[freeimage layer=6 page=fore][freeimage layer=6 page=back]
;	;移植用	[freeimage layer=7 page=fore][freeimage layer=7 page=back]
;	;移植用	[freeimage layer=8 page=fore][freeimage layer=8 page=back]
;	;移植用	[freeimage layer=9 page=fore][freeimage layer=9 page=back]
;	;移植用
;	;移植用	[wait_c time=500]
;	;移植用
;	;移植用	;レイヤカウント戻す
;	;移植用	[laycount layers="&sf.maxlayers"]
;
;	[eval exp="f.selbt = 0"]
;	[cm]
;	[layopt layer="&sf.zap_message" page=fore visible=false]
;
;	;カレントレイヤを戻す
;	[current layer=message0]
;
;	; メッセージ履歴への出力を再開、表示可にする
;	[history output=true enabled=true]
;
;	[endmacro]


;=============================================================
;ザッピング（視点変更）終了時
;=============================================================

[macro name=zapend_random]

;移植用	;システムボタン＆ウィンドウ消去
;移植用	[sysbt_meswin_clear]
;移植用
;移植用	[stopse_all]
;移植用	;キャラ消し＆ベース暗転じゃなくて上に黒
;移植用	[backlay][image storage="effect_black" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
;移植用	[trans method=universal rule="random" vague=10 time=1000][wt_c]
;移植用	;ベースを黒に
;移植用	[image storage="effect_black" layer=base page=fore visible=true left=0 top=0]
;移植用	;こっちでキャラ消し
;移植用	[freeimage layer=0 page=fore][freeimage layer=0 page=back]
;移植用	[freeimage layer=1 page=fore][freeimage layer=1 page=back]
;移植用	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
;移植用	[freeimage layer=3 page=fore][freeimage layer=3 page=back]
;移植用	[freeimage layer="&sf.effectlayer" page=fore][freeimage layer="&sf.effectlayer" page=back]
;移植用
;移植用	[wait_c time=500]

;システムボタン＆ウィンドウ消去
[sysbt_meswin clear]
		;[sysbt_SIROKURO clear]

;BGM停止
[fadeoutbgm time=500]

[backlay][black_toplayer][trans method=universal rule="random" vague=10 time=1500][wt_c][hide_chara_int]

[stopse_all]
[wait_c time=1000]

[endmacro]

;=============================================================
;ザッピング（視点変更）終了時
;=============================================================

;すでに黒の場合こっち。黒から白→黒
[macro name=zapend_random2]

;移植用	;システムボタン＆ウィンドウ消去
;移植用	[sysbt_meswin_clear]
;移植用
;移植用	[stopse_all]
;移植用	;キャラ消し＆ベース暗転じゃなくて上に黒
;移植用	[backlay][image storage="effect_white" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
;移植用	[trans method=universal rule="random" vague=10 time=500][wt_c]
;移植用	[backlay][image storage="effect_black" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
;移植用	[trans method=universal rule="random" vague=10 time=500][wt_c]
;移植用	
;移植用	;ベースを黒に
;移植用	[image storage="effect_black" layer=base page=fore visible=true left=0 top=0]
;移植用	;こっちでキャラ消し
;移植用	[freeimage layer=0 page=fore][freeimage layer=0 page=back]
;移植用	[freeimage layer=1 page=fore][freeimage layer=1 page=back]
;移植用	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
;移植用	[freeimage layer=3 page=fore][freeimage layer=3 page=back]
;移植用	[freeimage layer=4 page=fore][freeimage layer=4 page=back]
;移植用	
;移植用	[wait_c time=500]

;システムボタン＆ウィンドウ消去
[sysbt_meswin clear]
		;[sysbt_SIROKURO clear]

;BGM停止
[fadeoutbgm time=500]

[backlay][image storage="effect_white" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
[trans method=universal rule="random" vague=10 time=500][wt_c]
[backlay][black_toplayer][trans method=universal rule="random" vague=10 time=1500][wt_c][hide_chara_int]

[stopse_all]

[wait_c time=1000]
[endmacro]



;=============================================================
;カスタムtrans
;=============================================================
;他にも必要なら適宜追加。
;mpに大文字はダメらしい
[macro name=trans_c]
	;猫の白黒打ち替え再表示用　システムからの戻りなら0秒で再表示
;	[if    exp="tf.sys_return == 1"]
;		[trans method=crossfade time=0][wt_c]
	[if exp="mp.cross"][trans method=crossfade time=%time|1000][wt_c]
	[elsif exp="mp.blind_lr"][trans method=universal rule="blindX" vague=%vague|50 time=%time|1000][wt_c]
	[elsif exp="mp.blind2_lr"][trans method=universal rule="blindX2" vague=%vague|50 time=%time|1000][wt_c]
	[elsif exp="mp.blind_rl"][trans method=universal rule="blindXR" vague=%vague|50 time=%time|800][wt_c]
	[elsif exp="mp.blind_tb"][trans method=universal rule="blindY" vague=%vague|50 time=%time|1000][wt_c]
	[elsif exp="mp.blind_bt"][trans method=universal rule="blindYR" vague=%vague|50 time=%time|1000][wt_c]
	[elsif exp="mp.lr"][trans method=universal rule="LtoR" vague=%vague|100 time=%time|500][wt_c]
	[elsif exp="mp.rl"][trans method=universal rule="RtoL" vague=%vague|100 time=%time|500][wt_c]
	[elsif exp="mp.tb"][trans method=universal rule="TtoB" vague=%vague|300 time=%time|500][wt_c]
	[elsif exp="mp.bt"][trans method=universal rule="BtoT" vague=%vague|300 time=%time|500][wt_c]
	[elsif exp="mp.wipe"][trans method=universal rule="wipe" vague=%vague|300 time=%time|500][wt_c]
	[elsif exp="mp.wipe_r"][trans method=universal rule="wipe2" vague=%vague|300 time=%time|500][wt_c]
	[elsif exp="mp.circle"][trans method=universal rule="circle" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.circle_r"][trans method=universal rule="circleR" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.windmill"][trans method=universal rule="windmill" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.windmill_r"][trans method=universal rule="windmillR" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.bang"][trans method=universal rule="bang" vague=%vague|300 time=%time|500][wt_c]
	[elsif exp="mp.random"][trans method=universal rule="random" vague=%vague|300 time=%time|1000][wt_c]
	[elsif exp="mp.wave"][trans method=universal rule="wave" vague=%vague|300 time=%time|1000][wt_c]
	[elsif exp="mp.wave2"][trans method=universal rule="wave2" vague=%vague|50 time=%time|1000][wt_c]
	[elsif exp="mp.wave3"][trans method=universal rule="wave3" vague=%vague|50 time=%time|1000][wt_c]
	[elsif exp="mp.右渦巻き"][trans method=universal rule="右渦巻き" vague=%vague|300 time=%time|1000][wt_c]
	[elsif exp="mp.blood1"][trans method=universal rule="blood1" vague=%vague|50 time=%time|1500][wt_c]
	[elsif exp="mp.blood2"][trans method=universal rule="blood2" vague=%vague|50 time=%time|1500][wt_c]
	[elsif exp="mp.daimon"][trans method=universal rule="daimon" vague=%vague|100 time=%time|2000][wt_c]
	[elsif exp="mp.ce_side"][trans method=universal rule="center_side" vague=%vague|100 time=%time|500][wt_c]
	[elsif exp="mp.ce_side_r"][trans method=universal rule="center_sideR" vague=%vague|100 time=%time|500][wt_c]
	[elsif exp="mp.ce_tb"][trans method=universal rule="center_tb" vague=%vague|100 time=%time|500][wt_c]
	[elsif exp="mp.ce_tb_r"][trans method=universal rule="center_tbR" vague=%vague|100 time=%time|500][wt_c]
	[elsif exp="mp.pat_rt"][trans method=universal rule="pat_rt" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.pat_rb"][trans method=universal rule="pat_rb" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.pat_lt"][trans method=universal rule="pat_lt" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.pat_lb"][trans method=universal rule="pat_lb" vague=%vague|100 time=%time|1000][wt_c]
;	[elsif exp="mp.heart"][trans method=universal rule="heart_mask" vague=%vague|300 time=%time|1000][wt_c]
;	[elsif exp="mp.zzz"][trans method=universal rule="zzz" vague=%vague|100 time=%time|1000][wt_c]
;	[elsif exp="mp.rauda"][trans method=universal rule="rauda" vague=%vague|0 time=%time|1000][wt_c]
	[elsif exp="mp.scroll"][trans method=scroll from=%from stay=%stay time=%time|1000][wt_c]
	[elsif exp="mp.ruf2_lr"][trans method=universal rule="rubX"  vague=%vague|50 time=%time|500][wt_c]
	[elsif exp="mp.ruf2_rl"][trans method=universal rule="rubXR"  vague=%vague|50 time=%time|500][wt_c]
;	[elsif exp="mp.イメージクロスα左"][trans method=universal rule="イメージクロスα左から"  vague=%vague|50 time=%time|500][wt_c]
;	[elsif exp="mp.イメージクロスα右"][trans method=universal rule="イメージクロスα右から"  vague=%vague|50 time=%time|500][wt_c]
	[elsif exp="mp.ruf_lr"][trans method=universal rule="イメージクロスα左から"  vague=%vague|50 time=%time|300][wt_c]
	[elsif exp="mp.ruf_rl"][trans method=universal rule="イメージクロスα右から"  vague=%vague|50 time=%time|300][wt_c]
	[elsif exp="mp.ruf_tb"][trans method=universal rule="イメージクロスα上から"  vague=%vague|50 time=%time|300][wt_c]
	[elsif exp="mp.ruf_bt"][trans method=universal rule="イメージクロスα下から"  vague=%vague|50 time=%time|300][wt_c]
	[elsif exp="mp.rt"][trans method=universal rule="rt"  vague=%vague|200 time=%time|500][wt_c]
	[elsif exp="mp.lb"][trans method=universal rule="lb"  vague=%vague|200 time=%time|500][wt_c]

	[elsif exp="mp.streamline_l"][trans method=universal rule="streamline_l"  vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.streamline_r"][trans method=universal rule="streamline_r"  vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.streamline_d"][trans method=universal rule="streamline_d"  vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.streamline_u"][trans method=universal rule="streamline_u"  vague=%vague|100 time=%time|1000][wt_c]

	[elsif exp="mp.wave00"][trans method=universal rule="wipe_wave00"  vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.wave01"][trans method=universal rule="wipe_wave01"  vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.smoke"][trans method=universal rule="smoke"  vague=%vague|100 time=%time|1000][wt_c]


	[elsif exp="mp.左上"][trans method=universal rule="左上から" vague=%vague|100 time=%time|1000][wt_c]
;	[elsif exp="mp.checker"][trans method=universal rule="checker" vague=200 time=%time|1000][wt_c]
;	[elsif exp="mp.pat_osu"][trans method=universal rule="pat_osu" vague=200 time=%time|1000][wt_c]
;	[elsif exp="mp.pat_mesu"][trans method=universal rule="pat_mesu" vague=200 time=%time|1000][wt_c]
;	[elsif exp="mp.pat_osumesu"][trans method=universal rule="pat_osumesu" vague=200 time=%time|1000][wt_c]
;	[elsif exp="mp.pat_osumesu_reverse"][trans method=universal rule="pat_osumesuR" vague=200 time=%time|1000][wt_c]
;	[elsif exp="mp.sc"]
;		[TENKAN]
;	[elsif exp="mp.細かいひし形(左上から右下へ)"]
;		[trans rule="細かいひし形(左上から右下へ)" vague=100 time=1000[&2]
;	[elsif exp="mp.細かいひし形(左上から右下へ)r"]
;		[trans rule="細かいひし形(左上から右下へ)R" vague=100 time=1000[&2]
	[else]
		;フェイルセーフ 0秒にしておくか
		[trans method=crossfade time=%time|0][wt_c]
	[endif]

[endmacro]

;=============================================================
;これなに？
;=============================================================
[macro name=trans_c2]
	[if    exp="mp.cross"]
	[trans method=crossfade time=%time|500 cond="sf.toplayer"]
	;[trans method=crossfade layer= "&sf.toplayer" time=%time|500 cond="!sf.toplayer"]
	[else]
	;フェイルセーフ
	[trans method=crossfade time=%time|500][wt_c]
	[endif]

[endmacro]

;=============================================================
;拡張トランジション
;=============================================================

;拡張トランジションプラグイン ( extrans.dll ) 用
[macro name=extrans_c]
	[if    exp="mp.wave"]
		[trans method=wave wavetype=%wavetype|0 maxh=%maxh|50 maxomega=%maxomega|0.2 bgcolor1=%bgcolor1 bgcolor2=%bgcolor2 time=%time|2000][wt_c]
	[elsif exp="mp.mosaic"]
		[trans method=mosaic maxsize=%maxsize|30 time=%time|2000][wt_c]
	[elsif exp="mp.turn"]
		[trans method=turn bgcolor=%bgcolor time=%time|2000][wt_c]
	[elsif exp="mp.rotatezoom"]
		[trans method=rotatezoom factor=%factor|1 accel=%accel|0 twist=%twist|2 twistaccel=%twistaccel|-2 time=%time|2000][wt_c]
	[elsif exp="mp.rotatevanish"]
		[trans method=rotatevanish accel=%accel|2 twist=%twist|2 twistaccel=%twistaccel|2 time=%time|2000][wt_c]
	[elsif exp="mp.rotateswap"]
		[trans method=rotateswap twist=%twist|1 bgcolor=%bgcolor time=%time|2000][wt_c]
	[elsif exp="mp.ripple"]
		[trans method=ripple centerx=%centerx centery=%centery rwidth=%rwidth|128 roundness=%roundness|1 speed=%speed|6 maxdrift=%maxdrift|24 time=%time|2000][wt_c]

	[else]
		;フェイルセーフ
		[trans method=crossfade time=%time|500][wt_c]
	[endif]
[endmacro]


;=============================================================
;暗転　BGMSE諸々止める　便利
;=============================================================

[macro name=ANTEN]
	;イベントCG非表示
	[stopse_fadeout buf=0 time=1000]
	[stopse_fadeout buf=1 time=1000]
	[stopse_fadeout buf=2 time=1000]
	[stopse_fadeout buf=3 time=1000]
	[bgvstop]
	
	;ゆっくり暗転
	[if    exp="mp.blk"][top blk * winoff]
	[elsif exp="mp.wht"][top wht * winoff]
	[elsif exp="mp.red"][top red * winoff]
	[endif]

;	;なんで全部同じの書いてたんだろ
;	[trans_c *  time=%time|1000]
;
;	[if    exp="mp.blk"][hide_chara_int]
;	[elsif exp="mp.wht"][hide_chara_int_w]
;	[elsif exp="mp.red"][hide_chara_int_r]
;	[endif]

	;SE停止
	[stopse_all]

	[if    exp="mp.bgmon == void"]
	;BGM停止
	[fadeoutbgm time=%bgmfade|1000][wb canskip=true]
	[endif]

	;ウェイト
	[wait time=%wait|1000]
[endmacro]

;=============================================================
;暗転ex　BGMSE諸々止める　便利
;=============================================================
;一応作っておくか

[macro name=ANTENex]
	;イベントCG非表示
	
	;ゆっくり暗転
	[if    exp="mp.blk"][top blk *]
	[elsif exp="mp.wht"][top wht *]
	[elsif exp="mp.red"][top red *]
	[endif]

	;なんで全部同じの書いてたんだろ
	[extrans_c *  time=%time|1000]

;	[if    exp="mp.blk"][hide_chara_int]
;	[elsif exp="mp.wht"][hide_chara_int_w]
;	[elsif exp="mp.red"][hide_chara_int_r]
;	[endif]

	;SE停止
	[stopse_all]

	[if    exp="mp.bgmon == void"]
	;BGM停止
	[fadeoutbgm time=%bgmfade|1000][wb canskip=true]
	[endif]

	;ウェイト
	[wait_c time=%wait|1000]
[endmacro]

;=============================================================
;タイトル戻り処理
;=============================================================

;Androidからの逆移植時のタイトル戻り処理
[macro name=returntitle]
	[stopbgm]
	;システムボタン＆ウィンドウ消去
	;[sysbt_meswin clear]
	[black_toplayer][trans_c cross time=500][hide_chara_int]
	[wait_c time=1000]
	[jump storage="title.ks"]
[endmacro]



;=============================================================
;反転マクロ
;=============================================================
;使い方
;[flip_lr layer=1 page=fore]

[macro name=flip_lr]
	@eval exp="kag.getLayerFromElm(mp).flipLR()"]
[endmacro]

;=============================================================
;タイトル画面からの移動処理マクロ
;=============================================================
;フラグのオンオフはこのマクロ内ではやらない。分からなくなるから。

[macro name=タイトル画面からの移動]

	;[freeimage layer=0 page=fore]

	;リンクロックしておかなくていいのかなぁ
	[locklink]

	;ボタン貼る前に黒をmessageレイヤより上に
	[backlay_c]
	[image storage="effect_black" layer="&sf.toplayer" page=back visible=true left=0 top=0 opacity=255 index=1004000]
	;transの分岐は邪淫用なので普通のはtrans_c crossのみで良い
	;[if    exp="tf.title_trans == 1"][trans_c ruf_lr]
	;[elsif exp="tf.title_trans == 2"][trans_c ruf_rl]
	;[elsif exp="tf.title_trans == 3"][trans_c ruf_lr]
	;[elsif exp="tf.title_trans == 4"][trans_c ruf_rl]
	;[elsif exp="sf.gameNo == 1 && tf.return == 1"][trans_c ruf_lr]
	;[elsif exp="sf.gameNo == 2 && tf.return == 1"][trans_c ruf_rl]
	;[elsif exp="sf.gameNo == 3 && tf.return == 1"][trans_c ruf_lr]
	;[elsif exp="sf.gameNo == 4 && tf.return == 1"][trans_c ruf_rl]
	;[elsif exp="sf.gameNo == 5 && tf.return == 1 && sf.game_total >= sf.gameNo"][trans_c pat_lb]
	;[else]
	;うーん
	;[trans_c cross time=%time|1000]
	[trans_c wave3 time=1000]
	[endif]

	[freeimage layer=0 page=fore][freeimage layer=0 page=back]
	[freeimage layer=1 page=fore][freeimage layer=1 page=back]
	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
	[freeimage layer=3 page=fore][freeimage layer=3 page=back]

	[eval exp="tf.title_trans = 0"]
	[eval exp="tf.return = 0"]
	[cm]
	;一番上に貼った黒を消し　背景貼り直し
	[backlay_c]
	[layopt layer="&sf.toplayer"  page=back visible=false]
	[image storage="effect_black" layer=base page=back visible=true]
	[trans_c cross time=0]

	;一番上のレイヤのindexもとに戻す
	[layopt layer="&sf.toplayer"  page=fore  index="&sf.toplayer * 1000 +1000"]
	[layopt layer="&sf.toplayer"  page=back  index="&sf.toplayer * 1000 +1000"]
	[layopt layer=0  page=fore  index=1000][layopt layer=0  page=back  index=1000]
	[layopt layer=1  page=fore  index=2000][layopt layer=1  page=back  index=2000]
	[layopt layer=2  page=fore  index=3000][layopt layer=1  page=back  index=3000]
	[layopt layer=3  page=fore  index=4000][layopt layer=1  page=back  index=4000]

	;[eval exp="tf.起動 = 0"]
	;ショートカット判定用[eval exp="tf.title = 0"]

	[if exp="mp.bgmoff"]
		[fadeoutbgm time=500][wb]
		[wait_c time=500]
	[endif]

	[unlocklink]

[endmacro]


;=============================================================
;シーンチェンジ（場面転換）
;=============================================================
;フタナリ娘用だが別ファイルに分けるほどでもないのでここに記載。
;ややこしいけどtransマクロでmp.scの時に実行される。transマクロ内に書くと見づらいのでマクロ化した。
;シーンチョイスとは関係は無い。

;用途は1日の中で場面が変わる時。
;アイキャッチほど時間をかけない。
;1日の始まり（または1日の終わり）にはアイキャッチを使う。

;暗転等から"scene_change_bg"を経て、次のシーンの背景・イベントCGに変わる。
;一番上に貼ってるので、立ちキャラの同時貼り込みがあってもそのまま使用可。

;[macro name=scene_change]
;[macro name=TENKAN]
;	;とりあえずブラインドにしておく
;
;	[backlay_c]
;	[image storage="scene_change_bg" layer="&sf.toplayer" page=back visible=true left=0 top=0 opacity=255]
;	;[trans_c pat_osumesu time=1000]
;	[trans_c blind2_lr time=1500]
;	[backlay_c]
;	[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0 opacity=255]
;	;[trans_c pat_osumesu time=1000]
;	[trans_c blind2_lr time=1500]
;	[freeimage page=fore layer="&sf.toplayer"  ][freeimage page=back layer="&sf.toplayer"  ]
;
;[endmacro]


;=============================================================
;画像演出用ウェイト
;=============================================================


[macro name=wev]
	;オート時3秒待ち、スキップ時待たない、通常時クリック待ち
	[if    exp="kag.autoMode"][wait time=3000]
	[elsif exp="kag.skipMode"]
	[else][waitclick]
	[endif]
[endmacro]



[return]

