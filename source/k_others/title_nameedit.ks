;title_nameedit
*TOP

;���������ăV�X�e���{�^������Ăׂ�񂶂�ˁH
[if    exp="tf.gameplay == 0"]
	;���͗��̃��b�Z�[�W���C��
	[eval exp="tf.message_edit = 'message0'"]
	[eval exp="f.layer_bg_nameedit  = 'base'"]
	[eval exp="f.layer_win_nameedit = 1"]

[elsif exp="tf.gameplay == 1"]
	;�E�N���b�N�T�u���[�`���s��
	[rclick enabled=false]
	;�Z�[�u�s��
	; �x�ɂ͂��߂Ȃ�����
	[disablestore store=false restore=false]
	; �������C����}�~
	[history output=false enabled=false]
	; �m�[�E�F�C�g�ɖ߂�
	[delay speed=nowait]

	;���͗��̃��b�Z�[�W���C�� 3�ԍ��J���Ă邩�炱��ɂ���
	[eval exp="tf.message_edit = 'message3'"]
	;���C�����₵�������ǁA�I�������肪�|������Ȃ�
	[eval exp="f.layer_bg_nameedit  = &kag.numCharacterLayers - 3"]
	[eval exp="f.layer_win_nameedit = &kag.numCharacterLayers - 2"]

	;�J�����͑΍�Ɉ�U�ʕϐ��ɕۑ�
	[eval exp="sf.tmp_name2 = sf.name2"]
[endif]


;�E�N���b�N�𖳌��ɂ���
;[rclick enabled=false]

;�K�v�ȕϐ���`
[eval exp="tf.edit_text_size = 40"]
[eval exp="tf.edit_text_max = 5"]


;���͗��̃��b�Z�[�W���C���̍��W
;�����L��[eval exp="tf.edit_x = 400, tf.edit_y = 300"]
[eval exp="tf.edit_x = (kag.scWidth - (tf.edit_text_size * tf.edit_text_max + 10))/2 , tf.edit_y = 260"]

;OK�{�^�����W
;�����L��[eval exp="tf.edit_OK_x = 150, tf.edit_OK_y = 100"]
[eval exp="tf.edit_OK_x = 50, tf.edit_OK_y = 90"]

;����͈ꉞfirst.ks�ł�����ق��������ˁB�f�o�b�O�����Ƒ���z�񂷂Ɩ��O�o�Ȃ�
;	;�f�t�H���g����
;	;[eval exp="sf.def_name1 = '����'"]
;	;�f�t�H���g���O
;	[eval exp="sf.def_name2 = '�@��'"]


[if    exp="tf.gameplay == 0"]
	[backlay_c]
	[image  storage="bg_nameedit" layer="&f.layer_bg_nameedit" page=back visible=true left=0 top=0]
	[trans_c cross time=1000]
[elsif exp="tf.gameplay == 1"]
	;�V�X�e���{�^�����E�B���h�E����
	[sysbt_meswin clear]
	[backlay_c]
	[image  storage="bg_nameedit" layer="&f.layer_bg_nameedit" page=back visible=true left=0 top=0 opacity=200]
	[image storage="win_nameedit" layer="&f.layer_win_nameedit" page=back visible=true left=385 top=180 opacity=255]

	;�����L����������Η����L�����u���[�@�K�X�ǉ�
	[if    exp="tf.gameplay == 0"]
		[blur layer="&f.layer_ch01" page=back blur_x=5 blur_y=5]
	[endif]

	;�w�i�u���[
	[blur layer=0 page=back blur_x=5 blur_y=5]
	[trans_c b04 time=1000]
[endif]

;-----------------------------------------------------------
*edit
;����
;[eval exp="f.name1 = sf.def_name1"]
;���O
[if exp="tf.gameplay == 0"]
	[eval exp="sf.name2 = sf.def_name2"]
[endif]

; ���O���͉�ʗp���b�Z�[�W���C���̊e��ݒ�
;���O�̃G�f�B�b�g�s�̍��W��D�悵�Ă�̂�OK�{�^���ƃo�b�N�{�^���̍��W�͕ςȂƂ��ɂ���̂Œ���
[position layer="&tf.message_edit" page=fore left="&tf.edit_x" top="&tf.edit_y" width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[layopt   layer="&tf.message_edit" page=fore visible=true]
[current  layer="&tf.message_edit" page=fore]

;�c���͌Œ�
;[edit color="0x0000FF" length=200 maxchars=4 name=f.name1][r]
;�t�H���g�ύX
[font face="�l�r �S�V�b�N" size=40]
;���O�݂̂�f.name2�Œ�`����B
;[edit bgcolor="0x000000" opacity=51 color="0x9df5ff" length="&tf.edit_text_size * tf.edit_text_max + 10" maxchars="&tf.edit_text_max" name=f.name1]�@
[edit bgcolor="0x000000" opacity=51 color="0xffffff" length="&tf.edit_text_size * tf.edit_text_max + 10" maxchars="&tf.edit_text_max" name=sf.name2]
[if    exp="tf.gameplay == 0"]
	[image storage="win_nameedit" layer="&f.layer_win_nameedit" page=fore visible=true left=385 top=180 opacity=255]
[endif]


[locate x="&tf.edit_OK_x" y="&tf.edit_OK_y"][button graphic="dialog_bt_ok" recthit=false target=*ck_name clickse="se_click"]

;[locate x=445 y=300][button_ecse graphic="title_back" recthit=false storage="title.ks"]

;�����N�t�H�[�J�X���c�������̃G�f�B�b�g���Ƀt�H�[�J�X���܂�
;links[0]���ĂȂ񂾂뉽�ڂ���
[eval exp="kag.fore.messages[&tf.message_edit.charAt(7)].links[0].object.focus()"]
[s]

;-----------------------------------------------------------
*ck_name

; ���͓��e���m�肵�܂�
[commit]
[nowait]

;���O������
[if exp="sf.name2 == ''"]
	[cm]

	;�f�t�H���g��������Ă��̂܂܊J�n
	[eval exp="sf.name2 = sf.def_name2" cond="tf.gameplay == 0"]
	[eval exp="sf.name2 = sf.tmp_name2" cond="tf.gameplay == 1"]
	[font face="�l�r �S�V�b�N" size=40]
	[edit bgcolor="0x000000" opacity=51 color="0xffffff" length="&tf.edit_text_size * tf.edit_text_max + 10" maxchars="&tf.edit_text_max" name=sf.name2]
	;�u���O�����󔒂ł��B���O����͂��ĂˁB�v[p]
	;[jump target=*edit]
[endif]

;�g���ė~�����Ȃ����O����͂��ꂽ�Ƃ�
[if exp="f.name2 == '��' || f.name2 == '��' || f.name2 == '�~�A' || f.name2 == '��'"]
	[se_sys buf1 storage="se167"]
	[ptext layer="&f.layer_win_nameedit" visible=true page=fore x=50 y=55 size=20  color="0xff0000" text="&sf.name2 + '�͎g���܂���B�ʂ̖��O�ɂ��ĉ������B'"]

	[waitclick]

	[jump target=*edit]

[endif]

;�������I�[�o�[
;[if exp="f.name1.length > tf.edit_text_max  || f.name2.length > tf.edit_text_max "]
[if exp="sf.name2.length > tf.edit_text_max "]
	�������I�[�o�[�ł��B[p]
	[jump target=*edit]
[endif]

[ jump target=*ck_name2]

;-----------------------------------------------------------
; �f�t�H���g���ɖ߂������Ƃ�
;����ǂ����炭��񂾂���
*defaultname
;[eval exp="f.name1 = sf.def_name1"]
[eval exp="sf.name2 = sf.def_name2"]
[jump target=*edit]


;-----------------------------------------------------------
; ���O�̍ŏI�m�F
*ck_name2

;�ŏI�m�F����Ȃ�����
;	[cm]
;�t�H���g���Z�b�g
[resetfont]
;	;�m�肵����l������\��
;	[ptext face="�l�r �S�V�b�N" layer=2 page=fore x=3 y=3 size=44 color=0x9df5ff shadow=false text="&f.name1"]�@
;	[ptext face="�l�r �S�V�b�N" layer=2 page=fore x=3 y=3 size=44 color=0x9df5ff shadow=false text="&f.name2"]
;
;	;���b�Z�[�W�E�B���h�E�̂ݕ\��
;
;	���Ȃ��̂����O�́A[emb exp=f.name1]�@[emb exp=f.name2]��[�n�[�g][r]
;	�@���̖��O�ł�낵���ł����H
;
;
;	[locate x="&tf.edit_OK_x - 100" y="&tf.edit_OK_y"][button_ecse graphic="dialog_bt_yes" recthit=false target=*ck_OK]
;	[locate x="&tf.edit_OK_x + 100" y="&tf.edit_OK_y"][button_ecse graphic="dialog_bt_no" recthit=false target=*edit]
;
;
;	[s]

;-----------------------------------------------------------
*ck_OK
;�V�i���I���Ȃ��p�̉�ʔ���������
[if exp="tf.gameplay == 1"]
	[jump target=*gameplay]
[endif]

;�����N���b�N���Ă����Ȃ��Ă����̂��Ȃ�
[locklink]

;�{�^���\��O�ɍ���message���C�������
[backlay_c]
[image storage="effect_black" layer="&sf.toplayer" page=back visible=true left=0 top=0 opacity=255 index=1002000]
[trans_c cross time=1000]

[cm]
[freeimage layer=1 page=fore]
;��ԏ�ɓ\�������������@�w�i�\�蒼��
[backlay_c]
[layopt layer="&sf.toplayer"  page=back visible=false]
[image storage="effect_black" layer=base page=back visible=true]
[trans_c cross time=0]

;��ԏ�̃��C����index���Ƃɖ߂�
[layopt layer="&sf.toplayer"  page=back  index="&sf.toplayer * 1000 +1000"]
[layopt layer="&sf.toplayer"  page=back  index="&sf.toplayer * 1000 +1000"]
[fadeoutbgm time=500][wb canskip=true]

[layopt layer=message"&tf.message_edit" page=fore visible=false]
[layopt layer=message"&tf.message_edit" page=back visible=false]

[unlocklink]

;-----------------------------------------------------------
[return]

;=================================================
;��ʔ��������@�V�i���I��
;=================================================
;�V�i���I���̕ύX�@�\�͖���
;	*gameplay
;	;�����N���b�N���Ă����Ȃ��Ă����̂��Ȃ�
;	[locklink]
;
;	[cm]
;
;	[backlay_c]
;	;�w�i�u���[����
;	[blur_off]
;	;�����L�����u���[�����@�K�X�ǉ��@�����L�����͓\�蒼���Ȃ��Ɩ����� �Ȃ񂩂����ɖ�����trans���܂����Ȃ�
;	;�����L����������Η����L�����u���[�@�K�X�ǉ�
;	[if    exp="tf.gameplay == 0"]
;		[blur_off_ch01]
;	[endif]
;	[freeimage layer="&f.layer_bg_nameedit"  page=back]
;	[freeimage layer="&f.layer_win_nameedit" page=back]
;	;�����Ə����Ȃ��Ȃ�
;	;[chara_int layer="&f.layer_bg_nameedit" ]
;	;[chara_int layer="&f.layer_win_nameedit"]
;	[trans_c b04 time=1000]
;
;	;�O�̈�fore������
;	[freeimage layer="&f.layer_bg_nameedit"  page=fore]
;	[freeimage layer="&f.layer_win_nameedit" page=fore]
;
;	[unlocklink]
;
;	; �x�ɂ͂��߂�悤��
;	[disablestore store=true restore=true]
;	; �������C��
;	[history output=true enabled=true]
;
;	;�������牺��systembutton_sub.ks�̗��p
;
;	;�g�又���ł����� �Ȃ�ׂ��e���v���[�h�シ���ɂ�肽������fc�}�N������񂭂Ă����ɂ����B����܂�悭�͂Ȃ��B
;	[if exp="f.zoomon == 1"]
;		[zoom_fore]
;	[endif]
;
;	;blur�p�摜�ĕ\��
;	[if    exp="f.bluron == 1"]
;		[blur_again]
;	[endif]
;
;	;�Y�V�[����z���ɋN������̂݃{�^���������Ȃ����ۂ����������ߒǉ�
;	;mm �ʏ�v���C���̑I���������������Ȃ邩��cond���Ă���
;	[cm cond="f.scene_modeV == 1"]
;	;mm �I�����x�[�X�������Ⴄ�����Uf.selbase���I�t�ɂ��čēx�\�����s������
;	[if exp="f.selnow == 1"]
;		[eval exp="f.selbase = 0"]
;	[endif]
;
;		;�V�X�e����ʒ��Ń_�C�A���O�����Ă��cm���Ă�֌W�ŁA�߂������Ƀx�[�X����������ĂĂ����������̂�p�e�L�X�g���Ă郌�C������U�����Ă���
;		[if exp="f.selbt == 1 || f.selnow == 1"]
;		;�ʂɃ{�^�������Ė����񂾂��ǁB�ނ���߂�O�Ƀ{�^�������Ȃ���freimege���Ă郌�C���𑀍삵�悤�Ƃ��ăG���[��
;		[cm]
;		[freeimage layer="&sf.layer_seltext+1" page=fore][freeimage layer="&sf.layer_seltext+1" page=back]
;		[freeimage layer="&sf.layer_seltext+2" page=fore][freeimage layer="&sf.layer_seltext+2" page=back]
;		[freeimage layer="&sf.layer_seltext+3" page=fore][freeimage layer="&sf.layer_seltext+3" page=back]
;		[freeimage layer="&sf.layer_seltext+4" page=fore][freeimage layer="&sf.layer_seltext+4" page=back]
;		[freeimage layer="&sf.layer_seltext+5" page=fore][freeimage layer="&sf.layer_seltext+5" page=back]
;		[freeimage layer="&sf.layer_seltext+6" page=fore][freeimage layer="&sf.layer_seltext+6" page=back]
;		[freeimage layer="&sf.layer_seltext+7" page=fore][freeimage layer="&sf.layer_seltext+7" page=back]
;		;�I�����}�N���ł��̌`���ő��₵�Ă邩���U�߂��Ȃ��Ƃ��߂�
;		[eval exp="sf.maxlayers = kag.numCharacterLayers - 7"][laycount layers="&sf.maxlayers"]
;		[endif]
;
;	;�Q�[��������
;	[eval exp="tf.gameplay = 0"]
;	;[eval exp="tf.conf = 0"]
;	;�Z���t�����o���΂����ǂ����̔���Ɏg���B�I�t�̓V�i���I����
;	[eval exp="tf.sys_return = 1"]
;
;	;; ��������̞x�R�ɕۑ�����
;	[eval exp="tf.memori3 = 0"]
;	;�X���b�g�Ƀf�[�^�����[�h
;	;[load place=101]
;
;	;�J�����g���C����߂�
;	[current layer=message0]
;
;	;[sysbt_meswin2]
;
;
;	;�}�X�N�摜����
;	;[freeimage layer="&sf.layer_quick" page=fore][freeimage layer="&sf.layer_quick" page=back]
;
;
;	; �}�E�X�E�N���b�N���ꂽ�Ƃ��̓�������ɖ߂��isystem_config.ks���Ń}�E�X�E�N���b�N�̐ݒ肪�ς���Ă��邽�߁j
;	[rclick call=false jump=false]
;
;	;�R���t�B�O����̖߂莞�����`�����Ȃ��B�Ȃ�Ƃ��Ȃ�񂩂Ȃ��B
;	;//;�I�����\�����ɗ��Ă�����sel_sub.ks���Ăяo���đI�������ĕ\������B
;	;//[if exp="f.selnow"]
;	;//	[call storage="sel_sub.ks" target=*sel_sub]
;	;//[endif]
;
;	;//[eval exp="sf.sys_sub = 1"]
;
;	; �E�N���b�N���蓖�Ă�ݒ肷��
;	[call storage="rclick_sub.ks"]
;
;	;�E�B���h�E���ߓx�X���C�_�[��\�����Ȃ���
;	;[setSliderPosition left="&sf.winsld_x" top="&sf.winsld_y"]
;
;	;�Y�V�[�����v���C���ɃZ�[�u�E���[�h�̌�A�R���t�B�O���J���ĕ������̕\���o�O���
;	;mm �ʏ�v���C���̑I���������������Ȃ邩��cond���Ă���
;	[cm cond="f.scene_modeV == 1"]
;	;mm �I�����x�[�X�������Ⴄ�����Uf.selbase���I�t�ɂ��čēx�\�����s������
;	[if exp="f.selnow == 1"]
;		[eval exp="f.selbase = 0"]
;	[endif]
;
;	;����͂���
;	;[jump storage="&f.ksStorageSys" target="&f.ksLabelSys"]
;
;	;�E�B���h�E��0�b�ōĕ\��
;	;f.win_narration == 1�̓i���[�V�����p�̔���
;	[if exp="f.win_narration == 1"]
;		;[sysbt_meswin3]
;		[layopt layer=message0 visible=true page=back]
;		[layopt layer=message0 visible=true page=fore]
;	[else]
;		[s_m cond="f.graphic_bt_sel == 0"]
;	[endif]
;	;���ߓx�𔽉f
;	[eval exp="kag.fore.messages[0].frameOpacity = sf.graphicframe_opacity"]
;	[eval exp="kag.back.messages[0].frameOpacity = sf.graphicframe_opacity"]
;	;�e�L�X�g�ĕ\�����Ƀm�[�^�C���ɂ��邽�߂̃t���O�I��
;	[eval exp="tf.sys_sub = 1" cond="f.graphic_bt_sel == 0"]
;
;	;systembutton.ks�ŋL�^���Ă錻�݂̃t�@�C���ƃ��x���Ƀ��^�[���I
;	[return storage="&f.ksStorageSys" target="&f.ksLabelSys"]

