;//=============================================================================
;//
;//　　　　　　　　アルカナルージュ
;//
;//　　　　　　　　　Version 1.00
;//　　　　　　　　Build 2019/11
;//=============================================================================
;0000.ks

;タイトル画面から必ずこのファイルにジャンプさせる。
;main.txtのようなもの。

;sebuf構成
;0 SE
;1 SE 一応ループの時はここ
;2 SE 触手ループがここだったかな
;3 SE 空けておくが基本使用不可
;4 
;5 
;6 
;7 
;8 
;9 
;10
;11
;12
;13
;14
;15
;16

;レイヤ構成
;message0　テキストウィンドウ
;message1　セーブロード、テキストフレーム（今回使わない）
;message2　セーブロード、フェイスウィンドウ（今回使わない）
;message3　コンフィグ、名前がセーブデータに表示されるようにするためにmessage3非表示で名前入れる
;message4　ネームチップ
;message5　選択肢
;message6　サンプルウィンドウのテキスト
;message7　ダイアログのテキスト
;message8
;message9
;message10

;レイヤ構成
;base　空き
;0　背景・イベント
;1　キャラ　右
;2　キャラ　左
;3　キャラ　中
;4　キャラ　右 2人立ち用
;5　キャラ　左 2人立ち用
;6
;7
;8
;9　演出で使えるのここまで
;10　選択肢のテキスト 暗転
;11　quickセーブロード　セーブマスク　コンフィグメッセージウィンドウのベース画像（このレイヤの濃度が操作される）
;12　フラッシュ　ダイアログ
;13　Newマーク

;今作は自動折り返しあり。40文字禁則3文字くらいで設定。

;===========================================================

;ウィンドウ非表示中
[eval exp="f.winon = 0"]
;フェイスオン
[eval exp="f.face_win_on = 1"]

;;;;一応デバッグ閉じてたらメインに直飛び
;[if exp="kag.debugMenu.visible == true"]
;	[jump target=*debug]
;[endif]
;
;;プロローグスキップしてるなら該当ファイルへ
;[if exp="tf.pskip == 1"]
;	[eval exp="tf.pskip = 0"]
;	[jump storage="" target=*]
;[endif]

*main
;システムボタン＆ウィンドウ消去
[sysbt_meswin clear]

[jump storage="arcana001.ks" target=*TOP]
;[jump storage="セーブマスクテスト.ks"]
;-----------------------------------------------------------
*debug|
;
;
;	*SEL01|
;	[fc]
;	[sel01 text='技名　ルビテスト'             target=*技名]
;	[sel02 text='立ちキャラ 表示テスト'        target=*std]
;	[sel03 text='フェイスウィンドウテスト'     target=*f]
;	[sel04 text='変身ムービー'                 target=*m]
;	;[sel01 text='サンプルシナリオ'             target=*sample]
;	[sel01 text='立ちキャラ 使用法'            storage="test_std.ks"]
;	;[sel03 text='立ちキャラ 揺らしテスト'      target=*q]
;	;[sel04 text='アイキャッチ　テスト'      target=*i]
;	;[sel04 text='bgv　テスト'      target=*bgv]
;	[sel07 text='本編'                target=*main end]
;	[returntitle]
;
;	*umi
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="ms_b001.ks" target=*TOP]
;
;	*sac
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="ms_c001.ks" target=*TOP]
;
;	*kas
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="ms_d001.ks" target=*TOP]
;	;--------------------------------------
;
;	;	*sample
;	;	;システムボタン＆ウィンドウ消去
;	;	[sysbt_meswin clear]
;	;	[jump storage="ft_0001.ks" target=*TOP]
;	*技名
;	[jump storage="_技名マクロ.ks" target=*test]
;
;
;
;
;	*std|
;	[fc]
;	[sel01 text='立ちキャラ 表示テスト 緋神　茜'      target=*std1]
;	[sel02 text='立ちキャラ 表示テスト 氷上　葵'      target=*std2]
;	[sel03 text='立ちキャラ 表示テスト 柏山　ミア'    target=*std3]
;	[sel04 text='立ちキャラ 表示テスト 四堂　冥'      target=*std4]
;	[sel05 text='敵'      target=*mob]
;	[sel06 text='戻る'                                target=*SEL01 end]
;
;	*mob|
;	[fc]
;	[sel01 text='主人公'                   target=*std5]
;	[sel02 text='カクエン'                 target=*std6]
;	[sel03 text='ミズチ'                   target=*std7]
;	[sel04 text='ショウジョウ'             target=*std8]
;	[sel05 text='下級冥魔Ａ（子鬼タイプ）' target=*std9]
;	[sel06 text='下級冥魔Ｂ（触手タイプ）' target=*std10]
;	[sel07 text='戻る'          target=*std end]
;
;	*std1
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch01.ks" target=*std1]
;
;	*std2
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch02.ks" target=*std2]
;
;	*std3
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch03.ks" target=*std3]
;
;	*std4
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch04.ks" target=*std4]
;
;	*std5
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch05.ks"]
;
;	*std6
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch06.ks"]
;
;	*std7
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch07.ks"]
;
;	*std8
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch08.ks"]
;
;	*std9
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch09.ks"]
;
;	*std10
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch10.ks"]
;
;
;	*f
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="test_face.ks"]
;
;	*m
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="test_hensin.ks"]
;
;
;
;	*q
;	;システムボタン＆ウィンドウ消去
;	[sysbt_meswin clear]
;	[jump storage="test_quake_chara.ks"]
;
;
;
;	*bgv
;	[sysbt_meswin clear]
;	[jump storage="test_bgv.ks"]
;
;
;
[returntitle]
