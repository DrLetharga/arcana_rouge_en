;macro16_sys_sub

;systembutton_sub.ks内の処理が増えすぎたので極力マクロ化する


;シナリオ中からシステム画面移動処理
[macro name=sys_in]

	;これ何に使う気だったんだろ
	;[eval exp="tf.save_load_conf = true"]

	;マスク画像を表示しに行くよ
	;m:短いスクリプトで済みそうだから使わない。
	;[call storage="save_sub.ks" target=*save_sub]


	; メモリ上の栞1に現在の状態を保存
	; セーブ、ロード、コンフィグ間で移動しても同じ状態を呼び出せるように同じ栞に保存する。


	;tempsave前に消しちゃっていいのじゃないか？　temploadでウィンドウも表示されちゃうから
	;さらにテキスト再表示でテキストがチカッとしてた
	;システムボタン＆ウィンドウ消去 ※これはこの位置から動かしちゃ不具合出る。
	;tempsave前にウィンドウ消しに修正。合わせてmacro02_win.ksにネームチップのレイヤ消し追加 2018/02/27
	[if    exp="f.win_narration == 1"]
		[sysbt_meswin3 clear]
	[else]
		[s_m clear]
	[endif]

	;ループSE
	;BGVの音量を一旦0に
	;[seopt buf="&sf.SE_HLoop_buf1" volume=0]
	;[seopt buf="&sf.SE_HLoop_buf2" volume=0]
	;[seopt buf="&sf.chara01L_buf"  volume=0]
	;[stop_seHLoop buf1]
	;[stop_seHLoop buf2]
	;[bgvstop]
	;マクロで止めるとtmpカラになっちゃうから直接止め
;	[stopse buf="&sf.SE_HLoop_buf1"]
;	[stopse buf="&sf.SE_HLoop_buf2"]
	[stopse buf="&sf.chara01L_buf"]
	[stopse buf="&sf.chara02L_buf"]
	[stopse buf="&sf.chara03L_buf"]
	[stopse buf="&sf.chara04L_buf"]

	; メモリ上の栞１に現在の状態を保存
	[tempsave place=1]

;スナップショット前に増やすとキャラindex操作してるときにリセットされた状態でサムネ保存されちゃうからスナップの後にしてみる
;	;オン画像が揺れないようにレイヤを増やす
;	[eval exp="sf.maxlayers = kag.numCharacterLayers + 13"][laycount layers="&sf.maxlayers"]

	;スロットにデータをセーブ
	;[save place=101]
	[eval exp="tf.gameplay = 1"]
	;Qload→システム画面→戻るだとオフれないからここでは無条件にオフだな
	[eval exp="tf.QuickLoad = 0"]

	;セーブサムネに名前だけ残ってるな。メモリに保存ごに消去か
	[layopt layer=message4 page=fore visible=false]
;	;システムボタン＆ウィンドウ消去 ※これはこの位置から動かしちゃ不具合出る。
;	[if    exp="f.win_narration == 1"]
;		[sysbt_meswin3 clear]
;	[else]
;		[s_m clear]
;	[endif]
	;いずれかが1なら立ちマスク表示
