;dialog.ks

;�_�C�A���O�̓���������ɂ܂Ƃ߂�B

;------------------------------------
;�Q�[���I����I�񂾎��͂���������
*game_QUIT
[tempsave place=2]

[eval exp="tf.dialog_QUIT = 1"]

;�ȉ��A���֐i��

;------------------------------------
;�ʏ�͂����ɔ��ł���
*dialog_draw


;�I����������������肷�邩�炱�ꂢ��̂���
[locklink]
; �E�N���b�N�𖳌��ɂ���
[rclick enabled=false]
; �������C����}�~
[history output=false enabled=false]


[eval exp="tf.dialog_now = 1"]
;�Q�[�����̃^�C�g���{�^����������T�L�[�����Ă���V�X�e���{�^������
;systembutton.ks�Ń_�C�A���O�\�����̓C�l�[�u���ɂ����̂ŏ����Ȃ��B2017/05/05
;[if exp="tf.dialog_game_title == 1"]
;	[sysbtopt forevisible=false backvisible=false]
;[endif]

;�����Ƃ��͖��ʂ�void�����Ȃ��Ă����悤�ɐ�Ɉ�Uvoid�ɂ���
[eval exp="tf.dialog_text02 = void"]
[eval exp="tf.dialog_text03 = void"]
[eval exp="tf.dialog_text04 = void"]

	;first.ks�Œ�`
	;[eval exp="sf.message_dialog = 'message7'"]
	;[eval exp="sf.layer_dialog_yesno = 20"]

	;[eval exp="sf.dialog_text_size = 22"]
	;�폜�_�C�A���O��Ptext���镶����̍��[���������Őݒ肷��B���Ƃ͓K�X�������l�����Z�B
	;[eval exp="sf.erase_dialog_text = 60"]
	;[eval exp="sf.erase_dialog_text_y = 50"]


[macro name=�m�F�_�C�A���O]

	;�Z�[�u�X���b�g�̌����ɉ����ĕ\���ʒu����
	;�����܂����Ă�Ɣ����ɑ_�������W����Ȃ��Ƃ��ɏo��ȁB

	[if exp="tf.dialog_savedata_lock || tf.dialog_savedata_erase"]
		;�������͍폜�_�C�A���O�p��`
		;3��
		[if exp="tf.save_erase_num+sf.saveload_now_page*20+1+tf.sub >= 100"]
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 85"]
		;2��
		[elsif exp="tf.save_erase_num+sf.saveload_now_page*20+1+tf.sub >= 10"]
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 90"]
		;1��
		[else]
			;+3�͔�����
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 95 +3"]
		[endif]

	;�㏑�����̏������Ȃ����炨�������̂��H
	[elsif exp="tf.dialog_save || tf.dialog_save_overwrite"]
		;�������̓Z�[�u�_�C�A���O�p��`
		;3��
		[if exp="tf.save_click_num+sf.saveload_now_page*20+1+tf.sub >= 100"]
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 85"]
		;2��
		[elsif exp="tf.save_click_num+sf.saveload_now_page*20+1+tf.sub >= 10"]
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 90"]
		;1��
		[else]
			;+3�͔�����
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 95 +3"]
		[endif]
	[elsif exp="tf.dialog_load"]

		;�������̓Z�[�u�_�C�A���O�p��`
		;3��
		[if exp="tf.load_click_num+sf.saveload_now_page*20+1+tf.sub >= 100"]
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 85"]
		;2��
		[elsif exp="tf.load_click_num+sf.saveload_now_page*20+1+tf.sub >= 10"]
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 90"]
		;1��
		[else]
			;+3�͔�����
			[eval exp="sf.erase_dialog_text2 = sf.erase_dialog_text + 95 +3"]
		[endif]
	[endif]

	;�X���C�_�[��3�����炻�����ɔz�u
	[position layer="&sf.message_dialog" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color="&sf.dialog_text_color" opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
	[layopt layer="&sf.message_dialog" page=fore visible=true]
	[current layer="&sf.message_dialog" page=fore]

	;�R���t�B�O�̃T���v�����b�Z�[�W2�s������悤�ɂ����̂�index��1��ɂ�����
	[image storage="&sf.dialog_dialogImage" layer="&sf.layer_dialog_yesno"  page=fore visible=true left="&sf.dialog_x" top="&sf.dialog_y" index=1008000 opacity=255]
	;index��I�����̍ő�l�����
	;x+472 y+281
	[ptext face="�l�r �o�S�V�b�N" layer="&sf.layer_dialog_yesno" page=fore x="&sf.dialog_caption_x" y="&sf.dialog_caption_y" size="&sf.dialog_text_size" color="&sf.dialog_text_color" shadow="&sf.dialog_text_shadow" edge="&sf.dialog_text_edge" bold="&sf.dialog_text_bold" text="�m�F"]


	;1�s��
	[ptext face="�l�r �o�S�V�b�N" layer="&sf.layer_dialog_yesno" page=fore x="&sf.erase_dialog_text"     y="&sf.erase_dialog_text_y"    size="&sf.dialog_text_size" color="&sf.dialog_text_color" shadow="&sf.dialog_text_shadow" edge="&sf.dialog_text_edge" bold="&sf.dialog_text_bold" text="&tf.dialog_text01"]
	;�ȍ~��void�łȂ���Ε\��	
	[if exp="tf.dialog_text02 != void"]
		[ptext face="�l�r �o�S�V�b�N" layer="&sf.layer_dialog_yesno" page=fore x="&sf.erase_dialog_text2"    y="&sf.erase_dialog_text_y"    size="&sf.dialog_text_size" color="&sf.dialog_text_color" shadow="&sf.dialog_text_shadow" edge="&sf.dialog_text_edge" bold="&sf.dialog_text_bold" text="&tf.dialog_text02"]
		[ptext face="�l�r �o�S�V�b�N" layer="&sf.layer_dialog_yesno" page=fore x="&sf.erase_dialog_text+120" y="&sf.erase_dialog_text_y"    size="&sf.dialog_text_size" color="&sf.dialog_text_color" shadow="&sf.dialog_text_shadow" edge="&sf.dialog_text_edge" bold="&sf.dialog_text_bold" text="&tf.dialog_text03"]
	[endif]
	;2�s��
	[if exp="tf.dialog_text04 != void"]
		[ptext face="�l�r �o�S�V�b�N" layer="&sf.layer_dialog_yesno" page=fore x="&sf.erase_dialog_text"     y="&sf.erase_dialog_text_y+25" size="&sf.dialog_text_size" color="&sf.dialog_text_color" shadow="&sf.dialog_text_shadow" edge="&sf.dialog_text_edge" bold="&sf.dialog_text_bold" text="&tf.dialog_text04"]
	[endif]
[endmacro]


;�R���t�B�O�̃^�C�g���{�^������
[if    exp="tf.dialog_conf_title"]
;�X���C�_�[�̐��l����ɂ����Ⴄ���琔�l������
	[eval exp="tf.dialog_text01 = '�^�C�g���ɖ߂�܂����H'"]
	[�m�F�_�C�A���O]
;	[eval exp="tf.dialog_conf_title = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_config_mes.ks" target=*Yes���� exp="tf.dialog_conf_title = 0 , tf.scene_mode = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x" y="&sf.dialog_NO_y"][button graphic="dialog_bt_no" storage="system_config_mes.ks" target=*No���� exp="tf.dialog_conf_title = 0 , tf.dialog_now = 0"]

;�R���t�B�O�̃��j���[�{�^������
[elsif exp="tf.dialog_conf_scene"]
	[eval exp="tf.dialog_text01 = 'Scene Replay��ʂ�'"]
	[eval exp="tf.dialog_text04 = '�@�@�@�߂�܂����H'"]
	[�m�F�_�C�A���O]
;	[eval exp="tf.dialog_conf_scene = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_config_mes.ks" target=*Yes���� exp="tf.dialog_conf_scene = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x" y="&sf.dialog_NO_y"][button graphic="dialog_bt_no" storage="system_config_mes.ks" target=*No���� exp="tf.dialog_conf_scene = 0 , tf.dialog_now = 0"]


;�R���t�B�O�̐ݒ菉�����{�^������
[elsif exp="tf.dialog_conf_def"]
	[eval exp="tf.dialog_text01 = '�ݒ�����������܂����H'"]
	[�m�F�_�C�A���O]
;	[eval exp="tf.dialog_conf_def = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_config_mes.ks" target=*cnf_default���s exp="tf.dialog_conf_def = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x" y="&sf.dialog_NO_y"][button graphic="dialog_bt_no" storage="system_config_mes.ks" target=*cnf_default���s���Ȃ� exp="tf.dialog_conf_def = 0 , tf.dialog_now = 0"]

;��z���Q�[���@�V�X�e���^�C�g���{�^������
[elsif exp="tf.dialog_game_title && tf.scene_mode"]
;		[eval exp="tf.dialog_text01 = '�V�[�����v���C��ʂ�'"]
;		[eval exp="tf.dialog_text04 = '�@�@�@�߂�܂����H'"]
;		[�m�F�_�C�A���O]
;	;	[eval exp="tf.dialog_game_title = 0"]
;		[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="systembutton_sub.ks" target=*Yes���� exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
;		[locate x="&sf.dialog_NO_x" y="&sf.dialog_NO_y"][button graphic="dialog_bt_no" storage="systembutton_sub.ks" target=*No���� exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]

	;title.ks�̓��ɖ߂菈�����邩�炱���͓������x���ɔ�΂��Ă��H
	[jump target=*�Q�[�����V�X�e���{�^���^�C�g��]

;��z���Q�[���@�V�X�e���^�C�g���{�^������
[elsif exp="tf.dialog_game_title && tf.cg_mode"]
	[eval exp="tf.dialog_text01 = '�b�f�M�������[��ʂ�'"]
	[eval exp="tf.dialog_text04 = '�@�@�@�߂�܂����H'"]
	[�m�F�_�C�A���O]
;	[eval exp="tf.dialog_game_title = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="systembutton_sub.ks" target=*Yes���� exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x" y="&sf.dialog_NO_y"][button graphic="dialog_bt_no" storage="systembutton_sub.ks" target=*No���� exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]



;�Q�[���@�V�X�e���^�C�g���{�^������
[elsif exp="tf.dialog_game_title"]
;		[eval exp="tf.dialog_text01 = '�^�C�g���ɖ߂�܂����H'"]
;		[�m�F�_�C�A���O]
;	;	[eval exp="tf.dialog_game_title = 0"]
;		[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="systembutton_sub.ks" target=*Yes���� exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
;		[locate x="&sf.dialog_NO_x" y="&sf.dialog_NO_y"][button graphic="dialog_bt_no" storage="systembutton_sub.ks" target=*No���� exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]

	;title.ks�̓��ɖ߂菈�����邩�炱���͓������x���ɔ�΂��Ă��H
	[jump target=*�Q�[�����V�X�e���{�^���^�C�g��]

;�Z�[�u���[�h�@*�ی삳��Ă܂��@����
[elsif exp="tf.dialog_savedata_lock"]
	[eval exp="tf.dialog_text01 = '�@�@�@���̃X���b�g��'"]
	[eval exp="tf.dialog_text04 = '�@ �ی삳��Ă��܂��I'"]
	[�m�F�_�C�A���O]
;	[eval exp="tf.dialog_savedata_lock = 0"]
	[locate x="&sf.dialog_YES_x+70" y="&sf.dialog_YES_y"][button graphic="dialog_bt_ok" storage="system_savedata_sub.ks" target=*�Z�[�u�f�[�^�폜���Ȃ� exp="tf.dialog_savedata_lock = 0 , tf.dialog_now = 0"]

;�Z�[�u���[�h�@*�폜���܂��@����
[elsif exp="tf.dialog_savedata_erase"]
	[eval exp="tf.dialog_text01 = '�X���b�g�w'"]
	[eval exp="tf.dialog_text02 = tf.save_erase_num+sf.saveload_now_page*20+1+tf.sub"]
	[eval exp="tf.dialog_text03 = '�x�̃f�[�^��'"]
	[eval exp="tf.dialog_text04 = '�폜���܂����H'"]
	[�m�F�_�C�A���O]
;	[eval exp="tf.dialog_savedata_erase = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_savedata_sub.ks" target=*�Z�[�u�f�[�^�폜 exp="tf.dialog_savedata_erase = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x"  y="&sf.dialog_NO_y"][button graphic="dialog_bt_no"   storage="system_savedata_sub.ks" target=*�Z�[�u�f�[�^�폜���Ȃ� exp="tf.dialog_savedata_erase = 0 , tf.dialog_now = 0"]

;�Z�[�u����
[elsif exp="tf.dialog_save_overwrite"]

	[eval exp="tf.dialog_text01 = '�X���b�g�w'"]
	[eval exp="tf.dialog_text02 = tf.save_click_num+sf.saveload_now_page*20+1+tf.sub"]
	[eval exp="tf.dialog_text03 = '�x�Ƀf�[�^��'"]
	[eval exp="tf.dialog_text04 = '�㏑�����܂����H'"]
	[�m�F�_�C�A���O]
;	[eval exp="tf.dialog_save_overwrite = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_savedata_sub.ks" target=*�㏑��save exp="tf.dialog_save_overwrite = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x"  y="&sf.dialog_NO_y"][button graphic="dialog_bt_no"   storage="system_savedata_sub.ks" target=*�㏑��save���Ȃ� exp="tf.dialog_save_overwrite = 0 , tf.dialog_now = 0"]

;�Z�[�u����
[elsif exp="tf.dialog_save"]

	[eval exp="tf.dialog_text01 = '�X���b�g�w'"]
	[eval exp="tf.dialog_text02 = tf.save_click_num+sf.saveload_now_page*20+1+tf.sub"]
	[eval exp="tf.dialog_text03 = '�x�Ƀf�[�^��'"]
	[eval exp="tf.dialog_text04 = '�Z�[�u���܂����H'"]
	[�m�F�_�C�A���O]
;	[eval exp="tf.dialog_save = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_savedata_sub.ks" target=*save exp="tf.dialog_save = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x"  y="&sf.dialog_NO_y"][button graphic="dialog_bt_no"   storage="system_savedata_sub.ks" target=*save���Ȃ� exp="tf.dialog_save = 0 , tf.dialog_now = 0"]

;�Z�[�u�̃^�C�g���ɖ߂�{�^������
[elsif exp="tf.dialog_savetitle"]
	[eval exp="tf.dialog_text01 = '�^�C�g���ɖ߂�܂����H'"]
	[�m�F�_�C�A���O]
;	[eval exp="tf.dialog_savetitle = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes"                          target=*�^�C�g���ɖ߂� exp="tf.dialog_savetitle = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x"  y="&sf.dialog_NO_y"][button graphic="dialog_bt_no"   storage="system_save.ks" target=*save�^�C�g���ɖ߂�Ȃ� exp="tf.dialog_savetitle = 0 , tf.dialog_now = 0"]

;���[�h����
[elsif exp="tf.dialog_load"]
	[eval exp="tf.dialog_text01 = '�X���b�g�w'"]
	[eval exp="tf.dialog_text02 = tf.load_click_num+sf.saveload_now_page*20+1+tf.sub"]
	[eval exp="tf.dialog_text03 = '�x�̃f�[�^��'"]
	[eval exp="tf.dialog_text04 = '���[�h���܂����H'"]
	[�m�F�_�C�A���O]
;	[eval exp="tf.dialog_load = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes" storage="system_load.ks" target=*load exp="tf.dialog_load = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x"  y="&sf.dialog_NO_y"][button graphic="dialog_bt_no"   storage="system_load.ks" target=*load���Ȃ� exp="tf.dialog_load = 0 , tf.dialog_now = 0"]

;���[�h�̃^�C�g���ɖ߂�{�^������
[elsif exp="tf.dialog_loadtitle"]
	[eval exp="tf.dialog_text01 = '�^�C�g���ɖ߂�܂����H'"]
	[�m�F�_�C�A���O]
;	[eval exp="tf.dialog_loadtitle = 0"]
	[locate x="&sf.dialog_YES_x" y="&sf.dialog_YES_y"][button graphic="dialog_bt_yes"                         target=*�^�C�g���ɖ߂� exp="tf.dialog_loadtitle = 0 , tf.dialog_now = 0"]
	[locate x="&sf.dialog_NO_x"  y="&sf.dialog_NO_y"][button graphic="dialog_bt_no"  storage="system_load.ks" target=*load�^�C�g���ɖ߂�Ȃ� exp="tf.dialog_loadtitle = 0 , tf.dialog_now = 0"]


[endif]





[s]

;----------------------------------------------------
*�Q�[�����V�X�e���{�^���^�C�g��

;��Ƀt���O�I�t���Ă���?
[eval exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]

[gotostart ask=true]

[return]

;-------------------------------
*�Q�[�����V�X�e���{�^���^�C�g��_�_�C�A���O�I�t

;��Ƀt���O�I�t���Ă���?
[eval exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]

[gotostart]

;���ۂɂ�return�͂��Ȃ����ǔO�̃^��
[return]

;----------------------------------------------------

*�^�C�g���ɖ߂�
[call storage="dialog.ks" target=*�_�C�A���O����]

[gotostart]



;----------------------------------------------------
*menu�^�C�g���ɖ߂�Ȃ�

[call storage="dialog.ks" target=*�_�C�A���O����]


;����Ŗ߂�邩��
;�_������
[return]

;----------------------------------------------------
*�_�C�A���O����

;�_�C�A���O�����T�u���[�`��
;systembutton_sub.ks��*No����͂Ȃ񂩓��삪�኱�Ⴄ�悤�Ȃ̂ł������ł��


;�{�^���ƃ_�C�A���O�摜�N���A
[layopt layer="&sf.message_dialog" page=fore visible=false]
[layopt layer="&sf.message_dialog" page=back visible=false]
;���̖����ɖ߂�
;[laycount messages=8]
[laycount messages=9]
[freeimage layer="&sf.layer_dialog_yesno" page=back][freeimage layer="&sf.layer_dialog_yesno" page=fore]
;dialog_scene�\���Ă����C���̃C���f�b�N�X��߂�
[layopt layer="&sf.layer_dialog_yesno" index="&sf.layer_dialog_yesno * 1000 + 1000"]
;�J�����g���C����߂�
[current layer=message0]



[return]

;----------------------------------------------------
*�V���[�g�J�b�gYES

;�R���t�B�O�̃^�C�g���{�^������
[if    exp="tf.dialog_conf_title"]
	[eval exp="tf.dialog_conf_title = 0 , tf.scene_mode = 0 , tf.dialog_now = 0"]
	[jump storage="system_config_mes.ks" target=*Yes����]

;�R���t�B�O�̃��j���[�{�^������
[elsif exp="tf.dialog_conf_scene"]
	[eval exp="tf.dialog_conf_scene = 0 , tf.dialog_now = 0"]
	[jump  storage="system_config_mes.ks" target=*Yes����]

;�R���t�B�O�̐ݒ菉�����{�^������
[elsif exp="tf.dialog_conf_def"]
	[eval  exp="tf.dialog_conf_def = 0 , tf.dialog_now = 0"]
	[jump storage="system_config_mes.ks" target=*cnf_default���s]

;��z���Q�[���@�V�X�e���^�C�g���{�^������
[elsif exp="tf.dialog_game_title && tf.scene_mode"]
	[eval exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
	[jump storage="systembutton_sub.ks" target=*Yes����]

;�Q�[���@�V�X�e���^�C�g���{�^������
[elsif exp="tf.dialog_game_title"]
	[eval exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
	[jump storage="systembutton_sub.ks" target=*Yes����]

;�Z�[�u���[�h�@*�ی삳��Ă܂��@����
[elsif exp="tf.dialog_savedata_lock"]
	[eval exp="tf.shortcut_use = 1"]
	[eval exp="tf.dialog_savedata_lock = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*�Z�[�u�f�[�^�폜���Ȃ�]

;�Z�[�u���[�h�@*�폜���܂��@����
[elsif exp="tf.dialog_savedata_erase"]
	[eval exp="tf.shortcut_use = 1"]
	[eval exp="tf.dialog_savedata_erase = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*�Z�[�u�f�[�^�폜]

;�Z�[�u����
[elsif exp="tf.dialog_save_overwrite"]
	[eval exp="tf.dialog_save_overwrite = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*�㏑��save]

;�Z�[�u����
[elsif exp="tf.dialog_save"]
	[eval exp="tf.dialog_save = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*save]

;�Z�[�u�̃^�C�g���ɖ߂�{�^������
[elsif exp="tf.dialog_savetitle"]
	[eval exp="tf.dialog_savetitle = 0 , tf.dialog_now = 0"]
	[jump                          target=*�^�C�g���ɖ߂�]

;���[�h����
[elsif exp="tf.dialog_load"]
	[eval exp="tf.dialog_load = 0 , tf.dialog_now = 0"]
	[jump storage="system_load.ks" target=*load]

;���[�h�̃^�C�g���ɖ߂�{�^������
[elsif exp="tf.dialog_loadtitle"]
	[eval exp="tf.dialog_loadtitle = 0 , tf.dialog_now = 0"]
	[jump                         target=*�^�C�g���ɖ߂�]

[endif]


[return]

;----------------------------------------------------
*�V���[�g�J�b�gNO
[eval exp="tf.shortcut_use = 1"]

;�R���t�B�O�̃^�C�g���{�^������
[if    exp="tf.dialog_conf_title"]
	[eval exp="tf.dialog_conf_title = 0 , tf.dialog_now = 0"]
	[jump storage="system_config_mes.ks" target=*No����]

;�R���t�B�O�̃��j���[�{�^������
[elsif exp="tf.dialog_conf_scene"]
	[eval exp="tf.dialog_conf_scene = 0 , tf.dialog_now = 0"]
	[jump storage="system_config_mes.ks" target=*No����]

;�R���t�B�O�̐ݒ菉�����{�^������
[elsif exp="tf.dialog_conf_def"]
	[eval exp="tf.dialog_conf_def = 0 , tf.dialog_now = 0"]
	[jump storage="system_config_mes.ks" target=*cnf_default���s���Ȃ�]

;��z���Q�[���@�V�X�e���^�C�g���{�^������
[elsif exp="tf.dialog_game_title && tf.scene_mode"]
	[eval exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
	[jump storage="systembutton_sub.ks" target=*No����]

;�Q�[���@�V�X�e���^�C�g���{�^������
[elsif exp="tf.dialog_game_title"]
	[eval exp="tf.dialog_game_title = 0 , tf.dialog_now = 0"]
	[jump storage="systembutton_sub.ks" target=*No����]

;�Z�[�u���[�h�@*�ی삳��Ă܂��@����
[elsif exp="tf.dialog_savedata_lock"]
	[eval exp="tf.shortcut_use = 1"]
	[eval exp="tf.dialog_savedata_lock = 0 , tf.dialog_now = 0"]
	[jump  storage="system_savedata_sub.ks" target=*�Z�[�u�f�[�^�폜���Ȃ�]

;�Z�[�u���[�h�@*�폜���܂��@����
[elsif exp="tf.dialog_savedata_erase"]
	[eval exp="tf.shortcut_use = 1"]
	[eval exp="tf.dialog_savedata_erase = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*�Z�[�u�f�[�^�폜���Ȃ�]

;�Z�[�u����
[elsif exp="tf.dialog_save_overwrite"]
	[eval exp="tf.dialog_save_overwrite = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*�㏑��save���Ȃ�]
;�Z�[�u����
[elsif exp="tf.dialog_save"]
	[eval exp="tf.dialog_save = 0 , tf.dialog_now = 0"]
	[jump storage="system_savedata_sub.ks" target=*save���Ȃ�]

;�Z�[�u�̃^�C�g���ɖ߂�{�^������
[elsif exp="tf.dialog_savetitle"]
	[eval exp="tf.dialog_savetitle = 0 , tf.dialog_now = 0"]
	[jump storage="system_save.ks" target=*save�^�C�g���ɖ߂�Ȃ�]

;���[�h����
[elsif exp="tf.dialog_load"]
	[eval exp="tf.dialog_load = 0 , tf.dialog_now = 0"]
	[jump storage="system_load.ks" target=*load���Ȃ�]

;���[�h�̃^�C�g���ɖ߂�{�^������
[elsif exp="tf.dialog_loadtitle"]
	[eval exp="tf.dialog_loadtitle = 0 , tf.dialog_now = 0"]
	[jump storage="system_load.ks" target=*load�^�C�g���ɖ߂�Ȃ�]
[endif]



[return]


