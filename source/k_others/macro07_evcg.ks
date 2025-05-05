;イベントCG表示用マクロ
;eval exp="tf.filename =  kag.back.layers['0'].Anim_loadParams.storage"]で表示中のファイルネームがbaseだと得られないので
;イベントCGはレイヤ0に貼る事！

;該当ファイルが無い場合にスルーするためのtjsとイベント表示マクロ

;//==//==//==//==//==//==//==//==//==//==//==//==//==//==//==
@iscript
function existentImage(storage)
{
	if(storage=="")
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
		//m ここでコンソールにメッセージ出てるからここにinfo入れれば出るか
		dm("existentImage:"+storage+"は存在しません");
//リリース時閉じ
		System.inform("差分　"+storage+"　は存在しません");
		return false;
	}
	return storage;
}


function existentImage_evcg_check(storage)
{
	if(storage=="")
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
//		dm("existentImage:"+storage+"は存在しません");
//チェックなのでインフォは出さない
//		System.inform("差分　"+storage+"　は存在しません");
		f.evcg_check_ok = 0;
		return false;
	}
	return storage;
}





@endscript
;//==//==//==//==//==//==//==//==//==//==//==//==//==//==//==

;=============================================================
;汎用image
;=============================================================

;汎用
[macro name=img_c]
	[backlay_c][image * layer=%layer|6 page=back visible=true left=%x|0 top=%y|0 opacity=%opa|255]
[endmacro]


;=============================================================
;evcgマクロ内で使う顔ファイルの有無のチェックマクロ
;=============================================================
[macro name=evcg_check]
	@if exp="(existentImage_evcg_check(mp.storage)!==false)"
	[image storage=%storage layer=base page=back visible=false left=0 top=0]
	[eval exp="f.evcg_check_ok = 1"]
	@endif
	[freeimage layer=base page=fore][freeimage layer=base page=back]
[endmacro]

;=============================================================
;イベント
;=============================================================

;storageを直に%graにしちゃうとmpの保存とかも書き換えないといけなくて面倒なので2段階マクロにする。
;[macro name=evcg]
;	[evcg_ * storage=%gra]
;[endmacro]

