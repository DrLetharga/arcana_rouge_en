;system_config_srd.ks



;-----------------------------------------------------------
*音声スライダー消去

;コンフィグを抜ける時に念の為に判定用フラグをオフる。
[iscript]
var config_se = false;
if (sf.bt_num_chara01 != void)
	var config_chvolume01 = false;
if (sf.bt_num_chara01L != void)
	var config_chvolume01L = false;
if (sf.bt_num_chara02 != void)
	var config_chvolume02 = false;
if (sf.bt_num_chara02L != void)
	var config_chvolume02L = false;
if (sf.bt_num_chara03 != void)
	var config_chvolume03 = false;
if (sf.bt_num_chara03L != void)
	var config_chvolume03L = false;
if (sf.bt_num_chara04 != void)
	var config_chvolume04 = false;
if (sf.bt_num_chara04L != void)
	var config_chvolume04L = false;
if (sf.bt_num_chara05 != void)
	var config_chvolume05 = false;
if (sf.bt_num_chara06 != void)
	var config_chvolume06 = false;
if (sf.bt_num_chara07 != void)
	var config_chvolume07 = false;
if (sf.bt_num_chara08 != void)
	var config_chvolume08 = false;
if (sf.bt_num_chara09 != void)
	var config_chvolume09 = false;
if (sf.bt_num_chara10 != void)
	var config_chvolume10 = false;
if (sf.bt_num_chara11 != void)
	var config_chvolume11 = false;
if (sf.bt_num_chara12 != void)
	var config_chvolume12 = false;
if (sf.bt_num_chara13 != void)
	var config_chvolume13 = false;
if (sf.bt_num_chara14 != void)
	var config_chvolume14 = false;
if (sf.bt_num_chara15 != void)
	var config_chvolume15 = false;
if (sf.bt_num_chara16 != void)
	var config_chvolume16 = false;
//	var config_loop01 = false;
//	var config_loop02 = false;
//	var config_chvolume04 = false;
[endscript]

; スライダーを消去する
[call storage="slider_control_snd.ks"]

[slider_delete name=bgmvolume]
[slider_delete name=sevolume]

;[call storage="slider_control_snd_chara.ks"]
[slider_delete name=chvolume01  cond="sf.bt_num_chara01  != void"]
[slider_delete name=chvolume01L cond="sf.bt_num_chara01L != void"]
[slider_delete name=chvolume02  cond="sf.bt_num_chara02  != void"]
[slider_delete name=chvolume02L cond="sf.bt_num_chara02L != void"]
[slider_delete name=chvolume03  cond="sf.bt_num_chara03  != void"]
[slider_delete name=chvolume03L cond="sf.bt_num_chara03L != void"]
[slider_delete name=chvolume04  cond="sf.bt_num_chara04  != void"]
[slider_delete name=chvolume04L cond="sf.bt_num_chara04L != void"]
[slider_delete name=chvolume05 cond="sf.bt_num_chara05 != void"]
[slider_delete name=chvolume06 cond="sf.bt_num_chara06 != void"]
[slider_delete name=chvolume07 cond="sf.bt_num_chara07 != void"]
[slider_delete name=chvolume08 cond="sf.bt_num_chara08 != void"]
[slider_delete name=chvolume09 cond="sf.bt_num_chara09 != void"]
[slider_delete name=chvolume10 cond="sf.bt_num_chara10 != void"]
[slider_delete name=chvolume11 cond="sf.bt_num_chara11 != void"]
[slider_delete name=chvolume12 cond="sf.bt_num_chara12 != void"]
[slider_delete name=chvolume13 cond="sf.bt_num_chara13 != void"]
[slider_delete name=chvolume14 cond="sf.bt_num_chara14 != void"]
[slider_delete name=chvolume15 cond="sf.bt_num_chara15 != void"]
[slider_delete name=chvolume16 cond="sf.bt_num_chara16 != void"]
;	;@slider_delete name=chvolume01_lp
;	;@slider_delete name=chvolume02_lp
;	@slider_delete name=chvolumeALL_loop

;邪淫用
[eval exp="tf.slider_on_snd = 0"]

[return]


;-----------------------------------------------------------
*メッセージスライダー消去
[er]

[iscript]
var config_RGB = false;
[endscript]
; スライダーを消去する たまにslider_delete がありませんって言われるからslider_control読み込み直すか
[call storage="slider_control_mes.ks"]
[slider_delete name=chspeed]
;//使わない ↑と一緒にする
;//	@slider_delete name=ch2speed
;@slider_delete name=linewait
[slider_delete name=pagewait]

