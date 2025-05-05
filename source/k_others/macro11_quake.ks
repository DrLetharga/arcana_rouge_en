;=============================================================
;キャラ揺らしマクロ
;=============================================================

; レイヤーモーションプラグイン使用したマクロ
;自作の大して変わらないけど相対座標指定なのでこっちを使う
;セーブロードにも対応
[macro name=quake_chara]

	;念の為に[move]タグ停止
	[stopmove]

	;;複数キャラいたらここは条件分岐追加か
	;そのままキャラ名かくとなんだか分からなくなりそうだから属性名mp.charaに統一。念の為２文字も入れとくか

	[if    exp="mp.ch == 'aka' || mp.ch == 'ak' || mp.ch == 'ch01'"][eval exp="f.layer_quake = f.layer_ch01"]
	[elsif exp="mp.ch == 'aoi' || mp.ch == 'ao' || mp.ch == 'ch02'"][eval exp="f.layer_quake = f.layer_ch02"]
	[elsif exp="mp.ch == 'mia' || mp.ch == 'mi' || mp.ch == 'ch03'"][eval exp="f.layer_quake = f.layer_ch03"]
	[elsif exp="mp.ch == 'mei' || mp.ch == 'me' || mp.ch == 'ch04'"][eval exp="f.layer_quake = f.layer_ch04"]
	[elsif exp="mp.ch == 'syu' || mp.ch == 'sy' || mp.ch == 'ch05'"][eval exp="f.layer_quake = f.layer_ch05"]
	[elsif exp="mp.ch == 'kak' || mp.ch == 'ka' || mp.ch == 'ch06'"][eval exp="f.layer_quake = f.layer_ch06"]
	[elsif exp="mp.ch == 'miz' || mp.ch == 'mi' || mp.ch == 'ch07'"][eval exp="f.layer_quake = f.layer_ch07"]
	[elsif exp="mp.ch == 'syo' || mp.ch == 'sy' || mp.ch == 'ch08'"][eval exp="f.layer_quake = f.layer_ch08"]
	[elsif exp="mp.ch == 'zaa' || mp.ch == 'za' || mp.ch == 'ch09'"][eval exp="f.layer_quake = f.layer_ch09"]
	[elsif exp="mp.ch == 'zab' || mp.ch == 'za' || mp.ch == 'ch10'"][eval exp="f.layer_quake = f.layer_ch10"]
	[elsif exp="mp.ch == 'ai'  || mp.ch == 'ai' || mp.ch == 'ch11'"][eval exp="f.layer_quake = f.layer_ch11"]
	[else][eval exp="f.layer_quake = mp.layer"]
	[endif]

	;	;mpがvoidなら0入れたいから変数に入れる
	;	[eval exp="f.vmax = mp.vmax"]
	;	[eval exp="f.hmax = mp.hmax"]
	;
	;	;一応指定無かったら0を入れておく
	;	[eval exp="f.vmax = 0" cond="mp.vmax == void"]
	;	[eval exp="f.hmax = 0" cond="mp.hmax == void"]

	;time書いてないかもしれないからやっぱ変数に入れ直さないとか
	[eval exp="f.qt = mp.time"]
	[eval exp="f.qt = 20" cond="mp.time == void"]

	;アクセル
	[eval exp="f.ac = mp.accel"]
	[eval exp="f.ac = 1" cond="mp.accel == void"]

	;loopは数値　Androidにそのまま使えるように属性名はcountにしておく
	;locatex="(対象レイヤの元座標から相対座標,移動にかかる時間(ms),加速度)"
	;locatey="(対象レイヤの元座標から相対座標,移動にかかる時間(ms),加速度)"
	;loop=loop回数|1(def) デフォルトは1。0で無限ループする。
	;loopx=X方向loop回数|1(def) loopを上書き可能なX方向のloop回数。
	;loopx=Y方向loop回数|1(def) loopを上書き可能なY方向のloop回数。
	;[motion_define]は別マクロでやっとくべきなのかなぁ

	;アクセルも変える？-1　1とか変則的に混ぜるのは直接書いた方がいいけど。
	;即値での書き方は、LayerMotionPlugin.ksにある方式のほうが見やすいかも。てか合わせたほうが無難じゃね？ でもよくわからん属性あるからとりあえずこのまま

	;普通の揺れ以外はマクロに入れるとややこしいかなぁ
	;横ゆらゆら
	[if    exp="mp.swaying_x"]
		[eval exp="f.vmax = 50" cond="mp.vmax == void"]
		[eval exp="f.qt = 200" cond="mp.time == void"]
		[eval exp="f.ac = -3"  cond="mp.accel == void"]
		;[motion_define name="横ゆらゆら" locatex="(-50,200,-3),(0,200,1),(50,200,-3),(0,200,1)" loop=9]
		[motion_define name="キャラ揺らし" locatex='&@"(${&f.vmax * -1},${&f.qt},${&f.ac}),(0,${&f.qt},1),(${&f.vmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},1)"' loop=%count|5]

	;ジャンプ用のマクロ"motion_jump"もあるけどイマイチ気に入らないから自作
	;サイズ打ち分け用の名前どうしような、loupかsmlか。upだと上に跳ねてる意味に見えるし、smlだと立ちのloとややこしいな
	[elsif exp="mp.jump_ls"]
		;これはサイズ別に固定するしかないんじゃないか？
		;[eval exp="f.qt = 100" cond="mp.time == void"]	
		;[eval exp="f.ac = -3"  cond="mp.accel == void"]
		[motion_define name="キャラ揺らし" locatey="(40,80,1),(-80,80,2),(25,120,2),(0,25,-1)" loop=%count|1]

	[elsif exp="mp.jump_bs"]
		;これはサイズ別に固定するしかないんじゃないか？
		;[eval exp="f.qt = 100" cond="mp.time == void"]	
		;[eval exp="f.ac = -3"  cond="mp.accel == void"]
		[motion_define name="キャラ揺らし" locatey="(50,100,1),(-100,100,2),(30,150,2),(0,50,-1)" loop=%count|1]

	[elsif exp="mp.jump_us"]
		;これはサイズ別に固定するしかないんじゃないか？
		;[eval exp="f.qt = 100" cond="mp.time == void"]	
		;[eval exp="f.ac = -3"  cond="mp.accel == void"]
		[motion_define name="キャラ揺らし" locatey="(50,100,1),(-100,100,2),(30,150,2),(0,50,-1)" loop=%count|1]

	[elsif exp="mp.vmax && mp.hmax"]
		[motion_define name="キャラ揺らし" locatex='&@"(${&mp.vmax * -1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax * -1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' locatey='&@"(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]

	;縦指定無ければ横揺れ
	[elsif exp="mp.vmax && mp.hmax == 0"]
		;[motion_define name="キャラ揺らし" locatex='&@"(${&mp.vmax * -1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax * -1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]
		[motion_define name="キャラ揺らし" locatex='&@"(${&mp.vmax * -1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]

	;横指定無ければ縦揺れ
	[elsif exp="mp.vmax == 0 && mp.hmax "]
		;[motion_define name="キャラ揺らし" locatey='&@"(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]
		[motion_define name="キャラ揺らし" locatey='&@"(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]
	;邪淫用
	[elsif exp="mp.motion == 'yes'||mp.yes||mp.頷き||mp.ｙｅｓ||mp.ＹＥＳ"]
		[motion_define name="キャラ揺らし" locatey="(50,700,1),(0,750,-1)" loop=%count|1]
	[elsif exp="mp.motion == 'no'||mp.no||mp.ｎｏ||mp.ＮＯ"]
		[motion_define name="キャラ揺らし" locatex="(-25,250,1),(0,250,2),(25,250,-2),(0,350,-1)" loop=%count|1]

	;リゲルの一箇所のみ用なので他キャラでは使えない
	[elsif exp="mp.motion == 'standup_rig'"]
		[motion_define name="キャラ揺らし" locatex="(10,300,1),(-10,300,-1),(10,250,1),(-10,250,-1),(0,250,-1)" locatey="(-100,300,1),(-200,300,-1),(-300,250,1),(-350,250,-1),(-400,250,-1)" loop=1]

	[endif]


	[motion_start layer="&f.layer_quake" page=fore name="キャラ揺らし" wait=%wait|false]
	;[motion_start layer=%layer page=fore name="キャラ揺らし" wait=%wait|false]

	;登録してすぐ削除する
	;motion_eraseが無いよ？
	;[motion_erase name=キャラ揺らし]
	;マクロ名こっちじゃね？　自動で破棄する"motion_start_onetime"ってのもあるみたいだけど
	;[motion_undefine name="キャラ揺らし"]

[endmacro]

;サンプル反復横飛　
;※()ごとにカンマが必要 1つの()を書いたあとは元の位置に戻すために(0.時間,アクセル)にしないとどっかにすっとんでく。
;	[motion_define name="キャラ揺らし" locatex="(200,500,-2),(0,500,2),(-200,500,-2),(0,500,2)" loop=%count|5]

; ワンタイムモーション(一回動かしたら捨てるモーション)でのマクロ参考 LayerMotionPlugin.ks
;	[macro name="motion_quake"]
;	[eval exp="mp.layer = '0'"     cond="mp.layer === void"]
;	[eval exp="mp.page   = 'fore'" cond="mp.page  === void"]
;	[eval exp="mp.time   = 300"    cond="mp.time  === void"]
;	[eval exp="mp.hmax   = 10"     cond="mp.hmax  === void"]
;	[eval exp="mp.vmax   = 10"     cond="mp.vmax  === void"]
;	[eval exp="mp.speed  = 50"     cond="mp.speed === void"]
;	[eval exp="mp.loop   = 1"      cond="mp.loop  === void"]
;	[eval exp="mp.locatex = make_quake_array(mp.time, mp.hmax, mp.speed)"]
;	[eval exp="mp.locatey = make_quake_array(mp.time, mp.vmax, mp.speed, 2)"]
;	[motion_start_onetime *]
;	[endmacro]





;キャラ揺らし停止
[macro name=stop_quake_chara]
	;;複数キャラいたらここは条件分岐追加か
	[if    exp="mp.ch == 'aka' || mp.ch == 'ch01'"][eval exp="f.layer_quake = f.layer_ch01"]
	[elsif exp="mp.ch == 'aoi' || mp.ch == 'ch02'"][eval exp="f.layer_quake = f.layer_ch02"]
	[elsif exp="mp.ch == 'mia' || mp.ch == 'ch03'"][eval exp="f.layer_quake = f.layer_ch03"]
	[elsif exp="mp.ch == 'mei' || mp.ch == 'ch04'"][eval exp="f.layer_quake = f.layer_ch04"]
	[elsif exp="mp.ch == 'syu' || mp.ch == 'ch05'"][eval exp="f.layer_quake = f.layer_ch05"]
	[elsif exp="mp.ch == 'kak' || mp.ch == 'ch06'"][eval exp="f.layer_quake = f.layer_ch06"]
	[elsif exp="mp.ch == 'miz' || mp.ch == 'ch07'"][eval exp="f.layer_quake = f.layer_ch07"]
	[elsif exp="mp.ch == 'syo' || mp.ch == 'ch08'"][eval exp="f.layer_quake = f.layer_ch08"]
	[elsif exp="mp.ch == 'zaa' || mp.ch == 'ch09'"][eval exp="f.layer_quake = f.layer_ch09"]
	[elsif exp="mp.ch == 'zab' || mp.ch == 'ch10'"][eval exp="f.layer_quake = f.layer_ch10"]
	[elsif exp="mp.ch == 'ai'  || mp.ch == 'ch11'"][eval exp="f.layer_quake = f.layer_ch11"]
	[else][eval exp="f.layer_quake = mp.layer"]
	[endif]


	;説明:	動作中のモーションを止める。
	;引数:	layer=対象レイヤ番号(0～)
	;		voidで全レイヤが対象に。
	;	page=対象ページ(fore|back)
	;		モーションを適用するページを指定する。voidでfore|back共止める。
	;	name=モーション名
	;		voidで該当layer/pageに属する全てのモーションが対象に。
	;	lastpos=true(def)|false
	;		レイヤを最終位置に移動させるかどうか。最終位置とは、
	;		そのモーションがスキップせず終了した時に到達する位置。
	;		falseならこのタグが実行された時点での位置で停止する。

	[motion_stop layer="&f.layer_quake" page=fore name="キャラ揺らし" lastpos=true]
[endmacro]

;キャラ揺らしの終了を待つ
[macro name=wq_chara]
	;;複数キャラいたらここは条件分岐追加か
	[if    exp="mp.ch == 'aka' || mp.ch == 'ch01'"][eval exp="f.layer_quake = f.layer_ch01"]
	[elsif exp="mp.ch == 'aoi' || mp.ch == 'ch02'"][eval exp="f.layer_quake = f.layer_ch02"]
	[elsif exp="mp.ch == 'mia' || mp.ch == 'ch03'"][eval exp="f.layer_quake = f.layer_ch03"]
	[elsif exp="mp.ch == 'mei' || mp.ch == 'ch04'"][eval exp="f.layer_quake = f.layer_ch04"]
	[elsif exp="mp.ch == 'syu' || mp.ch == 'ch05'"][eval exp="f.layer_quake = f.layer_ch05"]
	[elsif exp="mp.ch == 'kak' || mp.ch == 'ch06'"][eval exp="f.layer_quake = f.layer_ch06"]
	[elsif exp="mp.ch == 'miz' || mp.ch == 'ch07'"][eval exp="f.layer_quake = f.layer_ch07"]
	[elsif exp="mp.ch == 'syo' || mp.ch == 'ch08'"][eval exp="f.layer_quake = f.layer_ch08"]
	[elsif exp="mp.ch == 'zaa' || mp.ch == 'ch09'"][eval exp="f.layer_quake = f.layer_ch09"]
	[elsif exp="mp.ch == 'zab' || mp.ch == 'ch10'"][eval exp="f.layer_quake = f.layer_ch10"]
	[elsif exp="mp.ch == 'ai'  || mp.ch == 'ch11'"][eval exp="f.layer_quake = f.layer_ch11"]
	[else][eval exp="f.layer_quake = mp.layer"]
	[endif]

	[motion_wait layer="&f.layer_quake" page=fore name="キャラ揺らし"]

[endmacro]








;=============================================================
;背景揺らしマクロ
;=============================================================

;背景揺らしマクロ
[macro name=quake_bg]
	;念の為に[move]タグ停止
	[stopmove]
	;一応消去した方がいいのか？
	;motion_eraseが無いよ？
	;[motion_erase name=背景揺らし]
	[eval exp="f.layer_quake = mp.layer" cond="mp.layer != void"]
	[eval exp="f.layer_quake = 0"        cond="mp.layer == void"]

	;time書いてないかもしれないからやっぱ変数に入れ直さないとか
	[eval exp="f.qt = mp.time"]
	[eval exp="f.qt = 20" cond="mp.time == void"]

	;アクセル
	[eval exp="f.ac = mp.accel"]
	[eval exp="f.ac = 1" cond="mp.accel == void"]

	;横指定無ければ縦揺れ
	[if    exp="mp.vmax == void && mp.motion == void"]
		[motion_define name="背景揺らし" locatey='&@"(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]
	;縦指定無ければ横揺れ
	[elsif exp="mp.hmax == void && mp.motion == void"]
		[motion_define name="背景揺らし" locatex='&@"(${&mp.vmax * -1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax * -1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]
	[elsif exp="mp.motion == 'xyure1'"]
		[motion_define name="背景揺らし" locatex="(20,300,1),(-20,300,-1),(10,250,1),(-10,250,-1),(0,250,-1)"  loop=1]
	[elsif exp="mp.motion == 'xyure2'"]
		[motion_define name="背景揺らし" locatex="(40,200,1),(-40,200,-1),(20,150,1),(-20,150,-1),(0,150,-1)"  loop=1]
	[else]
		[motion_define name="背景揺らし" locatex='&@"(${&mp.vmax * -1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax * -1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' locatey='&@"(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]
	[endif]

	;サンプル反復横飛　
	;※()ごとにカンマが必要 1つの()を書いたあとは元の位置に戻すために(0.時間,アクセル)にしないとどっかにすっとんでく。
	;[motion_define name="キャラ揺らし" locatex="(200,500,-2),(0,500,2),(-200,500,-2),(0,500,2)" loop=%count|5]

	[motion_start layer="&f.layer_quake" page=fore name="背景揺らし" wait=%wait|false]

[endmacro]

;キャラ揺らし停止
[macro name=stop_quake_bg]

	;説明:	動作中のモーションを止める。
	;引数:	layer=対象レイヤ番号(0～)
	;		voidで全レイヤが対象に。
	;	page=対象ページ(fore|back)
	;		モーションを適用するページを指定する。voidでfore|back共止める。
	;	name=モーション名
	;		voidで該当layer/pageに属する全てのモーションが対象に。
	;	lastpos=true(def)|false
	;		レイヤを最終位置に移動させるかどうか。最終位置とは、
	;		そのモーションがスキップせず終了した時に到達する位置。
	;		falseならこのタグが実行された時点での位置で停止する。

	[motion_stop layer="&f.layer_quake" name="背景揺らし" lastpos=true]
[endmacro]

;キャラ揺らしの終了を待つ
[macro name=wq_bg]
	[motion_wait layer="&f.layer_quake" page=fore name="キャラ揺らし"]
[endmacro]

;=============================================================
;キャラ移動マクロ
;=============================================================
;移動用のも使った方がいいかなぁ

[macro name=move_chara]

	;念の為に[move]タグ停止
	[stopmove]

	;;複数キャラいたらここは条件分岐追加か
	;そのままキャラ名かくとなんだか分からなくなりそうだから属性名mp.charaに統一。念の為２文字も入れとくか
	[if    exp="mp.ch == 'aka' || mp.ch == 'ch01'"][eval exp="f.chnum = '01', f.layer_movech = f.layer_ch01 , f.pos_movech_x = f.pos_ch01_x , f.pos_movech_y = f.pos_ch01_y"]
	[elsif exp="mp.ch == 'aoi' || mp.ch == 'ch02'"][eval exp="f.chnum = '02', f.layer_movech = f.layer_ch02 , f.pos_movech_x = f.pos_ch02_x , f.pos_movech_y = f.pos_ch02_y"]
	[elsif exp="mp.ch == 'mia' || mp.ch == 'ch03'"][eval exp="f.chnum = '03', f.layer_movech = f.layer_ch03 , f.pos_movech_x = f.pos_ch03_x , f.pos_movech_y = f.pos_ch03_y"]
	[elsif exp="mp.ch == 'mei' || mp.ch == 'ch04'"][eval exp="f.chnum = '04', f.layer_movech = f.layer_ch04 , f.pos_movech_x = f.pos_ch04_x , f.pos_movech_y = f.pos_ch04_y"]
	[elsif exp="mp.ch == 'syu' || mp.ch == 'ch05'"][eval exp="f.chnum = '05', f.layer_movech = f.layer_ch05 , f.pos_movech_x = f.pos_ch05_x , f.pos_movech_y = f.pos_ch05_y"]
	[elsif exp="mp.ch == 'kak' || mp.ch == 'ch06'"][eval exp="f.chnum = '06', f.layer_movech = f.layer_ch06 , f.pos_movech_x = f.pos_ch06_x , f.pos_movech_y = f.pos_ch06_y"]
	[elsif exp="mp.ch == 'miz' || mp.ch == 'ch07'"][eval exp="f.chnum = '07', f.layer_movech = f.layer_ch07 , f.pos_movech_x = f.pos_ch07_x , f.pos_movech_y = f.pos_ch07_y"]
	[elsif exp="mp.ch == 'syo' || mp.ch == 'ch08'"][eval exp="f.chnum = '08', f.layer_movech = f.layer_ch08 , f.pos_movech_x = f.pos_ch08_x , f.pos_movech_y = f.pos_ch08_y"]
	[elsif exp="mp.ch == 'zaa' || mp.ch == 'ch09'"][eval exp="f.chnum = '09', f.layer_movech = f.layer_ch09 , f.pos_movech_x = f.pos_ch09_x , f.pos_movech_y = f.pos_ch09_y"]
	[elsif exp="mp.ch == 'zab' || mp.ch == 'ch10'"][eval exp="f.chnum = '10', f.layer_movech = f.layer_ch10 , f.pos_movech_x = f.pos_ch10_x , f.pos_movech_y = f.pos_ch10_y"]
	[elsif exp="mp.ch == 'ai'  || mp.ch == 'ch11'"][eval exp="f.chnum = '11', f.layer_movech = f.layer_ch11 , f.pos_movech_x = f.pos_ch11_x , f.pos_movech_y = f.pos_ch11_y"]
	[else][eval exp="f.layer_movech = mp.layer"]
	[endif]

	;移動座標定義 addsub的にかけるように元座標にmpを加算する。mpの前のプラスは整数化のためについてるよ
	[eval exp="f.movech_x = f.pos_movech_x + (+mp.x)" cond="mp.x != void"]
	[eval exp="f.movech_y = f.pos_movech_y + (+mp.y)" cond="mp.y != void"]
	;mpが書いてなければそのままの座標を入れる
	[eval exp="f.movech_x = f.pos_movech_x" cond="mp.x == void"]
	[eval exp="f.movech_y = f.pos_movech_y" cond="mp.y == void"]


	;定義されてる位置まで動かしたい時 x座標にのみ対応
	[if exp="mp.pos != void && mp.x == void"]
		;f.stdsize_ch**の中身によってサイズの文字列を定義
		[if    exp="f['stdsize_ch' + f.chnum] == 's'"][eval exp="f.move_stdsize = '_sml'"]
		[elsif exp="f['stdsize_ch' + f.chnum] == 'm'"][eval exp="f.move_stdsize = '_mid'"]
		[elsif exp="f['stdsize_ch' + f.chnum] == 'l'"][eval exp="f.move_stdsize = '_lag'"]
		[endif]

		;f.pos_ch**の中身を入れる
		;これは現在のposの座標取得だから意味なかった
		;[eval exp="f.move_pos = f['pos_ch' + f.chnum]"]

		;sf.ch**_サイズ_ポジション　の変数を入れる
		[eval exp="f.movech_x = sf['ch' + f.chnum + f.move_stdsize + '_' + mp.pos]"]
	[endif]

[eval exp="f.movech_opa = 255" cond="mp.out == void || mp.in"]
[eval exp="f.movech_opa = 0"   cond="mp.out != void"]

	[move * layer="&f.layer_movech" time=%time|500 accel=%accel|1 path='&@"(${&f.movech_x},${&f.movech_y},${&f.movech_opa})"']
	[wm cond="mp.wm"]


[endmacro]







[return]
