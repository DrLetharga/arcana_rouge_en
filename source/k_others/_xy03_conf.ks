;===========================================================
;                    ���O��`                     
;===========================================================
;[eval exp="sf.window_y = 525 - 20"]
[eval exp="sf.window_y = 500"]

;_�{�C�X�}�N���ݒ�.txt��call����
;[call storage="_01RIG_���O�}�N���ݒ�.ks"  cond="sf.gameNo == 1"]
;[call storage="_02EST_���O�}�N���ݒ�.ks"  cond="sf.gameNo == 2"]
;���^�C�g������
[call storage="_sys_���O�}�N���ݒ�.ks"]

;===========================================================
;                     �R���t�B�O���                        
;===========================================================

;button_chgimage�}�N���Ŏg��num��ϐ��Œ�`�B
;��ɃL�����{�C�X�̐��ɂ���āA�I���I�t�{�^����num�ԍ��̒�����
;�X���C�_�[�̐ݒu���E�������̒����������������Ȃ��悭���邽�߁B



[eval exp="sf.bt_num_skip        = 0"]
[eval exp="sf.bt_num_sel_skip    = 1"]
[eval exp="sf.bt_num_sel_auto    = 2"]
[eval exp="sf.bt_num_efect       = 3"]
[eval exp="sf.bt_num_dialog      = 4"]
[eval exp="sf.bt_num_win_small   = 5"]
[eval exp="sf.bt_num_win_def     = 6"]
[eval exp="sf.bt_num_win_full    = 7"]
[eval exp="sf.bt_num_rclick_hide = 8"]
[eval exp="sf.bt_num_rclick_save = 9"]
[eval exp="sf.bt_num_rclick_conf = 10"]
[eval exp="sf.bt_num_edge        = 11"]
[eval exp="sf.bt_num_bgm         = 12"]
[eval exp="sf.bt_num_se          = 13"]

;���R���{����Ȃ�v���� �����u�s�v�Ȃ�v����
;[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"]
	[eval exp="sf.bt_num_chara01L    = 14"]
	[eval exp="sf.bt_num_chara01     = 15"]
	[eval exp="sf.bt_num_chara02     = 16"]
;	[eval exp="sf.bt_num_chara02L    = 17"]
	[eval exp="sf.bt_num_chara03     = 17"]
;	[eval exp="sf.bt_num_chara03L    = 19"]
	[eval exp="sf.bt_num_chara04     = 18"]
;	[eval exp="sf.bt_num_chara04L    = 21"]
	[eval exp="sf.bt_num_chara05     = void"]

	[eval exp="sf.bt_num_v_stop      = 19"]
	[eval exp="sf.bt_num_v_autowait  = 20"]
;[endif]


;�I�t��ԃ{�^���̓��ߓx�B0�`255�Ŏw��B���߂����Ȃ��Ă����Ȃ�255�ŁB
;���̓��ߓx���K�p�����̂́AOFF�{�^���icnf_off.png�j�݂̂ł��B
[eval exp="sf.opa_offbt = 153"]


[eval exp="tf.step1 = 240"]
[eval exp="tf.addy = 56"]
;��������Ɖ��ڂ����킩��ɂ��������Ɋe�ϐ���`�����Ⴄ
[eval exp="tf.step2 = tf.step1 + tf.addy "]
[eval exp="tf.step3 = tf.step1 + tf.addy * 2"]
[eval exp="tf.step4 = tf.step1 + tf.addy * 3"]
[eval exp="tf.step5 = tf.step1 + tf.addy * 4"]
[eval exp="tf.step6 = tf.step1 + tf.addy * 5"]
[eval exp="tf.step7 = tf.step1 + tf.addy * 6"]
[eval exp="tf.step8 = tf.step1 + tf.addy * 7"]
[eval exp="tf.step9 = tf.step1 + tf.addy * 8"]
;0 �X�L�b�v
;���ǖ��ǃX�L�b�v
[eval exp="sf.conf_kidokuskip_x = 260"]
[eval exp="sf.conf_kidokuskip_y = tf.step1"]


;�V�X�e���ړ��{�^���̂����A�Z�[�u�E���[�h�E�R���t�B�O�����Ɏg�p
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@x���W�@��{�I��0�ɂȂ�܂��B
[eval exp="sf.cnf_kidoku_midoku_skip_clipleft   = 0"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@y���W�@��{�I�ɃN���b�N�������I���J�[�\�������̂ǂ��炩�̍��W�ɂȂ�܂��B
[eval exp="sf.cnf_kidoku_midoku_skip_cliptop    = 41"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o������
[eval exp="sf.cnf_kidoku_midoku_skip_clipwidth  = 122"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o���㉺���@�摜�̑S���̃T�C�Y�ł͂Ȃ��\�������������̃T�C�Y�ł��B
[eval exp="sf.cnf_kidoku_midoku_skip_clipheight = 41"]

;1 �I������X�L�b�v
;ON OFF
[eval exp="sf.conf_selskip_on_x  = 260"]
[eval exp="sf.conf_selskip_on_y  = tf.step2"]

;2 �I������I�[�g
;ON OFF
[eval exp="sf.conf_selauto_on_x  = 260"]
[eval exp="sf.conf_selauto_on_y  = tf.step3"]


;3 �G�t�F�N�g�̃X�L�b�v
;ON OFF
[eval exp="sf.conf_effectskip_on_x  = 260"]
[eval exp="sf.conf_effectskip_on_y  = tf.step4"]

;4 �m�F�_�C�����O�I���I�t
;ON OFF
[eval exp="sf.conf_dialog_on_x  = 260"]
[eval exp="sf.conf_dialog_on_y  = tf.step5"]


;�V�X�e���ړ��{�^���̂����A�Z�[�u�E���[�h�E�R���t�B�O�����Ɏg�p
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@x���W�@��{�I��0�ɂȂ�܂��B
[eval exp="sf.cnf_onoff_clipleft   = 0"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@y���W�@��{�I�ɃN���b�N�������I���J�[�\�������̂ǂ��炩�̍��W�ɂȂ�܂��B
[eval exp="sf.cnf_onoff_cliptop    = 41"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o������
[eval exp="sf.cnf_onoff_clipwidth  = 122"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o���㉺���@�摜�̑S���̃T�C�Y�ł͂Ȃ��\�������������̃T�C�Y�ł��B
[eval exp="sf.cnf_onoff_clipheight = 41"]



;5 6 7 �E�B���h�E�^�t���X�N���[���I��p�}�[�J�[�̍��W��z��ŗp��
;960*540
[eval exp="sf.conf_win_small_x   = 50"]
[eval exp="sf.conf_win_small_y   = tf.step7 - 15"]
;1280*720
[eval exp="sf.conf_win_default_x = 161"]
[eval exp="sf.conf_win_default_y = tf.step7 - 15"]
;�t���X�N���[��
[eval exp="sf.conf_full_x        = 272"]
[eval exp="sf.conf_full_y        = tf.step7 - 15"]

;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@x���W�@��{�I��0�ɂȂ�܂��B
[eval exp="sf.cnf_win_clipleft   = 0"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@y���W�@��{�I�ɃN���b�N�������I���J�[�\�������̂ǂ��炩�̍��W�ɂȂ�܂��B
[eval exp="sf.cnf_win_cliptop    = 41"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o������
[eval exp="sf.cnf_win_clipwidth  = 102"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o���㉺���@�摜�̑S���̃T�C�Y�ł͂Ȃ��\�������������̃T�C�Y�ł��B
[eval exp="sf.cnf_win_clipheight = 41"]


;8 9 10 �E�N���b�N���蓖�Ă̍��W��z��ŗp��
;�E�B���h�E���B��
[eval exp="sf.conf_rclick_winhide_x  = 50"]
[eval exp="sf.conf_rclick_winhide_y  = tf.step8 + 20"]
;�Z�[�u��ʌĂяo��
[eval exp="sf.conf_rclick_callsave_x = 161"]
[eval exp="sf.conf_rclick_callsave_y = tf.step8 + 20"]
;�R���t�B�O
[eval exp="sf.conf_rclick_callconf_x = 272 "]
[eval exp="sf.conf_rclick_callconf_y = tf.step8 + 20"]

;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@x���W�@��{�I��0�ɂȂ�܂��B
[eval exp="sf.cnf_rclick_clipleft   = 0"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@y���W�@��{�I�ɃN���b�N�������I���J�[�\�������̂ǂ��炩�̍��W�ɂȂ�܂��B
[eval exp="sf.cnf_rclick_cliptop    = 41"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o������
[eval exp="sf.cnf_rclick_clipwidth  = 102"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o���㉺���@�摜�̑S���̃T�C�Y�ł͂Ȃ��\�������������̃T�C�Y�ł��B
[eval exp="sf.cnf_rclick_clipheight = 41"]


;11 �e�L�X�g�����I���I�t�̍��W��z��ŗp��
;ON
[eval exp="sf.conf_txtedge_on_x  = 640"]
[eval exp="sf.conf_txtedge_on_y  = tf.step4"]

;18 ���y�[�W���{�C�X��~�̍��W��z��ŗp�ӁB
;ON OFF
[eval exp="sf.conf_vstop_on_x  = 1120"]
[eval exp="sf.conf_vstop_on_y  = tf.step6"]


;19 ���y�[�W���{�C�X�Đ��I���҂��̍��W��z��ŗp�ӁB
;ON OFF
[eval exp="sf.conf_vautowait_on_x  = 1120"]
[eval exp="sf.conf_vautowait_on_y  = tf.step7"]


;�ݒ�̏�����
[eval exp="sf.conf_init_x = 950 + 50"]
[eval exp="sf.conf_init_y = tf.step8 - 10"]


;�{�^�����D�悵�ď����Ă邩��܂�tf.step�Ē�`�ł��Ȃ��񂾁B��`�ʓ|������{�^�����͖������邩�B

;�T�E���h�I���I�t�{�^��
[eval exp="tf.x = 1220"]
[eval exp="tf.step1 = 130"]
[eval exp="tf.addy = 50"]
;��������Ɖ��ڂ����킩��ɂ��������Ɋe�ϐ���`�����Ⴄ
[eval exp="tf.step2 = tf.step1 + tf.addy "]
[eval exp="tf.step3 = tf.step1 + tf.addy * 2"]
[eval exp="tf.step4 = tf.step1 + tf.addy * 3"]
[eval exp="tf.step5 = tf.step1 + tf.addy * 4"]
[eval exp="tf.step6 = tf.step1 + tf.addy * 5"]
[eval exp="tf.step7 = tf.step1 + tf.addy * 6"]
[eval exp="tf.step8 = tf.step1 + tf.addy * 7"]
[eval exp="tf.step9 = tf.step1 + tf.addy * 8"]
[eval exp="tf.step10 = tf.step1 + tf.addy * 9"]
[eval exp="tf.step11 = tf.step1 + tf.addy * 10"]
[eval exp="tf.step12 = tf.step1 + tf.addy * 11"]

;12 BGM�I���I�t�{�^��
;ON OFF
[eval exp="sf.conf_bgm_onoff_x = tf.x"]
[eval exp="sf.conf_bgm_onoff_y = tf.step1"]

;14 SE�I���I�t�{�^��
;ON OFF
[eval exp="sf.conf_se_onoff_x = tf.x"]
[eval exp="sf.conf_se_onoff_y = tf.step2"]

;���R���{����Ȃ�v���� �����u�s�v�Ȃ�v����
;[if    exp="sf.gameNo == 1"]
;-----------------------------------------------------------
;���O�摜��`
;-----------------------------------------------------------
	;���O�摜�p�@���Ԓ���
	[eval exp="sf.conf_chname01 = 'bg_conf_mes_t_bgv'"]
	[eval exp="sf.conf_chname02 = 'bg_conf_mes_t_ch01'"]
	[eval exp="sf.conf_chname03 = 'bg_conf_mes_t_ch02'"]
	[eval exp="sf.conf_chname04 = 'bg_conf_mes_t_ch03'"]
	[eval exp="sf.conf_chname05 = 'bg_conf_mes_t_ch04'"]
	[eval exp="sf.conf_chname06 = void"]
	[eval exp="sf.conf_chname07 = void"]
	[eval exp="sf.conf_chname08 = void"]
	[eval exp="sf.conf_chname09 = void"]
	[eval exp="sf.conf_chname10 = void"]

; �L�����{�C�X1���[�v
;ON OFF
[eval exp="sf.conf_vo01L_onoff_x = tf.x"]
[eval exp="sf.conf_vo01L_onoff_y = tf.step3"]

	;15 �L�����{�C�X1
	;ON OFF
	[eval exp="sf.conf_vo1_onoff_x = tf.x"]
	[eval exp="sf.conf_vo1_onoff_y = tf.step4"]

	;16 �L�����{�C�X2
	;ON OFF
	[eval exp="sf.conf_vo2_onoff_x = tf.x"]
	[eval exp="sf.conf_vo2_onoff_y = tf.step5"]

;; �L�����{�C�X2���[�v
;;ON OFF
;[eval exp="sf.conf_vo02L_onoff_x = tf.x"]
;[eval exp="sf.conf_vo02L_onoff_y = tf.step6"]
	;
	;17 �L�����{�C�X3
	;ON OFF
	[eval exp="sf.conf_vo3_onoff_x = tf.x"]
	[eval exp="sf.conf_vo3_onoff_y = tf.step6"]

;; �L�����{�C�X3���[�v
;;ON OFF
;[eval exp="sf.conf_vo03L_onoff_x = tf.x"]
;[eval exp="sf.conf_vo03L_onoff_y = tf.step8"]

	; �L�����{�C�X4
	;ON OFF
	[eval exp="sf.conf_vo4_onoff_x = tf.x"]
	[eval exp="sf.conf_vo4_onoff_y = tf.step7"]

;; �L�����{�C�X3���[�v
;;ON OFF
;[eval exp="sf.conf_vo04L_onoff_x = tf.x"]
;[eval exp="sf.conf_vo04L_onoff_y = tf.step10"]

;[endif]


[eval exp="tf.x = 850"]

;���O�摜
[eval exp="sf.conf_chname01_x = tf.x , sf.conf_chname01_y = tf.step3 + 7"]
[eval exp="sf.conf_chname02_x = tf.x , sf.conf_chname02_y = tf.step4 + 7"]
[eval exp="sf.conf_chname03_x = tf.x , sf.conf_chname03_y = tf.step5 + 7"]
[eval exp="sf.conf_chname04_x = tf.x , sf.conf_chname04_y = tf.step6 + 7"]
[eval exp="sf.conf_chname05_x = tf.x , sf.conf_chname05_y = tf.step7 + 7"]
[eval exp="sf.conf_chname06_x = tf.x , sf.conf_chname06_y = tf.step8 + 7"]
[eval exp="sf.conf_chname07_x = tf.x , sf.conf_chname07_y = tf.step9 + 7"]
[eval exp="sf.conf_chname08_x = tf.x , sf.conf_chname08_y = tf.step10 + 7"]
[eval exp="sf.conf_chname09_x = tf.x , sf.conf_chname09_y = tf.step11 + 7"]
[eval exp="sf.conf_chname10_x = tf.x , sf.conf_chname10_y = tf.step12 + 7"]



;���t�H���_�ɂ̓s���摜2��ނ���܂����g�p����̂�config_slider_pin.png�ł�
;�ړ����Ɋւ���ڍׂ́A�X���C�_�[�s���̈ړ���.png�����ĉ������B
;�X���C�_�[�s���̈ړ����@���b�Z�[�W�n
[eval exp="sf.srd_mes_tableftmax = 261"]
;�X���C�_�[�s���̈ړ����@�T�E���h�n
[eval exp="sf.srd_snd_tableftmax = 261"]
;�X���C�_�[�s���̈ړ����@�E�B���h�E�n
[eval exp="sf.srd_win_tableftmax = 261"]

;��{�I�ɂ̓X���C�_�[�摜�ƃs���摜�̏c�̒����͓����ɂ��A���L�̕ϐ���0�̂܂܂��]�܂����B
;�X���C�_�[�s����Y���W�i�X���C�_�[�摜�Ƃ̑��΍��W�j���b�Z�[�W�n
[eval exp="sf.srd_mes_tabOffsetY = 0"]
;�X���C�_�[�s����Y���W�i�X���C�_�[�摜�Ƃ̑��΍��W�j�T�E���h�n
[eval exp="sf.srd_snd_tabOffsetY = 0"]

; ���b�Z�[�W�ݒ�X���C�_�[
; ���ǖ��ǌ��p
[eval exp="sf.conf_srd_midoku_x = 59"]
[eval exp="sf.conf_srd_midoku_y = 108"]

;	;����
;	[eval exp="sf.conf_srd_kidoku_x = 304"]
;	[eval exp="sf.conf_srd_kidoku_y = 130"]

;�I�[�g�X���C�_�[
[eval exp="sf.conf_srd_auto_x   = 59"]
[eval exp="sf.conf_srd_auto_y   = 187"]

[eval exp="tf.step1 = 108"]
[eval exp="tf.addy = 32"]
[eval exp="tf.step2 = tf.step1 + tf.addy "]
[eval exp="tf.step3 = tf.step1 + tf.addy * 2"]


;�e�L�X�g���ǁ@RGB�X���C�_�[ R
[eval exp="sf.conf_srd_mi_R_x   = 482"]
[eval exp="sf.conf_srd_mi_R_y   = tf.step1"]

;�e�L�X�g���ǁ@RGB�X���C�_�[ G
[eval exp="sf.conf_srd_mi_G_x   = 482"]
[eval exp="sf.conf_srd_mi_G_y   = tf.step2"]

;�e�L�X�g���ǁ@RGB�X���C�_�[ B
[eval exp="sf.conf_srd_mi_B_x   = 482"]
[eval exp="sf.conf_srd_mi_B_y   = tf.step3"]

[eval exp="tf.step1 = 287"]
[eval exp="tf.step2 = tf.step1 + 32 "]
[eval exp="tf.step3 = tf.step1 + 32 * 2"]

;�e�L�X�g���ǁ@RGB�X���C�_�[ R
[eval exp="sf.conf_srd_ki_R_x   = 482"]
[eval exp="sf.conf_srd_ki_R_y   = tf.step1"]

;�e�L�X�g���ǁ@RGB�X���C�_�[ G
[eval exp="sf.conf_srd_ki_G_x   = 482"]
[eval exp="sf.conf_srd_ki_G_y   = tf.step2"]

;�e�L�X�g���ǁ@RGB�X���C�_�[ B
[eval exp="sf.conf_srd_ki_B_x   = 482"]
[eval exp="sf.conf_srd_ki_B_y   = tf.step3"]

;���b�Z�[�W���ߓx�X���C�_�[
[eval exp="sf.conf_srd_opa_x   = 485"]
[eval exp="sf.conf_srd_opa_y   = 496"]

; �T���v���E�B���h�E�̃x�[�X�摜�̍��W
[eval exp="sf.sys_samplewin_base_x = 475"]
[eval exp="sf.sys_samplewin_base_y = 535"]

; �T���v���E�B���h�E�̍��W�Ƒ傫��
[eval exp="sf.sys_samplewin_x = 480"]
;[eval exp="sf.sys_samplewin_y = 500"]
[eval exp="sf.sys_samplewin_y = 540"]
;[eval exp="sf.sys_samplewin_w = 300"]
;�摜�҂����肾�Ƌ֑����Ő܂�Ԃ����Ⴄ���Ƃ�����̂ł�����ƍL����
[eval exp="sf.sys_samplewin_w = 350"]
[eval exp="sf.sys_samplewin_h = 80"]

; �T���v���E�B���h�E������
[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="sf.kidoku_sampletext = '       ' + sf.gameID_01"]
[endif]

;�T���v���e�L�X�g�̕\���ʒu���������L�̒l�����܂����ƍ��킹��B
;���Œ��ɋ󔒍������ނ̂͂�߂��񂾂����H
;�E�}�[�W���Ɖ��}�[�W����0�ŌŒ肵�Ă���B
[eval exp="sf.sampletext_size = 24"]
[eval exp="sf.sampletext_ml = 5"]
[eval exp="sf.sampletext_mt = 0"]



;�T�E���h�X���C�_�[
[eval exp="tf.x = 935"]
[eval exp="tf.step1 = 135"]
[eval exp="tf.addy = 50"]
;��������Ɖ��ڂ����킩��ɂ��������Ɋe�ϐ���`�����Ⴄ
[eval exp="tf.step2 = tf.step1 + tf.addy"]
[eval exp="tf.step3 = tf.step1 + tf.addy * 2"]
[eval exp="tf.step4 = tf.step1 + tf.addy * 3"]
[eval exp="tf.step5 = tf.step1 + tf.addy * 4"]
[eval exp="tf.step6 = tf.step1 + tf.addy * 5"]
[eval exp="tf.step7 = tf.step1 + tf.addy * 6"]
[eval exp="tf.step8 = tf.step1 + tf.addy * 7"]
[eval exp="tf.step9 = tf.step1 + tf.addy * 8"]

; �T�E���h�X���C�_�[�̍��W��z��ŗp��
;BGM
[eval exp="sf.conf_srd_bgm_x = tf.x"]
[eval exp="sf.conf_srd_bgm_y = tf.step1"]

;SE
[eval exp="sf.conf_srd_se_x  = tf.x"]
[eval exp="sf.conf_srd_se_y  = tf.step2"]

;���R���{����Ȃ�v���� �����u�s�v�Ȃ�v����
;[if    exp="sf.gameNo == 1"]

;�L�����{�C�X1
[eval exp="sf.conf_srd_vo01L_x = tf.x"]
[eval exp="sf.conf_srd_vo01L_y = tf.step3"]

	;�L�����{�C�X1
	[eval exp="sf.conf_srd_vo1_x = tf.x"]
	[eval exp="sf.conf_srd_vo1_y = tf.step4"]

;;�L�����{�C�X1
;[eval exp="sf.conf_srd_vo01L_x = tf.x"]
;[eval exp="sf.conf_srd_vo01L_y = tf.step4"]

	;�L�����{�C�X2
	[eval exp="sf.conf_srd_vo2_x = tf.x"]
	[eval exp="sf.conf_srd_vo2_y = tf.step5"]

;;�L�����{�C�X2
;[eval exp="sf.conf_srd_vo02L_x = tf.x"]
;[eval exp="sf.conf_srd_vo02L_y = tf.step6"]

	;�L�����{�C�X3
	[eval exp="sf.conf_srd_vo3_x = tf.x"]
	[eval exp="sf.conf_srd_vo3_y = tf.step6"]

;;�L�����{�C�X3
;[eval exp="sf.conf_srd_vo03L_x = tf.x"]
;[eval exp="sf.conf_srd_vo03L_y = tf.step8"]

	;�L�����{�C�X4
	[eval exp="sf.conf_srd_vo4_x = tf.x"]
	[eval exp="sf.conf_srd_vo4_y = tf.step7"]

;;�L�����{�C�X4
;[eval exp="sf.conf_srd_vo04L_x = tf.x"]
;[eval exp="sf.conf_srd_vo04L_y = tf.step10"]

;[endif]



;GameSystem Ver�x�[�X
[eval exp="sf.conf_sysver_x = 1000"]
[eval exp="sf.conf_sysver_y = 13"]

;GameSystem Ver
;���l
[eval exp="sf.conf_sysver_num1_x = 1168"]
[eval exp="sf.conf_sysver_num_y = 14"]
;�h�b�g �ȉ��v�Z���ʓ|�Ȃ̂�sf.conf_sysver_num1_x���x�[�X�ɉ��Z���Ă���B
[eval exp="sf.conf_sysver_dot1_x = sf.conf_sysver_num1_x + 11"]
;���l
[eval exp="sf.conf_sysver_num2_x = sf.conf_sysver_num1_x + 20"]
;�h�b�g
[eval exp="sf.conf_sysver_dot2_x = sf.conf_sysver_num1_x + 33"]
;���l
[eval exp="sf.conf_sysver_num3_x = sf.conf_sysver_num1_x + 42"]

;===========================================================

[return]