;要らないっぽい	[if exp="f.stdmsk_sk || f.stdmsk_ay || f.stdmsk_ky || f.stdmsk_ma || f.stdmsk_yu"]
;		[image storage="std_all_msk" layer="&sf.layer_quick" page=fore visible=true left=0 top=-150]
;	[endif]

	;イベントＣＧ表示中かどうか判定。
	;f.mskが0でなければマスク表示
	[if exp="f.mskon != 0"]
		[call storage="cgmsk.ks"]
		;マスク画像表示
		[layopt layer="&sf.layer_msk" page=fore visible=true]

	;普段は余計な処理したくないから一旦stdmskで処理
	;[elsif exp="f.stdmsk == 1"]
	[elsif exp="f.stdmsk != 0"]

		;[image storage="std_msk" layer="&sf.layer_msk" page=fore visible=true left=0 top=0]

		;;立ちマスクフラグ削除用 レイヤは適宜修正すること
		;[eval exp="f.stdname =  kag.back.layers[f.layer_mi].Anim_loadParams.storage"]
		;[eval exp="f.stdname = f.stdname.charAt(0)"]

		;;引きとアップ両方貼ったときに対応できないね
		;[if exp="f.stdname == 'l'"]
		;	;移動の時はズレちゃうなぁ、やっぱpimageかなぁ
		;	[image storage="std_lo_msk" layer="&sf.layer_msk" page=fore visible=true left="&f.pos_m_x" top="&f.pos_m_y"]
		;	;[pimage storage="std_lo_msk" layer="&f.layer_mi" page=fore visible=true dx=0 dy=0]
		;[elsif exp="f.stdname == 'u'"]
		;	[image storage="std_up_msk" layer="&sf.layer_msk" page=fore visible=true left="&f.pos_m_x" top="&f.pos_m_y"]
		;	;[pimage storage="std_up_msk" layer="&f.layer_mi" page=fore visible=true dx=0 dy=0]
		;[endif]
	[endif]

	;カットイン用f.mskon2が0でなければマスク表示
	[if exp="f.mskon2 != 0"]
		[call storage="cgmsk.ks" target=*cutin_msk]
		;マスク画像表示
		[layopt layer="&sf.layer_msk2" page=fore visible=true]
	[endif]

	; スナップショットのロック(サムネイル用の画面を記録しているのでセーブマスク表示後にロックなのだな）
	[locksnapshot]
		;これ何でここにあるんだろ[layopt layer="&sf.layer_msk" page=fore visible=false]
	;オン画像が揺れないようにレイヤを増やす
	[eval exp="sf.maxlayers = kag.numCharacterLayers + 13"][laycount layers="&sf.maxlayers"]

[endmacro]

;システム画面からシナリオ中移動処理
[macro name=sys_out]

	;オン画像が揺れないように増やしたレイヤを戻す
	;temploadでレイヤカウントは戻るけどsf.maxlayersが戻らないからtemploadの前で
	[eval exp="sf.maxlayers = kag.numCharacterLayers - 13"][laycount layers="&sf.maxlayers"]

	; メモリ上の栞１を読み込み、状態復帰 seとbgmの属性入れて無いと再読込しちゃうのか
	[tempload place=1 se=false bgm=false]

	;拡大処理打ち分け なるべくテンプロード後すぐにやりたいからfcマクロじゃんくてここにおく。あんまりよくはない。
	[if exp="f.zoomon == 1"]
		[zoom_fore]
	[endif]

	;blur用画像再表示
	[if    exp="f.bluron == 1"]
		[blur_again]
	[endif]

	;〆シーン回想中に起動直後のみボタンが消えない現象があったため追加
	;mm 通常プレイ時の選択肢がおかしくなるからcondつけておく
	[cm cond="f.scene_modeV == 1"]
	;mm 選択肢ベース消えちゃうから一旦f.selbaseをオフにして再度表示実行させる
	[if exp="f.selnow == 1"]
		[eval exp="f.selbase = 0"]
	[endif]

	;システム画面中でダイアログ押してるとcmしてる関係で、戻った時にベース消えちゃっててかっこ悪いのでpテキストしてるレイヤも一旦消しておく
	[if exp="f.selbt == 1 || f.selnow == 1"]
	;別にボタン消えて無いんだけど。むしろ戻る前にボタン消さないとfreimegeしてるレイヤを操作しようとしてエラーに
	[cm]
	[freeimage layer="&sf.layer_seltext+1" page=fore][freeimage layer="&sf.layer_seltext+1" page=back]
	[freeimage layer="&sf.layer_seltext+2" page=fore][freeimage layer="&sf.layer_seltext+2" page=back]
	[freeimage layer="&sf.layer_seltext+3" page=fore][freeimage layer="&sf.layer_seltext+3" page=back]
	[freeimage layer="&sf.layer_seltext+4" page=fore][freeimage layer="&sf.layer_seltext+4" page=back]
	[freeimage layer="&sf.layer_seltext+5" page=fore][freeimage layer="&sf.layer_seltext+5" page=back]
	[freeimage layer="&sf.layer_seltext+6" page=fore][freeimage layer="&sf.layer_seltext+6" page=back]
	[freeimage layer="&sf.layer_seltext+7" page=fore][freeimage layer="&sf.layer_seltext+7" page=back]
	;選択肢マクロでこの形式で増やしてるから一旦戻さないとだめか
	[eval exp="sf.maxlayers = kag.numCharacterLayers - 7"][laycount layers="&sf.maxlayers"]
	[endif]


	[eval exp="tf.gameplay = 0"]
	;セリフ中演出を飛ばすかどうかの判定に使う。オフはシナリオ中で
	[eval exp="tf.sys_return = 1"]
	;スロットにデータをロード
	;[load place=101]

	; スナップショットのロック解除
	[unlocksnapshot]

	;マスク画像消去
	;マスク貼ってるレイヤと違うんだけどなぁ　そもそもtmeloadしてるから消す必要ないのじゃ？
	;[freeimage layer="&sf.layer_quick" page=fore][freeimage layer="&sf.layer_quick" page=back]

	;//;選択肢表示中に来ていたらsel_sub.ksを呼び出して選択肢を再表示する。
	;//[if exp="f.selnow"]
	;//	[call storage="sel_sub.ks" target=*sel_sub]
	;//[endif]

	;//[eval exp="sf.sys_sub = 1"]

	; 右クリック割り当てを設定する
	[call storage="rclick_sub.ks"]

	;ウィンドウ透過度スライダーを表示しなおす
	;[setSliderPosition left="&sf.winsld_x" top="&sf.winsld_y"]

	;ウィンドウを0秒で再表示
	;f.win_narration == 1はナレーション用の判定
	[if exp="f.win_narration == 1"]
		;[sysbt_meswin3]
		[layopt layer=message0 visible=true page=back]
		[layopt layer=message0 visible=true page=fore]
	[else]
		[s_m cond="f.graphic_bt_sel == 0"]
	[endif]

	;透過度を反映
	[eval exp="kag.fore.messages[0].frameOpacity = sf.graphicframe_opacity"]
	[eval exp="kag.back.messages[0].frameOpacity = sf.graphicframe_opacity"]
	;テキスト再表示時にノータイムにするためのフラグオン
	[eval exp="tf.sys_sub = 1" cond="f.graphic_bt_sel == 0"]

	;ループSE
	;BGVの音量を一旦設定値に
	[stopse buf="&sf.SE_sys_confsrd_buf"]
;	[seopt buf="&sf.SE_HLoop_buf1" gvolume="&sf.dummy_HLoop_seopt1/1000" volume="&f.tmp_HLoop_seopt1"     cond="sf.seplayHLoop == 1"]
;	[seopt buf="&sf.SE_HLoop_buf2" gvolume="&sf.dummy_HLoop_seopt2/1000" volume="&f.tmp_HLoop_seopt2"     cond="sf.seplayHLoop == 1"]
;	[seopt buf="&sf.chara01L_buf"  gvolume="&sf.dummy_seopt_chara01L/1000" volume="&f.tmp_seopt_chara01L" cond="sf.chara01_L == 1"]
	;SEHループ再度再生
;	[se_HLoop buf1 storage="&f.tmp_se_HLoop1" cond="f.tmp_se_HLoop1 != void"][waitclick]
;	[se_HLoop buf2 storage="&f.tmp_se_HLoop2" cond="f.tmp_se_HLoop2 != void"]
	;BGV再度再生
;	[bgv_a s="&f.tmp_bgv_ch01" cond="f.tmp_bgv_ch01 != void"]
	;変数をカラにしちゃだめだな
	;[eval exp="f.tmp_se_HLoop1 = void"]
	;[eval exp="f.tmp_se_HLoop2 = void"]
	;[eval exp="f.tmp_bgv_ch01 = void"]


[endmacro]

[return]


