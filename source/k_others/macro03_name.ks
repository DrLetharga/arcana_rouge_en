; macro_name.ks


;=============================================================
; ���������b�Z�[�W�t���[���ɂ͏o�͂����������ɂ݂̂ɏo��
;=============================================================
;����[layopt layer=message0 left=0 top=537 visible=true][hr]�𖼑O�̌��ɒu���B
;[pcms]�}�N������[layopt layer=message0 left=0 top=578 visible=true]�ɖ߂��B

;hisout�^�O�́A�����ɂ̂݃l�[���`�b�v��[hisout txt="�y"]�@[hisout txt="�z"]��\�����邽�߂̃}�N���B

; ����"]�ŕ����������ɂ̂ݏo��
[macro name=hisout]
	[eval exp="kag.historyLayer.store(mp.txt)" cond="kag.historyWriteEnabled"]
[endmacro]
;=============================================================

	;first.ks�Œ�`
	;�l�[���`�b�v�̃��b�Z�[�W���C�����`
	;[eval exp="sf.message_namechip = 'message4'"]
	;���O���Z�[�u�f�[�^�ɕ\�������悤�ɂ��邽�߂�"&sf.message_hidename"��\���Ŗ��O�����B�O�ׂ̈ɂˁ[�ނ����ՂɉB�����W�ɂ���
	;[eval exp="sf.message_hidename = 'message3'"]

;=============================================================
;�ėp�@�l�[���`�b�v�̃Z�b�g�}�N��
;=============================================================
;�g�p���@ [ns]���O[nse]


[macro name=ns]
		[if     exp="f.�܂����ǂł͂Ȃ� == 0 || sf.allskip == 1"]
			[eval exp="tf.namecolor = sf.kidoku_RGB"]
		[else]	
			[eval exp="tf.namecolor = '0xffffff'"]
		[endif]
	[eval exp="f.namechip_on = 1"]
	[layopt layer="&sf.message_namechip" page=fore visible=true]
	[position layer="&sf.message_namechip" page=fore left="&sf.namechip_x" top="&sf.namechip_y" width="&sf.namechip_w" height="&sf.namechip_h" color=0x000000 frame="" opacity=0 marginL="&sf.namechip_ml" marginT="&sf.namechip_mt"]
	[current layer="&sf.message_namechip"]
;	[font face="user" size="&sf.namechip_size" font color="&tf.namecolor" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" shadow=false]
;�E�B���h�E�̖��O�����̏㉺�����V�r�A�Ȃ̂Ŗ��O�̓S�V�b�N�Œ�ɂ���
	[font face="�l�r �o�S�V�b�N" size="&sf.namechip_size" font color="&tf.namecolor" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor" shadow=false]
;mm ���߂��ȁ@marginRCh�֑�3�����̂����ł��܂��Z���^�����O�ł��Ȃ�
	;���O�Z���^�����O�@autoreturn�i�������s�j��false�ɂ��ċ֑�����������
	[style align=center autoreturn=false]
	[nowait]
	;�V�i���I���y�\�����Ȃ�
	[hisout txt="�y"]
[endmacro]

[macro name=nse]
	;�V�i���I���ł��y�\�����Ȃ�
	[hisout txt="�z"]
	[endnowait][hr][current layer=message0][layopt layer=message0 index=1001000]
	;�߂�
	[style align=left autoreturn=true]
;	[endnowait][hr][current layer=message1]
	;����Ȃ񂾂���
	;[eval exp="sf.text_x = sf.text_x + sf.text_x_namechip"]
[endmacro]

;=============================================================
;�t�F�C�X�E�B���h�E�}�N���@���ʏ���
;=============================================================

[macro name=face_win]
	[eval exp="f.face_win_�o�b�N���O�΍� = 1"]
;============================
;���a�l�@�����G�}�N���Ŏg����悤�ɉ�����
;����������
;============================

	;�I�t����on�������ꂽ��ȍ~off�����������܂ŃI���@onn����of���̂̋L�q�~�X�ւ̑Ή��͍ی����Ȃ��̂őS�p�啶���ƑS�p�����������ǉ��œ���Ă����B��{�I�ɔ��p���������g�p���邱�ƁB
	[eval exp="f.face_win_on = 1" cond="f.face_win_on == 0 && (mp.on || mp.�n�m || mp.���� || mp.�I��||f.lw_face_on)"]
	;�I������off�������ꂽ��ȍ~on�����������܂ŃI�t�B
	;����[off�������Ȃ���
	[eval exp="f.face_win_on = 0" cond="f.face_win_on == 1 && (mp.off || mp.�n�e�e || mp.������ || mp.�I�t||f.lw_face_off)"]

	[eval exp="f.lw_face_on  = 0"]
	[eval exp="f.lw_face_off = 0"]
;============================
;���a�l�@�����G�}�N���Ŏg����悤�ɉ�����
;�������܂�
;============================

;�����message���C���g�p�̂��
;	;�����𗧂��L�����̕ϐ��i�t�@�C�����ƘA���j�B���W�Ƃ����ϐ���
;	;x���W�Œ�������΍��E�؂藎�Ƃ��Ȃ��Ă����ނ����B�摜���ʂɑ傫���Ȃ����Ⴄ����
;	[position layer=message2 page=fore left="&sf.face_win_x" top="&sf.face_win_y" width="&sf.face_win_w" height="&sf.face_win_h" frame="&f.face_win_base"  opacity=255 visible=false]
;	[position layer=message3 page=fore left="&sf.face_win_x" top="&sf.face_win_y" width="&sf.face_win_w" height="&sf.face_win_h" frame="&f.face_win_parts" opacity=255 visible=false]
;	;�t�F�C�X�E�B���h�E�\��
;	[layopt layer=message2 page=fore visible=true  cond="f.face_win_on == 1"]
;	[layopt layer=message3 page=fore visible=true  cond="f.face_win_on == 1"]
;	;�t�F�C�X�E�B���h�E��\�� ����v��H�v��̂��Ȃ�
;	[layopt layer=message2 page=fore visible=false cond="f.face_win_on == 0"]
;	[layopt layer=message3 page=fore visible=false cond="f.face_win_on == 0"]

	;���b�Z�[�W���C�� 1 �� 1001000 �l�[���`�b�v��message4�Bmessage2��index�ł������H
	;�摜��fore�ɓǂݍ��݁B�܂�visible=false
	;�t�F�C�X�E�B���h�E�̃x�[�X &sf.graphicframe_opacity�Ƃ͓�����������255�̂܂܂ɂ���
	[image  layer="&sf.layer_face_winbase" storage="window_facewin_base"   page=fore visible=false  left=0 top=455 opacity="255" index=1002000]

	;�L�����̃x�[�X���灪�̃��C����pimage���悤���Ǝv�������ǁA���W�S���w�肷��K�v���o�邩�炻�̂܂܂ɂ��Ă���
	;[image  layer="&sf.layer_face_win" storage="&f.face_win_base"   page=fore visible=false  left="&f.face_win_x" top="&f.face_win_y" opacity=255 index=1003000]
	;�����@�܂���x���L�����\�������ĂȂ���Ԃ�off���g����storage�̕ϐ������Ė�����Ԃ�����G���[�ɂȂ�B����image�^�O�ɂ�  cond="f.face_win_base != void"���K�v
	[image  layer="&sf.layer_face_win" storage="&f.face_win_base"   page=fore visible=false  left="&f.face_win_x" top="&f.face_win_y" opacity=255 index=1003000  cond="f.face_win_base != void"]
	[pimage layer="&sf.layer_face_win" storage="&f.face_win_parts1" page=fore visible=false  dx=0 dy=0 opacity=255  cond="f.face_win_parts1 != false"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	;�ǉ��p�[�c �قِ���
	[pimage layer="&sf.layer_face_win" storage="&f.face_win_parts2" page=fore visible=false  dx=0 dy=0 mode=mul opacity=200  cond="f.face_win_parts2 != void"]
	;�ǉ��p�[�c
	[pimage layer="&sf.layer_face_win" storage="&f.face_win_parts3" page=fore visible=false  dx=0 dy=0 opacity=255  cond="f.face_win_parts3 != void"]

	;�t�F�C�X�E�B���h�E�̃t���[�� &sf.graphicframe_opacity�Ƃ͓�����������255�̂܂܂ɂ���
	[image  layer="&sf.layer_face_winflame" storage="window_facewin_flame"   page=fore visible=false left=0 top=455 opacity="255" index=1004000]

	;�t�F�C�X�E�B���h�E�\��
	[layopt layer="&sf.layer_face_winbase"  page=fore visible=true  cond="f.face_win_on == 1"]
	[layopt layer="&sf.layer_face_win"      page=fore visible=true  cond="f.face_win_on == 1"]
	[layopt layer="&sf.layer_face_winflame" page=fore visible=true  cond="f.face_win_on == 1"]
	;�t�F�C�X�E�B���h�E��\�� ����v��H�v��̂��Ȃ�
	[layopt layer="&sf.layer_face_winbase"  page=fore visible=false cond="f.face_win_on == 0"]
	[layopt layer="&sf.layer_face_win"      page=fore visible=false cond="f.face_win_on == 0"]
	[layopt layer="&sf.layer_face_winflame" page=fore visible=false cond="f.face_win_on == 0"]

	;�t�F�C�X�E�B���h�E���\�������ۂ��̕ϐ��BMainWindow.tjs�ŃE�B���h�E���\���E�\�����������̔���Ɏg��
	[eval exp="f.face_win = 1"  cond="f.face_win_on == 1"]
	[eval exp="f.face_win = 0"  cond="f.face_win_on == 0"]
[endmacro]

;=============================================================
;�ʁ@�t�F�C�X�E�B���h�E�t��
;=============================================================

[macro name=name_chara01]

;	[eval exp="f.face_win_char01_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char01_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char01_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char01_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char01_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char01_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char01_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char01_pose1_y"]
	[elsif exp="f.face_win_char01_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char01_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char01_pose2_y"]
	[elsif exp="f.face_win_char01_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char01_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char01_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara01 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara01 = void"     cond="f.name_chara01 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara01 != void"]
		[ns][emb exp="f.name_chara01"][nse]
	;[elsif exp="f.name_chara02 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara01"][nse]
	[endif]
[endmacro]


[macro name=name_chara02]

;	[eval exp="f.face_win_char02_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char02_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char02_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char02_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char02_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char02_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char02_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char02_pose1_y"]
	[elsif exp="f.face_win_char02_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char02_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char02_pose2_y"]
	[elsif exp="f.face_win_char02_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char02_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char02_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara02 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara02 = void"     cond="f.name_chara02 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara02 != void"]
		[ns][emb exp="f.name_chara02"][nse]
	;[elsif exp="f.name_chara02 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara02"][nse]
	[endif]
[endmacro]


[macro name=name_chara03]

;	[eval exp="f.face_win_char03_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char03_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char03_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char03_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char03_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char03_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char03_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char03_pose1_y"]
	[elsif exp="f.face_win_char03_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char03_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char03_pose2_y"]
	[elsif exp="f.face_win_char03_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char03_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char03_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara03 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara03 = void"     cond="f.name_chara03 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara03 != void"]
		[ns][emb exp="f.name_chara03"][nse]
	;[elsif exp="f.name_chara03 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara03"][nse]
	[endif]
[endmacro]


[macro name=name_chara04]

;	[eval exp="f.face_win_char04_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char04_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char04_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char04_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char04_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char04_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char04_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char04_pose1_y"]
	[elsif exp="f.face_win_char04_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char04_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char04_pose2_y"]
	[elsif exp="f.face_win_char04_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char04_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char04_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara04 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara04 = void"     cond="f.name_chara04 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara04 != void"]
		[ns][emb exp="f.name_chara04"][nse]
	;[elsif exp="f.name_chara04 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara04"][nse]
	[endif]
[endmacro]


[macro name=name_chara05]

;	[eval exp="f.face_win_char05_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char05_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char05_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char05_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char05_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char05_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char05_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char05_pose1_y"]
	[elsif exp="f.face_win_char05_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char05_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char05_pose2_y"]
	[elsif exp="f.face_win_char05_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char05_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char05_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara05 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara05 = void"     cond="f.name_chara05 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara05 != void"]
		[ns][emb exp="f.name_chara05"][nse]
	;[elsif exp="f.name_chara05 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara05"][nse]
	[endif]
[endmacro]


[macro name=name_chara06]

;	[eval exp="f.face_win_char06_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char06_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char06_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char06_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char06_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char06_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char06_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char06_pose1_y"]
	[elsif exp="f.face_win_char06_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char06_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char06_pose2_y"]
	[elsif exp="f.face_win_char06_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char06_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char06_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara06 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara06 = void"     cond="f.name_chara06 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara06 != void"]
		[ns][emb exp="f.name_chara06"][nse]
	;[elsif exp="f.name_chara06 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara06"][nse]
	[endif]
[endmacro]


[macro name=name_chara07]

;	[eval exp="f.face_win_char07_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char07_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char07_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char07_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char07_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char07_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char07_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char07_pose1_y"]
	[elsif exp="f.face_win_char07_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char07_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char07_pose2_y"]
	[elsif exp="f.face_win_char07_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char07_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char07_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara07 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara07 = void"     cond="f.name_chara07 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara07 != void"]
		[ns][emb exp="f.name_chara07"][nse]
	;[elsif exp="f.name_chara07 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara07"][nse]
	[endif]
[endmacro]


[macro name=name_chara08]

;	[eval exp="f.face_win_char08_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char08_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char08_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char08_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char08_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char08_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char08_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char08_pose1_y"]
	[elsif exp="f.face_win_char08_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char08_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char08_pose2_y"]
	[elsif exp="f.face_win_char08_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char08_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char08_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara08 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara08 = void"     cond="f.name_chara08 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara08 != void"]
		[ns][emb exp="f.name_chara08"][nse]
	;[elsif exp="f.name_chara08 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara08"][nse]
	[endif]
[endmacro]


[macro name=name_chara09]

;	[eval exp="f.face_win_char09_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char09_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char09_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char09_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char09_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char09_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char09_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char09_pose1_y"]
	[elsif exp="f.face_win_char09_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char09_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char09_pose2_y"]
	[elsif exp="f.face_win_char09_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char09_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char09_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara09 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara09 = void"     cond="f.name_chara09 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara09 != void"]
		[ns][emb exp="f.name_chara09"][nse]
	;[elsif exp="f.name_chara09 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara09"][nse]
	[endif]
[endmacro]


[macro name=name_chara10]

;	[eval exp="f.face_win_char10_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char10_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char10_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char10_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char10_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char10_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char10_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char10_pose1_y"]
	[elsif exp="f.face_win_char10_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char10_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char10_pose2_y"]
	[elsif exp="f.face_win_char10_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char10_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char10_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara10 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara10 = void"     cond="f.name_chara10 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara10 != void"]
		[ns][emb exp="f.name_chara10"][nse]
	;[elsif exp="f.name_chara10 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara10"][nse]
	[endif]
[endmacro]


[macro name=name_chara11]

;	[eval exp="f.face_win_char11_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char11_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char11_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char11_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char11_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char11_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char11_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char11_pose1_y"]
	[elsif exp="f.face_win_char11_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char11_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char11_pose2_y"]
	[elsif exp="f.face_win_char11_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char11_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char11_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]


	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara11 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara11 = void"     cond="f.name_chara11 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara11 != void"]
		[ns][emb exp="f.name_chara11"][nse]
	;[elsif exp="f.name_chara12 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara11"][nse]
	[endif]
[endmacro]


[macro name=name_chara12]

;	[eval exp="f.face_win_char12_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char12_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char12_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char12_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char12_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char12_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char12_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char12_pose1_y"]
	[elsif exp="f.face_win_char12_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char12_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char12_pose2_y"]
	[elsif exp="f.face_win_char12_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char12_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char12_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]
	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara12 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara12 = void"     cond="f.name_chara12 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara12 != void"]
		[ns][emb exp="f.name_chara12"][nse]
	;[elsif exp="f.name_chara12 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara12"][nse]
	[endif]
[endmacro]


[macro name=name_chara13]

;	[eval exp="f.face_win_char13_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char13_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char13_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char13_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char13_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char13_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char13_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char13_pose1_y"]
	[elsif exp="f.face_win_char13_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char13_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char13_pose2_y"]
	[elsif exp="f.face_win_char13_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char13_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char13_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara13 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara13 = void"     cond="f.name_chara13 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara13 != void"]
		[ns][emb exp="f.name_chara13"][nse]
	;[elsif exp="f.name_chara13 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara13"][nse]
	[endif]
[endmacro]


[macro name=name_chara14]

;	[eval exp="f.face_win_char14_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char14_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char14_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char14_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char14_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char14_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char14_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char14_pose1_y"]
	[elsif exp="f.face_win_char14_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char14_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char14_pose2_y"]
	[elsif exp="f.face_win_char14_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char14_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char14_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara14 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara14 = void"     cond="f.name_chara14 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara14 != void"]
		[ns][emb exp="f.name_chara14"][nse]
	;[elsif exp="f.name_chara14 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara14"][nse]
	[endif]
[endmacro]


[macro name=name_chara15]

;	[eval exp="f.face_win_char15_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char15_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char15_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char15_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char15_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char15_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char15_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char15_pose1_y"]
	[elsif exp="f.face_win_char15_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char15_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char15_pose2_y"]
	[elsif exp="f.face_win_char15_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char15_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char15_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara15 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara15 = void"     cond="f.name_chara15 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara15 != void"]
		[ns][emb exp="f.name_chara15"][nse]
	;[elsif exp="f.name_chara15 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara15"][nse]
	[endif]
[endmacro]

[macro name=name_chara16]

;	[eval exp="f.face_win_char16_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char16_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char16_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char16_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char16_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char16_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char16_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char16_pose1_y"]
	[elsif exp="f.face_win_char16_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char16_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char16_pose2_y"]
	[elsif exp="f.face_win_char16_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char16_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char16_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara16 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara16 = void"     cond="f.name_chara16 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara16 != void"]
		[ns][emb exp="f.name_chara16"][nse]
	;[elsif exp="f.name_chara16 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara16"][nse]
	[endif]
[endmacro]

[macro name=name_chara17]

;	[eval exp="f.face_win_char17_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char17_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char17_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char17_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char17_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char17_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char17_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char17_pose1_y"]
	[elsif exp="f.face_win_char17_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char17_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char17_pose2_y"]
	[elsif exp="f.face_win_char17_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char17_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char17_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara17 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara17 = void"     cond="f.name_chara17 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara17 != void"]
		[ns][emb exp="f.name_chara17"][nse]
	;[elsif exp="f.name_chara17 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara17"][nse]
	[endif]
[endmacro]

[macro name=name_chara18]

;	[eval exp="f.face_win_char18_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char18_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char18_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char18_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char18_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char18_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char18_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char18_pose1_y"]
	[elsif exp="f.face_win_char18_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char18_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char18_pose2_y"]
	[elsif exp="f.face_win_char18_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char18_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char18_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara18 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara18 = void"     cond="f.name_chara18 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara18 != void"]
		[ns][emb exp="f.name_chara18"][nse]
	;[elsif exp="f.name_chara18 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara18"][nse]
	[endif]
[endmacro]

[macro name=name_chara19]

;	[eval exp="f.face_win_char19_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char19_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char19_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char19_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char19_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char19_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char19_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char19_pose1_y"]
	[elsif exp="f.face_win_char19_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char19_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char19_pose2_y"]
	[elsif exp="f.face_win_char19_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char19_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char19_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara19 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara19 = void"     cond="f.name_chara19 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara19 != void"]
		[ns][emb exp="f.name_chara19"][nse]
	;[elsif exp="f.name_chara19 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara19"][nse]
	[endif]
[endmacro]

[macro name=name_chara20]

;	[eval exp="f.face_win_char20_base = 'test_std'"]

	;�t�F�C�X�E�B���h�E�p�̉摜��`
	[eval exp="f.face_win_base   = f.face_win_char20_base"]
	[eval exp="f.face_win_parts1 = f.face_win_char20_parts1"]
	;�w�\��ȊO�x�̒ǉ��p�[�c ����ł�2�B�^�C�g���ɂ��v����
	[eval exp="f.face_win_parts2 = f.face_win_char20_parts2"]
	[eval exp="f.face_win_parts3 = f.face_win_char20_parts3"]

	;�|�[�Y�ɂ����W��`
	[if    exp="f.face_win_char20_pose == 1"]
		[eval exp="f.face_win_x = sf.face_win_char20_pose1_x"]
		[eval exp="f.face_win_y = sf.face_win_char20_pose1_y"]
	[elsif exp="f.face_win_char20_pose == 2"]
		[eval exp="f.face_win_x = sf.face_win_char20_pose2_x"]
		[eval exp="f.face_win_y = sf.face_win_char20_pose2_y"]
	[elsif exp="f.face_win_char20_pose == 3"]
		[eval exp="f.face_win_x = sf.face_win_char20_pose3_x"]
		[eval exp="f.face_win_y = sf.face_win_char20_pose3_y"]
	[endif]

	;�t�F�C�X�E�B���h�E�}�N��
	;�C�x���g�\�����łȂ��Ȃ�\���B�������́A�C�x���g���I����������Ă���\��
	[if exp="f.BGorEV != 2 || (f.BGorEV == 2 && mp.on)"]
		[face_win * ]
	[endif]

	;�H�H�H�Ƃ��ʖ��ɂ��鎞�̂��߂ɑł������B
	;�ʖ����ݒ肳��ĂȂ���Ԃł������ꂽ��void�ɖ߂�
	[eval exp="f.name_chara20 = mp.name"  cond="mp.name != void"]
	[eval exp="f.name_chara20 = void"     cond="f.name_chara20 != void && (mp.r || mp.reset || mp.�� || mp.���Z�b�g)"]

	[if    exp="f.name_chara20 != void"]
		[ns][emb exp="f.name_chara20"][nse]
	;[elsif exp="f.name_chara20 == void"]
	;���̖h�~�ɏ��������̂ق����ǂ����H
	[else]
	;	
		[ns][emb exp="sf.name_def_chara20"][nse]
	[endif]
[endmacro]


;=============================================================
;��l�����O�ύX
;=============================================================
;=============================================================
;��l�����O
;=============================================================

;	[macro name="name1"]
;		[emb exp="sf.name1"]
;	[endmacro]
;
;	[macro name="name2"]
;		[emb exp="sf.name2"]
;	[endmacro]

[macro name="��l��name1"]
	[emb exp="sf.name1"]
[endmacro]

[macro name="��l��name2"]
	;���̖h�~�ɃJ���ɂȂ��Ă���f�t�H��������
	[eval exp="sf.name2 = sf.def_name2" cond="sf.name2 == void"]
	[emb exp="sf.name2"]
[endmacro]


;=============================================================
;�t�@�C�����ňꊇ�Ŗ��O���Z�b�g����}�N��
;=============================================================

[macro name="name_allreset"]
	[eval exp="f.name_chara01 = void"]
	[eval exp="f.name_chara02 = void"]
	[eval exp="f.name_chara03 = void"]
	[eval exp="f.name_chara04 = void"]
	[eval exp="f.name_chara05 = void"]
	[eval exp="f.name_chara06 = void"]
	[eval exp="f.name_chara07 = void"]
	[eval exp="f.name_chara08 = void"]
	[eval exp="f.name_chara09 = void"]
	[eval exp="f.name_chara10 = void"]
	[eval exp="f.name_chara11 = void"]
[endmacro]

;=============================================================


[return]

