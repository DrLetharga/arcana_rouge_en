; macro_std.ks…立ちキャラ用マクロ定義

;//==//==//==//==//==//==//==//==//==//==//==//==//==//==//==
@iscript
function existentImage_std_base_check(storage)
{
	if(f.image_std_base=="")
		return false;
		
	var test;
	
	if(test = storage + ".tlg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".png", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".bmp", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".jpg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".jpeg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(Storages.isExistentStorage(storage))
	{
		dm("existentImage:"+"イメージファイルに拡張子をつけることは推奨されていません。("+storage+")");
	}
	else
	{
//		//m ここでコンソールにメッセージ出てるからここにinfo入れれば出るか
		dm("existentImage:"+f.image_std_face+"は存在しません");
//チェックなのでインフォは出さない
		System.inform(""+f.image_std_base+"　は存在しません");
		return false;
	}
	return storage;
}

function existentImage_std_face_check(storage)
{
	if(f.image_std_face=="")
		return false;
		
	var test;
	
	if(test = storage + ".tlg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".png", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".bmp", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".jpg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".jpeg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(Storages.isExistentStorage(storage))
	{
		dm("existentImage:"+"イメージファイルに拡張子をつけることは推奨されていません。("+storage+")");
	}
	else
	{
//		//m ここでコンソールにメッセージ出てるからここにinfo入れれば出るか
		dm("existentImage:"+f.image_std_face+"は存在しません");
//チェックなのでインフォは出さない
		System.inform(""+f.image_std_face+"　は存在しません");
		return false;
	}
	return storage;
}



@endscript
;//==//==//==//==//==//==//==//==//==//==//==//==//==//==//==

; 立ちキャラ全消しマクロ
;
; chara_int キャラクター消去
; 機能概要
; 画面上の全キャラのキャラクターを消去する
;左右だけのとはあとで作るか
;一応マクロつくったけど、スクリプト直に貼った方が便利だな
[macro name=chara_int_all]
	;キャラ消すから裸だった場合にオンになってるフラグをオフる
	[eval exp="f.stdmsk = 0"]

	;あとでレイヤーナンバーは調整しよう
	;★
;	[chara_int1]
;	[chara_int2]
;	[chara_int3]
;	[chara_int4]
;	[chara_int5]
;	[chara_int6]
;	[chara_int7]
;	[chara_int8]
;	[chara_int9]
;	[chara_int10]

	[backlay_c]
;	[image storage="chara_int" layer=1 page=back visible=true]
;	[image storage="chara_int" layer=2 page=back visible=true]
;	[image storage="chara_int" layer=3 page=back visible=true]
;	[image storage="chara_int" layer=4 page=back visible=true]
;	[image storage="chara_int" layer=5 page=back visible=true]
;	[image storage="chara_int" layer=6 page=back visible=true]
;	[image storage="chara_int" layer=7 page=back visible=true]
;	[image storage="chara_int" layer=8 page=back visible=true]
;	[image storage="chara_int" layer=9 page=back visible=true]
;	[image storage="chara_int" layer=10 page=back visible=true  cond="sf.maxlayers > 11"]
;	[image storage="chara_int" layer=11 page=back visible=true  cond="sf.maxlayers > 12"]
;	[image storage="chara_int" layer=12 page=back visible=true  cond="sf.maxlayers > 13"]
;	[image storage="chara_int" layer=13 page=back visible=true  cond="sf.maxlayers > 14"]
;	[image storage="chara_int" layer=14 page=back visible=true  cond="sf.maxlayers > 15"]
;	[image storage="chara_int" layer=15 page=back visible=true  cond="sf.maxlayers > 16"]
;	[image storage="chara_int" layer=16 page=back visible=true  cond="sf.maxlayers > 17"]
;	[image storage="chara_int" layer=17 page=back visible=true  cond="sf.maxlayers > 18"]
;	[image storage="chara_int" layer=18 page=back visible=true  cond="sf.maxlayers > 19"]
;	[image storage="chara_int" layer=19 page=back visible=true  cond="sf.maxlayers > 20"]
;	[image storage="chara_int" layer=20 page=back visible=true  cond="sf.maxlayers > 21"]
;[eval exp="System.inform('消しますよ')"]

	[freeimage layer=1  page=back]
	[freeimage layer=2  page=back]
	[freeimage layer=3  page=back]
	[freeimage layer=4  page=back]
	[freeimage layer=5  page=back]
	[freeimage layer=6  page=back]
	[freeimage layer=7  page=back]
	[freeimage layer=8  page=back]
	[freeimage layer=9  page=back]
	[freeimage layer=10 page=back  cond="sf.maxlayers > 11"]
	[freeimage layer=11 page=back  cond="sf.maxlayers > 12"]
	[freeimage layer=12 page=back  cond="sf.maxlayers > 13"]
	[freeimage layer=13 page=back  cond="sf.maxlayers > 14"]
	[freeimage layer=14 page=back  cond="sf.maxlayers > 15"]
	[freeimage layer=15 page=back  cond="sf.maxlayers > 16"]
	[freeimage layer=16 page=back  cond="sf.maxlayers > 17"]
	[freeimage layer=17 page=back  cond="sf.maxlayers > 18"]
	[freeimage layer=18 page=back  cond="sf.maxlayers > 19"]
	[freeimage layer=19 page=back  cond="sf.maxlayers > 20"]
	[freeimage layer=20 page=back  cond="sf.maxlayers > 21"]


	;[eval exp="f.layer1   = 0"]
	;[eval exp="f.layer2   = 0"]
	;[eval exp="f.layer3   = 0"]
	;[eval exp="f.layer4   = 0"]
	;[eval exp="f.layer5   = 0"]
	;[eval exp="f.layer6   = 0"]
	;[eval exp="f.layer7   = 0"]
	;[eval exp="f.layer8   = 0"]
	;[eval exp="f.layer9   = 0"]
	;[eval exp="f.layer10  = 0"]
	;[eval exp="f.layer11  = 0"]
	;[eval exp="f.layer12  = 0"]
	;[eval exp="f.layerC  = 0"]
	;[eval exp="f.layerL  = 0"]
	;[eval exp="f.layerR  = 0"]
	;[eval exp="f.layerLC = 0"]
	;[eval exp="f.layerRC = 0"]

	;[layopt layer=1  page=back visible=false]
	;[layopt layer=2  page=back visible=false]
	;[layopt layer=3  page=back visible=false]
	;[layopt layer=4  page=back visible=false]
	;[layopt layer=5  page=back visible=false]
	;[layopt layer=6  page=back visible=false]
	;[layopt layer=7  page=back visible=false]
	;[layopt layer=8  page=back visible=false]
	;[layopt layer=9  page=back visible=false]
	;[layopt layer=10 page=back visible=false]
	;[layopt layer=11 page=back visible=false]
	;[layopt layer=12 page=back visible=false]

[endmacro]

;めんどうだからここで消しのレイヤ定義
[eval exp="sf.layerC = 3"]
[eval exp="sf.layerL = 1"]
[eval exp="sf.layerR = 2"]
[eval exp="sf.layerLC = 4"]
[eval exp="sf.layerRC = 5"]

[macro name=chara_int_ce][backlay_c][freeimage layer="&sf.layerC"   page=back][endmacro]
[macro name=chara_int_le][backlay_c][freeimage layer="&sf.layerL"   page=back][endmacro]
[macro name=chara_int_ri][backlay_c][freeimage layer="&sf.layerR"   page=back][endmacro]
[macro name=chara_int_lc][backlay_c][freeimage layer="&sf.layerLC"  page=back][endmacro]
[macro name=chara_int_rc][backlay_c][freeimage layer="&sf.layerRC"  page=back][endmacro]

;移植しやすいようにレイヤも指定するようにする
[macro name=chara_int][backlay_c][freeimage layer=%layer   page=back][endmacro]



;	[macro name=chara_int0]
;		[image storage="chara_int" layer=0 page=back visible=true left=0 top=0]
;	[endmacro]
;
;	[macro name=chara_int1]
;		[image storage="chara_int" layer=1 page=back visible=true left=0 top=0]
;	[endmacro]
;
;	[macro name=chara_int2]
;		[image storage="chara_int" layer=2 page=back visible=true left=0 top=0]
;	[endmacro]
;
;	[macro name=chara_int3]
;		[image storage="chara_int" layer=3 page=back visible=true left=0 top=0]
;	[endmacro]
;
;	[macro name=chara_int4]
;		[image storage="chara_int" layer=4 page=back visible=true left=0 top=0]
;	[endmacro]
;
;	[macro name=chara_int5]
;		[image storage="chara_int" layer=5 page=back visible=true left=0 top=0]
;	[endmacro]
;
;	[macro name=chara_int6]
;		[image storage="chara_int" layer=6 page=back visible=true left=0 top=0]
;	[endmacro]
;
;	[macro name=chara_int7]
;		[image storage="chara_int" layer=7 page=back visible=true left=0 top=0]
;	[endmacro]
;
;	[macro name=chara_int8]
;		[image storage="chara_int" layer=8 page=back visible=true left=0 top=0]
;	[endmacro]
;
;	[macro name=chara_int9]
;		[image storage="chara_int" layer=9 page=back visible=true left=0 top=0]
;	[endmacro]
;
;	[macro name=chara_int10]
;		[image storage="chara_int" layer=10 page=back visible=true left=0 top=0]
;	[endmacro]




[macro name=chara_int_top]
	;貼ってある画像ファイル名を取得
	;[eval exp="tf.stdfilename = kag.back.layers[10].Anim_loadParams.storage" opacity=%opacity grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma]
	;[call storage="cgmsk.ks" target=*stdmsk_off]
	;[image storage="chara_int" layer="&sf.effectlayer" page=back visible=true left=0 top=0]
;	[backlay_c][layopt layer="&sf.effectlayer" page=back visible=false]
	[backlay_c][freeimage layer="&sf.toplayer"   page=back]

[endmacro]


;これ多分キャラ毎にマクロ組むから要らないけどテスト表示用に入れておく
;■キャラのベース画像と表情画像を設定
;旧
;<ChrSetEx 0,ルー横中,通常,ノーマル２>
;
;使い方
;[ChrSetEx layer=* chbase="***" chface="***"]
;
[macro name=ChrSetEx]
	[backlay_c]
	;ベース（体）の画像読み込み ここで座標定義してあるがダミーなので入力は不要
	[image layer=%layer|1 storage=%chbase page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma]
	;表情の画像読み込み　↑と同じレイヤに読み込まれる こっちはベースに対する座標なので必須
	[pimage storage=%chface layer=%layer|1 page=back visible=true dx=0 dy=0]
[endmacro]

;こっちはいらないか
[macro name=ChrSetParts]
	;表情の画像読み込み　↑と同じレイヤに読み込まれる こっちはベースに対する座標なので必須
	[pimage storage=%chface layer=%layer page=back visible=true dx=%x|0 dy=%y|0]
[endmacro]



;[backlay]消すとtempsave　tempload した後にtransタグを使うとメッセージウィンドウが消えからな！
;マクロ名とファイル名部分のヒロインA、明夢美はあとで実際のキャラ名に置換すること！
;あとマクロの表情名もそれぞれに変えてね。
;とりあえず裸、制服、制服、下着のマクロを用意しておく。


[return]
;-----------------------------------------------------------
;-----------------------------------------------------------
;-----------------------------------------------------------
;デバッグのエラーインフォメーション処理

;無い表情打ったときに飛んでくる
;リリース時には処理無しにすること！

;---------------------------------
*no_size
@iscript
dm("このサイズはありません！");
System.inform(""+tf.macro_chara+"　このサイズはありません！");
@endscript
[return]

;---------------------------------
*no_pause
@iscript
dm("このポーズはありません！");
System.inform(""+tf.macro_chara+"　このポーズはありません！");
@endscript
[return]

;---------------------------------
*no_coss
@iscript
dm("この服装はありません！");
System.inform(""+tf.macro_chara+"　この服装はありません！");
@endscript
[return]

;---------------------------------
*no_add
@iscript
dm("このポーズ服装の加算ファイルはありません！");
System.inform(""+tf.macro_chara+"　このポーズ服装の加算ファイルはありません！");
@endscript
[return]

;---------------------------------
*no_face
@iscript
dm("この表情はありません！");
System.inform(""+tf.macro_chara+"　この表情はありません！");
@endscript
[return]



