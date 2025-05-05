;サウンド系マクロ


;//==//==//==//==//==//==//==//==//==//==//==//==//==//==//==
@iscript
function existentImage_voice(s)
{
	if(s=="")
		return false;
		
	var test;
	
	if(test = s + ".ogg", Storages.isExistentStorage(test))
	{
		s = test;
	}
	else
	{
		//m ここでコンソールにメッセージ出てるからここにinfo入れれば出るか
		dm("existentImage:"+s+".oggは存在しません");
		System.inform("ボイス　"+s+".ogg　は無いよ！");
		return false;
	}
	return s;
}

function existentImage_SE(storage)
{
	if(storage=="")
		return false;
		
	var test;
	
	if(test = storage + ".ogg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else
	{
		//m ここでコンソールにメッセージ出てるからここにinfo入れれば出るか
		dm("existentImage:"+storage+".oggは存在しません");
		System.inform("SE　"+storage+".ogg　は無いよ！");
		return false;
	}
	return storage;
}

@endscript
;//==//==//==//==//==//==//==//==//==//==//==//==//==//==//==


;=============================================================
;ボイスのベースマクロ
;=============================================================
;キャラ個別で呼び出す

;バックログボイスボタン表示
[macro name="chvoice"]
	;systembutton_sub.ksを経由してたら再生しない(f.sys_sub == 0の時のみ再生)
	[if exp="tf.sys_sub == 0"]

		;ＢＧＶを一旦止めよう
		[if exp="f.bgvnow == 1"]
		;	[seopt buf=5 volume=0]
		;	[stopse buf=5]
		;	[stopse buf=7]
		;	[stopse buf=9]
		;	[stopse buf=11]
		;	[stopse buf=13]

		[endif]

		;mpで左右パン打ち分け 追加2018/04/29
		[if    exp="mp.panl"]	
			[seopt buf=%buf pan=-100]
		[elsif exp="mp.panr"]	
			[seopt buf=%buf pan=100]
		[else]
			[seopt buf=%buf pan=0]
		[endif]
	@if exp="(existentImage_voice(mp.s)!==false)"

		[playse * cond="kag.skipMode<=1"]

		;バックログで複数キャラ押すと被って再生できちゃうのはここ変えないとだめか。押したの以外のバッファを止めるって……保留
		[hact exp="&'kag.se[' + (mp.buf===void ? 0 : mp.buf) + '].play(%[storage:\'' + mp.storage + '\'])'"]

		[endhact]
		;[endhact]判定用
		[eval exp="f.voice_now = 1"]

		[eval exp="f.lastVoice = mp.storage"]
		[eval exp="f.lastbuf = mp.buf"]

;ここ個別のマクロでやってるからいらないようだな　要検証
;		;コンフィグでボイスオフのキャラだったら再生しない。キャラのボイスバッファにより要調整。
;		;一瞬再生されちゃうけどここに置くのが簡単か……
;		;ボイスオフじゃなくてボイス音量0にした場合も再生すっ飛ばしでいいと思うのだがどうだろう。
;		[if exp="sf.chara01_v == 0 || kag.se[4].volume2 ==0"][stopse buf=4][endif]
;		[if exp="sf.chara01_vl == 0 || kag.se[5].volume2 ==0"][stopse buf=5][endif]
;		[if exp="sf.chara02_v == 0 || kag.se[6].volume2 ==0"][stopse buf=6][endif]
;		[if exp="sf.chara02_vl == 0 || kag.se[7].volume2 ==0"][stopse buf=7][endif]
;		[if exp="sf.chara03_v == 0 || kag.se[8].volume2 ==0"][stopse buf=8][endif]
;		[if exp="sf.chara03_vl == 0 || kag.se[9].volume2 ==0"][stopse buf=9][endif]
;		[if exp="sf.chara04_v == 0 || kag.se[10].volume2 ==0"][stopse buf=10][endif]
;		[if exp="sf.chara04_vl == 0 || kag.se[11].volume2 ==0"][stopse buf=11][endif]
;		[if exp="sf.chara05_v == 0 || kag.se[12].volume2 ==0"][stopse buf=12][endif]
;		[if exp="sf.chara05_vl == 0 || kag.se[13].volume2 ==0"][stopse buf=13][endif]
	[endif]
	@endif

[endmacro]


;=============================================================
;ボイス　キャラ個別
;=============================================================




;-----------------------------
[macro name="vo_chara01"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara01_v == 1"]
			;直前が同じキャラのボイスでもブチっていうから一旦止めるべきでは
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[seopt buf="&sf.chara01_buf" volume=%v  cond="mp.v"]
			[seopt buf="&sf.chara01_buf" volume=100 cond="mp.v == false"]

			;ボイス再生 mpで左右パン打ち分け追加したので*追加2018/04/29
			[chvoice * buf="&sf.chara01_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara01_v == 0 || kag.se[sf.chara01_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara01_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara01_buf"]
		[endif]
[endmacro]



[macro name="vo_chara02"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara02_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[seopt buf="&sf.chara02_buf" volume=%v  cond="mp.v"]
			[seopt buf="&sf.chara02_buf" volume=100 cond="mp.v == false"]

			;ボイス再生
			[chvoice * buf="&sf.chara02_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara02_v == 0 || kag.se[sf.chara02_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara02_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara02_buf"]
		[endif]
[endmacro]

[macro name="vo_chara03"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara03_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara03_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara03_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara03_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara03_v == 0 || kag.se[sf.chara03_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara03_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara03_buf"]
		[endif]
[endmacro]

[macro name="vo_chara04"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara04_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara04_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara04_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara04_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara04_v == 0 || kag.se[sf.chara04_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara04_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara04_buf"]
		[endif]
[endmacro]

[macro name="vo_chara05"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara05_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara05_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara05_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara05_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara05_v == 0 || kag.se[sf.chara05_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara05_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara05_buf"]
		[endif]
[endmacro]

[macro name="vo_chara06"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara06_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara06_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara06_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara06_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara06_v == 0 || kag.se[sf.chara06_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara06_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara06_buf"]
		[endif]
[endmacro]

[macro name="vo_chara07"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara07_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara07_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara07_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara07_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara07_v == 0 || kag.se[sf.chara07_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara07_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara07_buf"]
		[endif]
[endmacro]

[macro name="vo_chara08"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara08_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara08_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara08_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara08_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara08_v == 0 || kag.se[sf.chara08_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara08_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara08_buf"]
		[endif]
[endmacro]

[macro name="vo_chara09"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara09_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara09_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara09_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara09_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara09_v == 0 || kag.se[sf.chara09_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara09_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara09_buf"]
		[endif]
[endmacro]

[macro name="vo_chara10"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara10_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara10_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara10_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara10_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara10_v == 0 || kag.se[sf.chara10_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara10_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara10_buf"]
		[endif]
[endmacro]

[macro name="vo_chara11"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara11_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara11_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara11_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara11_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara11_v == 0 || kag.se[sf.chara11_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara11_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara11_buf"]
		[endif]
[endmacro]

[macro name="vo_chara12"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara12_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara12_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara12_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara12_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara12_v == 0 || kag.se[sf.chara12_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara12_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara12_buf"]
		[endif]
[endmacro]

[macro name="vo_chara13"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara13_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara13_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara13_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara13_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara13_v == 0 || kag.se[sf.chara13_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara13_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara13_buf"]
		[endif]
[endmacro]

[macro name="vo_chara14"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara14_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara14_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara14_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara14_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara14_v == 0 || kag.se[sf.chara14_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara14_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara14_buf"]
		[endif]
[endmacro]

[macro name="vo_chara15"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara15_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara15_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara15_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara15_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara15_v == 0 || kag.se[sf.chara15_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara15_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara15_buf"]
		[endif]
[endmacro]

[macro name="vo_chara16"]
		;次のボイスが再生されるならば、ボイス継続オンでも止める	
		[if exp="sf.chara16_v == 1"]
			[fadeoutse buf="&sf.chara01_buf" time=200 cond="mp.mix == void && sf.bt_num_chara01 != void"]
			[fadeoutse buf="&sf.chara02_buf" time=200 cond="mp.mix == void && sf.bt_num_chara02 != void"]
			[fadeoutse buf="&sf.chara03_buf" time=200 cond="mp.mix == void && sf.bt_num_chara03 != void"]
			[fadeoutse buf="&sf.chara04_buf" time=200 cond="mp.mix == void && sf.bt_num_chara04 != void"]
			[fadeoutse buf="&sf.chara05_buf" time=200 cond="mp.mix == void && sf.bt_num_chara05 != void"]
			[fadeoutse buf="&sf.chara06_buf" time=200 cond="mp.mix == void && sf.bt_num_chara06 != void"]
			[fadeoutse buf="&sf.chara07_buf" time=200 cond="mp.mix == void && sf.bt_num_chara07 != void"]
			[fadeoutse buf="&sf.chara08_buf" time=200 cond="mp.mix == void && sf.bt_num_chara08 != void"]
			[fadeoutse buf="&sf.chara09_buf" time=200 cond="mp.mix == void && sf.bt_num_chara09 != void"]
			[fadeoutse buf="&sf.chara10_buf" time=200 cond="mp.mix == void && sf.bt_num_chara10 != void"]
			[fadeoutse buf="&sf.chara11_buf" time=200 cond="mp.mix == void && sf.bt_num_chara11 != void"]
			[fadeoutse buf="&sf.chara12_buf" time=200 cond="mp.mix == void && sf.bt_num_chara12 != void"]
			[fadeoutse buf="&sf.chara13_buf" time=200 cond="mp.mix == void && sf.bt_num_chara13 != void"]
			[fadeoutse buf="&sf.chara14_buf" time=200 cond="mp.mix == void && sf.bt_num_chara14 != void"]
			[fadeoutse buf="&sf.chara15_buf" time=200 cond="mp.mix == void && sf.bt_num_chara15 != void"]
			[fadeoutse buf="&sf.chara16_buf" time=200 cond="mp.mix == void && sf.bt_num_chara16 != void"]

			;mpでボリューム変更可に
			[if exp="mp.vol"]	
				[seopt buf="&sf.chara16_buf" volume=%v]
			[else]
				[seopt buf="&sf.chara16_buf" volume=100]
			[endif]

			;ボイス再生
			[chvoice * buf="&sf.chara16_buf" storage=%s]
		;コンフィグで次のキャラがオフなら再生せずにすでに鳴ってるボイスが再生継続される）
		[elsif exp="sf.chara16_v == 0 || kag.se[sf.chara16_buf].volume2 ==0"]
			;ボイス再生 バックログ登録ができないからボイス命令は入れないとだめか
			[chvoice * buf="&sf.chara16_buf" storage=%s]
			;即停止
			[stopse buf="&sf.chara16_buf"]
		[endif]
[endmacro]


;=============================================================
;ＢＧＶ
;=============================================================
;ＢＧＶのマクロ コンフィグでオンなら再生する
;あんまり意味ないけどbgvで検索しやすいからつくる
[macro name="bgv_chara01"]

	;条件避け入らなくね？
	;[if exp="sf.chara01_L == 1"]
		;システム画面（コンフィグ）用に一旦止めるからファイル名保存しておく
		[eval exp="f.tmp_bgv_ch01 = mp.s"]

		[eval exp="f.bgvnow_ch01 = 1"]
		;[playse buf=%buf storage="%storage" loop=true cond="kag.skipMode<=1"]
		;スキップ中でも鳴らしたほうが無難？

		[seopt buf="&sf.chara01L_buf" volume=%v  cond="mp.v"]
		[eval exp="f.tmp_seopt_chara01L = &mp.v" cond="mp.v"]

		[seopt buf="&sf.chara01L_buf" volume=100 cond="mp.v == false"]
		[eval exp="f.tmp_seopt_chara01L = 100" cond="!mp.v"]

		[playse buf="&sf.chara01L_buf" storage="%s" loop=true]
	;[endif]

[endmacro]


[macro name="bgvstop_chara01"]
		[eval exp="f.tmp_bgv_ch01 = void"]
		[eval exp="f.bgvnow_ch01 = 0"]
		[fadeoutse buf="&sf.chara01L_buf" time=%time|100]
[endmacro]

[macro name="bgv_chara02"]

	;条件避け入らなくね？
	;[if exp="sf.chara02_L == 1"]
		;システム画面（コンフィグ）用に一旦止めるからファイル名保存しておく
		[eval exp="f.tmp_bgv_ch02 = mp.s"]

		[eval exp="f.bgvnow_ch02 = 1"]
		;[playse buf=%buf storage="%storage" loop=true cond="kag.skipMode<=1"]
		;スキップ中でも鳴らしたほうが無難？

		[seopt buf="&sf.chara02L_buf" volume=%v  cond="mp.v"]
		[eval exp="f.tmp_seopt_chara02L = &mp.v" cond="mp.v"]

		[seopt buf="&sf.chara02L_buf" volume=100 cond="mp.v == false"]
		[eval exp="f.tmp_seopt_chara02L = 100" cond="!mp.v"]

		[playse buf="&sf.chara02L_buf" storage="%s" loop=true]
	;[endif]

[endmacro]

[macro name="bgvstop_chara02"]
		[eval exp="f.tmp_bgv_ch02 = void"]
		[eval exp="f.bgvnow_ch02 = 0"]
		[fadeoutse buf="&sf.chara02L_buf" time=%time|100]
[endmacro]


[macro name="bgv_chara03"]

	;条件避け入らなくね？
	;[if exp="sf.chara03_L == 1"]
		;システム画面（コンフィグ）用に一旦止めるからファイル名保存しておく
		[eval exp="f.tmp_bgv_ch03 = mp.s"]

		[eval exp="f.bgvnow_ch03 = 1"]
		;[playse buf=%buf storage="%storage" loop=true cond="kag.skipMode<=1"]
		;スキップ中でも鳴らしたほうが無難？

		[seopt buf="&sf.chara03L_buf" volume=%v  cond="mp.v"]
		[eval exp="f.tmp_seopt_chara03L = &mp.v" cond="mp.v"]

		[seopt buf="&sf.chara03L_buf" volume=100 cond="mp.v == false"]
		[eval exp="f.tmp_seopt_chara03L = 100" cond="!mp.v"]

		[playse buf="&sf.chara03L_buf" storage="%s" loop=true]
	;[endif]

[endmacro]

[macro name="bgvstop_chara03"]
		[eval exp="f.tmp_bgv_ch03 = void"]
		[eval exp="f.bgvnow_ch03 = 0"]
		[fadeoutse buf="&sf.chara03L_buf" time=%time|100]
[endmacro]



[macro name="bgv_chara04"]

	;条件避け入らなくね？
	;[if exp="sf.chara04_L == 1"]
		;システム画面（コンフィグ）用に一旦止めるからファイル名保存しておく
		[eval exp="f.tmp_bgv_ch04 = mp.s"]

		[eval exp="f.bgvnow_ch04 = 1"]
		;[playse buf=%buf storage="%storage" loop=true cond="kag.skipMode<=1"]
		;スキップ中でも鳴らしたほうが無難？

		[seopt buf="&sf.chara04L_buf" volume=%v  cond="mp.v"]
		[eval exp="f.tmp_seopt_chara04L = &mp.v" cond="mp.v"]

		[seopt buf="&sf.chara04L_buf" volume=100 cond="mp.v == false"]
		[eval exp="f.tmp_seopt_chara04L = 100" cond="!mp.v"]

		[playse buf="&sf.chara04L_buf" storage="%s" loop=true]
	;[endif]

[endmacro]

[macro name="bgvstop_chara04"]
		[eval exp="f.tmp_bgv_ch04 = void"]
		[eval exp="f.bgvnow_ch04 = 0"]
		[fadeoutse buf="&sf.chara04L_buf" time=%time|100]
[endmacro]




[macro name="bgvstop"]

	[if    exp="mp.aka"][bgvstop_chara01 *]
	[elsif exp="mp.aoi"][bgvstop_chara02 *]
	[elsif exp="mp.mia"][bgvstop_chara03 *]
	[elsif exp="mp.mei"][bgvstop_chara04 *]
	[else]
		[bgvstop_chara01 *]
		[bgvstop_chara02 *]
		[bgvstop_chara03 *]
		[bgvstop_chara04 *]
	[endif]

[endmacro]


;=============================================================
;BGM
;=============================================================

;[macro name="bgm"]
;	[bgm_ * storage=%ogg]
;[endmacro]
;

;BGMマクロ　コンフィグでオンなら再生する
;[macro name="bgm_"]
[macro name="bgm"]
	;[if exp="sf.bgmplay == 1"]

	;mpでボリューム変更可に
;	[if exp="mp.vol"]	
		[bgmopt volume=%v  cond="mp.v"]
;	[else]
		;[bgmopt volume="&sf.BGM_volume" cond="mp.v == false"]
		;なんか一回音量変更の踏んだあとに小さいままになるんだけど。ここボリューム100じゃね？
		;そもそもsf.BGM_volumeってどこで定義してん？まえの定義で今はsf.BGM_defvolumeか
		;100だとでかいんだけどgvolumeに対して100じゃないの
		;>省略すれば音量は変更されません。
		;だからあえて記述しないほうがいいのか。sf.BGM_volumeは未定義なので省略されたことになってるのか
		;やっぱ記述しないと前の音量のままってことでだめじゃね？
		;[bgmopt volume=100 cond="mp.v == false"]
		[bgmopt volume=80 cond="mp.v == false"]
		;[bgmopt cond="mp.v == false"]
;	[endif]

	;BGM再生
;	[if    exp="f.gameNo != void"]
;		[fadeinbgm storage="&sf.addgameID + mp.storage" loop=true time=%time|100]
;	[else]
		[fadeinbgm storage="%storage" loop=true time=%time|100]
;	[endif]
	;[endif]
[endmacro]

;曲ごとマクロで調整用
[macro name="bgm001"][bgm * storage="BGM01"][endmacro]
[macro name="bgm002"][bgm * storage="BGM02"][endmacro]
[macro name="bgm003"][bgm * storage="BGM03"][endmacro]
[macro name="bgm004"][bgm * storage="BGM04"][endmacro]
[macro name="bgm005"][bgm * storage="BGM05"][endmacro]
[macro name="bgm006"][bgm * storage="BGM06"][endmacro]
[macro name="bgm007"][bgm * storage="BGM07"][endmacro]
[macro name="bgm008"][bgm * storage="BGM08"][endmacro]
[macro name="bgm009"][bgm * storage="BGM09"][endmacro]
[macro name="bgm010"][bgm * storage="BGM10"][endmacro]
[macro name="bgm011"][bgm * storage="BGM11"][endmacro]
[macro name="bgm012"][bgm * storage="BGM12"][endmacro]
[macro name="bgm013"][bgm * storage="BGM13"][endmacro]
[macro name="bgm014"][bgm * storage="BGM14"][endmacro]
[macro name="bgm015"][bgm * storage="BGM15"][endmacro]
[macro name="bgm016"][bgm * storage="BGM16"][endmacro]
[macro name="bgm017"][bgm * storage="BGM17"][endmacro]
[macro name="bgm018"][bgm * storage="BGM18"][endmacro]
[macro name="bgm019"][bgm * storage="BGM19" v=70][endmacro]
[macro name="bgm020"][bgm * storage="BGM20" v=70][endmacro]


;=============================================================
;SE
;=============================================================
;SEマクロ　コンフィグでオンなら再生する

;[macro name="se"]
;	[se_ * storage=%ogg]
;[endmacro]

;;[macro name="se_"]
[macro name="se"]
	;systembutton_sub.ksを経由してたら再生しない(f.sys_sub == 0の時のみ再生)　念の為こっちも
	[if exp="tf.sys_sub == 0"]
;sf.seplayオフなら音量0にしてるからこの分岐不要
;		[if exp="sf.seplay == 1"]

			;ifだと属性名で通らないのか
			;mpでボリューム変更可に
;			[if exp="mp.vol"]
				[seopt buf=%buf volume=%v  cond="mp.v"]
				[eval exp="f.tmp_seopt0 = &mp.v" cond="mp.buf == '0' && mp.v"]
				[eval exp="f.tmp_seopt1 = &mp.v" cond="mp.buf == '1' && mp.v"]
				[eval exp="f.tmp_seopt2 = &mp.v" cond="mp.buf == '2' && mp.v"]
				[eval exp="f.tmp_seopt3 = &mp.v" cond="mp.buf == '3' && mp.v"]
;			[else]
				[seopt buf=%buf volume=100 cond="mp.v == false"]
				[eval exp="f.tmp_seopt0 = 100" cond="mp.buf == false && !mp.v"]
				[eval exp="f.tmp_seopt1 = 100" cond="mp.buf == false && !mp.v"]
				[eval exp="f.tmp_seopt2 = 100" cond="mp.buf == false && !mp.v"]
				[eval exp="f.tmp_seopt3 = 100" cond="mp.buf == false && !mp.v"]
;			[endif]

			;mpで左右パン打ち分け
			[if    exp="mp.panl"]	
				[seopt buf=%buf pan=-100]
			[elsif exp="mp.panr"]	
				[seopt buf=%buf pan=100]
			[else]
				[seopt buf=%buf pan=0]
			[endif]

	@if exp="(existentImage_SE(mp.storage)!==false)"
			;フェードイン打ち分け追加 2017/10/14
			[if exp="mp.fadein"]
				;mpでボリューム変更可に
				[if exp="mp.loop"]	
					[fadeinse buf=%buf storage="%storage" time=%time|1000 loop=true]
				[else]			
					[fadeinse buf=%buf storage="%storage" time=%time|1000 loop=false]
				[endif]
			;こっちは通常のSE命令
			[else]
				;mpでボリューム変更可に
				[if exp="mp.loop"]	
					;SE再生
					;[playse buf=%buf storage="%storage" loop=%loop cond="kag.skipMode<=1"]
					;スキップ中でも鳴らしたほうが無難？
					[playse buf=%buf storage="%storage" loop=true]
				[else]
					;SE再生
					;[playse buf=%buf storage="%storage" loop=%loop cond="kag.skipMode<=1"]
					;スキップ中でも鳴らしたほうが無難？
					[playse buf=%buf storage="%storage" loop=false]
				[endif]
			[endif]
;		[endif]
	@endif

	[endif]
[endmacro]

;使わんとこ
;[macro name="seloop"]
;	[if exp="sf.seplay == 1"]
;	;SE再生
;	;[playse buf=%buf storage="%storage" loop=%loop cond="kag.skipMode<=1"]
;	;スキップ中でも鳴らしたほうが無難？
;	[playse buf=%buf storage="%storage" loop=true]
;	[endif]
;[endmacro]

;フェードアウトだけだと、そこでセーブまたはクイックセーブして
;ロードするとSEが何故か再開されてしまうのでフェードアウトの時はこれを使用する。
;[macro name="se_fadeout"]
;	;スキップモードなら即時停止
;	[if exp="kag.skipMode == 3"]
;		;SEを停止
;		[stopse buf=%buf]
;	[else]
;		;フェードアウト
;		[fadeoutse buf=%buf time=%time]
;		;フェード終了を待つ
;		;[wf canskip=false]
;		[wait_c time=%time]
;
;		;SEを停止
;		[stopse buf=%buf]
;	[endif]
;
;[endmacro]

;SEのみ全部即時停止。主に場面転換時とか用。
[macro name="stopse_allse"]
	[stopse buf=0]
	[stopse buf=1]
	[stopse buf=2]
	[stopse buf=3]
[endmacro]


;SEもボイスも全部即時停止。主にゲームオーバー前とか用。
[macro name="stopse_all"]
	[stopse buf=0]
	[stopse buf=1]
	[stopse buf=2]
	[stopse buf=3]
	[stopse buf="&sf.chara01_buf"]
	[stopse buf="&sf.chara02_buf"]
	[stopse buf="&sf.chara03_buf"]
	[stopse buf="&sf.chara04_buf"]
	[stopse buf="&sf.chara05_buf"]
	[stopse buf="&sf.chara06_buf"]
	[stopse buf="&sf.chara07_buf"]
	[stopse buf="&sf.chara08_buf"]
	[stopse buf="&sf.chara09_buf"]
	[stopse buf="&sf.chara10_buf"]
	[stopse buf="&sf.chara11_buf"]
	[stopse buf="&sf.chara12_buf"]
	[stopse buf="&sf.chara13_buf"]
	[stopse buf="&sf.chara14_buf"]
	[stopse buf="&sf.chara15_buf"]
	[stopse buf="&sf.chara16_buf"]
[endmacro]

;SEフェードアウト
;pcmsの後ろでstopseしてください。ロードすると止めたのにまた鳴ってるから。
;これを回避するためにマクロにして変数も立ててfc内でstopse処理を追加する。
[macro name="stopse_fadeout"]


	[fadeoutse buf=%buf time=%time|1000]
	[wf buf=%buf canskip=%canskip|true  cond="mp.wf"]

	;止めるバッファの指定どうしようかな
	[eval exp="f.stopse_fadeout = 0"  cond="mp.buf == 0"]
	[eval exp="f.stopse_fadeout = 1"  cond="mp.buf == 1"]
	[eval exp="f.stopse_fadeout = 2"  cond="mp.buf == 2"]
	[eval exp="f.stopse_fadeout = 3"  cond="mp.buf == 3"]

[endmacro]

;=============================================================

[return]