;元々のマクロのほうをアンダーバー付きに
;[macro name=evcg_]
[macro name=evcg]


	;背景からイベントCGならウィンドウ消し
	[if    exp="f.BGorEV == 1"]
		;直前が背景なら念の為にブラーフラグオフ
		[eval exp="f.bluron = 0"]
		;システムボタン＆ウィンドウ消去
		[sysbt_meswin clear]
	[endif]
	[eval exp="f.BGorEV = 2"]

	;念ため裸立ち用のマスクフラグをオフる
	[eval exp="f.stdmsk = 0"]


		;layoptだと複数を同時に設定できないから変数に入れてimageタグで効果を実行する
		;でもあんまり使わないのに判定入りまくるのもなぁ
		;効果を記述する時はマクロ名の直後に書くこと！　evcg sp って感じで
		;効果:黒白赤加算　ここでもできるようにしておくか
		;mcolorは一回定義されちゃうとそれ毎回入っちゃうんじゃね？だから先にやっとかないとだめか
		[if    exp="mp.blk"]
			[eval exp="f.evcg_mcolor = '0x000000'"]
			[layopt layer=%layer|0  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
		[elsif exp="mp.wht"]
			[eval exp="f.evcg_mcolor = '0xffffff'"]
			[layopt layer=%layer|0  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
		[elsif exp="mp.red"]
			[eval exp="f.evcg_mcolor = '0xff0000'"]
			[layopt layer=%layer|0  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
		[endif]

		;効果:セピア
		[if exp="mp.spi"]
			;[layopt layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 grayscale=true rgamma=1.3 ggamma=1.1]
			[eval exp="f.evcg_grayscale = true"]
			[eval exp="f.evcg_rgamma    = 2"]
			[eval exp="f.evcg_ggamma    = 1.5"]
			[eval exp="f.evcg_bgamma    = 1"]
		[elsif exp="mp.tv"]
			[eval exp="f.evcg_grayscale = true"]
			[eval exp="f.evcg_rgamma    = 0.3"]
			[eval exp="f.evcg_ggamma    = 1.2"]
			[eval exp="f.evcg_bgamma    = 0.9"]
		[else]
			[eval exp="f.evcg_grayscale = false"]
			[eval exp="f.evcg_rgamma    = 1"]
			[eval exp="f.evcg_ggamma    = 1"]
			[eval exp="f.evcg_bgamma    = 1"]
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
			[eval exp="f.evcg_rfloor = 255"]
			[eval exp="f.evcg_gfloor = 255"]
			[eval exp="f.evcg_bfloor = 255"]
			[eval exp="f.evcg_rceil  = 0"]
			[eval exp="f.evcg_gceil  = 0"]
			[eval exp="f.evcg_bceil  = 0"]
		[else]
			[eval exp="f.evcg_rfloor = 0"]
			[eval exp="f.evcg_gfloor = 0"]
			[eval exp="f.evcg_bfloor = 0"]
			[eval exp="f.evcg_rceil  = 255"]
			[eval exp="f.evcg_gceil  = 255"]
			[eval exp="f.evcg_bceil  = 255"]
		[endif]

		;効果:上下反転
		[if exp="mp.flipud"]
			;[layopt layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 flipud=true]
			[eval exp="f.evcg_flipud = true"]
		[else]
			[eval exp="f.evcg_flipud = false"]
		[endif]

		;効果:左右反転
		[if exp="mp.fliplr"]
			;[layopt layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 fliplr=true]
			[eval exp="f.evcg_fliplr = true"]
		[else]
			[eval exp="f.evcg_fliplr = false"]
		[endif]

	[backlay_c]
	;カットインが貼られてたら消さない。てかキャラが貼られてなかったら消さなくていいんだよなぁ
	;sf.toplayerも今は消す必要ないんじゃないか？
	;とりあえずカットインが貼られてる時だけで判定
	[chara_int_all cond="f.mskon2 == 0"]

;イベントCGはシナリオにゲームIDも記述したほうが無難かなぁ
;テスト用を動作させるためにaddIDしてるけど今まで通り実際のファイル名を記述しよう
	@if exp="(existentImage(mp.storage)!==false)"
;	@if exp="(existentImage(sf.addgameID + mp.storage)!==false)"

		;効果:セピア用モヤモヤ　
		[image storage="effect_KAISOU" layer="&sf.effectlayer" page=back visible=true left=%x|0 top=%y|0  opacity=%opacity|255 grayscale=true rgamma=2 ggamma=1.5 cond="mp.spi && mp.efoff == void"]
		[if exp="mp.tv"]
			;クイックセーブ演出とかフラッシュのレイヤと被ってるからレイヤ1に固定しておく念の為indexもかいとく
			[image storage="effect_KAISOU" layer=1 index=2000 page=back visible=true left=0 top=0 grayscale=true  grayscale=true grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma" bgamma="&f.evcg_bgamma"]
		[endif]
		;一回使うと貼りっぱなしになっちゃうから消さないとだめか。自動判定だと面倒だからmpで
		[if exp="mp.spioff || mp.tvoff"]
			[freeimage layer="&sf.effectlayer" page=back]
		[endif]

		;[image *]
		;これこうしても良い？
		;レイヤとページとビジブルとxyとopacityと各種効果は定義
		;mcolorは一回定義されちゃうとそれ毎回入っちゃうんじゃね？
;テスト用を動作させるためにaddIDしてるけど今まで通り実際のファイル名を記述しよう
;どっちがいいかなぁ
		[image *  storage=%storage                     layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma" bgamma="&f.evcg_bgamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" ]
		;[image *  storage="&sf.addgameID + mp.storage" layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" ]

		[eval exp="sf[mp.storage]= 1"]
;		[eval exp="sf[sf.addgameID + mp.storage]= 1"]
		;f.は何に使ってるんだっけなぁ。ボタン選択肢の背景用だったか
		;[eval exp="f[mp.storage] = 1"]

		;怖いから一旦リセット
		[eval exp="f.msk_x= 0"]
		[eval exp="f.msk_y= 0"]
		;長尺で座標弄ってたらマスク用の座標変数に保存　move後に必ず貼り替えをしてることが前提。
		[eval exp="f.msk_x= mp.x" cond="mp.x != void"]
		[eval exp="f.msk_y= mp.y" cond="mp.y != void"]


		;一旦カットNoを確定
		;EV00
		[eval exp="f.CGname = mp.storage.charAt(0) + mp.storage.charAt(1) + mp.storage.charAt(2) + mp.storage.charAt(3)"]
		;[eval exp="f.CGname = sf.addgameID +  mp.storage.charAt(0) + mp.storage.charAt(1) + mp.storage.charAt(2) + mp.storage.charAt(3)"]
		;CGギャラリー用の変数オン これやるなら普通のカットもやったらb_cgmode_init不要になるんじゃね？
		[eval exp="sf[f.CGname]= 1"]

		;拡縮用に背景を覚えておく
		[eval exp="f.bg_tmp = mp.storage"]

		;拡大処理打ち分け追加 始点座標と初期座標は同じものを使うので、拡大したサイズで最初から表示される。動的に動かしたい場合はタグを直打ち
		[zoom_back *  cond="mp.z != void"]

		;拡縮中である変数
		[eval exp="f.zoomon = 0" cond="mp.z == void ||mp.z == 100"]


		;イベント貼っているレイヤを変数にいれといてマスクサブルーチンで使う
		[eval exp="f.layer_evcg= 0"        cond="mp.layer == void"]
		[eval exp="f.layer_evcg= mp.layer" cond="mp.layer != void"]

;エロムービー用	;ムービー再生前にレイヤ1に貼るためにファイル名を記録
;エロムービー用	[eval exp="f.evcg_name = mp.storage"]

		;[eval exp="f.mskon = 1"]
		;直接ファイル名いれておく
		[eval exp="f.mskon = mp.storage" cond="tf.cutin == 0"]

		;キャラごとに表情切り分けてるカット用
		;chがいずれかがvoidでなければ実行（5キャラ以上とかになる場合は条件を適宜修正）
		[if exp="mp.ch1 != void || mp.ch2 != void || mp.ch3 != void || mp.ch4 != void || mp.ch5 != void"]
			;ch1やch2はキャラごとに固定にすること、cg登録するときにわけからなくなるから
			;キャラのファイル名書くときにカットナンバー入れなくて良いような処理をする

			;カットナンバーの頭を取得
			;[call storage="macro07_evcg.ks" target=*call]
			;これでいける？

			;一旦初期化
			[eval exp="f.CGface1 = void"]
			[eval exp="f.CGface2 = void"]
			[eval exp="f.CGface3 = void"]
			[eval exp="f.CGface4 = void"]
			[eval exp="f.CGface5 = void"]

			;mp.chがvoidなければface用のフラグに入れる
			;[eval exp="f.CGface1 = mp.ch1" cond="mp.ch1 != void"]
			;[eval exp="f.CGface2 = mp.ch2" cond="mp.ch2 != void"]
			;[eval exp="f.CGface3 = mp.ch3" cond="mp.ch3 != void"]
			;[eval exp="f.CGface4 = mp.ch4" cond="mp.ch4 != void"]
			;[eval exp="f.CGface5 = mp.ch5" cond="mp.ch5 != void"]

			;状態を顔の方に書かなくていいようにしたい。10個目が状態Noだけどどの状態に使っても良いときは顔ファイルのほうは0
			;'_face_0_'ファイルの存在チェック　毎回チェックすんの？ そのほうが無難か。カット変えた時の判定特にないからな。
			;ch1だけでいいか？キャラによっては0で別なキャラは状態No合わせってあり得るんじゃ？　そしたらf.CGface1に'_face_0_'を合成しないとだめか
			[if exp="mp.ch1 != void"]
				;0ファイルあっても他の数字あったらそっちを優先みたいな条件にしないといけないなぁ。
				;'_face_0_'ファイルの存在チェック
				[evcg_check storage="&f.CGname + '_face_0_' + mp.ch1"]
				;f.evcg_check_okが1なら'_face_0_'ファイルがある（それしかない）はずなのでファイル名に定義
				[if exp="f.evcg_check_ok == 1"][eval exp="f.CGface1 = '_face_0_' + mp.ch1"]
				;それ以外はベースの10個目の状態Noを自動的に入れる
				;mp.storageの中でbase_を検索、ヒット箇所から5文字目より後の文字を抜き出してる
				;ゲームID_の文字数分追加かなぁ
				[else]				[eval exp="f.CGface1 = '_face_' + &mp.storage.substring(mp.storage.indexOf('base_')+5+4) + '_' + mp.ch1"]
				[endif]
			[endif]

			[if exp="mp.ch2 != void"]
				;'_face_0_'ファイルの存在チェック
				[evcg_check storage="&f.CGname + '_face_0_' + mp.ch2"]
				;f.evcg_check_okが1なら'_face_0_'ファイルがある（それしかない）はずなのでファイル名に定義
				[if exp="f.evcg_check_ok == 1"][eval exp="f.CGface2 = '_face_0_' + mp.ch2"]
				;それ以外はベースの10個目の状態Noを自動的に入れる
				[else]				[eval exp="f.CGface2 = '_face_' + &mp.storage.substring(mp.storage.indexOf('base_')+5+4) + '_' + mp.ch2"]
				[endif]
			[endif]

			[if exp="mp.ch3 != void"]
				;'_face_0_'ファイルの存在チェック
				[evcg_check storage="&f.CGname + '_face_0_' + mp.ch3"]
				;f.evcg_check_okが1なら'_face_0_'ファイルがある（それしかない）はずなのでファイル名に定義
				[if exp="f.evcg_check_ok == 1"][eval exp="f.CGface3 = '_face_0_' + mp.ch3"]
				;それ以外はベースの10個目の状態Noを自動的に入れる
				[else]				[eval exp="f.CGface3 = '_face_' + &mp.storage.substring(mp.storage.indexOf('base_')+5+4) + '_' + mp.ch3"]
				[endif]
			[endif]

			[if exp="mp.ch4 != void"]
				;'_face_0_'ファイルの存在チェック
				[evcg_check storage="&f.CGname + '_face_0_' + mp.ch4"]
				;f.evcg_check_okが1なら'_face_0_'ファイルがある（それしかない）はずなのでファイル名に定義
				[if exp="f.evcg_check_ok == 1"][eval exp="f.CGface4 = '_face_0_' + mp.ch4"]
				;それ以外はベースの10個目の状態Noを自動的に入れる
				[else]				[eval exp="f.CGface4 = '_face_' + &mp.storage.substring(mp.storage.indexOf('base_')+5+4) + '_' + mp.ch4"]
				[endif]
			[endif]

			[if exp="mp.ch5 != void"]
				;'_face_0_'ファイルの存在チェック
				[evcg_check storage="&f.CGname + '_face_0_' + mp.ch5"]
				;f.evcg_check_okが1なら'_face_0_'ファイルがある（それしかない）はずなのでファイル名に定義
				[if exp="f.evcg_check_ok == 1"][eval exp="f.CGface5 = '_face_0_' + mp.ch5"]
				;それ以外はベースの10個目の状態Noを自動的に入れる
				[else]				[eval exp="f.CGface5 = '_face_' + &mp.storage.substring(mp.storage.indexOf('base_')+5+4) + '_' + mp.ch5"]
				[endif]
			[endif]

			;ch1とch2が貼られてればベースのフラグはオフに。ってこれじゃベースのみを1度も使わなかったらCG開放されないなぁ
			;でもここで削除しないと、成立差分の判定が面倒。マクロ外でCG開放フラグ入れるしかないか。
			;sf.EV～～を成立させてもここでオフにされちゃうから別の開放専用フラグにしないとだめだ
			;やっぱこれ、記述漏れはフェイルセーフとして、基本的にchは必ず全部貼って置いたほうがいいわ。
			;使わない？	[eval exp="sf[mp.storage] = 0" cond="mp.ch1 != void && mp.ch2 != void"]
			;↑使わないならopenフラグは不要になってベースのフラグを使える。
			;むしろvoidだったときに強引にch1ch2のフラグをオンにする処理が必要か。あ、だめだ書いてないからファイル名が分からないわ。
			;サブルーチンに飛ばすか･･･
			;[eval exp="sf[mp.storage + mp.ch1 + mp.ch2 + mp.ch3 + mp.ch4 + mp.ch5] = 1" cond="mp.ch1 == void && mp.ch2 == void && mp.ch3 == void && mp.ch4 == void && mp.ch5 == void"]
			;↑この方式にするならopenフラグは必要。

			;いっそ処理打ち分けたら？
			[if exp="mp.レイヤ式"]

				;mcolorは一回定義されちゃうとそれ毎回入っちゃうんじゃね？だから先にやっとかないとだめか
				[if    exp="mp.bl"]
					[eval exp="f.evcg_mcolor = '0x000000'"]
					[layopt layer=%ch1layer|1  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch2layer|2  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch3layer|3  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch4layer|4  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch5layer|5  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
				[elsif exp="mp.wh"]
					[eval exp="f.evcg_mcolor = '0xffffff'"]
					[layopt layer=%ch1layer|1  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch2layer|2  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch3layer|3  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch4layer|4  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch5layer|5  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
				[elsif exp="mp.re"]
					[eval exp="f.evcg_mcolor = '0xff0000'"]
					[layopt layer=%ch1layer|1  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch2layer|2  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch3layer|3  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch4layer|4  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch5layer|5  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
				[endif]


			;レイヤ式にするならこれで一応順番は好きに変えられるが。揺らしとか移動するときに顔がだけ残っちゃう
			;フタナリでレイヤ式がEV19だけならch1のデフォを上のレイヤにする
			[image * storage="&f.CGname + f.CGface1"  layer=%ch1_layer|1 page=back visible=true opacity=%ch1_opa|255 left=%ch1_x|0 top=%ch1_y|0 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" cond="mp.ch1 != void"]
			[image * storage="&f.CGname + f.CGface2"  layer=%ch2_layer|2 page=back visible=true opacity=%ch2_opa|255 left=%ch2_x|0 top=%ch2_y|0 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" cond="mp.ch2 != void"]
			[image * storage="&f.CGname + f.CGface3"  layer=%ch3_layer|3 page=back visible=true opacity=%ch3_opa|255 left=%ch3_x|0 top=%ch3_y|0 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" cond="mp.ch3 != void"]
			[image * storage="&f.CGname + f.CGface4"  layer=%ch4_layer|4 page=back visible=true opacity=%ch4_opa|255 left=%ch4_x|0 top=%ch4_y|0 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" cond="mp.ch4 != void"]
			[image * storage="&f.CGname + f.CGface5"  layer=%ch5_layer|5 page=back visible=true opacity=%ch5_opa|255 left=%ch5_x|0 top=%ch5_y|0 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" cond="mp.ch5 != void"]
			[else]
			;カットナンバーの頭とキャラの表情名を合成
			[pimage storage="&f.CGname + f.CGface1"  layer=%layer|0 page=back visible=true opacity=%ch1_opa|255 dx=%ch1_x|0 dy=%ch1_y|0 cond="mp.ch1 != void"]
			[pimage storage="&f.CGname + f.CGface2"  layer=%layer|0 page=back visible=true opacity=%ch2_opa|255 dx=%ch2_x|0 dy=%ch2_y|0 cond="mp.ch2 != void"]
			[pimage storage="&f.CGname + f.CGface3"  layer=%layer|0 page=back visible=true opacity=%ch3_opa|255 dx=%ch3_x|0 dy=%ch3_y|0 cond="mp.ch3 != void"]
			[pimage storage="&f.CGname + f.CGface4"  layer=%layer|0 page=back visible=true opacity=%ch4_opa|255 dx=%ch4_x|0 dy=%ch4_y|0 cond="mp.ch4 != void"]
			[pimage storage="&f.CGname + f.CGface5"  layer=%layer|0 page=back visible=true opacity=%ch5_opa|255 dx=%ch5_x|0 dy=%ch5_y|0 cond="mp.ch5 != void"]
			[endif]


			;組み合わせフラグ 前のmp情報残ってないのかしら？ アンダーバー付けると全パターン書かないといけなくなるから可読性おちるけど無しに
			;実際に生成される変数はこんな感じに
			;EV01_base_1_キャラ名01_キャラ名01
			;生成される変数　アンダーバー記述やめたからこうか
			;EV01_base'ベースNo''キャラ01''キャラ02'
			;やっぱ変数にもアンダーバーないと確認しにくいから次はなんか判定いれて足そう
			;UnderBar
			[eval exp="f.UB1 = '_'" cond="mp.ch1 != void"]
			[eval exp="f.UB2 = '_'" cond="mp.ch2 != void"]
			[eval exp="f.UB3 = '_'" cond="mp.ch3 != void"]
			[eval exp="f.UB4 = '_'" cond="mp.ch4 != void"]
			[eval exp="f.UB5 = '_'" cond="mp.ch5 != void"]

			[eval exp="f.UB1 = void" cond="mp.ch1 == void"]
			[eval exp="f.UB2 = void" cond="mp.ch2 == void"]
			[eval exp="f.UB3 = void" cond="mp.ch3 == void"]
			[eval exp="f.UB4 = void" cond="mp.ch4 == void"]
			[eval exp="f.UB5 = void" cond="mp.ch5 == void"]

			[eval exp="sf[mp.storage + f.UB1 + mp.ch1 + f.UB2 + mp.ch2 + f.UB3 + mp.ch3 + f.UB4 + mp.ch4 + f.UB5 + mp.ch5] = 1" cond="mp.ch1 != void || mp.ch2 != void || mp.ch3 != void || mp.ch4 != void || mp.ch5 != void"]
			;こうすべきか？大して意味はないけど'_base'を省くくらい あf.CGnameには状態入ってないからだめか
			;[eval exp="sf[f.CGname + mp.ch1 + mp.ch2 + mp.ch3 + mp.ch4 + mp.ch5] = 1" cond="mp.ch1 != void || mp.ch2 != void || mp.ch3 != void || mp.ch4 != void || mp.ch5 != void"]

		[endif]
	@endif
;ママキタボタン	;デバッグ用ママキタボタン。オンならCGが全部黒加算になる
;ママキタボタン	[if exp="sf.evcgoff == 1"]
;ママキタボタン		;[layopt layer=%layer|0  page=back mcolor=0x00000 mopacity=220]
;ママキタボタン		[pimage storage="effect_black" layer=%layer|0 page=back opacity=244 dx=0 dy=0]
;ママキタボタン	[endif]

	[if exp="tf.セーブマスクテスト実行中 == 1"]
		[eval exp="tf.最終差分 = sf.addgameID + mp.storage"]
	[endif]

;	[trans_c *  time=%time|1000]
[endmacro]

;=============================================================
;=============================================================
;下記の特殊表示には表情切り替え処理は入れていない。必要なようなら追加する。
;加算以外はほとんど使ってないから、evcgに統合でいいんじゃないか？　変数処理増えると合わせるの面倒だし。

;evcgマクロに統合
;	;=============================================================
;	;イベント セピア処理
;	;=============================================================
;
;	[macro name=evcg_sp]
;		;背景からイベントCGならウィンドウ消し
;		[if    exp="f.BGorEV == 1"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;念ため裸立ち用のマスクフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;とりあえずカットインが貼られてる時だけで判定
;		[chara_int_all cond="f.mskon2 == 0"]
;		;★[chara_init*]マクロだと一番上のレイヤ指定できないからこれで
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 grayscale=true rgamma=2 ggamma=1.5]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]
;
;	;=============================================================
;	;イベント ネガポジ反転
;	;=============================================================
;
;	[macro name=evcg_np]
;		;背景からイベントCGならウィンドウ消し
;		[if    exp="f.BGorEV == 1"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;念ため裸立ち用のマスクフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;とりあえずカットインが貼られてる時だけで判定
;		[chara_int_all cond="f.mskon2 == 0"]
;		;★[chara_init*]マクロだと一番上のレイヤ指定できないからこれで
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]
;
;	;=============================================================
;	;イベント 上下反転
;	;=============================================================
;
;	[macro name=evcg_ud]
;		;背景からイベントCGならウィンドウ消し
;		[if    exp="f.BGorEV == 1"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;念ため裸立ち用のマスクフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;とりあえずカットインが貼られてる時だけで判定
;		[chara_int_all cond="f.mskon2 == 0"]
;		;★[chara_init*]マクロだと一番上のレイヤ指定できないからこれで
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 flipud=true]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]
;
;	;=============================================================
;	;イベント 左右反転
;	;=============================================================
;
;	[macro name=evcg_lr]
;		;背景からイベントCGならウィンドウ消し
;		[if    exp="f.BGorEV == 1"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;念ため裸立ち用のマスクフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;とりあえずカットインが貼られてる時だけで判定
;		[chara_int_all cond="f.mskon2 == 0"]
;		;★[chara_init*]マクロだと一番上のレイヤ指定できないからこれで
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 fliplr=true]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]
;
;
;	;=============================================================
;	;イベント 黒加算
;	;=============================================================
;
;	;mcolor=0x00000 mopacity=200でやれば簡単だが移植時の事を考慮してeffect_black等をpimageする
;	;属性 opacity必須
;	[macro name=evcg_bl]
;		;背景からイベントCGならウィンドウ消し
;		[if    exp="f.BGorEV == 1"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;念ため裸立ち用のマスクフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;とりあえずカットインが貼られてる時だけで判定
;		[chara_int_all cond="f.mskon2 == 0"]
;		;★[chara_init*]マクロだと一番上のレイヤ指定できないからこれで
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 fliplr=true]
;			[pimage storage="effect_black" layer=0 page=back visible=true dx=0 dy=0 opacity=%opacity]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]
;
;	;=============================================================
;	;イベント 白加算
;	;=============================================================
;
;	;属性 opacity必須
;	[macro name=evcg_wh]
;		;背景からイベントCGならウィンドウ消し
;		[if    exp="f.BGorEV == 1"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;念ため裸立ち用のマスクフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;とりあえずカットインが貼られてる時だけで判定
;		[chara_int_all cond="f.mskon2 == 0"]
;		;★[chara_init*]マクロだと一番上のレイヤ指定できないからこれで
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 fliplr=true]
;			[pimage storage="effect_white" layer=0 page=back visible=true dx=0 dy=0 opacity=%opacity]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]
;
;	;=============================================================
;	;イベント 赤加算
;	;=============================================================
;
;	;属性 opacity必須
;	[macro name=evcg_re]
;		;背景からイベントCGならウィンドウ消し
;		[if    exp="f.BGorEV == 1"]
;			;システムボタン＆ウィンドウ消去
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;念ため裸立ち用のマスクフラグをオフる
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;とりあえずカットインが貼られてる時だけで判定
;		[chara_int_all cond="f.mskon2 == 0"]
;		;★[chara_init*]マクロだと一番上のレイヤ指定できないからこれで
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 fliplr=true]
;			[pimage storage="effect_red" layer=0 page=back visible=true dx=0 dy=0 opacity=%opacity]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]

;=============================================================
;カットイン
;=============================================================
;デフォのセーブマスクは立ちより上の6にするのでカットインはそれより上
;カットインのセーブマスクはさらに上

;storageを直に%graにしちゃうとmpの保存とかも書き換えないといけなくて面倒なので2段階マクロにする。
;[macro name=evcg_cutin]
;	[evcg_cutin_ * storage=%gra]
;[endmacro]

;元々のマクロのほうをアンダーバー付きに
;[macro name=evcg_cutin_]
[macro name=evcg_cutin]

;〆レガート佐藤追加変更　2018/10/23　evcg_cutinのマスク関係　ファイル名の取得
;	[eval exp="f.mskon = mp.storage"]
;2じゃないとカットインのマスクだけになっちゃう
	[eval exp="f.mskon2 = mp.storage"]
;	[eval exp="f.layer_evcg_cutin = mp.layer"]
;	[eval exp="f.layer_evcg_cutin = 7" cond="mp.layer == void"]
;
;	[backlay_c]
;	@if exp="(existentImage(mp.storage)!==false)"
;		;一旦カットNoを確定
;		[eval exp="f.CGname = mp.storage.charAt(0) + mp.storage.charAt(1) + mp.storage.charAt(2) + mp.storage.charAt(3)"]
;		;CGギャラリー用の変数オン これやるなら普通のカットもやったらb_cgmode_init不要になるんじゃね？
;		[eval exp="sf[f.CGname]= 1"]
;
;		[image storage=%storage layer=%layer|7 page=back visible=true  left=%x|0 top=%y|0 opacity=255]
;		[eval exp="sf[mp.storage]= 1"]
;		[eval exp="f[mp.storage] = 1"]
;		[eval exp="f.mskon2 = 1"]
;	@endif
	;マスク不要なカットインがある場合はだめだけど、今作は全部マスク有りみたいだからマクロでオンにする。
	;[eval exp="f.mskon2 = 1"]
	;キャラ消ししない
	;evcgマクロ内でf.mskonにカットインのmp.storageが入らないようにするためのフラグ
	[eval exp="tf.cutin = 1"]
	[evcg * layer="&sf.layer_evcg_cutin" charaon]
	[eval exp="tf.cutin = 0"]

;	[trans_c *  time=%time|1000]
[endmacro]

;カットイン消去
[macro name=evcg_cutin_int]
;	[eval exp="f.mskon  = 0"]
	[eval exp="f.mskon2 = 0"]
;	[eval exp="f.BGorEV = 1"]
	[backlay_c]
	[image storage="chara_int" layer="&sf.layer_evcg_cutin" page=back visible=true opacity=255]

;	[trans_c *  time=%time|1000]
[endmacro]




;=============================================================

[return]

