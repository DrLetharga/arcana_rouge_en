;
; system_config.ks�c�R���t�B�O���
;

;
; �g�����F
;   [call storage="system_config.ks" target=*config_menu]
;
; ���ӎ����F
;   �]���T�u���[�`���ł̓�������̞x�R���g�p���Ă���
;   �]���T�u���[�`�����ŁA�E�N���b�N���̐ݒ��ύX���Ă���B�Ăяo�����Ō��̐ݒ�ɖ߂����Ɓi���d�v�j
;   �]�\�߁AConfig.tjs�̈ȉ��̍��ڂ��C�����邱��
;       numCharacterLayers    �c 4�ȏ�i�����j
;       characterMenu.visible �c false�ɕύX
;       displayMenu.visible   �c false�ɕύX
;
; �g�p���Ă���ϐ��F�ꕔ��opt_bg_normal.ma���ł��g�p���Ă���
;   tf.cnf_scr_x, tf.cnf_scr_y         �c �E�B���h�E�^�t���X�N���[���I��p�}�[�J�[�̍��W�i�z��j
;   tf.cnf_spdopt_x, tf.cnf_spdopt_y   �c �����\�����x�]�y�[�W���܂ő���}�[�J�[�̍��W
;   tf.cnf_spd2opt_x, tf.cnf_spd2opt_y �c ���Ǖ����\�����x�]�y�[�W���܂ő���}�[�J�[�̍��W
;

*config_menu

;---------------------------------------------------------------------
;�I����ԉ摜�̃��C��
;0�Ƃ�1�Ƃ�����g���ƃV�i���I���Ń��C���h��Ă�ꍇ�ɗh�ꂿ�Ⴄ�B�V�X�e�������C���������₷���H
;�����ő��₵���Ⴄ��redraw�Ƃ��V�X�e���Ԉړ��łǂ�ǂ񑝂����Ⴄ���炾�߂���
;[eval exp="sf.maxlayers = kag.numCharacterLayers + 7"]
[eval exp="tf.layer_skip      = kag.numCharacterLayers - 12"]
[eval exp="tf.layer_sel_skip  = kag.numCharacterLayers - 11"]
[eval exp="tf.layer_sel_auto  = kag.numCharacterLayers - 10"]
[eval exp="tf.layer_eskip     = kag.numCharacterLayers - 9"]
[eval exp="tf.layer_dialog    = kag.numCharacterLayers - 8"]
[eval exp="tf.layer_scr       = kag.numCharacterLayers - 7"]
[eval exp="tf.layer_rclick    = kag.numCharacterLayers - 6"]
[eval exp="tf.layer_edge      = kag.numCharacterLayers - 5"]
;	[eval exp="tf.layer_sysjump_conf  = kag.numCharacterLayers - 3"]
;	[eval exp="tf.layer_winRGB_value  = kag.numCharacterLayers - 2"]

[eval exp="tf.layer_vstop     = kag.numCharacterLayers - 4"]
[eval exp="tf.layer_vautowait = kag.numCharacterLayers - 3"]
;	[eval exp="tf.layer_sndall        = kag.numCharacterLayers - 4"]
;	[eval exp="tf.layer_sysjump       = kag.numCharacterLayers - 3"]
;	[eval exp="tf.layer_sysjump_conf  = kag.numCharacterLayers - 2"]
[eval exp="tf.layer_sysjump   = kag.numCharacterLayers - 2"]
[eval exp="sf.conf_fakemessage = kag.numCharacterLayers - 1"]
;---------------------------------------------------------------------



;����ʉ߂��ĂȂ��ˁB�R���t�B�O�����y�[�W�΍􂾂�
[if exp="tf.slider_on_snd == 1"]
		; �X���C�_�[����������
	;	[slider_delete name=bgmvolume]
	;	[slider_delete name=sevolume]
	;	[slider_delete name=chvolume01 cond="sf.bt_num_chara01 != void"]
	;	[slider_delete name=chvolume02 cond="sf.bt_num_chara02 != void"]
	;	[slider_delete name=chvolume03 cond="sf.bt_num_chara03 != void"]
	;	[slider_delete name=chvolume04 cond="sf.bt_num_chara04 != void"]
	;	[slider_delete name=chvolume05 cond="sf.bt_num_chara05 != void"]
	;;	@slider_delete name=chvolumeALL_loop
	;	[eval exp="tf.slider_on_snd = 0"]
	;���ꁪ����Ȃ��ăT�u���[�`���ĂԂق������肶���
	[call storage="system_config_srd.ks" target=*�����X���C�_�[����]
[endif]

*config_menu2


;SliderFuntion.tjs�Ŏg���B
;�e�X�g�{�C�X�Đ����邩�ǂ����̔���p�t���O���`�BSliderFuntion.tjs�Ŏg���B
[iscript]
var config_RGB = false;
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
//var config_loop01 = false;
[endscript]

;�I���{�^����clip�摜�������Ă���
[freeimage layer=1 page=fore]
[freeimage layer=2 page=fore]
[freeimage layer=3 page=fore]

; ��������̞x�R�Ɍ��݂̏�Ԃ�ۑ�
;[tempsave place=3]

;�R���t�B�O��ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
[rclick jump=true target="*config_return" storage="system_config_mes.ks" enabled=true]

;message1���Ƃǂ����Z�[�u���[�h�ړ����Ă�ƃX���C�_�[���o���肷��̂�3�ɂ��Ă����B�R���t�B�O�o�鎞��freeimage���Ƃ��Ȃ��Ƃ����Ȃ��̂��ȁH
[eval exp="tf.config_message = 'message3'"]


;���b�Z�[�W�n�ݒ�-----------------------------------------------------

;0 1 �X�L�b�v�{�^����\��������W�̔z��
;�Q�^�C�g���ԂňႤ����������cond���ꂵ���Ⴞ�߂�
[eval exp="tf.cnf_skip_x = [sf.conf_kidokuskip_x,sf.conf_midokuskip_x]" cond="tf.cnf_skip_x === void"]
[eval exp="tf.cnf_skip_y = [sf.conf_kidokuskip_y,sf.conf_midokuskip_y]" cond="tf.cnf_skip_y === void"]


;2 3 �I������X�L�b�v�{�^����\��������W�̔z��
[eval exp="tf.cnf_selskip_x = [sf.conf_selskip_on_x,sf.conf_selskip_off_x]" cond="tf.cnf_selskip_x === void"]
[eval exp="tf.cnf_selskip_y = [sf.conf_selskip_on_y,sf.conf_selskip_off_y]" cond="tf.cnf_selskip_y === void"]

;4 5 �I������I�[�g�{�^����\��������W�̔z��
[eval exp="tf.cnf_selauto_x = [sf.conf_selauto_on_x,sf.conf_selauto_off_x]" cond="tf.cnf_selauto_x === void"]
[eval exp="tf.cnf_selauto_y = [sf.conf_selauto_on_y,sf.conf_selauto_off_y]" cond="tf.cnf_selauto_y === void"]

;6 7 �G�t�F�N�g�̃X�L�b�v�̍��W��z��ŗp��
[eval exp="tf.cnf_eskip_x = [sf.conf_effectskip_on_x,sf.conf_effectskip_off_x]" cond="tf.cnf_eskip_x === void"]
[eval exp="tf.cnf_eskip_y = [sf.conf_effectskip_on_y,sf.conf_effectskip_off_y]" cond="tf.cnf_eskip_y === void"]

;8 9 �m�F�_�C�����O�I���I�t�̍��W��z��ŗp��
[eval exp="tf.cnf_dialog_x = [sf.conf_dialog_on_x,sf.conf_dialog_off_x]" cond="tf.cnf_dialog_x === void"]
[eval exp="tf.cnf_dialog_y = [sf.conf_dialog_on_y,sf.conf_dialog_off_y]" cond="tf.cnf_dialog_y === void"]



;10 11 12 �E�B���h�E�^�t���X�N���[���I��p�}�[�J�[�̍��W��z��ŗp��
[eval exp="tf.cnf_scr_x = [sf.conf_win_small_x,sf.conf_win_default_x,sf.conf_full_x]" cond="tf.cnf_scr_x === void"]
[eval exp="tf.cnf_scr_y = [sf.conf_win_small_y,sf.conf_win_default_y,sf.conf_full_y]" cond="tf.cnf_scr_y === void"]

;13 14 15 �E�N���b�N���蓖�Ă̍��W��z��ŗp��
[eval exp="tf.cnf_rclick_x = [sf.conf_rclick_winhide_x,sf.conf_rclick_callsave_x,sf.conf_rclick_callconf_x]" cond="tf.cnf_rclick_x === void"]
[eval exp="tf.cnf_rclick_y = [sf.conf_rclick_winhide_y,sf.conf_rclick_callsave_y,sf.conf_rclick_callconf_y]" cond="tf.cnf_rclick_y === void"]

;16 17 �e�L�X�g�����I���I�t�̍��W��z��ŗp��
[eval exp="tf.cnf_edge_x = [sf.conf_txtedge_on_x,sf.conf_txtedge_off_x]" cond="tf.cnf_edge_x === void"]
[eval exp="tf.cnf_edge_y = [sf.conf_txtedge_on_y,sf.conf_txtedge_off_y]" cond="tf.cnf_edge_y === void"]


; �e�L�X�g���x�X���C�_�[�̍��W��z��ŗp��
[eval exp="tf.cnf_srdmes_x = [sf.conf_srd_midoku_x,sf.conf_srd_auto_x]" cond="tf.cnf_srdmes_x === void"]
[eval exp="tf.cnf_srdmes_y = [sf.conf_srd_midoku_y,sf.conf_srd_auto_y]" cond="tf.cnf_srdmes_y === void"]

; �e�L�X�gRGB�X���C�_�[�̍��W��z��ŗp��
[eval exp="tf.cnf_srdkidoku_x = [sf.conf_srd_mi_R_x,sf.conf_srd_mi_G_x,sf.conf_srd_mi_B_x,sf.conf_srd_ki_R_x,sf.conf_srd_ki_G_x,sf.conf_srd_ki_B_x]" cond="tf.cnf_srdkidoku_x === void"]
[eval exp="tf.cnf_srdkidoku_y = [sf.conf_srd_mi_R_y,sf.conf_srd_mi_G_y,sf.conf_srd_mi_B_y,sf.conf_srd_ki_R_y,sf.conf_srd_ki_G_y,sf.conf_srd_ki_B_y]" cond="tf.cnf_srdkidoku_y === void"]

; ���b�Z�[�W���ߓx�X���C�_�[�̍��W��z��ŗp��
[eval exp="tf.cnf_srdwin_x = [sf.conf_srd_opa_x]" cond="tf.cnf_srdwin_x === void"]
[eval exp="tf.cnf_srdwin_y = [sf.conf_srd_opa_y]" cond="tf.cnf_srdwin_y === void"]

; �T���v���E�B���h�E�̍��W�Ƒ傫��
[eval exp="tf.sys_samplewin_x = sf.sys_samplewin_x" cond="tf._samplewin_x === void"]
;[eval exp="tf.sys_samplewin_y = sf.sys_samplewin_y" cond="tf._samplewin_y === void"]
[eval exp="tf.sys_samplewin_y = sf.sys_samplewin_y" cond="tf._samplewin_y === void"]
[eval exp="tf.sys_samplewin_w = sf.sys_samplewin_w" cond="tf._samplewin_w === void"]
[eval exp="tf.sys_samplewin_h = sf.sys_samplewin_h" cond="tf._samplewin_h === void"]







;�T�E���h�n�ݒ�-----------------------------------------------------
;
;18 19 20  BGMSE�{�C�X�I���I�t�{�^���̍��W��z��ŗp��
;[eval exp="tf.onoff_x = [sf.conf_bgm_onoff_x,sf.conf_se_onoff_x,sf.conf_vo1_onoff_x,sf.conf_vo2_onoff_x,sf.conf_vo3_onoff_x,sf.conf_vo4_onoff_x,sf.conf_vo5_onoff_x,sf.conf_vo6_onoff_x]" cond="tf.onoff_x === void"]
;[eval exp="tf.onoff_y = [sf.conf_bgm_onoff_y,sf.conf_se_onoff_y,sf.conf_vo1_onoff_y,sf.conf_vo2_onoff_y,sf.conf_vo3_onoff_y,sf.conf_vo4_onoff_y,sf.conf_vo5_onoff_y,sf.conf_vo6_onoff_y]" cond="tf.onoff_y === void"]
[eval exp="tf.onoff_x = [sf.conf_bgm_onoff_x,sf.conf_se_onoff_x,sf.conf_vo1_onoff_x,sf.conf_vo2_onoff_x,sf.conf_vo3_onoff_x,sf.conf_vo4_onoff_x,sf.conf_vo5_onoff_x,sf.conf_vo6_onoff_x,sf.conf_vo7_onoff_x,sf.conf_vo8_onoff_x,sf.conf_vo9_onoff_x,sf.conf_vo10_onoff_x,sf.conf_vo11_onoff_x,sf.conf_vo12_onoff_x]"]
[eval exp="tf.onoff_y = [sf.conf_bgm_onoff_y,sf.conf_se_onoff_y,sf.conf_vo1_onoff_y,sf.conf_vo2_onoff_y,sf.conf_vo3_onoff_y,sf.conf_vo4_onoff_y,sf.conf_vo5_onoff_y,sf.conf_vo6_onoff_y,sf.conf_vo7_onoff_y,sf.conf_vo8_onoff_y,sf.conf_vo9_onoff_y,sf.conf_vo10_onoff_y,sf.conf_vo11_onoff_y,sf.conf_vo12_onoff_y]"]

;	;��������Ȃ���xy�t�@�C���ł���`���@�����͔�ѐ�̃{�^���z�u�������Ă邾��������
;	;cond�����ƋN�������܂܃^�C�g���ړ������Ƃ����߂����炱��ɂ͕t���Ȃ�
;	;�g��Ȃ����W�͓���Ȃ��Ă��������H
;	;�A���e�A�@3�L����+1
;	[if    exp="sf.gameNo == 1"]
;		[eval exp="tf.onoff_x = [sf.conf_bgm_onoff_x,sf.conf_se_onoff_x,sf.conf_vo1_onoff_x,sf.conf_vo2_onoff_x,sf.conf_vo3_onoff_x,sf.conf_vo4_onoff_x]"]
;		[eval exp="tf.onoff_y = [sf.conf_bgm_onoff_y,sf.conf_se_onoff_y,sf.conf_vo1_onoff_y,sf.conf_vo2_onoff_y,sf.conf_vo3_onoff_y,sf.conf_vo4_onoff_y]"]
;	;�r�A���J�@2�L����+1
;	;�o�b�t�@451���ォ�珇�ɔz�u�����͂�
;	[elsif exp="sf.gameNo == 2"]
;		[eval exp="tf.onoff_x = [sf.conf_bgm_onoff_x,sf.conf_se_onoff_x,sf.conf_vo4_onoff_x,sf.conf_vo5_onoff_x,sf.conf_vo1_onoff_x]"]
;		[eval exp="tf.onoff_y = [sf.conf_bgm_onoff_y,sf.conf_se_onoff_y,sf.conf_vo4_onoff_y,sf.conf_vo5_onoff_y,sf.conf_vo1_onoff_y]"]
;	[endif]



;21 22 ���y�[�W���{�C�X��~�̍��W��z��ŗp�ӁB
[eval exp="tf.cnf_vstop_x = [sf.conf_vstop_on_x,sf.conf_vstop_off_x]" cond="tf.cnf_vstop_x === void"]
[eval exp="tf.cnf_vstop_y = [sf.conf_vstop_on_y,sf.conf_vstop_off_y]" cond="tf.cnf_vstop_y === void"]

;23 24 ���y�[�W���{�C�X�Đ��I���҂��̍��W��z��ŗp�ӁB
[eval exp="tf.cnf_vautowait_x = [sf.conf_vautowait_on_x,sf.conf_vautowait_off_x]" cond="tf.cnf_vautowait_x === void"]
[eval exp="tf.cnf_vautowait_y = [sf.conf_vautowait_on_y,sf.conf_vautowait_off_y]" cond="tf.cnf_vautowait_y === void"]


; �T�E���h�X���C�_�[�̍��W��z��ŗp��
;[eval exp="tf.cnf_srdsnd_x = [sf.conf_srd_bgm_x,sf.conf_srd_se_x,sf.conf_srd_vo1_x,sf.conf_srd_vo2_x,sf.conf_srd_vo3_x,sf.conf_srd_vo4_x,sf.conf_srd_vo5_x,sf.conf_srd_vo6_x]" cond="tf.cnf_srdsnd_x === void"]
;[eval exp="tf.cnf_srdsnd_y = [sf.conf_srd_bgm_y,sf.conf_srd_se_y,sf.conf_srd_vo1_y,sf.conf_srd_vo2_y,sf.conf_srd_vo3_y,sf.conf_srd_vo4_y,sf.conf_srd_vo5_y,sf.conf_srd_vo6_y]" cond="tf.cnf_srdsnd_y === void"]
[eval exp="tf.cnf_srdsnd_x = [sf.conf_srd_bgm_x,sf.conf_srd_se_x,sf.conf_srd_vo1_x,sf.conf_srd_vo2_x,sf.conf_srd_vo3_x,sf.conf_srd_vo4_x,sf.conf_srd_vo5_x,sf.conf_srd_vo6_x,sf.conf_srd_vo7_x,sf.conf_srd_vo8_x,sf.conf_srd_vo9_x,sf.conf_srd_vo10_x,sf.conf_srd_vo11_x,sf.conf_srd_vo12_x]"]
[eval exp="tf.cnf_srdsnd_y = [sf.conf_srd_bgm_y,sf.conf_srd_se_y,sf.conf_srd_vo1_y,sf.conf_srd_vo2_y,sf.conf_srd_vo3_y,sf.conf_srd_vo4_y,sf.conf_srd_vo5_y,sf.conf_srd_vo6_y,sf.conf_srd_vo7_y,sf.conf_srd_vo8_y,sf.conf_srd_vo9_y,sf.conf_srd_vo10_y,sf.conf_srd_vo11_y,sf.conf_srd_vo12_y]"]

;	;��������Ȃ���xy�t�@�C���ł���`��
;	;cond�����ƋN�������܂܃^�C�g���ړ������Ƃ����߂����炱��ɂ͕t���Ȃ�
;	;�g��Ȃ����W�͓���Ȃ��Ă��������H
;	;�A���e�A�@3�L����+1
;	[if    exp="sf.gameNo == 1"]
;		[eval exp="tf.cnf_srdsnd_x = [sf.conf_srd_bgm_x,sf.conf_srd_se_x,sf.conf_srd_vo1_x,sf.conf_srd_vo2_x,sf.conf_srd_vo3_x,sf.conf_srd_vo4_x]"]
;		[eval exp="tf.cnf_srdsnd_y = [sf.conf_srd_bgm_y,sf.conf_srd_se_y,sf.conf_srd_vo1_y,sf.conf_srd_vo2_y,sf.conf_srd_vo3_y,sf.conf_srd_vo4_y]"]
;	;�r�A���J�@2�L����+1
;	;�o�b�t�@451���ォ�珇�ɔz�u�����͂�
;	[elsif exp="sf.gameNo == 2"]
;		[eval exp="tf.cnf_srdsnd_x = [sf.conf_srd_bgm_x,sf.conf_srd_se_x,sf.conf_srd_vo4_x,sf.conf_srd_vo5_x,sf.conf_srd_vo1_x]"]
;		[eval exp="tf.cnf_srdsnd_y = [sf.conf_srd_bgm_y,sf.conf_srd_se_y,sf.conf_srd_vo4_y,sf.conf_srd_vo5_y,sf.conf_srd_vo1_y]"]
;	[endif]


;���ʐݒ�-------------------------------------------------------------

;�ݒ�̏������̍��W��z��ŗp�ӁB
[eval exp="tf.cnf_reset_x = [sf.conf_init_x]" cond="tf.cnf_reset_x === void"]
[eval exp="tf.cnf_reset_y = [sf.conf_init_y]" cond="tf.cnf_reset_y === void"]




;//	; �y�[�W�p�{�^����\��������W�̔z��
;//	[eval exp="tf.cnf_page_x = [1120]" cond="tf.cnf_page_x === void"]
;//	[eval exp="tf.cnf_page_y = [220, 290, 360]" cond="tf.cnf_page_y === void"]

; �V�X�e���n��ʈړ��p�{�^�����W�̔z��
[eval exp="tf.sysjump_x = [sf.sysjump_title_x,sf.sysjump_save_x,sf.sysjump_load_x,sf.sysjump_conf_x,sf.sysjump_menu_x,sf.sysjump_game_x]" cond="tf.sysjump_x === void"]
[eval exp="tf.sysjump_y = [sf.sysjump_title_y,sf.sysjump_save_y,sf.sysjump_load_y,sf.sysjump_conf_y,sf.sysjump_menu_y,sf.sysjump_game_y]" cond="tf.sysjump_y === void"]


;---------------------------------------------------------------------


; ���݁A�\�����̃y�[�W�i���߂ăZ�[�u��ʂ��Ăяo���ꂽ��O��������j
;[eval exp="sf.cnf_now_page = 0" cond="sf.cnf_now_page === void"]

; �������C����}�~
[history output=false enabled=false]
; �S���b�Z�[�W���C���\��ʁA�S�O�i���C���\��ʂ��\���ɂ���
[call storage="system_subroutine.ks" target=*sub_layernoshow]

; �J�����g�̃��b�Z�[�W���C�����O���t�B�J���{�^���\���p���C���ɕύX
[current layer="&tf.config_message" page=fore]

; �O���t�B�J���{�^���\���p���C���̑�����ݒ�
[position layer="&tf.config_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]

; �w�i���C���\��ʂɃR���t�B�O��ʗp�摜��ǂݍ��݁A�\��
[image  storage="&sf.addgameID + 'bg_conf_mes'"    layer=base page=fore]
[pimage storage="&sf.addgameID + 'bg_conf_mes_t'" layer=base page=fore visible=true dx=0 dy=0]
[pimage storage="&sf.conf_chname01" layer=base page=fore visible=true dx="&sf.conf_chname01_x" dy="&sf.conf_chname01_y" cond="sf.conf_chname01 != void"]
[pimage storage="&sf.conf_chname02" layer=base page=fore visible=true dx="&sf.conf_chname02_x" dy="&sf.conf_chname02_y" cond="sf.conf_chname02 != void"]
[pimage storage="&sf.conf_chname03" layer=base page=fore visible=true dx="&sf.conf_chname03_x" dy="&sf.conf_chname03_y" cond="sf.conf_chname03 != void"]
[pimage storage="&sf.conf_chname04" layer=base page=fore visible=true dx="&sf.conf_chname04_x" dy="&sf.conf_chname04_y" cond="sf.conf_chname04 != void"]
[pimage storage="&sf.conf_chname05" layer=base page=fore visible=true dx="&sf.conf_chname05_x" dy="&sf.conf_chname05_y" cond="sf.conf_chname05 != void"]
[pimage storage="&sf.conf_chname06" layer=base page=fore visible=true dx="&sf.conf_chname06_x" dy="&sf.conf_chname06_y" cond="sf.conf_chname06 != void"]
[pimage storage="&sf.conf_chname07" layer=base page=fore visible=true dx="&sf.conf_chname07_x" dy="&sf.conf_chname07_y" cond="sf.conf_chname07 != void"]
[pimage storage="&sf.conf_chname08" layer=base page=fore visible=true dx="&sf.conf_chname08_x" dy="&sf.conf_chname08_y" cond="sf.conf_chname08 != void"]
[pimage storage="&sf.conf_chname09" layer=base page=fore visible=true dx="&sf.conf_chname09_x" dy="&sf.conf_chname09_y" cond="sf.conf_chname09 != void"]
[pimage storage="&sf.conf_chname10" layer=base page=fore visible=true dx="&sf.conf_chname10_x" dy="&sf.conf_chname10_y" cond="sf.conf_chname10 != void"]

;�擾�����t�@�C���l�[����9�����������āB
[iscript]
	var str = sf.�V�X�e���o�[�W�������;
	var vernum_ch1 = str.charAt(0);
	var vernum_ch2 = str.charAt(1);
	var vernum_ch3 = str.charAt(2);
	var vernum_ch4 = str.charAt(3);
	var vernum_ch5 = str.charAt(4);
[endscript]


;�o�[�W�������l�p�̂����W�ŏ��̂�����`
;[eval exp="tf.vernum_x= 1168"]
;�w�i�Ƀo�[�W�����摜��\�荞��
[pimage storage="versionbox_base" layer=base page=fore visible=true dx="&sf.conf_sysver_x" dy="&sf.conf_sysver_y"]
[pimage storage="&'vernum_' + (vernum_ch1) + '.png'" layer=base page=fore visible=true dx="&sf.conf_sysver_num1_x" dy="&sf.conf_sysver_num_y"]
[pimage storage="vernum_�h�b�g" layer=base page=fore visible=true                      dx="&sf.conf_sysver_dot1_x" dy="&sf.conf_sysver_num_y"]
[pimage storage="&'vernum_' + (vernum_ch3) + '.png'" layer=base page=fore visible=true dx="&sf.conf_sysver_num2_x" dy="&sf.conf_sysver_num_y"]
[pimage storage="vernum_�h�b�g" layer=base page=fore visible=true                      dx="&sf.conf_sysver_dot2_x" dy="&sf.conf_sysver_num_y"]
[pimage storage="&'vernum_' + (vernum_ch5) + '.png'" layer=base page=fore visible=true dx="&sf.conf_sysver_num3_x" dy="&sf.conf_sysver_num_y"]


[pimage storage="&sf.addgameID + 'window_cnf_base'" layer=base page=fore visible=true dx="&sf.sys_samplewin_base_x" dy="&sf.sys_samplewin_base_y"]

;���b�Z�[�W�n�{�^��---------------------------------------------------


;0 �X�L�b�v�̃`�F�b�N�}�[�N�B���X�ׂ�����`��AfterInit.tjs�ł��Ă�B
[if exp="sf.allskip"]
	[freeimage layer=0 page=fore]
	;���ǂ��X�L�b�v�I���Ȃ̂Ń{�^�������ǃI�t�A���ǃI����
	;[locate x="&tf.cnf_skip_x[0]" y="&tf.cnf_skip_y[0]"][button graphic="cnf_midokuskip.png" storage="system_config_btch.ks" target=*config_skipall]
	[locate   x="&tf.cnf_skip_x[0]"   y="&tf.cnf_skip_y[0]"][button graphic="cnf_kidoku_midoku" storage="system_config_btch.ks" target=*config_skipall]
	[image left="&tf.cnf_skip_x[0]" top="&tf.cnf_skip_y[0]" storage="cnf_midokuskip.png" layer="&tf.layer_skip" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
[else]
	[freeimage layer=0 page=fore]
	;���ǂ��X�L�b�v�I�t�Ȃ̂Ń{�^�������ǃI���A���ǂɃI�t
	;[locate x="&tf.cnf_skip_x[0]" y="&tf.cnf_skip_y[0]"][button graphic="cnf_kidokuskip.png" storage="system_config_btch.ks" target=*config_skipall]
	[locate   x="&tf.cnf_skip_x[0]"   y="&tf.cnf_skip_y[0]"][button graphic="cnf_kidoku_midoku" storage="system_config_btch.ks" target=*config_skipall]
	[image left="&tf.cnf_skip_x[0]" top="&tf.cnf_skip_y[0]" storage="cnf_kidokuskip.png" layer="&tf.layer_skip" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
[endif]



;1  �f�t�H�̓I�t
[if exp="sf.sel_skip == 1"]
	[freeimage layer=1 page=fore]
	;�I������X�L�b�v�{�^���I�t�Ȃ̂Ń{�^�����I���I�t�A�I���I�t
	;[locate x="&tf.cnf_selskip_x[0]" y="&tf.cnf_selskip_y[0]"][button graphic="cnf_on.png" storage="system_config_btch.ks" target=*config_selskip]
	[locate   x="&tf.cnf_selskip_x[0]"   y="&tf.cnf_selskip_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_selskip]
	[image left="&tf.cnf_selskip_x[0]" top="&tf.cnf_selskip_y[0]" storage="cnf_on.png" layer="&tf.layer_sel_skip" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
[else]
	[freeimage layer=1 page=fore]
	;�I������X�L�b�v�{�^���I���Ȃ̂Ń{�^�����I���I�t�A�I�t�I����
	;[locate x="&tf.cnf_selskip_x[0]" y="&tf.cnf_selskip_y[0]"][button graphic="cnf_off.png" storage="system_config_btch.ks" target=*config_selskip]
	[locate   x="&tf.cnf_selskip_x[0]"   y="&tf.cnf_selskip_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_selskip]
	[image left="&tf.cnf_selskip_x[0]" top="&tf.cnf_selskip_y[0]" storage="cnf_off.png" layer="&tf.layer_sel_skip" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
[endif]

;2  �f�t�H�̓I�t
[if exp="sf.sel_auto == 1"]
	[freeimage layer=2 page=fore]
	;�I������I�[�g�{�^���I�t�Ȃ̂Ń{�^�����I���I�t�A�I���I�t
	;[locate x="&tf.cnf_selauto_x[0]" y="&tf.cnf_selauto_y[0]"][button graphic="cnf_on.png" storage="system_config_btch.ks" target=*config_selauto]
	[locate   x="&tf.cnf_selauto_x[0]"   y="&tf.cnf_selauto_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_selauto]
	[image left="&tf.cnf_selauto_x[0]" top="&tf.cnf_selauto_y[0]" storage="cnf_on.png" layer="&tf.layer_sel_auto" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
[else]
	[freeimage layer=2 page=fore]
	;�I������I�[�g�{�^���I���Ȃ̂Ń{�^�����I���I�t�A�I�t�I����
	;[locate x="&tf.cnf_selauto_x[0]" y="&tf.cnf_selauto_y[0]"][button graphic="cnf_off.png" storage="system_config_btch.ks" target=*config_selauto]
	[locate   x="&tf.cnf_selauto_x[0]"   y="&tf.cnf_selauto_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_selauto]
	[image left="&tf.cnf_selauto_x[0]" top="&tf.cnf_selauto_y[0]" storage="cnf_off.png" layer="&tf.layer_sel_auto" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
[endif]


;3 �G�t�F�N�g�B first.ks�ŃI���ɂ��Ă���B
[if exp="sf.efect"]
	[freeimage layer=3 page=fore]
	;�G�t�F�N�g�I���Ȃ̂Ń{�^�����I��-�I���A�I�t�|�I�t
	;[locate x="&tf.cnf_eskip_x[0]" y="&tf.cnf_eskip_y[0]"][button graphic="cnf_on.png" storage="system_config_btch.ks" target=*config_efectskip]
	[locate   x="&tf.cnf_eskip_x[0]"   y="&tf.cnf_eskip_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_efectskip]
	[image left="&tf.cnf_eskip_x[0]" top="&tf.cnf_eskip_y[0]" storage="cnf_on.png" layer="&tf.layer_eskip" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
[else]
	[freeimage layer=3 page=fore]
	;�G�t�F�N�g�I�t�Ȃ̂Ń{�^�����I��-�I�t�A�I�t�|�I��
	;[locate x="&tf.cnf_eskip_x[0]" y="&tf.cnf_eskip_y[0]"][button graphic="cnf_off.png" storage="system_config_btch.ks" target=*config_efectskip]
	[locate   x="&tf.cnf_eskip_x[0]"   y="&tf.cnf_eskip_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_efectskip]
	[image left="&tf.cnf_eskip_x[0]" top="&tf.cnf_eskip_y[0]" storage="cnf_off.png" layer="&tf.layer_eskip" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
[endif]

;4 �m�F�_�C�����O�I���I�t�B first.ks�ŃI���ɂ��Ă���B
[if exp="sf.dialog_on"]
	[freeimage layer=4 page=fore]
	;�G�t�F�N�g�I���Ȃ̂Ń{�^�����I��-�I���A�I�t�|�I�t
	;[locate x="&tf.cnf_dialog_x[0]" y="&tf.cnf_dialog_y[0]"][button graphic="cnf_on.png" storage="system_config_btch.ks" target=*config_dialog]
	[locate   x="&tf.cnf_dialog_x[0]"   y="&tf.cnf_dialog_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_dialog]
	[image left="&tf.cnf_dialog_x[0]" top="&tf.cnf_dialog_y[0]" storage="cnf_on.png" layer="&tf.layer_dialog" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
[else]
	[freeimage layer=4 page=fore]
	;�G�t�F�N�g�I�t�Ȃ̂Ń{�^�����I��-�I�t�A�I�t�|�I��
	;[locate x="&tf.cnf_dialog_x[0]" y="&tf.cnf_dialog_y[0]"][button graphic="cnf_off.png" storage="system_config_btch.ks" target=*config_dialog]
	[locate   x="&tf.cnf_dialog_x[0]"   y="&tf.cnf_dialog_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_dialog]
	[image left="&tf.cnf_dialog_x[0]" top="&tf.cnf_dialog_y[0]" storage="cnf_off.png" layer="&tf.layer_dialog" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
[endif]

;5 6 7 �E�B���h�E�^�t���X�N���[����Ԃ̃`�F�b�N�}�[�N�p�{�^����z�u
;1 �t���X�N���[��
;2 1024*768
;3 800*600
;[if exp="kag.fullScreen"]
[if exp="sf.conf_winsize == 3"]
	[freeimage layer=5 page=fore]
	[locate x="&tf.cnf_scr_x[0]" y="&tf.cnf_scr_y[0]"][button graphic="cnf_win_small.png"   storage="system_config_btch.ks" target=*config_win_small   exp="sf.conf_winsize = 1"]
	[locate x="&tf.cnf_scr_x[1]" y="&tf.cnf_scr_y[1]"][button graphic="cnf_win_default.png" storage="system_config_btch.ks" target=*config_win_default exp="sf.conf_winsize = 2"]
	;[locate x="&tf.cnf_scr_x[2]" y="&tf.cnf_scr_y[2]"][button graphic="cnf_win_full.png"     storage="system_config_btch.ks" target=*config_fullscreen  exp="sf.conf_winsize = 3"]
	[locate   x="&tf.cnf_scr_x[2]"   y="&tf.cnf_scr_y[2]"][button graphic="cnf_win" storage="system_config_btch.ks" target=*config_fullscreen  exp="sf.conf_winsize = 3"]
	[image left="&tf.cnf_scr_x[2]" top="&tf.cnf_scr_y[2]" storage="cnf_win_full.png" layer="&tf.layer_scr" page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_win_cliptop" clipwidth="&sf.cnf_win_clipwidth" clipheight="&sf.cnf_win_clipheight" opacity=255]

[elsif exp="sf.conf_winsize == 2"]
	[freeimage layer=5 page=fore]
	[locate x="&tf.cnf_scr_x[0]" y="&tf.cnf_scr_y[0]"][button graphic="cnf_win_small.png"   storage="system_config_btch.ks" target=*config_win_small   exp="sf.conf_winsize = 1"]
	;[locate x="&tf.cnf_scr_x[1]" y="&tf.cnf_scr_y[1]"][button graphic="cnf_win_default.png"  storage="system_config_btch.ks" target=*config_win_default exp="sf.conf_winsize = 2"]
	[locate   x="&tf.cnf_scr_x[1]"   y="&tf.cnf_scr_y[1]"][button graphic="cnf_win" storage="system_config_btch.ks" target=*config_win_default exp="sf.conf_winsize = 2"]
	[image left="&tf.cnf_scr_x[1]" top="&tf.cnf_scr_y[1]" storage="cnf_win_default.png" layer="&tf.layer_scr" page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_win_cliptop" clipwidth="&sf.cnf_win_clipwidth" clipheight="&sf.cnf_win_clipheight" opacity=255]
	[locate x="&tf.cnf_scr_x[2]" y="&tf.cnf_scr_y[2]"][button graphic="cnf_win_full.png"    storage="system_config_btch.ks" target=*config_fullscreen  exp="sf.conf_winsize = 3"]
[elsif exp="sf.conf_winsize == 1"]
	[freeimage layer=5 page=fore]
	;[locate x="&tf.cnf_scr_x[0]" y="&tf.cnf_scr_y[0]"][button graphic="cnf_win_small.png"    storage="system_config_btch.ks" target=*config_win_small   exp="sf.conf_winsize = 1"]
	[locate   x="&tf.cnf_scr_x[0]"   y="&tf.cnf_scr_y[0]"][button graphic="cnf_win" storage="system_config_btch.ks" target=*config_win_small   exp="sf.conf_winsize = 1"]
	[image left="&tf.cnf_scr_x[0]" top="&tf.cnf_scr_y[0]" storage="cnf_win_small.png" layer="&tf.layer_scr" page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_win_cliptop" clipwidth="&sf.cnf_win_clipwidth" clipheight="&sf.cnf_win_clipheight" opacity=255]
	[locate x="&tf.cnf_scr_x[1]" y="&tf.cnf_scr_y[1]"][button graphic="cnf_win_default.png" storage="system_config_btch.ks" target=*config_win_default exp="sf.conf_winsize = 2"]
	[locate x="&tf.cnf_scr_x[2]" y="&tf.cnf_scr_y[2]"][button graphic="cnf_win_full.png"    storage="system_config_btch.ks" target=*config_fullscreen  exp="sf.conf_winsize = 3"]
[endif]



;8 9 10 �E�N���b�N���蓖�Ẵ`�F�b�N�}�[�N�p�{�^����z�u
;1 �E�B���h�E�B��
;2 �Z�[�u�Ăяo��
;3 �R���t�B�O�Ăяo��
;[if exp="kag.fullScreen"]
[if exp="sf.conf_rclick == 1"]
	[freeimage layer=6 page=fore]
	;[locate x="&tf.cnf_rclick_x[0]" y="&tf.cnf_rclick_y[0]"][button graphic="conf_rclick_hide.png"  storage="system_config_btch.ks" target=*config_rclick_hide exp="sf.conf_rclick = 1"]
	[locate   x="&tf.cnf_rclick_x[0]"   y="&tf.cnf_rclick_y[0]"][button graphic="cnf_rclick" storage="system_config_btch.ks" target=*config_rclick_hide exp="sf.conf_rclick = 1"]
	[image left="&tf.cnf_rclick_x[0]" top="&tf.cnf_rclick_y[0]" storage="cnf_rclick_hide.png" layer="&tf.layer_rclick" page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_rclick_cliptop" clipwidth="&sf.cnf_rclick_clipwidth" clipheight="&sf.cnf_rclick_clipheight" opacity=255]
	[locate x="&tf.cnf_rclick_x[1]" y="&tf.cnf_rclick_y[1]"][button graphic="cnf_rclick_save.png" storage="system_config_btch.ks" target=*config_rclick_save exp="sf.conf_rclick = 2"]
	[locate x="&tf.cnf_rclick_x[2]" y="&tf.cnf_rclick_y[2]"][button graphic="cnf_rclick_conf.png" storage="system_config_btch.ks" target=*config_rclick_conf exp="sf.conf_rclick = 3"]
[elsif exp="sf.conf_rclick == 2"]
	[freeimage layer=6 page=fore]
	[locate x="&tf.cnf_rclick_x[0]" y="&tf.cnf_rclick_y[0]"][button graphic="cnf_rclick_hide.png" storage="system_config_btch.ks" target=*config_rclick_hide exp="sf.conf_rclick = 1"]
	;[locate x="&tf.cnf_rclick_x[1]" y="&tf.cnf_rclick_y[0]"][button graphic="cnf_rclick_save.png"  storage="system_config_btch.ks" target=*config_rclick_save exp="sf.conf_rclick = 2"]
	[locate   x="&tf.cnf_rclick_x[1]"   y="&tf.cnf_rclick_y[1]"][button graphic="cnf_rclick"  storage="system_config_btch.ks" target=*config_rclick_save exp="sf.conf_rclick = 2"]
	[image left="&tf.cnf_rclick_x[1]" top="&tf.cnf_rclick_y[1]" storage="cnf_rclick_save.png" layer="&tf.layer_rclick" page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_rclick_cliptop" clipwidth="&sf.cnf_rclick_clipwidth" clipheight="&sf.cnf_rclick_clipheight" opacity=255]
	[locate x="&tf.cnf_rclick_x[2]" y="&tf.cnf_rclick_y[2]"][button graphic="cnf_rclick_conf.png" storage="system_config_btch.ks" target=*config_rclick_conf exp="sf.conf_rclick = 3"]
[elsif exp="sf.conf_rclick == 3"]
	[freeimage layer=6 page=fore]
	[locate x="&tf.cnf_rclick_x[0]" y="&tf.cnf_rclick_y[0]"][button graphic="cnf_rclick_hide.png" storage="system_config_btch.ks" target=*config_rclick_hide exp="sf.conf_rclick = 1"]
	[locate x="&tf.cnf_rclick_x[1]" y="&tf.cnf_rclick_y[1]"][button graphic="cnf_rclick_save.png" storage="system_config_btch.ks" target=*config_rclick_save exp="sf.conf_rclick = 2"]
	;[locate x="&tf.cnf_rclick_x[2]" y="&tf.cnf_rclick_y[0]"][button graphic="cnf_rclick_conf.png"  storage="system_config_btch.ks" target=*config_rclick_conf exp="sf.conf_rclick = 3"]
	[locate   x="&tf.cnf_rclick_x[2]"   y="&tf.cnf_rclick_y[2]"][button graphic="cnf_rclick"  storage="system_config_btch.ks" target=*config_rclick_conf exp="sf.conf_rclick = 3"]
	[image left="&tf.cnf_rclick_x[2]" top="&tf.cnf_rclick_y[2]" storage="cnf_rclick_conf.png" layer="&tf.layer_rclick" page=fore visible=true clipleft="&sf.cnf_win_clipleft" cliptop="&sf.cnf_rclick_cliptop" clipwidth="&sf.cnf_rclick_clipwidth" clipheight="&sf.cnf_rclick_clipheight" opacity=255]
[endif]

;---------------------------------------------------------------------
;11 �e�L�X�g�����I���I�t�B first.ks�ŃI���ɂ��Ă���B
[if exp="sf.edge_on"]
	[freeimage layer=7 page=fore]
	;�G�t�F�N�g�I���Ȃ̂Ń{�^�����I��-�I���A�I�t�|�I�t
	;[locate x="&tf.cnf_edge_x[0]" y="&tf.cnf_edge_y[0]"][button graphic="cnf_on" storage="system_config_btch.ks" target=*config_edge]
	[locate   x="&tf.cnf_edge_x[0]"   y="&tf.cnf_edge_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_edge]
	[image left="&tf.cnf_edge_x[0]" top="&tf.cnf_edge_y[0]" storage="cnf_on.png" layer="&tf.layer_edge" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
[else]
	[freeimage layer=7 page=fore]
	;�G�t�F�N�g�I�t�Ȃ̂Ń{�^�����I��-�I�t�A�I�t�|�I��
	;[locate x="&tf.cnf_edge_x[0]" y="&tf.cnf_edge_y[0]"][button graphic="cnf_off_off" storage="system_config_btch.ks" target=*config_edge]
	[locate   x="&tf.cnf_edge_x[0]"   y="&tf.cnf_edge_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_edge]
	[image left="&tf.cnf_edge_x[0]" top="&tf.cnf_edge_y[0]" storage="cnf_off.png" layer="&tf.layer_edge" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
[endif]



;�T�E���h�n�{�^��-----------------------------------------------------

;12 BGM�J�b�g�I���I�t
[if exp="sf.bgmplay == 1"]
	[locate x="&tf.onoff_x[0]" y="&tf.onoff_y[0]"][button graphic="cnf_smoll_on_on.png" recthit=false storage="system_config_btch.ks" target=*config_bgmplay]
[else]
	[locate x="&tf.onoff_x[0]" y="&tf.onoff_y[0]"][button graphic="cnf_smoll_off_off.png" recthit=false storage="system_config_btch.ks" target=*config_bgmplay]
[endif]

;13 SE�J�b�g�I���I�t
[if exp="sf.seplay == 1"]
	[locate x="&tf.onoff_x[1]" y="&tf.onoff_y[1]"][button graphic="cnf_smoll_on_on.png" recthit=false storage="system_config_btch.ks" target=*config_seplay]
[else]
	[locate x="&tf.onoff_x[1]" y="&tf.onoff_y[1]"][button graphic="cnf_smoll_off_off.png" recthit=false storage="system_config_btch.ks" target=*config_seplay]
[endif]

;�{�C�X�I���I�t�{�^���\�荞�݃T�u���[�`�� ���̃t�@�C���̖��[�ɋL�q
[call target=*chara01L]
[call target=*chara01]
[call target=*chara02]
;[call target=*chara02L]
[call target=*chara03]
;[call target=*chara03L]
[call target=*chara04]
;[call target=*chara04L]


;---------------------------------------------------------------------

;16 ���y�[�W�Ń{�C�X���~���Ȃ��B first.ks�ŃI���ɂ��Ă���B
[if exp="sf.v_stop"]
	[freeimage layer=8 page=fore]
	;�{�C�X��~�I���Ȃ̂Ń{�^�����I��-�I���A�I�t�|�I�t
	;[locate x="&tf.cnf_vstop_x[0]" y="&tf.cnf_vstop_y[0]"][button graphic="cnf_on.png" storage="system_config_btch.ks" target=*config_v_unstop]
	[locate   x="&tf.cnf_vstop_x[0]"   y="&tf.cnf_vstop_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_v_unstop]
	[image left="&tf.cnf_vstop_x[0]" top="&tf.cnf_vstop_y[0]" storage="cnf_on.png" layer="&tf.layer_vstop" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
[else]
	[freeimage layer=8 page=fore]
	;�{�C�X��~�I�t�Ȃ̂Ń{�^�����I��-�I�t�A�I�t�|�I��
	;[locate x="&tf.cnf_vstop_x[0]" y="&tf.cnf_vstop_y[0]"][button graphic="cnf_off.png" storage="system_config_btch.ks" target=*config_v_unstop]
	[locate   x="&tf.cnf_vstop_x[0]"   y="&tf.cnf_vstop_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_v_unstop]
	[image left="&tf.cnf_vstop_x[0]" top="&tf.cnf_vstop_y[0]" storage="cnf_off.png" layer="&tf.layer_vstop" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
[endif]


;17 ���y�[�W���{�C�X�Đ��I���҂� first.ks�ŃI���ɂ��Ă���B
[if exp="sf.v_autowait"]
	[freeimage layer=9 page=fore]
	;�{�C�X��~�I���Ȃ̂Ń{�^�����I��-�I���A�I�t�|�I�t
	;[locate x="&tf.cnf_vautowait_x[0]" y="&tf.cnf_vautowait_y[0]"][button graphic="cnf_on.png" storage="system_config_btch.ks" target=*config_v_autowait]
	[locate   x="&tf.cnf_vautowait_x[0]"   y="&tf.cnf_vautowait_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_v_autowait]
	[image left="&tf.cnf_vautowait_x[0]" top="&tf.cnf_vautowait_y[0]" storage="cnf_on.png" layer="&tf.layer_vautowait" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity=255]
[else]
	[freeimage layer=9 page=fore]
	;�{�C�X��~�I�t�Ȃ̂Ń{�^�����I��-�I�t�A�I�t�|�I��
	;[locate x="&tf.cnf_vautowait_x[0]" y="&tf.cnf_vautowait_y[0]"][button graphic="cnf_off.png" storage="system_config_btch.ks" target=*config_v_autowait]
	[locate   x="&tf.cnf_vautowait_x[0]"   y="&tf.cnf_vautowait_y[0]"][button graphic="cnf_onoff" storage="system_config_btch.ks" target=*config_v_autowait]
	[image left="&tf.cnf_vautowait_x[0]" top="&tf.cnf_vautowait_y[0]" storage="cnf_off.png" layer="&tf.layer_vautowait" page=fore visible=true clipleft="&sf.cnf_onoff_clipleft" cliptop="&sf.cnf_onoff_cliptop" clipwidth="&sf.cnf_onoff_clipwidth" clipheight="&sf.cnf_onoff_clipheight" opacity="&sf.opa_offbt"]
[endif]

;---------------------------------------------------------------------

;�ݒ���f�t�H���g�ɖ߂�
[locate x="&tf.cnf_reset_x[0]" y="&tf.cnf_reset_y[0]"]
[button graphic="config_reset.png" storage="system_config_mes.ks" target=*cnf_default]


;�R���t�B�O����ʉ߃t���O�I�t�Ȃ牺�L��ݒ�
[if exp="sf.config_1st != 1"]

	;���݂̒l���_�~�[�t���O�ɓ���
	[eval exp="sf.dummy_bgmopt = kag.bgm.currentBuffer.volume2"]

	;���݂̒l���_�~�[�t���O�ɓ���
	[eval exp="sf.dummy_seopt0 = kag.se[0].volume2"]
	[eval exp="sf.dummy_seopt1 = kag.se[1].volume2"]
	[eval exp="sf.dummy_seopt2 = kag.se[2].volume2"]
	[eval exp="sf.dummy_seopt3 = kag.se[3].volume2"]

	;���݂̒l���_�~�[�t���O�ɓ���
	[eval exp="f.dummy_seopt_chara01  = kag.se[sf.chara01_buf].volume2"  cond="sf.bt_num_chara01  != void"]
	[eval exp="f.dummy_seopt_chara01L = kag.se[sf.chara01L_buf].volume2" cond="sf.bt_num_chara01L != void"]
	[eval exp="f.dummy_seopt_chara02  = kag.se[sf.chara02_buf].volume2"  cond="sf.bt_num_chara02  != void"]
	[eval exp="f.dummy_seopt_chara02L = kag.se[sf.chara02L_buf].volume2" cond="sf.bt_num_chara02L != void"]
	[eval exp="f.dummy_seopt_chara03  = kag.se[sf.chara03_buf].volume2"  cond="sf.bt_num_chara03  != void"]
	[eval exp="f.dummy_seopt_chara03L = kag.se[sf.chara03L_buf].volume2" cond="sf.bt_num_chara03L != void"]
	[eval exp="f.dummy_seopt_chara04  = kag.se[sf.chara04_buf].volume2"  cond="sf.bt_num_chara04  != void"]
	[eval exp="f.dummy_seopt_chara04L = kag.se[sf.chara04L_buf].volume2" cond="sf.bt_num_chara04L != void"]
	[eval exp="f.dummy_seopt_chara05 = kag.se[sf.chara05_buf].volume2" cond="sf.bt_num_chara05 != void"]
	[eval exp="f.dummy_seopt_chara06 = kag.se[sf.chara06_buf].volume2" cond="sf.bt_num_chara06 != void"]
	[eval exp="f.dummy_seopt_chara07 = kag.se[sf.chara07_buf].volume2" cond="sf.bt_num_chara07 != void"]
	[eval exp="f.dummy_seopt_chara08 = kag.se[sf.chara08_buf].volume2" cond="sf.bt_num_chara08 != void"]
	[eval exp="f.dummy_seopt_chara09 = kag.se[sf.chara09_buf].volume2" cond="sf.bt_num_chara09 != void"]
	[eval exp="f.dummy_seopt_chara10 = kag.se[sf.chara10_buf].volume2" cond="sf.bt_num_chara10 != void"]
	[eval exp="f.dummy_seopt_chara11 = kag.se[sf.chara11_buf].volume2" cond="sf.bt_num_chara11 != void"]
	[eval exp="f.dummy_seopt_chara12 = kag.se[sf.chara12_buf].volume2" cond="sf.bt_num_chara12 != void"]
	[eval exp="f.dummy_seopt_chara13 = kag.se[sf.chara13_buf].volume2" cond="sf.bt_num_chara13 != void"]
	[eval exp="f.dummy_seopt_chara14 = kag.se[sf.chara14_buf].volume2" cond="sf.bt_num_chara14 != void"]
	[eval exp="f.dummy_seopt_chara15 = kag.se[sf.chara15_buf].volume2" cond="sf.bt_num_chara15 != void"]
	[eval exp="f.dummy_seopt_chara16 = kag.se[sf.chara16_buf].volume2" cond="sf.bt_num_chara16 != void"]

	;���݂̒l���_�~�[�t���O�ɓ���
	;[eval exp="sf.dummy_seopt5 = kag.se[5].volume2"]
	;[eval exp="sf.dummy_seopt7 = kag.se[7].volume2"]
	;[eval exp="sf.dummy_seopt9 = kag.se[9].volume2"]
	;[eval exp="sf.dummy_seopt11 = kag.se[11].volume2"]
	;����ʉ߃t���O�I��
	[eval exp="sf.config_1st = 1"]
[endif]




;�X���C�_�[-----------------------------------------------------------

*cnf_loop2
; �X���C�_�[��z�u�ionchangefunc�����ł��Ă���֐���SliderFuntion.tjs�Œ�`���Ă���j
; �P�ʂ͏����Ă���B�\������ꍇ�͉��L�ɁAunit="�P��"�^�O�ǉ���slider_control_mes.ks�@Config_SliderControl.tjs��valueOffsetX�@valueOffsetY���C�����ĂˁB
;position�̓c�}�~�̏����l�H���o���Ă邾�����ۂ����畡���o�b�t�@�ł��w��͈�ł����񂶂�ˁH
	;���ǃe�L�X�g���x
	[call storage="system_config_srd.ks" target=*chspeed_midoku]
	;//�g��Ȃ����ƈꏏ�ɂ���
	;//	;���ǃe�L�X�g���x
	;//	[call storage="system_config_srd.ks" target=*chspeed_kidoku]
	;AUTO�����y�[�W���x
	[call storage="system_config_srd.ks" target=*pagewait]
	;�E�B���h�E�Z�x
	[call storage="system_config_srd.ks" target=*win_opa]

	;���ǃe�L�X�gRGB
;	[call storage="system_config_srd.ks" target=*kidoku_RGB]
;	[call storage="system_config_srd.ks" target=*kidoku_edgeRGB]
	[call storage="system_config_srd.ks" target=*kidoku_R]
	[call storage="system_config_srd.ks" target=*kidoku_G]
	[call storage="system_config_srd.ks" target=*kidoku_B]
	[call storage="system_config_srd.ks" target=*kidoku_edgeR]
	[call storage="system_config_srd.ks" target=*kidoku_edgeG]
	[call storage="system_config_srd.ks" target=*kidoku_edgeB]
	;�׈��p message�̂ق��͗v��Ȃ��񂾂��ǈꉞ���Ƃ�
	[eval exp="tf.slider_on_mes = 1"]

	;�T�E���h
	[call storage="system_config_srd.ks" target=*bgmvolume]
	[call storage="system_config_srd.ks" target=*sevolume]
	[call storage="system_config_srd.ks" target=*chvolume01L cond="sf.bt_num_chara01L != void"]
	[call storage="system_config_srd.ks" target=*chvolume01  cond="sf.bt_num_chara01  != void"]
	[call storage="system_config_srd.ks" target=*chvolume02  cond="sf.bt_num_chara02  != void"]
;	[call storage="system_config_srd.ks" target=*chvolume02L cond="sf.bt_num_chara02L != void"]
	[call storage="system_config_srd.ks" target=*chvolume03  cond="sf.bt_num_chara03  != void"]
;	[call storage="system_config_srd.ks" target=*chvolume03L cond="sf.bt_num_chara03L != void"]
	[call storage="system_config_srd.ks" target=*chvolume04  cond="sf.bt_num_chara04  != void"]
;	[call storage="system_config_srd.ks" target=*chvolume04L cond="sf.bt_num_chara04L != void"]
	[call storage="system_config_srd.ks" target=*chvolume05 cond="sf.bt_num_chara05 != void"]
	[call storage="system_config_srd.ks" target=*chvolume06 cond="sf.bt_num_chara06 != void"]
	[call storage="system_config_srd.ks" target=*chvolume07 cond="sf.bt_num_chara07 != void"]
	[call storage="system_config_srd.ks" target=*chvolume08 cond="sf.bt_num_chara08 != void"]
	[call storage="system_config_srd.ks" target=*chvolume09 cond="sf.bt_num_chara09 != void"]
	[call storage="system_config_srd.ks" target=*chvolume10 cond="sf.bt_num_chara10 != void"]
	[call storage="system_config_srd.ks" target=*chvolume11 cond="sf.bt_num_chara11 != void"]
	[call storage="system_config_srd.ks" target=*chvolume12 cond="sf.bt_num_chara12 != void"]
	[call storage="system_config_srd.ks" target=*chvolume13 cond="sf.bt_num_chara13 != void"]
	[call storage="system_config_srd.ks" target=*chvolume14 cond="sf.bt_num_chara14 != void"]
	[call storage="system_config_srd.ks" target=*chvolume15 cond="sf.bt_num_chara15 != void"]
	[call storage="system_config_srd.ks" target=*chvolume16 cond="sf.bt_num_chara16 != void"]
;	[call storage="system_config_srd.ks" target=*chvolumeALL_loop]
	;�׈��p
	[eval exp="tf.slider_on_snd = 1"]
;-----------------------------------------------------------

;//	; �y�[�W�p�O���t�B�J���{�^���̕\���ʒu���w��
;//	[locate x="&tf.cnf_page_x[0]" y="&tf.cnf_page_y[0]"]
;//	[button graphic="cnf_mes" storage="system_config_mes.ks" target=*config_menu]
;//	[locate x="&tf.cnf_page_x[0]" y="&tf.cnf_page_y[1]"]
;//	[button graphic="cnf_snd"     storage="system_config_snd.ks" target=*config_menu exp="sf.cnf_mes = 0 ,sf.cnf_snd = 1"]



;-----------------------------------------------------------
;�V�X�e���n��ʈړ��p�{�^���Ăяo��
;[call storage="system_jump_sub.ks"]
;�Q�[�����ɃV�X�e���{�^���icallExtraConductor�j�ŗ��Ă�ꍇ�ɂ��߂��ۂ�

;�V�X�e���n��ʈړ��p�{�^���z�u

; �^�C�g���փ{�^����\���B�^�C�g�����痈�Ă���back�Ɠ���������\�����Ȃ��H
[if exp="tf.title_pass == 0"]
	[locate x="&tf.sysjump_x[0]" y="&tf.sysjump_y[0]"]
	; �V�[����z���Ƀ^�C�g���߂�Ȃ�t���O�I�t�B����N���b�N���������Ⴞ�߂��B�߂�\�������邩�� exp="tf.scene_mode = 0 , tf.totitle = 1"
	[button graphic="sysjump_title" storage="system_config_mes.ks" target=*jump_title exp="tf.totitle = 1"]
[endif]

; SAVE�փ{�^����\�� �V�[����z���ł͂Ȃ��A���Q�[�����A���^�C�g����ʌo�R���ĂȂ��Ȃ�\��
[if exp="tf.scene_mode == 0 && tf.gameplay == 1 && tf.title_pass == 0"]
	[locate x="&tf.sysjump_x[1]" y="&tf.sysjump_y[1]"]
	[button graphic="sysjump_save" storage="system_save.ks" exp="tf.save = 1, tf.load = 0"]
[endif]

; LOAD�փ{�^����\�� �V�[����z���łȂ��Ȃ�\���B�^�C�g�����痈��ꍇ������̂ŃQ�[�������ǂ����͖��Ȃ��B
;[if exp="tf.scene_mode == 0"]
;title�����[�h��BACK���ƃR�[�����^�[���̂��܂�����Ȃ��悤�Ȃ̂�title����R���t�B�O�ɗ����ꍇ�̓��[�h�փ{�^���\�����Ȃ�
[if exp="tf.scene_mode == 0"]

;	[if exp="tf.title_pass == 0"]
	[locate x="&tf.sysjump_x[2]" y="&tf.sysjump_y[2]"]
	[button graphic="sysjump_load" storage="system_load.ks" exp="tf.save = 0, tf.load = 1"]
;	[endif]

[endif]

;���݃R���t�B�O�y�[�W�Ȃ̂Ń{�^�����ᖳ����now�{�^���B�����Ă������N����Ȃ��B
[locate x="&tf.sysjump_x[3]" y="&tf.sysjump_y[3]"]
;[button graphic="sysjump_config" storage="system_config_mes.ks"]
[button graphic="sysjump" storage="system_config_mes.ks"]
[image left="&tf.sysjump_x[3]" top="&tf.sysjump_y[3]" storage="sysjump_config" layer="&tf.layer_sysjump" page=fore visible=true clipleft="&sf.sysjump_clipleft" cliptop="&sf.sysjump_cliptop" clipwidth="&sf.sysjump_clipwidth" clipheight="&sf.sysjump_clipheight" opacity=255]


; �V�[����z���Ȃ��z���j���[�փ{�^����\�� �o�[�W�����ɂ��Ԃ邩�烍�[�h�̏ꏊ�ɒu��
[if exp="tf.scene_mode"]
	[locate x="&tf.sysjump_x[4]" y="&tf.sysjump_y[4]"]
	[button graphic="bnsjump_scene" storage="system_config_mes.ks" target=*jump_scene]
[endif]


; �u�߂�v�p�{�^����z�u
[locate x="&tf.sysjump_x[5]" y="&tf.sysjump_y[5]"]
[button graphic="sysjump_back" storage="system_config_mes.ks" target=*config_return recthit=false]




*�T���v�������\��

	[eval exp="tf.samplwin_message = 'message6'"]
	[eval exp="tf.samplwin_message2 = 'message7'"]
	; �J�����g�̃��b�Z�[�W���C�����O���t�B�J���{�^���\���p���C���ɕύX
	[current layer="&tf.samplwin_message" page=fore]

	[nowait]
;2�s�͕̂�1�s�ڂ��ʂ̍��W�ݒ�ɂ��Ȃ��Ƃ��߂���
[if exp="sf.gameNo == 4"]
;	;�`�`�`�`�`�`�`�`�`
;	;�T�C�Y�ς���̖ʓ|������font�^�O�ŏ�����size�����Ă���
;	[font face="&sf.userfont" color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" size="&sf.sampletext_size - 3"]
;	;�s�ԕύX�@�����ő��삷���title.ks�̓��Ƃ��Ɍ��ɖ߂��̒u���Ă����Ȃ��Ɗ�Ȃ��̂ł́H
;	[defstyle linespacing=3]
;	;�ύX���s
;	[resetstyle]
;	;���ꂾ�ƃV�i���I���̉��s�Ԃ����炸�ꂿ�Ⴄ�̂�
;	[emb exp="sf.kidoku_sampletext"]
;	[r]
;	[emb exp="sf.kidoku_sampletext2"]
;	;�`�`�`�`�`�`�`�`�`
	; �R���t�B�O�ł̃��b�Z�[�W�E�B���h�E�̃t���[���͎��ۂ̓��C��20�ɓ\���Ă���̂ł����ł̓t���[���w�薳���̃I�p�V�e�B0
	[position layer="&tf.samplwin_message" page=fore left="&tf.sys_samplewin_x" top="&tf.sys_samplewin_y - 15" width="&tf.sys_samplewin_w" height="&tf.sys_samplewin_h" frame="" opacity=0 marginl="&sf.sampletext_ml" margint="&sf.sampletext_mt" marginr=0 marginb=0 visible=true]
	[font face="&sf.userfont" color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" size="&sf.sampletext_size - 3"]
	; �J�����g�̃��b�Z�[�W���C����ύX
	[current layer="&tf.samplwin_message" page=fore]
	[emb exp="sf.kidoku_sampletext"]
	[font face="&sf.userfont" color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" size="&sf.sampletext_size"]
	[position layer="&tf.samplwin_message2" page=fore left="&tf.sys_samplewin_x" top="&tf.sys_samplewin_y + sf.sampletext_size - 8" width="&tf.sys_samplewin_w" height="&tf.sys_samplewin_h" frame="" opacity=0 marginl="&sf.sampletext_ml" margint="&sf.sampletext_mt" marginr=0 marginb=0 visible=true]
	[current layer="&tf.samplwin_message2" page=fore]
	[font face="&sf.userfont" color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" size="&sf.sampletext_size - 3"]
	[emb exp="sf.kidoku_sampletext2"]
[else]
	; �R���t�B�O�ł̃��b�Z�[�W�E�B���h�E�̃t���[���͎��ۂ̓��C��20�ɓ\���Ă���̂ł����ł̓t���[���w�薳���̃I�p�V�e�B0
	[position layer="&tf.samplwin_message" page=fore left="&tf.sys_samplewin_x" top="&tf.sys_samplewin_y" width="&tf.sys_samplewin_w" height="&tf.sys_samplewin_h" frame="" opacity=0 marginl="&sf.sampletext_ml" margint="&sf.sampletext_mt" marginr=0 marginb=0 visible=true]
	[font face="&sf.userfont" color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" size="&sf.sampletext_size"]
	;�T���v�������\��
	[nowait]
	[emb exp="sf.kidoku_sampletext"]
[endif]
	[endnowait]


	; �J�����g�̃��b�Z�[�W���C�����O���t�B�J���{�^���\���p���C���ɕύX
	[current layer="&tf.config_message" page=fore]


[eval exp="tf.confpass = 0"]
;�E�N���b�N�@�\�ŗ����ꍇ�ɑ����Ɍ��̉�ʂɖ߂�Ȃ��悤�ɂ��邽�߂̃E�F�C�g�Btime=1�ł����ʗL�肾���O�̈�50mm�b�ɐݒ�B
[wait time=50 canskip=false]
;�t���O�Ŕ����Ȃ��ƃV�X�e�����V�X�e���̎���a������H

[s]





;-------------------------------------------------------------
;�@�@�@�@�@�@�@�@�@�@�ݒ���f�t�H���g�ɖ߂�

*cnf_default
;�m�F�_�C�A���O�ǉ�
[if exp="sf.dialog_on"]
		[eval exp="tf.dialog_conf_def = 1"]
		;�_�C�A���O�\��
		[jump storage="dialog.ks" target=*dialog_draw]
[endif]




*cnf_default���s


[unlocklink]

;�Q�[�����̃R���t�B�O��slider_setopt02 ������܂�����Č����邩��slider_control�ǂݍ��ݒ�����
;[call storage="slider_control_win.ks"]


; �����\�����x�������l�i���ʁj�ɕύX
;[slider_setopt02 name=chspeed position="&kag.chSpeeds.normal"]
;�V���[�g�J�b�gY�ŏ�肭�����Ȃ����炱������
[eval exp="kag.userChSpeed = kag.chSpeeds.normal"]

	; ���Ǖ����\�����x�������l�i���ʁj�ɕύX
	;[slider_setopt02 name=ch2speed position="&kag.chSpeeds.normal"]

; ���y�[�W���E�F�C�g�������l�i���ʁj�ɕύX
;[slider_setopt02 name=pagewait position="&kag.autoModePageWaits.medium"]
;�V���[�g�J�b�gY�ŏ�肭�����Ȃ����炱������
[eval exp="kag.autoModePageWait = kag.autoModePageWaits.medium"]

	;�t�H���g�߂��̂߂�ǂ����� ���ꂾ���Ŗ߂��Ă邩�ȁH
	;����ς��߂��ۂ���
	;[resetfont]
	;[deffont face="�l�r �o�S�V�b�N"]
	;[eval exp="sf.userfont = '�l�r �o�S�V�b�N'"]
	;�������H
	[eval exp="sf.userfont = '�l�r �o�S�V�b�N'"]
	[eval exp="kag.chDefaultFace  = '�l�r �o�S�V�b�N'"]
	;���b�Z�[�W���C���ɑ΂��ă��[�U���I�������t�H���g��ݒ肷�� 
	[eval exp="kag.setMessageLayerUserFont()"]

	;���ǖ��ǃX�L�b�v
	[eval exp="sf.allskip = 0"]
	;�I������I�[�g
	[eval exp="sf.sel_auto = 0"]
	;�I������X�L�b�v
	[eval exp="sf.sel_skip = 0"]
	;��ʌ���
	[eval exp="sf.efect = 1"]
	;���y�[�W�{�C�X�J�b�g
	[eval exp="sf.v_stop = 1"]
	;���y�[�W�{�C�X�Đ��I���҂�
	[eval exp="sf.v_autowait = 1"]
	;�m�F�_�C�A���O
	[eval exp="sf.dialog_on = 1"]
	;���b�Z�[�W���ߓx�̃X���C�_�[
	;[eval exp="sf.winsld_y = 675"]
	;[eval exp="sf.winsld�\�� = 1"]
	;��ʃT�C�Y��`
	[eval exp="sf.conf_winsize = 2"]
	;�E�N���b�N���蓖�Ē�`
	[eval exp="sf.conf_rclick = 1"]
	;�E�B���h�E���ߓx
	[eval exp="sf.graphicframe_opacity = sf.graphicframe_def_opacity"]
	;���ǃe�L�X�gRGB
	[eval exp="sf.kidoku_R     = sf.defkidoku_R"]
	[eval exp="sf.kidoku_G     = sf.defkidoku_G"]
	[eval exp="sf.kidoku_B     = sf.defkidoku_B"]
	[eval exp="sf.kidoku_edgeR = sf.defkidoku_edgeR"]
	[eval exp="sf.kidoku_edgeG = sf.defkidoku_edgeG"]
	[eval exp="sf.kidoku_edgeB = sf.defkidoku_edgeB"]
	[eval exp="sf.edge_on = 1"]

	;�t���X�N���[���Ȃ�E�B���h�E�\���ɂ���
	[if exp="kag.fullScreen"]
		[eval exp="kag.onWindowedMenuItemClick(kag)"]
	[endif]
	;1280*720�ɕύX�BWindowResizable.ks�ɂ������t�@���N�V�������g�p�B
	[eval exp="kag.setInnerSize(1280, 720)"]

	;BGM.tjs��var volume = 20000;�@�ɂ��Ă���
	[bgmopt gvolume="&sf.BGM_defvolume"]
	;SE
	[seopt buf=0 gvolume="&sf.SE_defvolume"]
	[seopt buf=1 gvolume="&sf.SE_defvolume"]
	[seopt buf=2 gvolume="&sf.SE_defvolume"]
	[seopt buf=3 gvolume="&sf.SE_defvolume"]
	;�{�C�X
	[seopt buf="&sf.chara01_buf"  gvolume="&sf.CHARA_defvolume" cond="sf.bt_num_chara01  != void"]
	[seopt buf="&sf.chara01L_buf" gvolume="&sf.BGV_defvolume"   cond="sf.bt_num_chara01L != void"]
	[seopt buf="&sf.chara02_buf"  gvolume="&sf.CHARA_defvolume" cond="sf.bt_num_chara02  != void"]
	[seopt buf="&sf.chara02L_buf" gvolume="&sf.BGV_defvolume"   cond="sf.bt_num_chara02L != void"]
	[seopt buf="&sf.chara03_buf"  gvolume="&sf.CHARA_defvolume" cond="sf.bt_num_chara03  != void"]
	[seopt buf="&sf.chara03L_buf" gvolume="&sf.BGV_defvolume"   cond="sf.bt_num_chara03L != void"]
	[seopt buf="&sf.chara04_buf"  gvolume="&sf.CHARA_defvolume" cond="sf.bt_num_chara04  != void"]
	[seopt buf="&sf.chara04L_buf" gvolume="&sf.CHARA_defvolume" cond="sf.bt_num_chara04L != void"]
;	[seopt buf=5  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=7  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=9  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=11 gvolume="&sf.BGV_defvolume"]

	[eval exp="sf.bgmplay = 1"]
	[eval exp="sf.seplay = 1"]
	[eval exp="sf.chara01_v = 1" cond="sf.bt_num_chara01  != void"]
	[eval exp="sf.chara01_L = 1" cond="sf.bt_num_chara01L != void"]
	[eval exp="sf.chara02_v = 1" cond="sf.bt_num_chara02  != void"]
	[eval exp="sf.chara02_L = 1" cond="sf.bt_num_chara02L != void"]
	[eval exp="sf.chara03_v = 1" cond="sf.bt_num_chara03  != void"]
	[eval exp="sf.chara03_L = 1" cond="sf.bt_num_chara03L != void"]
	[eval exp="sf.chara04_v = 1" cond="sf.bt_num_chara04  != void"]
	[eval exp="sf.chara04_L = 1" cond="sf.bt_num_chara04L != void"]
;	[eval exp="sf.chara01_vl = 1"]
;	[eval exp="sf.chara02_vl = 1"]
;	[eval exp="sf.chara03_vl = 1"]
;	[eval exp="sf.chara04_vl = 1"]
;	[eval exp="sf.chara05_vl = 1"]
;	[eval exp="sf.charaALL_lv = 1"]


*cnf_default���s���Ȃ�
;[cm]
[layopt layer="&sf.message_dialog" page=fore visible=false]
[layopt layer="&sf.message_dialog" page=back visible=false]
[call storage="dialog.ks" target=*�_�C�A���O����]

;�O�ׂ̈����ł��@�R���t�B�O��ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
[rclick jump=true target="*config_return" storage="system_config_mes.ks" enabled=true]


[jump target=*config_menu]

;-----------------------------------------------------------
*jump_title
[if exp="sf.dialog_on"]
	[eval exp="tf.dialog_conf_title = 1"]
	;�_�C�A���O�\��
	[jump storage="dialog.ks" target=*dialog_draw]
[endif]

;-----------------------------------------------------------
*jump_scene

[if exp="sf.dialog_on"]
	[eval exp="tf.dialog_conf_scene = 1"]
	;�_�C�A���O�\��
	[jump storage="dialog.ks" target=*dialog_draw]
[endif]


;------------------------------------
*Yes����
;�{�^���ƃ_�C�A���O�摜�N���A
;[cm]
[layopt layer="&sf.message_dialog" page=fore visible=false]
[layopt layer="&sf.message_dialog" page=back visible=false]
[call storage="dialog.ks" target=*�_�C�A���O����]

; �X���C�_�[����������
;[call storage="system_config_srd.ks" target=*�X���C�_�[����]
[call storage="system_config_srd.ks" target=*���b�Z�[�W�X���C�_�[����]

;�J�����g���C����߂�
[current layer=message0]


;�V�[����z���j���[�ɖ߂�
;[jump storage="b_scene.ks" target=*back_from_SR]
;����jump���ƂȂ�callreturn�̒��낪����Ȃ��悤�Ȃ̂ŁAgotostart�ň�U�^�C�g���ɖ߂��B
;���Ȃ�s����񂶂�Ȃ����Ȃ�
[gotostart]

;------------------------------------
;No�������火��������
*No����
;[cm]
[layopt layer="&sf.message_dialog" page=fore visible=false]
[layopt layer="&sf.message_dialog" page=back visible=false]
[call storage="dialog.ks" target=*�_�C�A���O����]


;����I�t��Ȃ��ƁAtitle��NO��scene��ʁ�YES�����Ƃ��Ƀ^�C�g����ʂɂ������Ⴄ
[eval exp="tf.totitle = 0"]

;�J�����g���C����߂�
[current layer=message0]
[jump target=*config_menu]
;-----------------------------------------------------------

;
; �u�߂�v���I�����ꂽ�^�}�E�X�E�N���b�N���ꂽ
;
*config_return

; �X���C�_�[����������
[call storage="system_config_srd.ks" target=*�X���C�_�[����]

;�I���{�^����clip�摜�������Ă���
[freeimage layer=0 page=fore]
[freeimage layer=1 page=fore]
[freeimage layer=2 page=fore]
[freeimage layer=3 page=fore]
[freeimage layer=4 page=fore]
[freeimage layer=5 page=fore]
[freeimage layer=6 page=fore]
[freeimage layer=7 page=fore]
[freeimage layer=8 page=fore]
[freeimage layer=9 page=fore]
[freeimage layer=10 page=fore]

; �f�t�H���g�̕����\�����x�Ȃ�isystem_config.ks���Őݒ肵���j�l�𒼂��ɔ��f
[delay speed=user cond="kag.chUserMode"]
; �߂�i���Ăяo�����Ń}�E�X�E�N���b�N�̐ݒ�����ɖ߂����Ɓj



;�R���t�B�O��BGM�J�b�g�����Ă���BGM��~
[if exp="sf.bgmplay == 0"]
	;[stopbgm]
	;m:��~���ᖳ���ĉ���0���H�I���ɖ߂������ɖ��߂�ʂ�Ȃ��ƍ����ݖ��Ă���BGM���Ȃ�Ȃ�����
	[bgmopt gvolume=0]
;[else]
;	;����ق�Ƃ̓��[�U�[�̐ݒ肵�����ʂɖ߂��Ȃ��Ƃ����Ȃ��񂾂��ǂƂ肠����100�ɖ߂��B
;	[bgmopt gvolume="&sf.dummy_bgmopt"]
;����else�K�v�Ȃ́H�����BGM��������ǂ����Ⴄ
[endif]

;�R���t�B�O��SE�J�b�g�����Ă���SE��~
;����R���t�B�O�o�鎞��������ĂȂ����ǃZ�[�u���[�h�ɒ��ɔ��ł邩������Ȃ����炻�����ł����Ȃ��Ƃ��߂���ˁH
[if exp="sf.seplay == 0"]
	;[stopse buf=0][stopse buf=1][stopse buf=2]
	;�~�߂�����
	[seopt buf=0 volume=0][seopt buf=1 volume=0][seopt buf=2 volume=0][seopt buf=3 volume=0]
[endif]




;�r�d�S���~�߂���Q�[�����̃��[�v�~�܂����Ⴄ���炾�߂��ȁB�Ȃ񂩎~�߂Ȃ��Ƃ����Ȃ����R�����������H
;[stopse_all]

;�T���v���E�B���h�E�ƃe�L�X�g�̃��C������
;[layopt layer="&tf.samplwin_message" page=fore visible=false]
;�T���v���E�B���h�E�ƃe�L�X�g�̃��C������
;[freeimage layer="&sf.newmarklayer" page=fore]
[freeimage layer=12 page=fore][freeimage layer=12 page=back]


; �ǂ����痈���H
; �^�C�g��
;[if exp="tf.fromtitle"]
[if exp="tf.title_pass"]
;�X���C�_�̒l�����p�A���Ƃŏ���
;[er]

	;[jump storage="title.ks" target=*title_menu]
	;������RGB�X���C�_�����������ƃR�[�������ςȂ��݂����ŃG���[�ɂȂ邩��C��
	[gotostart]

; �Q�[����
[elsif exp="tf.gameplay"]
;�X���C�_�̒l�����p�A���Ƃŏ���
;[er]

	[jump storage="systembutton_sub.ks" target=*sys_config_return]
[endif]

;[return]


;=====================================================================
;�{�C�X�I���I�t�{�^���\�荞�݃T�u���[�`��
;=====================================================================
*chara01
[if exp="sf.bt_num_chara01 != void"]
	;14 �L����01�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara01_v == 1"]
		[locate x="&tf.onoff_x[2]" y="&tf.onoff_y[2]"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara01_v]
	[else]
		[locate x="&tf.onoff_x[2]" y="&tf.onoff_y[2]"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara01_v]
	[endif]
[endif]
[return]
;-------------------------------------
*chara01L
[if exp="sf.bt_num_chara01L != void"]
	;14 �L����01�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara01_L == 1"]
		[locate x="&sf.conf_vo01L_onoff_x" y="&sf.conf_vo01L_onoff_y"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara01_L]
	[else]
		[locate x="&sf.conf_vo01L_onoff_x" y="&sf.conf_vo01L_onoff_y"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara01_L]
	[endif]
[endif]
[return]
;-------------------------------------
*chara02
[if exp="sf.bt_num_chara02 != void"]
	;15 �L����02�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara02_v == 1"]
		[locate x="&tf.onoff_x[3]" y="&tf.onoff_y[3]"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara02_v]
	[else]
		[locate x="&tf.onoff_x[3]" y="&tf.onoff_y[3]"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara02_v]
	[endif]
[endif]
[return]
;-------------------------------------
*chara02L
[if exp="sf.bt_num_chara02L != void"]
	;14 �L����01�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara02_L == 1"]
		[locate x="&sf.conf_vo02L_onoff_x" y="&sf.conf_vo02L_onoff_y"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara02_L]
	[else]
		[locate x="&sf.conf_vo02L_onoff_x" y="&sf.conf_vo02L_onoff_y"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara02_L]
	[endif]
[endif]
[return]
;-------------------------------------
*chara03
[if exp="sf.bt_num_chara03 != void"]
	;16 �L����03�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara03_v == 1"]
		[locate x="&tf.onoff_x[4]" y="&tf.onoff_y[4]"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara03_v]
	[else]
		[locate x="&tf.onoff_x[4]" y="&tf.onoff_y[4]"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara03_v]
	[endif]
[endif]
[return]
;-------------------------------------
*chara03L
[if exp="sf.bt_num_chara03L != void"]
	;14 �L����01�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara03_L == 1"]
		[locate x="&sf.conf_vo03L_onoff_x" y="&sf.conf_vo03L_onoff_y"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara03_L]
	[else]
		[locate x="&sf.conf_vo03L_onoff_x" y="&sf.conf_vo03L_onoff_y"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara03_L]
	[endif]
[endif]
[return]
;-------------------------------------
*chara04
[if exp="sf.bt_num_chara04 != void"]
	;17 �L����04�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara04_v == 1"]
		[locate x="&tf.onoff_x[5]" y="&tf.onoff_y[5]"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara04_v]
	[else]
		[locate x="&tf.onoff_x[5]" y="&tf.onoff_y[5]"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara04_v]
	[endif]
[endif]
[return]
;-------------------------------------
*chara04L
[if exp="sf.bt_num_chara04L != void"]
	;14 �L����01�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara04_L == 1"]
		[locate x="&sf.conf_vo04L_onoff_x" y="&sf.conf_vo04L_onoff_y"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara04_L]
	[else]
		[locate x="&sf.conf_vo04L_onoff_x" y="&sf.conf_vo04L_onoff_y"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara04_L]
	[endif]
[endif]
[return]
;-------------------------------------
*chara05
[if exp="sf.bt_num_chara05 != void"]
	;18 �L����05�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara05_v == 1"]
		[locate x="&tf.onoff_x[6]" y="&tf.onoff_y[6]"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara05_v]
	[else]
		[locate x="&tf.onoff_x[6]" y="&tf.onoff_y[6]"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara05_v]
	[endif]
[endif]
[return]
;-------------------------------------
*chara06
[if exp="sf.bt_num_chara06 != void"]
	;19 �L����06�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara06_v == 1"]
		[locate x="&tf.onoff_x[7]" y="&tf.onoff_y[7]"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara06_v]
	[else]
		[locate x="&tf.onoff_x[7]" y="&tf.onoff_y[7]"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara06_v]
	[endif]
[endif]
[return]
;-------------------------------------
*chara07
[if exp="sf.bt_num_chara07 != void"]
	;20 �L����07�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara07_v == 1"]
		[locate x="&tf.onoff_x[8]" y="&tf.onoff_y[8]"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara07_v]
	[else]
		[locate x="&tf.onoff_x[8]" y="&tf.onoff_y[8]"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara07_v]
	[endif]
[endif]
[return]
;-------------------------------------
*chara08
[if exp="sf.bt_num_chara08 != void"]
	;21 �L����08�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara08_v == 1"]
		[locate x="&tf.onoff_x[9]" y="&tf.onoff_y[9]"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara08_v]
	[else]
		[locate x="&tf.onoff_x[9]" y="&tf.onoff_y[9]"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara08_v]
	[endif]
[endif]
[return]
;-------------------------------------
*chara09
[if exp="sf.bt_num_chara09 != void"]
	;22 �L����09�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara09_v == 1"]
		[locate x="&tf.onoff_x[10]" y="&tf.onoff_y[10]"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara09_v]
	[else]
		[locate x="&tf.onoff_x[10]" y="&tf.onoff_y[10]"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara09_v]
	[endif]
[endif]
[return]
;-------------------------------------
*chara10
[if exp="sf.bt_num_chara10 != void"]
	;23 �L����10�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara10_v == 1"]
		[locate x="&tf.onoff_x[11]" y="&tf.onoff_y[11]"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara10_v]
	[else]
		[locate x="&tf.onoff_x[11]" y="&tf.onoff_y[11]"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara10_v]
	[endif]
[endif]
[return]
;-------------------------------------
*chara11
[if exp="sf.bt_num_chara11 != void"]
	;23 �L����11�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara11_v == 1"]
		[locate x="&tf.onoff_x[12]" y="&tf.onoff_y[12]"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara11_v]
	[else]
		[locate x="&tf.onoff_x[12]" y="&tf.onoff_y[12]"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara11_v]
	[endif]
[endif]
[return]
;-------------------------------------
*chara12
[if exp="sf.bt_num_chara12 != void"]
	;23 �L����12�{�C�X�J�b�g�I���I�t
	[if exp="sf.chara12_v == 1"]
		[locate x="&tf.onoff_x[13]" y="&tf.onoff_y[13]"][button graphic="cnf_smoll_on_on.png" storage="system_config_btch.ks"  target=*config_chara12_v]
	[else]
		[locate x="&tf.onoff_x[13]" y="&tf.onoff_y[13]"][button graphic="cnf_smoll_off_off.png" storage="system_config_btch.ks"  target=*config_chara12_v]
	[endif]
[endif]
[return]
;-------------------------------------

