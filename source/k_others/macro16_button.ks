;macro16_macro_button

;クリックSEのみ
[macro name=button_cse]
	[button *  clickse="&sf.SE_click_sys" clicksebuf="&sf.SE_click_buf"]
[endmacro]

;エンター・クリックSE両方
[macro name=button_ecse]
	[button * enterse="&sf.SE_enter_sys" entersebuf="&sf.SE_enter_buf" clickse="&sf.SE_click_sys" clicksebuf="&sf.SE_click_buf"]
[endmacro]


[return]
