;macro16_sys_sub

;systembutton_sub.ks���̏����������������̂ŋɗ̓}�N��������


;�V�i���I������V�X�e����ʈړ�����
[macro name=sys_in]

	;���ꉽ�Ɏg���C�������񂾂�
	;[eval exp="tf.save_load_conf = true"]

	;�}�X�N�摜��\�����ɍs����
	;m:�Z���X�N���v�g�ōς݂���������g��Ȃ��B
	;[call storage="save_sub.ks" target=*save_sub]


	; ��������̞x1�Ɍ��݂̏�Ԃ�ۑ�
	; �Z�[�u�A���[�h�A�R���t�B�O�Ԃňړ����Ă�������Ԃ��Ăяo����悤�ɓ����x�ɕۑ�����B


	;tempsave�O�ɏ���������Ă����̂���Ȃ����H�@tempload�ŃE�B���h�E���\�����ꂿ�Ⴄ����
	;����Ƀe�L�X�g�ĕ\���Ńe�L�X�g���`�J�b�Ƃ��Ă�
	;�V�X�e���{�^�����E�B���h�E���� ������͂��̈ʒu���瓮��������s��o��B
	;tempsave�O�ɃE�B���h�E�����ɏC���B���킹��macro02_win.ks�Ƀl�[���`�b�v�̃��C�������ǉ� 2018/02/27
	[if    exp="f.win_narration == 1"]
		[sysbt_meswin3 clear]
	[else]
		[s_m clear]
	[endif]

	;���[�vSE
	;BGV�̉��ʂ���U0��
	;[seopt buf="&sf.SE_HLoop_buf1" volume=0]
	;[seopt buf="&sf.SE_HLoop_buf2" volume=0]
	;[seopt buf="&sf.chara01L_buf"  volume=0]
	;[stop_seHLoop buf1]
	;[stop_seHLoop buf2]
	;[bgvstop]
	;�}�N���Ŏ~�߂��tmp�J���ɂȂ����Ⴄ���璼�ڎ~��
;	[stopse buf="&sf.SE_HLoop_buf1"]
;	[stopse buf="&sf.SE_HLoop_buf2"]
	[stopse buf="&sf.chara01L_buf"]
	[stopse buf="&sf.chara02L_buf"]
	[stopse buf="&sf.chara03L_buf"]
	[stopse buf="&sf.chara04L_buf"]

	; ��������̞x�P�Ɍ��݂̏�Ԃ�ۑ�
	[tempsave place=1]

;�X�i�b�v�V���b�g�O�ɑ��₷�ƃL����index���삵�Ă�Ƃ��Ƀ��Z�b�g���ꂽ��ԂŃT���l�ۑ����ꂿ�Ⴄ����X�i�b�v�̌�ɂ��Ă݂�
;	;�I���摜���h��Ȃ��悤�Ƀ��C���𑝂₷
;	[eval exp="sf.maxlayers = kag.numCharacterLayers + 13"][laycount layers="&sf.maxlayers"]

	;�X���b�g�Ƀf�[�^���Z�[�u
	;[save place=101]
	[eval exp="tf.gameplay = 1"]
	;Qload���V�X�e����ʁ��߂邾�ƃI�t��Ȃ����炱���ł͖������ɃI�t����
	[eval exp="tf.QuickLoad = 0"]

	;�Z�[�u�T���l�ɖ��O�����c���Ă�ȁB�������ɕۑ����ɏ�����
	[layopt layer=message4 page=fore visible=false]
;	;�V�X�e���{�^�����E�B���h�E���� ������͂��̈ʒu���瓮��������s��o��B
;	[if    exp="f.win_narration == 1"]
;		[sysbt_meswin3 clear]
;	[else]
;		[s_m clear]
;	[endif]
	;�����ꂩ��1�Ȃ痧���}�X�N�\��
;�v��Ȃ����ۂ�	[if exp="f.stdmsk_sk || f.stdmsk_ay || f.stdmsk_ky || f.stdmsk_ma || f.stdmsk_yu"]
;		[image storage="std_all_msk" layer="&sf.layer_quick" page=fore visible=true left=0 top=-150]
;	[endif]

	;�C�x���g�b�f�\�������ǂ�������B
	;f.msk��0�łȂ���΃}�X�N�\��
	[if exp="f.mskon != 0"]
		[call storage="cgmsk.ks"]
		;�}�X�N�摜�\��
		[layopt layer="&sf.layer_msk" page=fore visible=true]

	;���i�͗]�v�ȏ����������Ȃ������Ustdmsk�ŏ���
	;[elsif exp="f.stdmsk == 1"]
	[elsif exp="f.stdmsk != 0"]

		;[image storage="std_msk" layer="&sf.layer_msk" page=fore visible=true left=0 top=0]

		;;�����}�X�N�t���O�폜�p ���C���͓K�X�C�����邱��
		;[eval exp="f.stdname =  kag.back.layers[f.layer_mi].Anim_loadParams.storage"]
		;[eval exp="f.stdname = f.stdname.charAt(0)"]

		;;�����ƃA�b�v�����\�����Ƃ��ɑΉ��ł��Ȃ���
		;[if exp="f.stdname == 'l'"]
		;	;�ړ��̎��̓Y�����Ⴄ�Ȃ��A�����pimage���Ȃ�
		;	[image storage="std_lo_msk" layer="&sf.layer_msk" page=fore visible=true left="&f.pos_m_x" top="&f.pos_m_y"]
		;	;[pimage storage="std_lo_msk" layer="&f.layer_mi" page=fore visible=true dx=0 dy=0]
		;[elsif exp="f.stdname == 'u'"]
		;	[image storage="std_up_msk" layer="&sf.layer_msk" page=fore visible=true left="&f.pos_m_x" top="&f.pos_m_y"]
		;	;[pimage storage="std_up_msk" layer="&f.layer_mi" page=fore visible=true dx=0 dy=0]
		;[endif]
	[endif]

	;�J�b�g�C���pf.mskon2��0�łȂ���΃}�X�N�\��
	[if exp="f.mskon2 != 0"]
		[call storage="cgmsk.ks" target=*cutin_msk]
		;�}�X�N�摜�\��
		[layopt layer="&sf.layer_msk2" page=fore visible=true]
	[endif]

	; �X�i�b�v�V���b�g�̃��b�N(�T���l�C���p�̉�ʂ��L�^���Ă���̂ŃZ�[�u�}�X�N�\����Ƀ��b�N�Ȃ̂��ȁj
	[locksnapshot]
		;���ꉽ�ł����ɂ���񂾂�[layopt layer="&sf.layer_msk" page=fore visible=false]
	;�I���摜���h��Ȃ��悤�Ƀ��C���𑝂₷
	[eval exp="sf.maxlayers = kag.numCharacterLayers + 13"][laycount layers="&sf.maxlayers"]

[endmacro]

;�V�X�e����ʂ���V�i���I���ړ�����
[macro name=sys_out]

	;�I���摜���h��Ȃ��悤�ɑ��₵�����C����߂�
	;tempload�Ń��C���J�E���g�͖߂邯��sf.maxlayers���߂�Ȃ�����tempload�̑O��
	[eval exp="sf.maxlayers = kag.numCharacterLayers - 13"][laycount layers="&sf.maxlayers"]

	; ��������̞x�P��ǂݍ��݁A��ԕ��A se��bgm�̑�������Ė����ƍēǍ������Ⴄ�̂�
	[tempload place=1 se=false bgm=false]

	;�g�又���ł����� �Ȃ�ׂ��e���v���[�h�シ���ɂ�肽������fc�}�N������񂭂Ă����ɂ����B����܂�悭�͂Ȃ��B
	[if exp="f.zoomon == 1"]
		[zoom_fore]
	[endif]

	;blur�p�摜�ĕ\��
	[if    exp="f.bluron == 1"]
		[blur_again]
	[endif]

	;�Y�V�[����z���ɋN������̂݃{�^���������Ȃ����ۂ����������ߒǉ�
	;mm �ʏ�v���C���̑I���������������Ȃ邩��cond���Ă���
	[cm cond="f.scene_modeV == 1"]
	;mm �I�����x�[�X�������Ⴄ�����Uf.selbase���I�t�ɂ��čēx�\�����s������
	[if exp="f.selnow == 1"]
		[eval exp="f.selbase = 0"]
	[endif]

	;�V�X�e����ʒ��Ń_�C�A���O�����Ă��cm���Ă�֌W�ŁA�߂������Ƀx�[�X����������ĂĂ����������̂�p�e�L�X�g���Ă郌�C������U�����Ă���
	[if exp="f.selbt == 1 || f.selnow == 1"]
	;�ʂɃ{�^�������Ė����񂾂��ǁB�ނ���߂�O�Ƀ{�^�������Ȃ���freimege���Ă郌�C���𑀍삵�悤�Ƃ��ăG���[��
	[cm]
	[freeimage layer="&sf.layer_seltext+1" page=fore][freeimage layer="&sf.layer_seltext+1" page=back]
	[freeimage layer="&sf.layer_seltext+2" page=fore][freeimage layer="&sf.layer_seltext+2" page=back]
	[freeimage layer="&sf.layer_seltext+3" page=fore][freeimage layer="&sf.layer_seltext+3" page=back]
	[freeimage layer="&sf.layer_seltext+4" page=fore][freeimage layer="&sf.layer_seltext+4" page=back]
	[freeimage layer="&sf.layer_seltext+5" page=fore][freeimage layer="&sf.layer_seltext+5" page=back]
	[freeimage layer="&sf.layer_seltext+6" page=fore][freeimage layer="&sf.layer_seltext+6" page=back]
	[freeimage layer="&sf.layer_seltext+7" page=fore][freeimage layer="&sf.layer_seltext+7" page=back]
	;�I�����}�N���ł��̌`���ő��₵�Ă邩���U�߂��Ȃ��Ƃ��߂�
	[eval exp="sf.maxlayers = kag.numCharacterLayers - 7"][laycount layers="&sf.maxlayers"]
	[endif]


	[eval exp="tf.gameplay = 0"]
	;�Z���t�����o���΂����ǂ����̔���Ɏg���B�I�t�̓V�i���I����
	[eval exp="tf.sys_return = 1"]
	;�X���b�g�Ƀf�[�^�����[�h
	;[load place=101]

	; �X�i�b�v�V���b�g�̃��b�N����
	[unlocksnapshot]

	;�}�X�N�摜����
	;�}�X�N�\���Ă郌�C���ƈႤ�񂾂��ǂȂ��@��������tmeload���Ă邩������K�v�Ȃ��̂���H
	;[freeimage layer="&sf.layer_quick" page=fore][freeimage layer="&sf.layer_quick" page=back]

	;//;�I�����\�����ɗ��Ă�����sel_sub.ks���Ăяo���đI�������ĕ\������B
	;//[if exp="f.selnow"]
	;//	[call storage="sel_sub.ks" target=*sel_sub]
	;//[endif]

	;//[eval exp="sf.sys_sub = 1"]

	; �E�N���b�N���蓖�Ă�ݒ肷��
	[call storage="rclick_sub.ks"]

	;�E�B���h�E���ߓx�X���C�_�[��\�����Ȃ���
	;[setSliderPosition left="&sf.winsld_x" top="&sf.winsld_y"]

	;�E�B���h�E��0�b�ōĕ\��
	;f.win_narration == 1�̓i���[�V�����p�̔���
	[if exp="f.win_narration == 1"]
		;[sysbt_meswin3]
		[layopt layer=message0 visible=true page=back]
		[layopt layer=message0 visible=true page=fore]
	[else]
		[s_m cond="f.graphic_bt_sel == 0"]
	[endif]

	;���ߓx�𔽉f
	[eval exp="kag.fore.messages[0].frameOpacity = sf.graphicframe_opacity"]
	[eval exp="kag.back.messages[0].frameOpacity = sf.graphicframe_opacity"]
	;�e�L�X�g�ĕ\�����Ƀm�[�^�C���ɂ��邽�߂̃t���O�I��
	[eval exp="tf.sys_sub = 1" cond="f.graphic_bt_sel == 0"]

	;���[�vSE
	;BGV�̉��ʂ���U�ݒ�l��
	[stopse buf="&sf.SE_sys_confsrd_buf"]
;	[seopt buf="&sf.SE_HLoop_buf1" gvolume="&sf.dummy_HLoop_seopt1/1000" volume="&f.tmp_HLoop_seopt1"     cond="sf.seplayHLoop == 1"]
;	[seopt buf="&sf.SE_HLoop_buf2" gvolume="&sf.dummy_HLoop_seopt2/1000" volume="&f.tmp_HLoop_seopt2"     cond="sf.seplayHLoop == 1"]
;	[seopt buf="&sf.chara01L_buf"  gvolume="&sf.dummy_seopt_chara01L/1000" volume="&f.tmp_seopt_chara01L" cond="sf.chara01_L == 1"]
	;SEH���[�v�ēx�Đ�
;	[se_HLoop buf1 storage="&f.tmp_se_HLoop1" cond="f.tmp_se_HLoop1 != void"][waitclick]
;	[se_HLoop buf2 storage="&f.tmp_se_HLoop2" cond="f.tmp_se_HLoop2 != void"]
	;BGV�ēx�Đ�
;	[bgv_a s="&f.tmp_bgv_ch01" cond="f.tmp_bgv_ch01 != void"]
	;�ϐ����J���ɂ����Ⴞ�߂���
	;[eval exp="f.tmp_se_HLoop1 = void"]
	;[eval exp="f.tmp_se_HLoop2 = void"]
	;[eval exp="f.tmp_bgv_ch01 = void"]


[endmacro]

[return]


