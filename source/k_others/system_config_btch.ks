;system_config_btch.ks
;�{�^���������ăI���I�t�̓��삪�����Ȃ��Ă����̂�system_config_mes.ks���番������B


;-----------------------------------------------------------
;���ǖ��ǃX�L�b�v
*config_skipall
[unlocklink]
[if exp="sf.allskip == 1"]
	[freeimage layer="&tf.layer_skip" page=fore]
	;[button_chgimage num="&sf.bt_num_skip" graphic="cnf_kidokuskip.png"]
	[button_chgimage num="&sf.bt_num_skip" graphic="cnf_kidoku_midoku"]
	[image left="&tf.cnf_skip_x[0]" top="&tf.cnf_skip_y[0]" storage="cnf_kidokuskip.png" layer=0 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.allskip = false"]
[else]
	[freeimage layer="&tf.layer_skip" page=fore]
	;[button_chgimage num="&sf.bt_num_skip" graphic="cnf_midokuskip.png"]
	[button_chgimage num="&sf.bt_num_skip" graphic="cnf_kidoku_midoku"]
	[image left="&tf.cnf_skip_x[0]" top="&tf.cnf_skip_y[0]" storage="cnf_midokuskip.png" layer=0 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.allskip = true"]
[endif]

;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]






;-----------------------------------------------------------
;�I������X�L�b�v
*config_selskip
[unlocklink]
[if exp="sf.sel_skip == 0"]
	[freeimage layer="&tf.layer_sel_skip" page=fore]
	;[button_chgimage num="&sf.bt_num_sel_skip"graphic="cnf_on.png"]
	[button_chgimage num="&sf.bt_num_sel_skip"graphic="cnf_onoff"]
	[image left="&tf.cnf_selskip_x[0]" top="&tf.cnf_selskip_y[0]" storage="cnf_on.png" layer=1 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.sel_skip = 1"]
[else]
	[freeimage layer="&tf.layer_sel_skip" page=fore]
	;[button_chgimage num="&sf.bt_num_sel_skip"graphic="cnf_off.png"]
	[button_chgimage num="&sf.bt_num_sel_skip"graphic="cnf_onoff"]
	[image left="&tf.cnf_selskip_x[0]" top="&tf.cnf_selskip_y[0]" storage="cnf_off.png" layer=1 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.sel_skip = 0"]
[endif]
;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]



;-----------------------------------------------------------
;�I������I�[�g
*config_selauto
[unlocklink]
[if exp="sf.sel_auto == 0"]
	[freeimage layer="&tf.layer_sel_auto" page=fore]
	;[button_chgimage num="&sf.bt_num_sel_auto"graphic="cnf_on.png"]
	[button_chgimage num="&sf.bt_num_sel_auto"graphic="cnf_onoff"]
	[image left="&tf.cnf_selauto_x[0]" top="&tf.cnf_selauto_y[0]" storage="cnf_on.png" layer=2 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.sel_auto = 1"]
[else]
	[freeimage layer="&tf.layer_sel_auto" page=fore]
	;[button_chgimage num="&sf.bt_num_sel_auto"graphic="cnf_off.png"]
	[button_chgimage num="&sf.bt_num_sel_auto"graphic="cnf_onoff"]
	[image left="&tf.cnf_selauto_x[0]" top="&tf.cnf_selauto_y[0]" storage="cnf_off.png" layer=2 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.sel_auto = 0"]
[endif]

;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]




;-------------------------------------------------------------
;��ʌ���
*config_efectskip
[unlocklink]
[if exp="sf.efect == 0"]
	[freeimage layer="&tf.layer_eskip" page=fore]
	;[button_chgimage num="&sf.bt_num_efect"graphic="cnf_on.png"]
	[button_chgimage num="&sf.bt_num_efect"graphic="cnf_onoff"]
	[image left="&tf.cnf_eskip_x[0]" top="&tf.cnf_eskip_y[0]" storage="cnf_on.png" layer=3 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.efect = 1"]
[else]
	[freeimage layer="&tf.layer_eskip" page=fore]
	;[button_chgimage num="&sf.bt_num_efect"graphic="cnf_off.png"]
	[button_chgimage num="&sf.bt_num_efect"graphic="cnf_onoff"]
	[image left="&tf.cnf_eskip_x[0]" top="&tf.cnf_eskip_y[0]" storage="cnf_off.png" layer=3 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.efect = 0"]
[endif]
;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]

;-------------------------------------------------------------
;�m�F�_�C�A���O
*config_dialog
[unlocklink]
[if exp="sf.dialog_on == 0"]
	[freeimage layer="&tf.layer_dialog" page=fore]
	;[button_chgimage num="&sf.bt_num_dialog"graphic="cnf_on.png"]
	[button_chgimage num="&sf.bt_num_dialog"graphic="cnf_onoff"]
	[image left="&tf.cnf_dialog_x[0]" top="&tf.cnf_dialog_y[0]" storage="cnf_on.png" layer=4 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.dialog_onVer���p = 1"]
	[eval exp="sf.dialog_on = 1"]
[else]
	[freeimage layer="&tf.layer_dialog" page=fore]
	;[button_chgimage num="&sf.bt_num_dialog"graphic="cnf_off.png"]
	[button_chgimage num="&sf.bt_num_dialog"graphic="cnf_onoff"]
	[image left="&tf.cnf_dialog_x[0]" top="&tf.cnf_dialog_y[0]" storage="cnf_off.png" layer=4 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.dialog_onVer���p = 0"]
	[eval exp="sf.dialog_on = 0"]
[endif]
;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]



;-------------------------------------------------------------
;//	;���b�Z�[�W���ߓx�̃X���C�_�[�I���I�t
;//
;//	*config_winsld_ON
;//	[unlocklink]
;//		[button_chgimage num="&sf.bt_num_rclick_conf"graphic="cnf_on.png"]
;//		[button_chgimage num="&sf.bt_num_edge"graphic="cnf_off.png"]
;//		[eval exp="sf.winsld_y = 700"]
;//		[eval exp="sf.winsld�\�� = 1"]
;//	;�f�t�H���g�ɖ߂��������Ȃ�return����
;//	[if exp="tf.conf_default == 1"][return][endif]
;//
;//	[s]
;//
;//	*config_winsld_OFF
;//	[unlocklink]
;//		[button_chgimage num="&sf.bt_num_rclick_conf"graphic="cnf.png"]
;//		[button_chgimage num="&sf.bt_num_edge"graphic="cnf_off.png"]
;//		[eval exp="sf.winsld_y = 720"]
;//		[eval exp="sf.winsld�\�� = 0"]
;//	;�f�t�H���g�ɖ߂��������Ȃ�return����
;//	[if exp="tf.conf_default == 1"][return][endif]
;//
;//
;//	[s]


;-------------------------------------------------------------
;�u�E�B���h�E800*600�v���I�����ꂽ
*config_win_small
[unlocklink]
	[freeimage layer="&tf.layer_scr" page=fore]
	; �`�F�b�N�}�[�N�̃I���^�I�t��ύX
	;[button_chgimage num="&sf.bt_num_win_small"graphic="cnf_win_small.png"]
	[button_chgimage num="&sf.bt_num_win_small"graphic="cnf_win"]
	[image left="&tf.cnf_scr_x[0]" top="&tf.cnf_scr_y[0]" storage="cnf_win_small.png" layer=5 page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_win_cliptop" clipwidth="&sf.cnf_win_clipwidth" clipheight="&sf.cnf_win_clipheight" opacity=255]
	[button_chgimage num="&sf.bt_num_win_def"graphic="cnf_win_default.png"]
	[button_chgimage num="&sf.bt_num_win_full"graphic="cnf_win_full.png"]
	;�t���X�N���[���Ȃ�E�B���h�E�\���ɂ���
	[if exp="kag.fullScreen"]
		[eval exp="kag.onWindowedMenuItemClick(kag)"]
	[endif]
	;800*600�ɕύX�BWindowResizable.ks�ɂ������t�@���N�V�������g�p�B
	[eval exp="kag.setInnerSize(960, 540)"]
;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]

;�u�E�B���h�E1280*720�v���I�����ꂽ
*config_win_default
[unlocklink]
; �t���X�N���[���Ȃ�c ;m:�E�B���h�E�T�C�Y���C�ӂɂȂ��Ă��ꍇ1280*720�ɖ߂����炱�̏������͓���Ȃ��B
;[if exp="kag.fullScreen"]
	[freeimage layer="&tf.layer_scr" page=fore]
	; �`�F�b�N�}�[�N�̃I���^�I�t��ύX
	[button_chgimage num="&sf.bt_num_win_small"graphic="cnf_win_small.png"]
	;[button_chgimage num="&sf.bt_num_win_def"graphic="cnf_win_default.png"]
	[button_chgimage num="&sf.bt_num_win_def"graphic="cnf_win"]
	[image left="&tf.cnf_scr_x[1]" top="&tf.cnf_scr_y[1]" storage="cnf_win_default.png" layer=5 page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_win_cliptop" clipwidth="&sf.cnf_win_clipwidth" clipheight="&sf.cnf_win_clipheight" opacity=255]
	[button_chgimage num="&sf.bt_num_win_full"graphic="cnf_win_full.png"]

	;�t���X�N���[���Ȃ�E�B���h�E�\���ɂ���
	[if exp="kag.fullScreen"]
		[eval exp="kag.onWindowedMenuItemClick(kag)"]
	[endif]
	;1280*720�ɕύX�BWindowResizable.ks�ɂ������t�@���N�V�������g�p�B
	[eval exp="kag.setInnerSize(1280, 720)"]
;[endif]

;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]


;�u�t���X�N���[���v���I�����ꂽ
*config_fullscreen
[unlocklink]
; �E�B���h�E�\����ԂȂ�c
[if exp="!kag.fullScreen"]
	[freeimage layer="&tf.layer_scr" page=fore]
	; �`�F�b�N�}�[�N�̃I���^�I�t��ύX
	[button_chgimage num="&sf.bt_num_win_small"graphic="cnf_win_small.png"]
	[button_chgimage num="&sf.bt_num_win_def"graphic="cnf_win_default.png"]
	;[button_chgimage num="&sf.bt_num_win_full"graphic="cnf_win_full.png"]
	[button_chgimage num="&sf.bt_num_win_full"graphic="cnf_win"]
	[image left="&tf.cnf_scr_x[2]" top="&tf.cnf_scr_y[2]" storage="cnf_win_full.png" layer=5 page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_win_cliptop" clipwidth="&sf.cnf_win_clipwidth" clipheight="&sf.cnf_win_clipheight" opacity=255]

	; �t���X�N���[���ɂ���
	[eval exp="kag.onFullScreenMenuItemClick(kag)"]
[endif]
;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]


;-------------------------------------------------------------
;�E�N���b�N�@�\
*config_rclick_hide
[unlocklink]
	[freeimage layer="&tf.layer_rclick" page=fore]
	; �`�F�b�N�}�[�N�̃I���^�I�t��ύX
	;[button_chgimage num="&sf.bt_num_rclick_hide" graphic="cnf_rclick_hide.png" ]
	[button_chgimage num="&sf.bt_num_rclick_hide"graphic="cnf_rclick"]
	[image left="&tf.cnf_rclick_x[0]" top="&tf.cnf_rclick_y[0]" storage="cnf_rclick_hide.png" layer=6 page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_rclick_cliptop" clipwidth="&sf.cnf_rclick_clipwidth" clipheight="&sf.cnf_rclick_clipheight" opacity=255]
	[button_chgimage num="&sf.bt_num_rclick_save" graphic="cnf_rclick_save.png"]
	[button_chgimage num="&sf.bt_num_rclick_conf"graphic="cnf_rclick_conf.png"]
	;���ۂ̋@�\�ύX��systembutton_sub.ks��title.ks�ōs��
	;[rclick name=default]
;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]

;�Z�[�u��ʌĂяo��
*config_rclick_save
[unlocklink]
	[freeimage layer="&tf.layer_rclick" page=fore]
	; �`�F�b�N�}�[�N�̃I���^�I�t��ύX
	[button_chgimage num="&sf.bt_num_rclick_hide" graphic="cnf_rclick_hide.png"]
	;[button_chgimage num="&sf.bt_num_rclick_save" graphic="cnf_rclick_save.png" ]
	[button_chgimage num="&sf.bt_num_rclick_save"graphic="cnf_rclick"]
	[image left="&tf.cnf_rclick_x[1]" top="&tf.cnf_rclick_y[1]" storage="cnf_rclick_save.png" layer=6 page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_rclick_cliptop" clipwidth="&sf.cnf_rclick_clipwidth" clipheight="&sf.cnf_rclick_clipheight" opacity=255]
	[button_chgimage num="&sf.bt_num_rclick_conf"graphic="cnf_rclick_conf.png"]
	;���ۂ̋@�\�ύX��systembutton_sub.ks��title.ks�ōs��
	;[rclick call=true storage="systembutton_sub.ks" target=*sys_save]
;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]


;�ݒ��ʌĂяo��
*config_rclick_conf
[unlocklink]
	[freeimage layer="&tf.layer_rclick" page=fore]
	; �`�F�b�N�}�[�N�̃I���^�I�t��ύX
	[button_chgimage num="&sf.bt_num_rclick_hide" graphic="cnf_rclick_hide.png"]
	[button_chgimage num="&sf.bt_num_rclick_save" graphic="cnf_rclick_save.png"]
	;[button_chgimage num="&sf.bt_num_rclick_conf"graphic="cnf_rclick_conf.png"]
	[button_chgimage num="&sf.bt_num_rclick_conf"graphic="cnf_rclick"]
	[image left="&tf.cnf_rclick_x[2]" top="&tf.cnf_rclick_y[2]" storage="cnf_rclick_conf.png" layer=6 page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_rclick_cliptop" clipwidth="&sf.cnf_rclick_clipwidth" clipheight="&sf.cnf_rclick_clipheight" opacity=255]
	;���ۂ̋@�\�ύX��systembutton_sub.ks��title.ks�ōs��
	;[rclick call=true storage="systembutton_sub.ks" target=*sys_config]
;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]




;-------------------------------------------------------------
;�e�L�X�g�����
*config_edge
[unlocklink]
[if exp="sf.edge_on == 'false'"]
	[freeimage layer="&tf.layer_edge" page=fore]
	;[button_chgimage num="&sf.bt_num_edge"graphic="cnf_on_on"]
	[button_chgimage num="&sf.bt_num_edge"graphic="cnf_onoff"]
	[image left="&tf.cnf_edge_x[0]" top="&tf.cnf_edge_y[0]" storage="cnf_on.png" layer=7 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.edge_on = 'true'"]
	[jump storage="system_config_srd.ks" target=*text_draw]
[else]
	[freeimage layer="&tf.layer_edge" page=fore]
	;[button_chgimage num="&sf.bt_num_edge"graphic="cnf_off_off"]
	[button_chgimage num="&sf.bt_num_edge"graphic="cnf_onoff"]
	[image left="&tf.cnf_edge_x[0]" top="&tf.cnf_edge_y[0]" storage="cnf_off.png" layer=7 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.edge_on = 'false'"]
	[jump storage="system_config_srd.ks" target=*text_draw]
[endif]
;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]



;-----------------------------------------------------------
;BGM�J�b�g
*config_bgmplay
[unlocklink]
[if exp="sf.bgmplay == 1"]
	[button_chgimage num="&sf.bt_num_bgm"graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.bgmplay = 0"]

	;����0�ɂ���
	[bgmopt gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*bgmvolume]
[else]
	[button_chgimage num="&sf.bt_num_bgm"graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.bgmplay = 1"]
	;���ʂ�sf.dummy_bgmopt�ɓ���Ƃ������l�ɖ߂��B
	[bgmopt gvolume="&sf.dummy_bgmopt"]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*bgmvolume]
[endif]
;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]


;-----------------------------------------------------------
;SE�J�b�g
*config_seplay

[unlocklink]
[if exp="sf.seplay == 1"]
	[button_chgimage num="&sf.bt_num_se" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.seplay = 0"]

	;����0�ɂ���
	[seopt buf=0 gvolume=0]
	[seopt buf=1 gvolume=0]
	[seopt buf=2 gvolume=0]
	[seopt buf=3 gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*sevolume]
[else]
	[button_chgimage num="&sf.bt_num_se" graphic="cnf_smoll_on_on.png"]
	;���ʂ�sf.dummy_bgmopt�ɓ���Ƃ������l�ɖ߂��B
	[seopt buf=0 gvolume="&sf.dummy_seopt0" volume="&f.tmp_seopt0"]
	[seopt buf=1 gvolume="&sf.dummy_seopt1" volume="&f.tmp_seopt1"]
	[seopt buf=2 gvolume="&sf.dummy_seopt2" volume="&f.tmp_seopt2"]
	[seopt buf=3 gvolume="&sf.dummy_seopt3" volume="&f.tmp_seopt3"]
	[eval exp="sf.seplay = 1"]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*sevolume]
[endif]
;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]




;-------------------------------------------------------------
;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X�J�b�g
*config_chara01_v
[unlocklink]
[if exp="sf.chara01_v == 1"]
	[button_chgimage num="&sf.bt_num_chara01" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara01_v = 0"]

	;����0��
	[seopt buf="&sf.chara01_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume01]
[else]
	[button_chgimage num="&sf.bt_num_chara01" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara01_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;���܍��킹
	[if exp="sf.dummy_seopt_chara01 <=100"]
		[eval exp="sf.dummy_seopt_chara01 = sf.dummy_seopt_chara01*1000"]
	[endif]
	;�{�C�X���ʂ����ɖ߂�
	[eval exp="kag.se[sf.chara01_buf].volume2 = sf.dummy_seopt_chara01"]

	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume01]

[endif]

	;�������Ă�񂾂�H�s�v�ł́H
;	[slider_delete name=chvolume01]
;	[call storage="system_config_srd.ks" target=*chvolume01]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara01 <=100"]
;		[eval exp="sf.dummy_seopt_chara01 = sf.dummy_seopt_chara01*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]


[s]
;-------------------------------------------------------------
;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X�J�b�g
*config_chara01_L
[unlocklink]
[if exp="sf.chara01_L == 1"]
	[button_chgimage num="&sf.bt_num_chara01L" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara01_L = 0"]
	[eval exp="sf.chara02_L = 0"]
	[eval exp="sf.chara03_L = 0"]
	[eval exp="sf.chara04_L = 0"]
	[stopse buf="&sf.SE_sys_confsrd_buf"]

	;����0��
	[seopt buf="&sf.chara01L_buf" gvolume=0]
	[seopt buf="&sf.chara02L_buf" gvolume=0]
	[seopt buf="&sf.chara03L_buf" gvolume=0]
	[seopt buf="&sf.chara04L_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume01L]
[else]
	[button_chgimage num="&sf.bt_num_chara01L" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara01_L = 1"]
	[eval exp="sf.chara02_L = 1"]
	[eval exp="sf.chara03_L = 1"]
	[eval exp="sf.chara04_L = 1"]
;	[eval exp="sf.mastergvolume= 1"]

;�������v��Ȃ��̂���
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara01L <=100"]
;		[eval exp="sf.dummy_seopt_chara01L = sf.dummy_seopt_chara01L*1000"]
;	[endif]
	;�{�C�X���ʂ����ɖ߂�
;	[eval exp="kag.se[sf.chara01L_buf].volume2 = sf.dummy_seopt_chara01L"]
	[seopt buf="&sf.chara01L_buf" gvolume="&sf.dummy_seopt_chara01L" volume="&f.tmp_seopt_chara01L"]
	[seopt buf="&sf.chara02L_buf" gvolume="&sf.dummy_seopt_chara02L" volume="&f.tmp_seopt_chara02L"]
	[seopt buf="&sf.chara03L_buf" gvolume="&sf.dummy_seopt_chara03L" volume="&f.tmp_seopt_chara03L"]
	[seopt buf="&sf.chara04L_buf" gvolume="&sf.dummy_seopt_chara04L" volume="&f.tmp_seopt_chara04L"]


	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume01L]

[endif]

	;�������Ă�񂾂�H�s�v�ł́H
;	[slider_delete name=chvolume01]
;	[call storage="system_config_srd.ks" target=*chvolume01]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara01 <=100"]
;		[eval exp="sf.dummy_seopt_chara01 = sf.dummy_seopt_chara01*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]


[s]

;-----------------------------------------------------------
;;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X02�J�b�g
*config_chara02_v
[unlocklink]
[if exp="sf.chara02_v == 1"]
	[button_chgimage num="&sf.bt_num_chara02" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara02_v = 0"]

	;����0��
	[seopt buf="&sf.chara02_buf" gvolume=0]

	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume02]
[else]
	[button_chgimage num="&sf.bt_num_chara02" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara02_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;���܍��킹
	[if exp="sf.dummy_seopt_chara02 <=100"]
		[eval exp="sf.dummy_seopt_chara02 = sf.dummy_seopt_chara02*1000"]
	[endif]
	;�{�C�X���ʂ����ɖ߂�
	[eval exp="kag.se[sf.chara02_buf].volume2 = sf.dummy_seopt_chara02"]

	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume02]

[endif]

;	[slider_delete name=chvolume02]
;	[call storage="system_config_srd.ks" target=*chvolume02]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara02 <=100"]
;		[eval exp="sf.dummy_seopt_chara02 = sf.dummy_seopt_chara02*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]

[s]
;-------------------------------------------------------------
;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X�J�b�g
*config_chara02_L
[unlocklink]
[if exp="sf.chara02_L == 1"]
	[button_chgimage num="&sf.bt_num_chara02L" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara02_L = 0"]
	[stopse buf="&sf.SE_sys_confsrd_buf"]

	;����0��
	[seopt buf="&sf.chara02L_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume02L]
[else]
	[button_chgimage num="&sf.bt_num_chara02L" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara02_L = 1"]
;	[eval exp="sf.mastergvolume= 1"]

;�������v��Ȃ��̂���
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara02L <=100"]
;		[eval exp="sf.dummy_seopt_chara02L = sf.dummy_seopt_chara02L*1000"]
;	[endif]
	;�{�C�X���ʂ����ɖ߂�
;	[eval exp="kag.se[sf.chara02L_buf].volume2 = sf.dummy_seopt_chara02L"]
	[seopt buf="&sf.chara02L_buf" gvolume="&sf.dummy_seopt_chara02L" volume="&f.tmp_seopt_chara02L"]


	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume02L]

[endif]

	;�������Ă�񂾂�H�s�v�ł́H
;	[slider_delete name=chvolume02]
;	[call storage="system_config_srd.ks" target=*chvolume02]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara02 <=100"]
;		[eval exp="sf.dummy_seopt_chara02 = sf.dummy_seopt_chara02*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]


[s]

;-------------------------------------------------------------
;;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X03�J�b�g
*config_chara03_v
[unlocklink]
[if exp="sf.chara03_v == 1"]
	[button_chgimage num="&sf.bt_num_chara03" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara03_v = 0"]

	;����0��
	[seopt buf="&sf.chara03_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume03]
[else]
	[button_chgimage num="&sf.bt_num_chara03" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara03_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;���܍��킹
	[if exp="sf.dummy_seopt_chara03 <=100"]
		[eval exp="sf.dummy_seopt_chara03 = sf.dummy_seopt_chara03*1000"]
	[endif]
	;�{�C�X���ʂ����ɖ߂�
	[eval exp="kag.se[sf.chara03_buf].volume2 = sf.dummy_seopt_chara03"]

	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume03]

[endif]

;	[slider_delete name=chvolume03]
;	[call storage="system_config_srd.ks" target=*chvolume02]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara03 <=100"]
;		[eval exp="sf.dummy_seopt_chara03 = sf.dummy_seopt_chara03*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]

[s]

;-------------------------------------------------------------
;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X�J�b�g
*config_chara03_L
[unlocklink]
[if exp="sf.chara03_L == 1"]
	[button_chgimage num="&sf.bt_num_chara03L" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara03_L = 0"]
	[stopse buf="&sf.SE_sys_confsrd_buf"]

	;����0��
	[seopt buf="&sf.chara03L_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume03L]
[else]
	[button_chgimage num="&sf.bt_num_chara03L" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara03_L = 1"]
;	[eval exp="sf.mastergvolume= 1"]

;�������v��Ȃ��̂���
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara03L <=100"]
;		[eval exp="sf.dummy_seopt_chara03L = sf.dummy_seopt_chara03L*1000"]
;	[endif]
	;�{�C�X���ʂ����ɖ߂�
;	[eval exp="kag.se[sf.chara03L_buf].volume2 = sf.dummy_seopt_chara03L"]
	[seopt buf="&sf.chara03L_buf" gvolume="&sf.dummy_seopt_chara03L" volume="&f.tmp_seopt_chara03L"]


	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume03L]

[endif]

	;�������Ă�񂾂�H�s�v�ł́H
;	[slider_delete name=chvolume03]
;	[call storage="system_config_srd.ks" target=*chvolume03]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara03 <=100"]
;		[eval exp="sf.dummy_seopt_chara03 = sf.dummy_seopt_chara03*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]


[s]

;-------------------------------------------------------------
;;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X04�J�b�g
*config_chara04_v
[unlocklink]
[if exp="sf.chara04_v == 1"]
	[button_chgimage num="&sf.bt_num_chara04" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara04_v = 0"]

	;����0��
	[seopt buf="&sf.chara04_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume04]
[else]
	[button_chgimage num="&sf.bt_num_chara04" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara04_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;���܍��킹
	[if exp="sf.dummy_seopt_chara04 <=100"]
		[eval exp="sf.dummy_seopt_chara04 = sf.dummy_seopt_chara04*1000"]
	[endif]
	;�{�C�X���ʂ����ɖ߂�
	[eval exp="kag.se[sf.chara04_buf].volume2 = sf.dummy_seopt_chara04"]

	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume04]

[endif]

;	[slider_delete name=chvolume04]
;	[call storage="system_config_srd.ks" target=*chvolume4]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara04 <=100"]
;		[eval exp="sf.dummy_seopt_chara04 = sf.dummy_seopt_chara04*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]

[s]
;-------------------------------------------------------------
;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X�J�b�g
*config_chara04_L
[unlocklink]
[if exp="sf.chara04_L == 1"]
	[button_chgimage num="&sf.bt_num_chara04L" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara04_L = 0"]
	[stopse buf="&sf.SE_sys_confsrd_buf"]

	;����0��
	[seopt buf="&sf.chara04L_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume04L]
[else]
	[button_chgimage num="&sf.bt_num_chara04L" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara04_L = 1"]
;	[eval exp="sf.mastergvolume= 1"]

;�������v��Ȃ��̂���
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara04L <=100"]
;		[eval exp="sf.dummy_seopt_chara04L = sf.dummy_seopt_chara04L*1000"]
;	[endif]
	;�{�C�X���ʂ����ɖ߂�
;	[eval exp="kag.se[sf.chara04L_buf].volume2 = sf.dummy_seopt_chara04L"]
	[seopt buf="&sf.chara04L_buf" gvolume="&sf.dummy_seopt_chara04L" volume="&f.tmp_seopt_chara04L"]


	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume04L]

[endif]

	;�������Ă�񂾂�H�s�v�ł́H
;	[slider_delete name=chvolume04]
;	[call storage="system_config_srd.ks" target=*chvolume04]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara04 <=100"]
;		[eval exp="sf.dummy_seopt_chara04 = sf.dummy_seopt_chara04*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]


[s]
;-------------------------------------------------------------
;;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X05�J�b�g
*config_chara05_v
[unlocklink]
[if exp="sf.chara05_v == 1"]
	[button_chgimage num="&sf.bt_num_chara05" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara05_v = 0"]

	;����0��
	[seopt buf="&sf.chara05_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume05]
[else]
	[button_chgimage num="&sf.bt_num_chara05" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara05_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;���܍��킹
	[if exp="sf.dummy_seopt_chara05 <=100"]
		[eval exp="sf.dummy_seopt_chara05 = sf.dummy_seopt_chara05*1000"]
	[endif]
	;�{�C�X���ʂ����ɖ߂�
	[eval exp="kag.se[sf.chara05_buf].volume2 = sf.dummy_seopt_chara05"]

	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume05]

[endif]

;	[slider_delete name=chvolume05]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara05 <=100"]
;		[eval exp="sf.dummy_seopt_chara05 = sf.dummy_seopt_chara05*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]

[s]

;-------------------------------------------------------------
;;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X06�J�b�g
*config_chara06_v
[unlocklink]
[if exp="sf.chara06_v == 1"]
	[button_chgimage num="&sf.bt_num_chara06" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara06_v = 0"]

	;����0��
	[seopt buf="&sf.chara06_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume06]
[else]
	[button_chgimage num="&sf.bt_num_chara06" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara06_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;���܍��킹
	[if exp="sf.dummy_seopt_chara06 <=100"]
		[eval exp="sf.dummy_seopt_chara06 = sf.dummy_seopt_chara06*1000"]
	[endif]
	;�{�C�X���ʂ����ɖ߂�
	[eval exp="kag.se[sf.chara06_buf].volume2 = sf.dummy_seopt_chara06"]

	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume06]

[endif]

;	[slider_delete name=chvolume06]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara06 <=100"]
;		[eval exp="sf.dummy_seopt_chara06 = sf.dummy_seopt_chara06*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]

[s]

;-------------------------------------------------------------
;;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X07�J�b�g
*config_chara07_v
[unlocklink]
[if exp="sf.chara07_v == 1"]
	[button_chgimage num="&sf.bt_num_chara07" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara07_v = 0"]

	;����0��
	[seopt buf="&sf.chara07_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume07]
[else]
	[button_chgimage num="&sf.bt_num_chara07" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara07_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;���܍��킹
	[if exp="sf.dummy_seopt_chara07 <=100"]
		[eval exp="sf.dummy_seopt_chara07 = sf.dummy_seopt_chara07*1000"]
	[endif]
	;�{�C�X���ʂ����ɖ߂�
	[eval exp="kag.se[sf.chara07_buf].volume2 = sf.dummy_seopt_chara07"]

	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume07]

[endif]

;	[slider_delete name=chvolume07]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara07 <=100"]
;		[eval exp="sf.dummy_seopt_chara07 = sf.dummy_seopt_chara07*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]

[s]
;-------------------------------------------------------------
;;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X08�J�b�g
*config_chara08_v
[unlocklink]
[if exp="sf.chara08_v == 1"]
	[button_chgimage num="&sf.bt_num_chara08" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara08_v = 0"]

	;����0��
	[seopt buf="&sf.chara08_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume08]
[else]
	[button_chgimage num="&sf.bt_num_chara08" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara08_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;���܍��킹
	[if exp="sf.dummy_seopt_chara08 <=100"]
		[eval exp="sf.dummy_seopt_chara08 = sf.dummy_seopt_chara08*1000"]
	[endif]
	;�{�C�X���ʂ����ɖ߂�
	[eval exp="kag.se[sf.chara08_buf].volume2 = sf.dummy_seopt_chara08"]

	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume08]

[endif]

;	[slider_delete name=chvolume08]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara08 <=100"]
;		[eval exp="sf.dummy_seopt_chara08 = sf.dummy_seopt_chara08*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]

[s]
;-------------------------------------------------------------
;;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X09�J�b�g
*config_chara09_v
[unlocklink]
[if exp="sf.chara09_v == 1"]
	[button_chgimage num="&sf.bt_num_chara09" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara09_v = 0"]

	;����0��
	[seopt buf="&sf.chara09_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume09]
[else]
	[button_chgimage num="&sf.bt_num_chara09" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara09_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;���܍��킹
	[if exp="sf.dummy_seopt_chara09 <=100"]
		[eval exp="sf.dummy_seopt_chara09 = sf.dummy_seopt_chara09*1000"]
	[endif]
	;�{�C�X���ʂ����ɖ߂�
	[eval exp="kag.se[sf.chara09_buf].volume2 = sf.dummy_seopt_chara09"]

	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume09]

[endif]

;	[slider_delete name=chvolume09]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara09 <=100"]
;		[eval exp="sf.dummy_seopt_chara09 = sf.dummy_seopt_chara09*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]

[s]

;-------------------------------------------------------------
;;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X10�J�b�g
*config_chara10_v
[unlocklink]
[if exp="sf.chara10_v == 1"]
	[button_chgimage num="&sf.bt_num_chara10" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara10_v = 0"]

	;����0��
	[seopt buf="&sf.chara10_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume10]
[else]
	[button_chgimage num="&sf.bt_num_chara10" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara10_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;���܍��킹
	[if exp="sf.dummy_seopt_chara10 <=100"]
		[eval exp="sf.dummy_seopt_chara10 = sf.dummy_seopt_chara10*1000"]
	[endif]
	;�{�C�X���ʂ����ɖ߂�
	[eval exp="kag.se[sf.chara10_buf].volume2 = sf.dummy_seopt_chara10"]

	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume10]

[endif]

;	[slider_delete name=chvolume10]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara10 <=100"]
;		[eval exp="sf.dummy_seopt_chara10 = sf.dummy_seopt_chara10*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]

[s]

;-------------------------------------------------------------
;;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X11�J�b�g
*config_chara11_v
[unlocklink]
[if exp="sf.chara11_v == 1"]
	[button_chgimage num="&sf.bt_num_chara11" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara11_v = 0"]

	;����0��
	[seopt buf="&sf.chara11_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume11]
[else]
	[button_chgimage num="&sf.bt_num_chara11" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara11_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;���܍��킹
	[if exp="sf.dummy_seopt_chara11 <=100"]
		[eval exp="sf.dummy_seopt_chara11 = sf.dummy_seopt_chara11*1000"]
	[endif]
	;�{�C�X���ʂ����ɖ߂�
	[eval exp="kag.se[sf.chara11_buf].volume2 = sf.dummy_seopt_chara11"]

	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume11]

[endif]

;	[slider_delete name=chvolume10]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara11 <=100"]
;		[eval exp="sf.dummy_seopt_chara11 = sf.dummy_seopt_chara11*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]

[s]
;-------------------------------------------------------------
;;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X12�J�b�g
*config_chara12_v
[unlocklink]
[if exp="sf.chara12_v == 1"]
	[button_chgimage num="&sf.bt_num_chara12" graphic="cnf_smoll_off_off.png"]
	[eval exp="sf.chara12_v = 0"]

	;����0��
	[seopt buf="&sf.chara12_buf" gvolume=0]
	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume12]
[else]
	[button_chgimage num="&sf.bt_num_chara12" graphic="cnf_smoll_on_on.png"]
	[eval exp="sf.chara12_v = 1"]
	[eval exp="sf.mastergvolume= 1"]

	;���܍��킹
	[if exp="sf.dummy_seopt_chara12 <=100"]
		[eval exp="sf.dummy_seopt_chara12 = sf.dummy_seopt_chara12*1000"]
	[endif]
	;�{�C�X���ʂ����ɖ߂�
	[eval exp="kag.se[sf.chara12_buf].volume2 = sf.dummy_seopt_chara12"]

	;�X���C�_�[���ĕ`�悵�ɂ���
	[call storage="system_config_srd.ks" target=*chvolume12]

[endif]

;	[slider_delete name=chvolume10]
;	[call storage="system_config_srd.ks" target=*chvolume5]
;	;���܍��킹
;	[if exp="sf.dummy_seopt_chara12 <=100"]
;		[eval exp="sf.dummy_seopt_chara12 = sf.dummy_seopt_chara12*1000"]
;	[endif]
;
;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;	[if exp="tf.conf_default == 1"][return][endif]

[s]


;-------------------------------------------------------------
;���y�[�W�{�C�X�J�b�g
*config_v_unstop
[unlocklink]
[if exp="sf.v_stop == 0"]
	[freeimage layer="&tf.layer_vstop" page=fore]
	;[button_chgimage num="&sf."16 graphic="cnf_on.png"]
	[button_chgimage num="&sf.bt_num_v_stop" graphic="cnf_onoff"]
	[image left="&tf.cnf_vstop_x[0]" top="&tf.cnf_vstop_y[0]" storage="cnf_on.png" layer=8 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.v_stop = true"]
[else]
	[freeimage layer="&tf.layer_vstop" page=fore]
	;[button_chgimage num="&sf."16 graphic="cnf_off.png"]
	[button_chgimage num="&sf.bt_num_v_stop" graphic="cnf_onoff"]
	[image left="&tf.cnf_vstop_x[0]" top="&tf.cnf_vstop_y[0]" storage="cnf_off.png" layer=8 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.v_stop = false"]
[endif]
;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]


;-------------------------------------------------------------
;���y�[�W�{�C�X�Đ��I���҂�
*config_v_autowait
[unlocklink]
[if exp="sf.v_autowait == 0"]
	[freeimage layer="&tf.layer_vautowait" page=fore]
	;[button_chgimage num="&sf."17 graphic="cnf_on.png"]
	[button_chgimage num="&sf.bt_num_v_autowait" graphic="cnf_onoff"]
	[image left="&tf.cnf_vautowait_x[0]" top="&tf.cnf_vautowait_y[0]" storage="cnf_on.png" layer=9 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
	[eval exp="sf.v_autowait = true"]
[else]
	[freeimage layer="&tf.layer_vautowait" page=fore]
	;[button_chgimage num="&sf."17 graphic="cnf_off.png"]
	[button_chgimage num="&sf.bt_num_v_autowait" graphic="cnf_onoff"]
	[image left="&tf.cnf_vautowait_x[0]" top="&tf.cnf_vautowait_y[0]" storage="cnf_off.png" layer=9 page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
	[eval exp="sf.v_autowait = false"]
[endif]
;�f�t�H���g�ɖ߂��������Ȃ�return����
[if exp="tf.conf_default == 1"][return][endif]

[s]


;-------------------------------------------------------------
;///	;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X�J�b�g
;///	*config_chara01_loop
;///	[unlocklink]
;///	[if exp="sf.chara01_vl == 1"]
;///		[button_chgimage num="&sf."22 graphic="cnf_off_on_smoll.png"]
;///		[eval exp="sf.chara01_vl = 0"]
;///
;///		;����0��
;///		[seopt buf=5 gvolume=0]
;///
;///		;�X���C�_�[���ĕ`�悵�ɂ���
;///		[call storage="system_config_srd.ks" target=*chvolume01_loop]
;///
;///
;///	[else]
;///		[button_chgimage num="&sf."22 graphic="cnf_smoll_on_on.png"]
;///		[eval exp="sf.chara01_vl = 1"]
;///		[eval exp="sf.mastergvolume= 1"]
;///
;///		;���܍��킹
;///		[if exp="sf.dummy_seopt5 <=100"]
;///			[eval exp="sf.dummy_seopt5 = sf.dummy_seopt5*1000"]
;///		[endif]
;///		;�{�C�X���ʂ����ɖ߂�
;///		[eval exp="kag.se[5].volume2 = sf.dummy_seopt5"]
;///
;///		;�X���C�_�[���ĕ`�悵�ɂ���
;///		[call storage="system_config_srd.ks" target=*chvolume01_loop]
;///
;///	[endif]
;///
;///	;	[slider_delete name=chvolume01_lp]
;///	;	[call storage="system_config_srd.ks" target=*chvolume01_loop]
;///	;	;���܍��킹
;///	;	[if exp="sf.dummy_seopt5 <=100"]
;///	;		[eval exp="sf.dummy_seopt5 = sf.dummy_seopt5*1000"]
;///	;	[endif]
;///	;
;///	;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;///	;	[if exp="tf.conf_default == 1"][return][endif]
;///
;///	[s]




;-------------------------------------------------------------
;///;�@�@�@�@�@�@�@�@�@�@�L�����{�C�X02�J�b�g
;///*config_chara02_loop
;///[unlocklink]
;///[if exp="sf.chara02_vl == 1"]
;///	[button_chgimage num="&sf."24 graphic="cnf_off_on_smoll.png"]
;///	[eval exp="sf.chara02_vl = 0"]
;///
;///
;///	;����0��
;///	[seopt buf=7 gvolume=0]
;///
;///	;�X���C�_�[���ĕ`�悵�ɂ���
;///	[call storage="system_config_srd.ks" target=*chvolume02_loop]
;///
;///
;///
;///[else]
;///	[button_chgimage num="&sf."24 graphic="cnf_smoll_on_on.png"]
;///	[eval exp="sf.chara02_vl = 1"]
;///	[eval exp="sf.mastergvolume= 1"]
;///
;///	;���܍��킹
;///	[if exp="sf.dummy_seopt7 <=100"]
;///		[eval exp="sf.dummy_seopt7 = sf.dummy_seopt7*1000"]
;///	[endif]
;///	;�{�C�X���ʂ����ɖ߂�
;///	[eval exp="kag.se[7].volume2 = sf.dummy_seopt7"]
;///
;///	;�X���C�_�[���ĕ`�悵�ɂ���
;///	[call storage="system_config_srd.ks" target=*chvolume02_loop]
;///
;///[endif]
;///
;///;	[slider_delete name=chvolume02_lp]
;///;	[call storage="system_config_srd.ks" target=*chvolume02_loop]
;///;	;���܍��킹
;///;	[if exp="sf.dummy_seopt7 <=100"]
;///;		[eval exp="sf.dummy_seopt7 = sf.dummy_seopt7*1000"]
;///;	[endif]
;///
;///;	;�f�t�H���g�ɖ߂��������Ȃ�return����
;///;	[if exp="tf.conf_default == 1"][return][endif]
;///
;///
;///[s]






