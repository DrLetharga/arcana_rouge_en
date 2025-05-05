;9999.ks

;movie‚Æ‚©ƒGƒ“ƒhˆ—
;—š—ğ’â~‚Æ‚©‚µ‚È‚­‚Ä‚æ‚©‚Á‚½‚ñ‚¾‚ë‚¤‚©H[pcms]

*TOP
[cancelskip]
;ƒVƒXƒeƒ€ƒ{ƒ^ƒ“•ƒEƒBƒ“ƒhƒEÁ‹
[sysbt_meswin clear]
;BGM’â~
[fadeoutbgm time=500][wb canskip=true]
[top blk cross time=500]
[wait time=500]



;SE‘¦’â~
[stopse_all]
[stopbgm]

;ƒNƒŠƒAƒtƒ‰ƒO‚ğ“K‹X¬—§‚³‚¹‚é
;[eval exp="sf.gameclear = 1"]

;	;```ƒfƒoƒbƒO‚Ì‚İƒ_ƒ~[‚ÌI‚í‚èƒ}[ƒJ[‰æ‘œ```
;	;ƒXƒLƒbƒv‚µ‚Ä‚½‚ç‚Æ‚ñ‚¶‚á‚¤‚©‚çƒXƒLƒbƒv‚Ì‰ğœ
;	[cancelskip]
;	[if    exp="f.l_end == 1"][bg storage="DUMMY_END_aka"]
;	[elsif exp="f.l_end == 2"][bg storage="DUMMY_END_aoi"]
;	[elsif exp="f.l_end == 3"][bg storage="DUMMY_END_mia"]
;	[elsif exp="f.l_end == 4"][bg storage="DUMMY_END_mei"]
;	[elsif exp="f.l_end == 5"][bg storage="DUMMY_END_harem_bad"]
;	[elsif exp="f.l_end == 6"][bg storage="DUMMY_END_harem_good"]
;	[elsif exp="f.l_end == 7"][bg storage="DUMMY_END_bad1"]
;	[elsif exp="f.l_end == 8"][bg storage="DUMMY_END_bad2"]
;	[endif]
;	[trans_c n01 time=1000]
;	[waitclick]

;	[if exp="sf.g_end_bad02 == 1 && sf.g_end_mei == 1 && sf.g_end_harem_bad == 1 && sf.g_end_harem_good == 1 && sf.g_end_aka == 1 && sf.g_end_aoi == 1 && sf.g_end_mia == 1 && sf.g_end_bad01 == 1"]
;		[bg storage="DUMMY_END_comp"][trans_c n01 time=1000]
;		[waitclick]
;	[endif]
;
;
;	[black_toplayer][trans_c n01 time=1000][hide_chara_int]
	;``````````````````````````

;ƒoƒbƒh‚Í‰æ‘œ

[if    exp="f.l_end == 5"][bg storage="END_bad"][trans_c cross time=1000][waitclick][bg storage="effect_black"][trans_c cross time=1000]
[elsif exp="f.l_end == 7"][bg storage="END_bad"][trans_c cross time=1000][waitclick][bg storage="effect_black"][trans_c cross time=1000]
[elsif exp="f.l_end == 8"][bg storage="END_bad"][trans_c cross time=1000][waitclick][bg storage="effect_black"][trans_c cross time=1000]
[endif]

[if    exp="f.l_end == 1"][eval exp="sf.gameclear = 1"][movie storage="END_aka.mpg"]
[elsif exp="f.l_end == 2"][eval exp="sf.gameclear = 1"][movie storage="END_aoi.mpg"]
[elsif exp="f.l_end == 3"][eval exp="sf.gameclear = 1"][movie storage="END_mia.mpg"]
[elsif exp="f.l_end == 4"][eval exp="sf.gameclear = 1"][movie storage="END_mei.mpg"]
[elsif exp="f.l_end == 6"][eval exp="sf.gameclear = 1"][movie storage="END_harem.mpg"]
[endif]

[wait time=2000]


;ƒ^ƒCƒgƒ‹‚É–ß‚é
[jump storage="title.ks"]

