;9999.ks

;movie�Ƃ��G���h����
;�����~�Ƃ����Ȃ��Ă悩�����񂾂낤���H[pcms]

*TOP
[cancelskip]
;�V�X�e���{�^�����E�B���h�E����
[sysbt_meswin clear]
;BGM��~
[fadeoutbgm time=500][wb canskip=true]
[top blk cross time=500]
[wait time=500]



;SE������~
[stopse_all]
[stopbgm]

;�N���A�t���O��K�X����������
;[eval exp="sf.gameclear = 1"]

;	;�`�`�`�f�o�b�O���̂݃_�~�[�̏I���}�[�J�[�摜�`�`�`
;	;�X�L�b�v���Ă���Ƃ񂶂Ⴄ����X�L�b�v�̉���
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
	;�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`�`

;�o�b�h�͉摜

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


;�^�C�g���ɖ߂�
[jump storage="title.ks"]