[call storage="slider_control_win.ks"]
[slider_delete name=win_opa]

[call storage="slider_control_colorR.ks"]
[slider_delete name=kidoku_R]
[call storage="slider_control_colorG.ks"]
[slider_delete name=kidoku_G]
[call storage="slider_control_colorB.ks"]
[slider_delete name=kidoku_B]

;暴淫用 messageのほうは要らないんだけど一応つけとく
[eval exp="tf.slider_on_mes = 0"]

[return]

;-----------------------------------------------------------
*スライダー消去
[er]

[call storage="system_config_srd.ks" target=*メッセージスライダー消去]
[call storage="system_config_srd.ks" target=*音声スライダー消去]


;暴淫用 messageのほうは要らないんだけど一応つけとく
[eval exp="tf.slider_on_mes = 0"]

;暴淫用
[eval exp="tf.slider_on_snd = 0"]

[return]










;-----------------------------------------------------------


*bgmvolume
[call storage="slider_control_snd.ks"]
[if exp="sf.bgmplay == 1"]
	[slider_create name=bgmvolume parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[0]" visible=true min=0 max=100 position="&kag.bgm.currentBuffer.volume2\1000" onchangefunc="bgmvolume_func"]
;こっちはミュート押した時用
[else]
	[if exp="sf.dummy_bgmopt <=100"]
		[eval exp="sf.dummy_bgmopt = sf.dummy_bgmopt*1000"]
	[endif]
	[slider_create name=bgmvolume parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[0]" visible=true min=0 max=100 position="&sf.dummy_bgmopt\1000" onchangefunc="dummy_bgmopt"]
[endif]

[return]

;-----------------------------------------------------------
*sevolume
[call storage="slider_control_snd.ks"]
[if exp="sf.seplay == 1"]
	[slider_create name=sevolume parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[1]" visible=true min=0 max=100 position="&kag.se[0].volume2\1000" onchangefunc="sevolume_func"]
[else]
	[if exp="sf.dummy_seopt0 <=100"]
		[eval exp="sf.dummy_seopt0 = sf.dummy_seopt0*1000"]
		[eval exp="sf.dummy_seopt1 = sf.dummy_seopt1*1000"]
		[eval exp="sf.dummy_seopt2 = sf.dummy_seopt2*1000"]
		[eval exp="sf.dummy_seopt3 = sf.dummy_seopt3*1000"]
		;クイックセーブロード用SEのバッファ
		[eval exp="sf.dummy_seopt13 = sf.dummy_seopt13*1000"]
	[endif]
	[slider_create name=sevolume parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[1]" visible=true min=0 max=100 position="&sf.dummy_seopt0\1000" onchangefunc="dummy_seopt0"]
[endif]

[return]


;																			ボリュームもとから100％だからこれは割らなくていいのか
;-----------------------------------------------------------
*chvolume01
[call storage="slider_control_snd.ks"]
[if exp="sf.chara01_v == 1"]
[slider_create name=chvolume01 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[2]" visible=true min=0 max=100 position="&kag.se[sf.chara01_buf].volume2\1000" onchangefunc="sevolume_func_chara01"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara01 <=100"]
		[eval exp="sf.dummy_seopt_chara01 = sf.dummy_seopt_chara01*1000"]
	[endif]
	[slider_create name=chvolume01 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[2]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara01\1000" onchangefunc="dummy_seopt_chara01"]
[endif]
[return]
;-----------------------------------------------------------
*chvolume01L
[call storage="slider_control_snd.ks"]
[if exp="sf.chara01_L == 1"]
	[slider_create name=chvolume01L parentlayer="&tf.config_message" parentpage=fore left="&sf.conf_srd_vo01L_x" top="&sf.conf_srd_vo01L_y" visible=true min=0 max=100 position="&kag.se[sf.chara01L_buf].volume2\1000" onchangefunc="sevolume_func_chara01L"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara01L <=100"]
		[eval exp="sf.dummy_seopt_chara01L = sf.dummy_seopt_chara01L*1000"]
	[endif]
	[slider_create name=chvolume01L parentlayer="&tf.config_message" parentpage=fore left="&sf.conf_srd_vo01L_x" top="&sf.conf_srd_vo01L_y" visible=true min=0 max=100 position="&sf.dummy_seopt_chara01L\1000" onchangefunc="dummy_seopt_chara01L"]
[endif]
[return]
;-----------------------------------------------------------
;///	*chvolume01_loop
;///
;///	[call storage="slider_control_snd.ks"]
;///	[if exp="sf.chara01_vl == 1"]
;///	[slider_create name=chvolume01_lp parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[1]" top="&tf.cnf_srdsnd_y[1]" visible=true min=0 max=100 position="&kag.se[5].volume2\1000" onchangefunc="sevolume_func_chara005"]
;///	[else]
;///		;つじつま合わせ
;///		[if exp="sf.dummy_seopt5 <=100"]
;///			[eval exp="sf.dummy_seopt5 = sf.dummy_seopt5*1000"]
;///		[endif]
;///		[slider_create name=chvolume01_lp parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[1]" top="&tf.cnf_srdsnd_y[1]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara05\1000" onchangefunc="dummy_seopt_chara05"]
;///	[endif]



;///	[return]
;-----------------------------------------------------------
*chvolume02
[call storage="slider_control_snd.ks"]
[if exp="sf.chara02_v == 1"]
	[slider_create name=chvolume02 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[3]" visible=true min=0 max=100 position="&kag.se[sf.chara02_buf].volume2\1000" onchangefunc="sevolume_func_chara02"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara02 <=100"]
		[eval exp="sf.dummy_seopt_chara02 = sf.dummy_seopt_chara02*1000"]
	[endif]
	[slider_create name=chvolume02 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[3]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara02\1000" onchangefunc="dummy_seopt_chara02"]
[endif]
[return]
;-----------------------------------------------------------
*chvolume02L
[call storage="slider_control_snd.ks"]
[if exp="sf.chara02_L == 1"]
	[slider_create name=chvolume02L parentlayer="&tf.config_message" parentpage=fore left="&sf.conf_srd_vo02L_x" top="&sf.conf_srd_vo02L_y" visible=true min=0 max=100 position="&kag.se[sf.chara02L_buf].volume2\1000" onchangefunc="sevolume_func_chara02L"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara02L <=100"]
		[eval exp="sf.dummy_seopt_chara02L = sf.dummy_seopt_chara02L*1000"]
	[endif]
	[slider_create name=chvolume02L parentlayer="&tf.config_message" parentpage=fore left="&sf.conf_srd_vo02L_x" top="&sf.conf_srd_vo02L_y" visible=true min=0 max=100 position="&sf.dummy_seopt_chara02L\1000" onchangefunc="dummy_seopt_chara02L"]
[endif]
[return]
;-----------------------------------------------------------
*chvolume03
[call storage="slider_control_snd.ks"]
[if exp="sf.chara03_v == 1"]
	[slider_create name=chvolume03 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[4]" visible=true min=0 max=100 position="&kag.se[sf.chara03_buf].volume2\1000" onchangefunc="sevolume_func_chara03"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara03 <=100"]
		[eval exp="sf.dummy_seopt_chara03 = sf.dummy_seopt_chara03*1000"]
	[endif]
	[slider_create name=chvolume03 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[4]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara03\1000" onchangefunc="dummy_seopt_chara03"]
[endif]
[return]
;-----------------------------------------------------------
*chvolume03L
[call storage="slider_control_snd.ks"]
[if exp="sf.chara03_L == 1"]
	[slider_create name=chvolume03L parentlayer="&tf.config_message" parentpage=fore left="&sf.conf_srd_vo03L_x" top="&sf.conf_srd_vo03L_y" visible=true min=0 max=100 position="&kag.se[sf.chara03L_buf].volume2\1000" onchangefunc="sevolume_func_chara03L"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara03L <=100"]
		[eval exp="sf.dummy_seopt_chara03L = sf.dummy_seopt_chara03L*1000"]
	[endif]
	[slider_create name=chvolume03L parentlayer="&tf.config_message" parentpage=fore left="&sf.conf_srd_vo03L_x" top="&sf.conf_srd_vo03L_y" visible=true min=0 max=100 position="&sf.dummy_seopt_chara03L\1000" onchangefunc="dummy_seopt_chara03L"]
[endif]
[return]
;-----------------------------------------------------------
*chvolume04
[call storage="slider_control_snd.ks"]
[if exp="sf.chara04_v == 1"]
	[slider_create name=chvolume04 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[5]" visible=true min=0 max=100 position="&kag.se[sf.chara04_buf].volume2\1000" onchangefunc="sevolume_func_chara04"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara04 <=100"]
		[eval exp="sf.dummy_seopt_chara04 = sf.dummy_seopt_chara04*1000"]
	[endif]
	[slider_create name=chvolume04 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[5]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara04\1000" onchangefunc="dummy_seopt_chara04"]
[endif]
[return]
;-----------------------------------------------------------
*chvolume04L
[call storage="slider_control_snd.ks"]
[if exp="sf.chara04_L == 1"]
	[slider_create name=chvolume04L parentlayer="&tf.config_message" parentpage=fore left="&sf.conf_srd_vo04L_x" top="&sf.conf_srd_vo04L_y" visible=true min=0 max=100 position="&kag.se[sf.chara04L_buf].volume2\1000" onchangefunc="sevolume_func_chara04L"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara04L <=100"]
		[eval exp="sf.dummy_seopt_chara04L = sf.dummy_seopt_chara04L*1000"]
	[endif]
	[slider_create name=chvolume04L parentlayer="&tf.config_message" parentpage=fore left="&sf.conf_srd_vo04L_x" top="&sf.conf_srd_vo04L_y" visible=true min=0 max=100 position="&sf.dummy_seopt_chara04L\1000" onchangefunc="dummy_seopt_chara04L"]
[endif]
[return]
;-----------------------------------------------------------
*chvolume05
[call storage="slider_control_snd.ks"]
[if exp="sf.chara05_v == 1"]
	[slider_create name=chvolume05 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[6]" visible=true min=0 max=100 position="&kag.se[sf.chara05_buf].volume2\1000" onchangefunc="sevolume_func_chara05"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara05 <=100"]
		[eval exp="sf.dummy_seopt_chara05 = sf.dummy_seopt_chara05*1000"]
	[endif]
	[slider_create name=chvolume05 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[6]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara05\1000" onchangefunc="dummy_seopt_chara05"]
[endif]
[return]

;-----------------------------------------------------------
*chvolume06
[call storage="slider_control_snd.ks"]
[if exp="sf.chara06_v == 1"]
	[slider_create name=chvolume06 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[7]" visible=true min=0 max=100 position="&kag.se[sf.chara06_buf].volume2\1000" onchangefunc="sevolume_func_chara06"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara06 <=100"]
		[eval exp="sf.dummy_seopt_chara06 = sf.dummy_seopt_chara06*1000"]
	[endif]
	[slider_create name=chvolume06 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[7]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara06\1000" onchangefunc="dummy_seopt_chara06"]
[endif]
[return]

;-----------------------------------------------------------
*chvolume07
[call storage="slider_control_snd.ks"]
[if exp="sf.chara07_v == 1"]
	[slider_create name=chvolume07 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[8]" visible=true min=0 max=100 position="&kag.se[sf.chara07_buf].volume2\1000" onchangefunc="sevolume_func_chara07"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara07 <=100"]
		[eval exp="sf.dummy_seopt_chara07 = sf.dummy_seopt_chara07*1000"]
	[endif]
	[slider_create name=chvolume07 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[8]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara07\1000" onchangefunc="dummy_seopt_chara07"]
[endif]
[return]

;-----------------------------------------------------------
*chvolume08
[call storage="slider_control_snd.ks"]
[if exp="sf.chara08_v == 1"]
	[slider_create name=chvolume08 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[9]" visible=true min=0 max=100 position="&kag.se[sf.chara08_buf].volume2\1000" onchangefunc="sevolume_func_chara08"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara08 <=100"]
		[eval exp="sf.dummy_seopt_chara08 = sf.dummy_seopt_chara08*1000"]
	[endif]
	[slider_create name=chvolume08 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[9]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara08\1000" onchangefunc="dummy_seopt_chara08"]
[endif]
[return]

;-----------------------------------------------------------
*chvolume09
[call storage="slider_control_snd.ks"]
[if exp="sf.chara09_v == 1"]
	[slider_create name=chvolume09 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[10]" visible=true min=0 max=100 position="&kag.se[sf.chara09_buf].volume2\1000" onchangefunc="sevolume_func_chara09"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara09 <=100"]
		[eval exp="sf.dummy_seopt_chara09 = sf.dummy_seopt_chara09*1000"]
	[endif]
	[slider_create name=chvolume09 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[10]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara09\1000" onchangefunc="dummy_seopt_chara09"]
[endif]
[return]

;-----------------------------------------------------------
*chvolume10
[call storage="slider_control_snd.ks"]
[if exp="sf.chara10_v == 1"]
	[slider_create name=chvolume10 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[11]" visible=true min=0 max=100 position="&kag.se[sf.chara10_buf].volume2\1000" onchangefunc="sevolume_func_chara10"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara10 <=100"]
		[eval exp="sf.dummy_seopt_chara10 = sf.dummy_seopt_chara10*1000"]
	[endif]
	[slider_create name=chvolume10 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[11]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara10\1000" onchangefunc="dummy_seopt_chara10"]
[endif]
[return]

;-----------------------------------------------------------
*chvolume11
[call storage="slider_control_snd.ks"]
[if exp="sf.chara11_v == 1"]
	[slider_create name=chvolume11 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[12]" visible=true min=0 max=100 position="&kag.se[sf.chara11_buf].volume2\1000" onchangefunc="sevolume_func_chara11"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara11 <=100"]
		[eval exp="sf.dummy_seopt_chara11 = sf.dummy_seopt_chara11*1000"]
	[endif]
	[slider_create name=chvolume11 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[12]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara11\1000" onchangefunc="dummy_seopt_chara11"]
[endif]
[return]

;-----------------------------------------------------------
*chvolume12
[call storage="slider_control_snd.ks"]
[if exp="sf.chara12_v == 1"]
	[slider_create name=chvolume12 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[13]" visible=true min=0 max=100 position="&kag.se[sf.chara12_buf].volume2\1000" onchangefunc="sevolume_func_chara12"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara12 <=100"]
		[eval exp="sf.dummy_seopt_chara12 = sf.dummy_seopt_chara12*1000"]
	[endif]
	[slider_create name=chvolume12 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[13]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara12\1000" onchangefunc="dummy_seopt_chara12"]
[endif]
[return]
;-----------------------------------------------------------
*chvolume13
[call storage="slider_control_snd.ks"]
[if exp="sf.chara13_v == 1"]
	[slider_create name=chvolume13 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[14]" visible=true min=0 max=100 position="&kag.se[sf.chara13_buf].volume2\1000" onchangefunc="sevolume_func_chara13"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara13 <=100"]
		[eval exp="sf.dummy_seopt_chara13 = sf.dummy_seopt_chara13*1000"]
	[endif]
	[slider_create name=chvolume13 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[14]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara13\1000" onchangefunc="dummy_seopt_chara13"]
[endif]
[return]
;-----------------------------------------------------------
*chvolume14
[call storage="slider_control_snd.ks"]
[if exp="sf.chara14_v == 1"]
	[slider_create name=chvolume14 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[15]" visible=true min=0 max=100 position="&kag.se[sf.chara14_buf].volume2\1000" onchangefunc="sevolume_func_chara14"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara14 <=100"]
		[eval exp="sf.dummy_seopt_chara14 = sf.dummy_seopt_chara14*1000"]
	[endif]
	[slider_create name=chvolume14 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[15]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara14\1000" onchangefunc="dummy_seopt_chara14"]
[endif]
[return]
;-----------------------------------------------------------
*chvolume15
[call storage="slider_control_snd.ks"]
[if exp="sf.chara15_v == 1"]
	[slider_create name=chvolume15 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[16]" visible=true min=0 max=100 position="&kag.se[sf.chara15_buf].volume2\1000" onchangefunc="sevolume_func_chara15"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara15 <=100"]
		[eval exp="sf.dummy_seopt_chara15 = sf.dummy_seopt_chara15*1000"]
	[endif]
	[slider_create name=chvolume15 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[16]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara15\1000" onchangefunc="dummy_seopt_chara15"]
[endif]
[return]
;-----------------------------------------------------------
*chvolume16
[call storage="slider_control_snd.ks"]
[if exp="sf.chara16_v == 1"]
	[slider_create name=chvolume16 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[17]" visible=true min=0 max=100 position="&kag.se[sf.chara16_buf].volume2\1000" onchangefunc="sevolume_func_chara16"]
[else]
	;つじつま合わせ
	[if exp="sf.dummy_seopt_chara16 <=100"]
		[eval exp="sf.dummy_seopt_chara16 = sf.dummy_seopt_chara16*1000"]
	[endif]
	[slider_create name=chvolume16 parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[17]" visible=true min=0 max=100 position="&sf.dummy_seopt_chara16\1000" onchangefunc="dummy_seopt_chara16"]
[endif]
[return]

;-----------------------------------------------------------
;	*chvolumeALL_loop
;	[call storage="slider_control_snd.ks"]
;	[if exp="sf.charaALL_lv == 1"]
;		[slider_create name=chvolumeALL_loop parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[7]" visible=true min=0 max=100 position="&kag.se[5].volume2\1000" onchangefunc="chvolumeALL_loopvolume_func"]
;	[else]
;		;つじつま合わせ
;		[if exp="sf.dummy_seopt5 <=100"]
;			[eval exp="sf.dummy_seopt5 = sf.dummy_seopt5*1000"]
;			[eval exp="sf.dummy_seopt7 = sf.dummy_seopt7*1000"]
;			[eval exp="sf.dummy_seopt9 = sf.dummy_seopt9*1000"]
;			[eval exp="sf.dummy_seopt11 = sf.dummy_seopt11*1000"]
;			[eval exp="sf.dummy_seopt13 = sf.dummy_seopt13*1000"]
;		[endif]
;		[slider_create name=chvolumeALL_loop parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdsnd_x[0]" top="&tf.cnf_srdsnd_y[7]" visible=true min=0 max=100 position="&sf.dummy_seopt5\1000" onchangefunc="dummy_seopt5"]
;	[endif]
;	[return]


;-----------------------------------------------------------
;-----------------------------------------------------------
*chspeed_midoku
[call storage="slider_control_mes.ks"]
[slider_create02 name=chspeed parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdmes_x[0]" top="&tf.cnf_srdmes_y[0]" visible=true min=0 max="&kag.chSpeeds.slow" position="&kag.userChSpeed" onchangefunc="chspeed_func"]

[return]

;-----------------------------------------------------------
;//使わない↑と一緒にする
;//	*chspeed_kidoku


;//	[call storage="slider_control_mes.ks"]
;//	;メッセージ速度　
;//	[slider_create02 name=ch2speed parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdmes_x[0]" top="&tf.cnf_srdmes_y[1]" visible=true min=0 max="&kag.chSpeeds.slow" position="&(kag.userCh2ndSpeed == -1)?kag.userChSpeed:kag.userCh2ndSpeed" onchangefunc="ch2speed_func"]


;//	[return]

;-----------------------------------------------------------
*pagewait
[call storage="slider_control_mes.ks"]
;オート速度
[slider_create02 name=pagewait parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdmes_x[0]" top="&tf.cnf_srdmes_y[1]" visible=true min="&kag.autoModePageWaits.fast" max="&kag.autoModePageWaits.slow" position="&kag.autoModePageWait" onchangefunc="pagewait_func"]

[return]



;-----------------------------------------------------------
*win_opa
[call storage="slider_control_win.ks"]
;
[slider_create03 name=win_opa parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdwin_x[0]" top="&tf.cnf_srdwin_y[0]" visible=true min="0" max="255" position="&sf.graphicframe_opacity" onchangefunc="win_opa_func"]

[return]


;-----------------------------------------------------------
;	*kidoku_RGB
;	[call storage="slider_control_win.ks"]
;	;
;	[slider_create03 name=kidoku_RGB parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdkidoku_x[0]" top="&tf.cnf_srdkidoku_y[0]" visible=true min="0" max="1530" position="&sf.kidoku_R" onchangefunc="kidoku_RGB_func"]
;
;	[return]
;
;	;-----------------------------------------------------------
;	*kidoku_edgeRGB
;	[call storage="slider_control_win.ks"]
;	;
;	[slider_create03 name=kidoku_edgeRGB parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdkidoku_x[0]" top="&tf.cnf_srdkidoku_y[1]" visible=true min="0" max="1530" position="&sf.kidoku_R" onchangefunc="kidoku_edgeRGB_func"]
;
;	[return]

;-----------------------------------------------------------
*kidoku_R
[call storage="slider_control_colorR.ks"]
;
[slider_create03 name=kidoku_R parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdkidoku_x[0]" top="&tf.cnf_srdkidoku_y[0]" visible=true min="0" max="255" position="&sf.kidoku_R" onchangefunc="kidoku_R_func"]

[return]

;-----------------------------------------------------------
*kidoku_G
[call storage="slider_control_colorG.ks"]
;
[slider_create03 name=kidoku_G parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdkidoku_x[0]" top="&tf.cnf_srdkidoku_y[1]" visible=true min="0" max="255" position="&sf.kidoku_G" onchangefunc="kidoku_G_func"]

[return]


;-----------------------------------------------------------
*kidoku_B
[call storage="slider_control_colorB.ks"]
;
[slider_create03 name=kidoku_B parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdkidoku_x[0]" top="&tf.cnf_srdkidoku_y[2]" visible=true min="0" max="255" position="&sf.kidoku_B" onchangefunc="kidoku_B_func"]

[return]


;-----------------------------------------------------------
*kidoku_edgeR
[call storage="slider_control_colorR.ks"]
;
[slider_create03 name=kidoku_edgeR parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdkidoku_x[0]" top="&tf.cnf_srdkidoku_y[3]" visible=true min="0" max="255" position="&sf.kidoku_edgeR" onchangefunc="kidoku_edgeR_func"]

[return]

;-----------------------------------------------------------
*kidoku_edgeG
[call storage="slider_control_colorG.ks"]
;
[slider_create03 name=kidoku_edgeG parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdkidoku_x[0]" top="&tf.cnf_srdkidoku_y[4]" visible=true min="0" max="255" position="&sf.kidoku_edgeG" onchangefunc="kidoku_edgeG_func"]

[return]


;-----------------------------------------------------------
*kidoku_edgeB
[call storage="slider_control_colorB.ks"]
;
[slider_create03 name=kidoku_edgeB parentlayer="&tf.config_message" parentpage=fore left="&tf.cnf_srdkidoku_x[0]" top="&tf.cnf_srdkidoku_y[5]" visible=true min="0" max="255" position="&sf.kidoku_edgeB" onchangefunc="kidoku_edgeB_func"]

[return]


;-----------------------------------------------------------

*text_draw

; カレントのメッセージレイヤをグラフィカルボタン表示用レイヤに変更
[current layer="&tf.samplwin_message" page=fore]

[er]
;文字が入りきらないので行間を狭める
;[style linespacing=3]

	;ユーザースピードで再表示　表示中にボタン押すとエラーになるからやらん方がいいかぁ
	;[delay speed=user]
	;[wait time=100 canskip=false]

	;サンプル文字表示
	[nowait]
;2行のは別1行目も別の座標設定にしないとだめだわ
[if exp="sf.gameNo == 4"]
	[position layer="&tf.samplwin_message" page=fore left="&tf.sys_samplewin_x" top="&tf.sys_samplewin_y - 15" width="&tf.sys_samplewin_w" height="&tf.sys_samplewin_h" frame="" opacity=0 marginl="&sf.sampletext_ml" margint="&sf.sampletext_mt" marginr=0 marginb=0 visible=true]
	[font face="&sf.userfont" color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" size="&sf.sampletext_size - 3"]
	; カレントのメッセージレイヤを変更
	[current layer="&tf.samplwin_message" page=fore]
	[emb exp="sf.kidoku_sampletext"]
	[font face="&sf.userfont" color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" size="&sf.sampletext_size"]
	[position layer="&tf.samplwin_message2" page=fore left="&tf.sys_samplewin_x" top="&tf.sys_samplewin_y + sf.sampletext_size - 8" width="&tf.sys_samplewin_w" height="&tf.sys_samplewin_h" frame="" opacity=0 marginl="&sf.sampletext_ml" margint="&sf.sampletext_mt" marginr=0 marginb=0 visible=true]
	[current layer="&tf.samplwin_message2" page=fore]
	[font face="&sf.userfont" color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" size="&sf.sampletext_size - 3"]
	[emb exp="sf.kidoku_sampletext2"]
[else]
	[font face="&sf.userfont" color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" size="&sf.sampletext_size"]
	[emb exp="sf.kidoku_sampletext"]
[endif]
	[endnowait]
;		[image storage="window_cnf_int" layer=12 page=fore visible=true left="&tf.sys_samplewin_x" top="&tf.sys_samplewin_y"]
;		[ptext face="ＭＳ ゴシック" color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" size=22 layer=12 page=fore x=10 y=5 text='　　　　ごくかの']
;		[ptext face="ＭＳ ゴシック" color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" size=18 layer=12 page=fore x=10 y=35 text='　　タマとらせてもらいます！']


[endnowait]
; カレントのメッセージレイヤをグラフィカルボタン表示用レイヤに変更
[current layer="&tf.config_message" page=fore]

;リターンじゃなくてsタグしないとだめ？
[s]

[return]










