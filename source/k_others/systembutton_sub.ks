;
;
;
;   �]�\�߁AConfig.tjs�̈ȉ��̍��ڂ��C�����邱��
;       characterMenu.visible �c false�ɕύX
;       displayMenu.visible   �c false�ɕύX
;       storeMenu.visible     �c false�ɕύX
;       restoreMenu.visible   �c false�ɕύX
;




;====================================================================
;
; �u�Z�[�u����v���I�����ꂽ
;
; �V�X�e���{�^���̕\���^��\���A�}�E�X�E�N���b�N�̐ݒ蕜�A�������ōs���Ă��邱�Ƃɒ���
; ����̓^�C�g�����j���[��ʂ�������[�h��ʂ��Ăяo����悤�ɂ��邽�߂̑[�u
; �i�Ăяo�����Œ��덇�킹����΁A���[�h��ʂ�KAG�V�i���I�����L�ł��邽�߁j
;
*sys_save

;���̕ϐ����ʁX����Ȃ���1�ɂ܂Ƃ߂������ǂȂ�
[eval exp="tf.save = 1 , tf.load = 0 , tf.conf = 0"]
;�E�N���b�N�ݒ�ōs���ꍇ�Ƀ{�^����Ƀ}�E�X�����������ɖ߂�Ȃ����߂̃t���O
;�t���O�I���I�t������if���Ŏg���Ȃ����ǁA�ǂ������������񂾉��H
[eval exp="tf.savepass = 1"]

[sys_in]

[if exp="tf.�Z�[�u�}�X�N�e�X�g���s�� == 1"]

; 	[if    exp="tf.�Z�[�u�}�X�N�e�X�g >= 80"][eval exp="sf.saveload_now_page = 4"][save place="&tf.save_click_num+sf.saveload_now_page*20"]
; 	[elsif exp="tf.�Z�[�u�}�X�N�e�X�g >= 60"][eval exp="sf.saveload_now_page = 3"][save place="&tf.save_click_num+sf.saveload_now_page*20"]
; 	[elsif exp="tf.�Z�[�u�}�X�N�e�X�g >= 40"][eval exp="sf.saveload_now_page = 2"][save place="&tf.save_click_num+sf.saveload_now_page*20"]
; 	[elsif exp="tf.�Z�[�u�}�X�N�e�X�g >= 20"][eval exp="sf.saveload_now_page = 1"][save place="&tf.save_click_num+sf.saveload_now_page*20"]
; 	[elsif exp="tf.�Z�[�u�}�X�N�e�X�g <= 20"][eval exp="sf.saveload_now_page = 0"][save place="&tf.save_click_num+sf.saveload_now_page*20"]
; 	[endif]

	[save place="&tf.�Z�[�u�}�X�N�e�X�g"]

	[eval exp="tf.�Z�[�u�}�X�N�e�X�g += 1"]
; 	[eval exp="tf.save_click_num += 1"]
; 	[if exp="tf.save_click_num == 19"]
		[eval exp="tf.save_click_num = 0"]
; 	[endif]



[else]


; �Z�[�u��ʂ�
;�߂鎞��jump������call�ł����񂾂����H
[jump storage="system_save.ks" target=*save_menu]

[endif]


*sys_save_return

[eval exp="tf.save = 0"]
[sys_out]

;systembutton.ks�ŋL�^���Ă錻�݂̃t�@�C���ƃ��x���Ƀ��^�[���I
[return storage="&f.ksStorageSys" target="&f.ksLabelSys"]


;====================================================================

;
; �u���[�h����v���I�����ꂽ
;
; �V�X�e���{�^���̕\���^��\���A�}�E�X�E�N���b�N�̐ݒ蕜�A�������ōs���Ă��邱�Ƃɒ���
; ����̓^�C�g�����j���[��ʂ�������[�h��ʂ��Ăяo����悤�ɂ��邽�߂̑[�u
; �i�Ăяo�����Œ��덇�킹����΁A���[�h��ʂ�KAG�V�i���I�����L�ł��邽�߁j
;
*sys_load

[eval exp="tf.save = 0 , tf.load = 1 , tf.conf = 0"]

[sys_in]

; ���[�h��ʂ�
[jump storage="system_load.ks" target=*load_menu]

*sys_load_return

[eval exp="tf.load = 0"]
[sys_out]

;systembutton.ks�ŋL�^���Ă錻�݂̃t�@�C���ƃ��x���Ƀ��^�[���I
[return storage="&f.ksStorageSys" target="&f.ksLabelSys"]


;====================================================================

;
; �u�Q�[���ݒ�v���I�����ꂽ
;
; �V�X�e���{�^���̕\���^��\���A�}�E�X�E�N���b�N�̐ݒ蕜�A�������ōs���Ă��邱�Ƃɒ���
; ����̓^�C�g�����j���[��ʂ�����R���t�B�O��ʂ��Ăяo����悤�ɂ��邽�߂̑[�u
; �i�Ăяo�����Œ��덇�킹����΁A�R���t�B�O��ʂ�KAG�V�i���I�����L�ł��邽�߁j
;
*sys_config

[eval exp="tf.save = 0 , tf.load = 0 , tf.conf = 1"]
[sys_in]

; �R���t�B�O��ʂ�
;[if    exp="sf.cnf_mes == 1"]
	[jump storage="system_config_mes.ks" target=*config_menu]
;[elsif exp="sf.cnf_snd == 1"]
;	[jump storage="system_config_snd.ks" target=*config_menu]
;[endif]

;�R���t�B�O���I������炱���Ƀ��^�[��
*sys_config_return

[eval exp="tf.conf = 0"]
[sys_out]

;; ��������̞x�R�ɕۑ����� ���ꂢ��Ȃ���ˁH
;[eval exp="tf.memori3 = 0"]


;systembutton.ks�ŋL�^���Ă錻�݂̃t�@�C���ƃ��x���Ƀ��^�[���I
[return storage="&f.ksStorageSys" target="&f.ksLabelSys"]

;====================================================================


;�o�b�N���O�ŃE�B���h�E���������Ǝv�������ǖ������ۂ�
*sys_log

[return]


;====================================================================
*sys_skip

;====================================================================

*sys_auto

;====================================================================
*sys_hide
;hide�{�^�������������ǘA�ł���Ɨ�����̂Ŏg��Ȃ�

;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;
;	[wait time=100 canskip=false]
;
;	[layopt layer=message5 visible=false page=fore]
;
;	;���[�U�[�̃N���b�N��҂B�O���t�͏o�Ȃ��B
;	[waitclick]
;
;	;�V�X�e���{�^�����E�B���h�E�\��
;	[sysbt_meswin]
;
;	[layopt layer=message5 visible=true page=fore]
;
;	[wait time=200 canskip=false]
;
;	;���̃t�@�C���ƃ��x���ɖ߂�
;	[jump storage="&f.ksStorage" target="&f.ksLabel"]


;====================================================================
;�Y�N�C�b�N�Z�[�u�N�C�b�N���[�h�̉摜���W�ύX�@��p�{�C�X�������̂Ń{�C�X�R�����g�A�E�g
*sys_Qsave
[locklink]


[if exp="sf.efect == 1"]

	[if    exp="sf.Qsave_v == 0"][eval exp="sf.SE_Qsave = 'se_sys_quick_s_aka'"][eval exp="sf.Qsave_v = 1"]
	[elsif exp="sf.Qsave_v == 1"][eval exp="sf.SE_Qsave = 'se_sys_quick_s_aoi'"][eval exp="sf.Qsave_v = 0"]
	[endif]

	;SE�����[�v�Ŗ��Ă�\��������Ȃ�0�Ԃ�{�҂Ŏg�p�s�ɂ��邩
	[se buf="&sf.SE_sys_buf1" storage="&sf.SE_Qsave"]
;	[se_sys buf1 storage="&sf.SE_Qsave"]
	;�I�����\�������l�����ăC���f�b�N�X�͑I�����̕�������O��
	;[image  storage="quicksave���o" layer="&sf.layer_quick" page=fore visible=true left=336 top=242 opacity=0 index="1016000"]
	;[stmove storage="quicksave���o" layer="&sf.layer_quick" page=fore time=150  accel=5 cx=0 cy=0 path=(236,204,2)(436,279,1)(436,279,1) index="1016000" spline=false  opacity=255 type=false flipud= fliplr=false blur=true blur_x=0 blur_y=0 ]
	;[wstmove]
	;[wait_c time=100]
	;[backlay][image storage="chara_int" layer="&sf.layer_quick" page=back visible=true left=450 top=300 opacity=0 index=1016000][trans time=200 method=crossfade][wt_c]
	;[layopt layer="&sf.layer_quick" opacity=255 index="&sf.layer_quick*1000+1000"]
	[image  storage="quicksave���o" layer="&sf.layer_quick" page=fore visible=true left=436 top=300 opacity=0 index="1016000"]
	[move layer="&sf.layer_quick" time=300 accel=-1 path="(436,260,255)"]
	[wm]
	[wait_c time=300]
	[move layer="&sf.layer_quick" time=300 accel=1 path="(436,220,0)"]
	[wm]
	[backlay][image storage="chara_int" layer="&sf.layer_quick" page=back visible=true left=0 top=0 opacity=0 index=1016000][trans time=200 method=crossfade][wt_c]
	[layopt layer="&sf.layer_quick" opacity=255 index="&sf.layer_quick*1000+1000"]

[endif]
[unlocklink]

[return]

;====================================================================
*sys_Qload

;�E�B���h�E�����d�ɂȂ��Ă���ۂ���
;�V�X�e���{�^�����E�B���h�E���l�[���`�b�v���ꉞ����
[s_m clear]
[layopt layer="&sf.message_namechip" page=fore visible=false]


[current layer=message0]
;���C���̃C���f�b�N�X�߂�
;[layopt layer="&sf.layer_seltext" index="&sf.layer_quick*1000+1000"]
[layopt layer="&sf.layer_seltext" index="&sf.layer_seltext*1000+1000"]


;�f�[�^���[�h��FC�^�O����tf.QuickLoad�𔻒肵���̃T�u���[�`���ɔ��ł���B
;tf.QuickLoad��systembutton.ks�ŃI���ɂȂ�B

;�S���͑I�����̎d�l���Ⴄ�̂ł����̏��������̃^�C�g���ƈႤ
[if exp="f.selnow == 1"]
	[sellayer_index_init]
[endif]

;�f�[�^���[�h��FC�^�O����tf.QuickLoad�𔻒肵���̃T�u���[�`���ɔ��ł���B
;tf.QuickLoad��systembutton.ks�ŃI���ɂȂ�B



[if exp="sf.efect == 1"]

	[if    exp="sf.Qload_v == 0"][eval exp="sf.SE_Qload = 'se_sys_quick_l_mia'"][eval exp="sf.Qload_v = 1"]
	[elsif exp="sf.Qload_v == 1"][eval exp="sf.SE_Qload = 'se_sys_quick_l_mei'"][eval exp="sf.Qload_v = 0"]
	[endif]

	;SE�����[�v�Ŗ��Ă�\��������Ȃ�0�Ԃ�{�҂Ŏg�p�s�ɂ��邩
	[se buf="&sf.SE_sys_buf1" storage="&sf.SE_Qload"]
;	[se_sys buf1 storage="&sf.SE_Qload"]

	;�I�����\�������l�����ăC���f�b�N�X�͑I�����̕�������O��
	;�I�����\�������l�����ăC���f�b�N�X�͑I�����̕�������O��
	;[image  storage="quickload���o" layer="&sf.layer_quick" page=fore visible=true left=336 top=242 opacity=0 index=1016000]
	;[stmove storage="quickload���o" layer="&sf.layer_quick" page=fore time=150  accel=5 cx=0 cy=0 path=(236,204,2)(436,279,1)(436,279,1) index=1016000 spline=false  opacity=255 type=false flipud= fliplr=false blur=true blur_x=0 blur_y=0 ]
	;[wstmove]
	;[wait_c time=100]
	;[backlay][image storage="chara_int" layer="&sf.layer_quick" page=back visible=true left=450 top=300 opacity=0 index=1016000][trans time=200 method=crossfade][wt_c]
	;[layopt layer="&sf.layer_quick" opacity=255 index="&sf.layer_quick*1000+1000"]
	[image  storage="quickload���o" layer="&sf.layer_quick" page=fore visible=true left=436 top=300 opacity=0 index="1016000"]
	[move layer="&sf.layer_quick" time=300 accel=-1 path="(436,260,255)"]
	[wm]
	[wait_c time=300]
	[move layer="&sf.layer_quick" time=300 accel=1 path="(436,220,0)"]
	[wm]
	[backlay][image storage="chara_int" layer="&sf.layer_quick" page=back visible=true left=0 top=0 opacity=0 index=1016000][trans time=200 method=crossfade][wt_c]
	[layopt layer="&sf.layer_quick" opacity=255 index="&sf.layer_quick*1000+1000"]

	;���o�㔻��p�t���O���I�t
	;[eval exp="tf.QuickLoad = 0"]
[endif]

;�V�X�e���{�^�����E�B���h�E���ĕ\���B�l�[���`�b�v��message�͍ĕ\���s�v����
;f.win_narration == 1�̓i���[�V�����p�̔���
[if exp="f.win_narration == 1"]
	[sysbt_meswin3]
[else]
	[s_m cond="f.graphic_bt_sel == 0"]
[endif]

[return]


;====================================================================


;
; �u�^�C�g���֖߂�v���I�����ꂽ
;
*sys_title
*sys_scene
;���̃��x���ɂ͔��ł��Ȃ��悤�ɂ���


*Yes����
;�{�^���ƃ_�C�A���O�摜�N���A
[cm]
[call storage="dialog.ks" target=*�_�C�A���O����]

;�V�[����z���j���[�ɖ߂�
;[jump storage="b_sceneV.ks" target=*back_from_SR]
;����jump���ƂȂ�callreturn�̒��낪����Ȃ��悤�Ȃ̂ŁAgotostart�ň�U�^�C�g���ɖ߂��B
[gotostart]


;No�������火�������� �Q�[���ɖ߂�
*No����
;�{�^���ƃ_�C�A���O�摜�N���A
;[cm]
;[layopt layer=message"&tf.dialog_message" page=fore visible=false]
;�Ȃ񂩁����ƃ��b�Z�[�W�E�B���h�E�������Ⴄ�̂�ˁB�Ȃ̂ł����ă_�C�A���O�����}�N���͎g�p���Ȃ�
;����layer=message"&tf.dialog_message"����ȋL�q�����炨����������������
[layopt layer=message page=fore visible=false]
;�����ꂾ�Ə����邯��visible��ture�̂܂܂ŁA�{�^���Ƃ����܂��o���Ⴄ���灪��visible����
[eval exp="kag.current.clear2()"]

[freeimage layer="&sf.layer_dialog_yesno" page=back][freeimage layer="&sf.layer_dialog_yesno" page=fore]
;dialog_scene�\���Ă����C���̃C���f�b�N�X��߂�
[layopt layer="&sf.layer_dialog_yesno" index="&sf.layer_quick*1000+1000"]

; �E�N���b�N���蓖�Ă�ݒ肷��
[call storage="rclick_sub.ks"]


; �������C����L����
[history output=true enabled=true]

;�V�X�e���{�^���ĕ\���@��z�ӏܒ��͐�ɔ��肵�Ȃ��Ƃ��߂�
[if    exp="tf.scenestart == 1"]
	[sysbtopt forevisible=true backvisible=true]
[elsif exp="tf.cg_mode == 0 && tf.scene_mode == 0 && tf.bgm_mode == 0"]
	[sysbtopt forevisible=true backvisible=true]
[endif]

;�J�����g���C����߂� 0�Ƃ͌���Ȃ��񂾂�Ȃ��B�����Ń��b�Z�[�W���C���e��ʗp�ɐݒ肷�邵���Ȃ��H
;�V�X�e����ʂ͖߂������ƂɃJ�����g���삳��邩����v��
[if    exp="tf.cg_mode    == 1"][current layer="&tf.CGMODE_message"]
[elsif exp="tf.scene_mode == 1 && tf.scenestart == 0"][current layer="&tf.scene_message"]
[elsif exp="tf.bgm_mode   == 1"][current layer="&tf.sound_message"]
[else][current layer=message0]
[endif]

;�_�C�����O���ɏ����Ă��{�^�����ĕ\��
;[sysbtopt forevisible=true backvisible=true left="&sf.sysbt_x" top="&sf.sysbt_y"]


;��z�ɖ߂�
[return]

;
; �u�Q�[�����I������v���I�����ꂽ
;�g�p���ĂȂ�
*sys_exit
[close]
[if    exp="tf.save == 1"]
	[jump storage="system_save.ks" target=*save_menu]
[elsif exp="tf.load == 1"]
	[jump storage="system_load.ks" target=*load_menu]
[elsif exp="tf.conf == 1"]
	[jump storage="system_config_mes.ks" target=*config_menu]
[elsif exp="tf.cg_mode == 1"]
	[jump storage="b_cgmode.ks"]
[elsif exp="tf.scene_mode == 1"]
	[jump storage="b_scene.ks"]
[elsif exp="f.scene_modeV == 1"]
	[jump storage="b_sceneV.ks"]
[elsif exp="tf.bgm_mode == 1"]
	[jump storage="b_bgmmode.ks"]
[endif]
[return]

;====================================================================


