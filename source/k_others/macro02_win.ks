
;=============================================================
;�V�������ߓx�ύX�̕��@�̂��߂̃E�B���h�E�p�̐V�����}�N���B
;=============================================================
;��{�I�ȗ���͓����B
;�Â�����macro.ks�Ɏc���Ă����B

[macro name=sysbt_meswin]

	[backlay]

		[sysbtopt enterse="&sf.SE_enter_sysbt" forevisible=true backvisible=true left="&sf.sysbt_x" top="&sf.sysbt_y"]
		;�{�C�Xonly���[�h�{�^�����Ƃŏ���
		;[sysbtopt2 forevisible=true backvisible=true left=1200 top="&sf.sysbt_y"]


	[if exp="mp.clear!==void"]
		; �X�L�b�v�E�I�[�g�\������ �����Ȃ��c�c
		;[current layer=message3]
		;[layopt layer=message3 page=fore visible=false]
		;[current layer=message0]

		; �V�X�e���{�^����\����ǉ�
		[sysbtopt forevisible=false backvisible=false]

		; �E�B���h�E�̐F�ς�����悤�ɂ������炱���
		;[layopt layer="&sf.layer_win" visible=false page=back]
		[layopt layer=message0 visible=false page=back]
		;[layopt layer=message1 visible=false page=back]
		[if exp="f.face_win"]
			[layopt layer="&sf.layer_face_winbase"  visible=false page=back]
			[layopt layer="&sf.layer_face_win"      visible=false page=back]
			[layopt layer="&sf.layer_face_winflame" visible=false page=back]
		[endif]

		;�l�[���`�b�v�̃��C�������ĂȂ��ˁH
		;tempsave�O�ɃE�B���h�E�����ɏC���B���킹��macro02_win.ks�Ƀl�[���`�b�v�̃��C�������ǉ� 2018/02/27
		[layopt layer="&sf.message_namechip" visible=false page=back]
		;�t�F�C�X�E�B���h�E
		[layopt layer="&sf.layer_face_win" visible=false page=back]

		;�E�B���h�E�I���I�t�t���O�@�I�t
		[eval exp="f.winon = 0"]

	[else]

	[if    exp="f.win_narration == 1"]
		[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="window3" opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]
	[else]
		;height=200�Ɋւ��āB�l�[���`�b�v�̉��s�̊֌W�Ŏ��ۂ̃E�B���h�E�T�C�Y�����傫���ݒ肵�Ă���B�҂����肾��3�s�̎��Ɏ����ŉ��y�[�W���Ă��܂����߁B
		;[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="" color=0xffffff opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]
;t		[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="window"       opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]

		;���b�Z�[�W���C��0�Ɠ���index�B���̃��C���̉��Z�F�𑀍삷��
		;[image storage="window" layer="&sf.layer_win" page=back visible=true left="&sf.window_x" top="&sf.window_y" opacity="&sf.graphicframe_opacity" mcolor="&sf.win_RGB" mopacity=255 index=1000000]
		;�����message0�B�o�b�N���O����A���Ă����Ƃ��ɉ����Ȃ�message0��\�����Ă��܂�����
		[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="window" opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]
	[endif]
		;�E�B���h�E�I���I�t�t���O�@�I��
		[eval exp="f.winon = 1"]

	[endif]
	;sf.layer_win��index��1000000�ɂ��Ă邩�炱������1��ɂ���
	[current layer=message0][layopt layer=message0 index=1001000]
	;����J�����g1����Ȃ��Ɩ͗l�̉��ɕ����������Ⴄ���Ƃ�
;	[current layer=message0]
;	[trans method=crossfade time=100]
	[trans method=crossfade time=0]
	[wt canskip=false]


[endmacro]


;=============================================================
;�e�L�X�g�ĕ\���p��0�b�d�l
;=============================================================
[macro name=s_m]

	[backlay]
		;�{�^���I�����ŃZ�[�u���Ė߂��ė����Ƃ�����
		[if exp="f.selbt == 0"]
		[sysbtopt forevisible=true backvisible=true left="&sf.sysbt_x" top="&sf.sysbt_y"]
		[endif]
		;�{�C�Xonly���[�h�{�^�����Ƃŏ���
		;[sysbtopt2 forevisible=true backvisible=true left=1200 top="&sf.sysbt_y"]
	[if exp="mp.clear!==void"]
		; �X�L�b�v�E�I�[�g�\������ �����Ȃ��c�c
		;[current layer=message3]
		;[layopt layer=message3 page=fore visible=false]
		;[current layer=message0]

		; �V�X�e���{�^����\����ǉ�
		[sysbtopt forevisible=false backvisible=false]

		; �E�B���h�E�̐F�ς�����悤�ɂ������炱���
		;[layopt layer="&sf.layer_win" visible=false page=back]
		[layopt layer=message0 visible=false page=back]
		;[layopt layer=message1 visible=false page=back]
		[if exp="f.face_win"]
			[layopt layer="&sf.layer_face_winbase"  visible=false page=back]
			[layopt layer="&sf.layer_face_win"      visible=false page=back]
			[layopt layer="&sf.layer_face_winflame" visible=false page=back]
		[endif]
		;�l�[���`�b�v�̃��C�������ĂȂ��ˁH
		;tempsave�O�ɃE�B���h�E�����ɏC���B���킹��macro02_win.ks�Ƀl�[���`�b�v�̃��C�������ǉ� 2018/02/27
		[layopt layer="&sf.message_namechip" visible=false page=back]
		;�t�F�C�X�E�B���h�E
		[layopt layer="&sf.layer_face_win" visible=false page=back]

		;�E�B���h�E�I���I�t�t���O�@�I�t
		[eval exp="f.winon = 0"]

	[elsif exp="f.selbt == 0"]

	[if    exp="f.win_narration == 1"]
		[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="window3" opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]
	[else]
		;height=200�Ɋւ��āB�l�[���`�b�v�̉��s�̊֌W�Ŏ��ۂ̃E�B���h�E�T�C�Y�����傫���ݒ肵�Ă���B�҂����肾��3�s�̎��Ɏ����ŉ��y�[�W���Ă��܂����߁B
;t		[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="window"       opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]

		;���b�Z�[�W���C��0�Ɠ���index�B���̃��C���̉��Z�F�𑀍삷��
		;[image storage="window" layer="&sf.layer_win" page=back visible=true left="&sf.window_x" top="&sf.window_y" opacity="&sf.graphicframe_opacity" mcolor="&sf.win_RGB" mopacity=255 index=900000]
		[position layer=message0 page=back left="&sf.window_x" top="&sf.window_y" width="&sf.window_w" height="&sf.window_h" frame="window" opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]
		;sf.layer_win��index��1000000�ɂ��Ă邩�炱������1��ɂ���
;		[font color=sf.kidoku_RGB]
		;���Ȃ�Ŋ��ǃJ���[�ɂ��Ă�񂾂�
	[endif]

		;�E�B���h�E�I���I�t�t���O�@�I��
		[eval exp="f.winon = 1"]

	[endif]
	[current layer=message0][layopt layer=message0 index=1001000]
	;����J�����g1����Ȃ��Ɩ͗l�̉��ɕ����������Ⴄ���Ƃ�
;	[current layer=message1]

	[trans method=crossfade time=0]
	[wt canskip=false]


[endmacro]

;=============================================================

[macro name=sysbt_meswin3]

	[backlay]

		[sysbtopt forevisible=true backvisible=true left="&sf.sysbt_x" top="&sf.sysbt_y"]
		;�{�C�Xonly���[�h�{�^�����Ƃŏ���
		;[sysbtopt2 forevisible=true backvisible=true left=1200 top="&sf.sysbt_y"]


	[if exp="mp.clear!==void"]
		; �X�L�b�v�E�I�[�g�\������ �����Ȃ��c�c
		;[current layer=message3]
		;[layopt layer=message3 page=fore visible=false]
		;[current layer=message0]

		; �V�X�e���{�^����\����ǉ�
		[sysbtopt forevisible=false backvisible=false]

		[layopt layer=message0 visible=false page=back]

		;�E�B���h�E�I���I�t�t���O�@�I�t
		[eval exp="f.winon = 0"]

		;�O���t�ʒu��C�ӂ̍��W�ɕύX
		[glyph fix=true]

	[else]


		;height=200�Ɋւ��āB�l�[���`�b�v�̉��s�̊֌W�Ŏ��ۂ̃E�B���h�E�T�C�Y�����傫���ݒ肵�Ă���B�҂����肾��3�s�̎��Ɏ����ŉ��y�[�W���Ă��܂����߁B
		[position layer=message0 page=back left="&sf.window_x" top="100" width="&sf.window_w" height="520" frame="window3" opacity="&sf.graphicframe_opacity" marginl="&sf.text_x" margint="&sf.text_y" marginr="&sf.text_r" marginb=0 visible=true]

		;�E�B���h�E�I���I�t�t���O�@�I�� ����p��3�ɂ��Ă݂����ǁA�V�X�e�������Ƃ��Ƀt���O�I�t���邩�炱���œ���Ă��Ӗ��Ȃ�
		[eval exp="f.winon = 1"]

	[endif]
	[current layer=message0]
	[trans method=crossfade time=100]
	[wt canskip=false]



[endmacro]



[return]
