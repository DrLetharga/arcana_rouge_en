
;===========================================================
;             �f�o�b�O�p�@�N�����ɃR���\�[���o�����        
;===========================================================
;[iscript]
;//Debug.controller.visible = kag.debugMenu.visible;  // �R���g���[����\��
;Debug.console.visible = kag.debugMenu.visible;     // �R���\�[����\��
;[endscript]

;���Ԃ�g���Ȃ�
; //�f�o�b�O���ɂ����O�ɖ߂�L���@�_�C�A���O���o���Ȃ����߂̃t���O��`
;[eval exp="sf.returnAsk = false"]

;===========================================================
;                      ���p����                           
;===========================================================

;�^�C�g����ʍs���O�ɒ�`
[eval exp="sf.gameID_01 ='�A���J�i���[�W��'"]
[eval exp="sf.addgameID_01 = ''"]

;===========================================================
;                      �׈��p����                           
;===========================================================
;�Z�[�u�}�X�N
;�ʃ^�C�g����`������

;first.ks�Ă΂�Ă���Ă��Ƃ͋N���������烊�Z�b�g���Ă������H�������Ȃ��Ǝ���͏I������^�C�g������n�܂����Ⴄ����B
;�ʃ^�C�g���t���O���Z�b�g
[eval exp="sf.gameID    = void"]
[eval exp="sf.addgameID = void"]
[eval exp="sf.gameNo    = void"]

;===========================================================
;              �V�X�e���o�[�W��������`                   
;===========================================================

[call storage="0�V�X�e���o�[�W�������.ks"]

;===========================================================
;                     loadplugin                            
;===========================================================

;ogg
[loadplugin module="wuvorbis.dll"]

;extrans�p
[loadplugin module="extrans.dll"]

;===========================================================
;                      �v���O�C��                           
;===========================================================

;�}�E�X�ŃQ�[���E�B���h�E�T�C�Y�C�ӂɕύX�v���O�C��
[call storage="WindowResizable.ks"]

[call storage="systembutton.ks"]
;�����{�^�����ɃE�B���h�E��hide�{�^���t���邽�߂̂��
;[call storage="systembutton2.ks"]

; �e��p�����[�^�ݒ�p�T�u���[�`�����Ăяo��

; ��ʗh�炵�v���O�C���Ăяo��
;���������V�i���I���g�p�s���������@�o�g����ʂŕK�v�Ȃ̂Ŏg��
[call storage="QuakeSpPlugin.ks"]

; �I�����{�^���v���O�C���Ăяo��
[call storage="ButtonLinkPlugin.ks"]

; ���C���[���[�V�����v���O�C���������̂ɕK�v
[call storage="Interpolation.ks"]

; ���C���[���[�V�����v���O�C��
[call storage="LayerMotionPlugin.ks"]


;===========================================================
;              �V�X�e���n�{�^�������W��`                   
;===========================================================

;�V�X�e���n�{�^�������W�ݒ�T�u���[�`���Ăяo��
[call storage="first_sub_xy.ks"]


;===========================================================
;                    �}�N���t�@�C��                         
;===========================================================

[call storage="macro01.ks"]
[call storage="macro02_win.ks"]
[call storage="macro03_name.ks"]
[call storage="macro04_sound.ks"]
[call storage="macro05_effect.ks"]
[call storage="macro06_bg.ks"]
[call storage="macro07_evcg.ks"]
[call storage="macro08_std.ks"]
;macro09_sel02�ɂ܂Ƃ߂�����s�v[call storage="macro09_sel01.ks"]
[call storage="macro09_sel02.ks"]
[call storage="macro10_movie.ks"]
[call storage="macro11_quake.ks"]
[call storage="macro_bonus_page_bt.ks"]
[call storage="macro_bonus.ks"]

[call storage="macro13_macro_scene.ks"]
[call storage="macro14_macro_zoom.ks"]
[call storage="macro15_macro_blur.ks"]
[call storage="macro16_button.ks"]
[call storage="macro17_sys_sub.ks"]
[call storage="macro18_facewin.ks"]

[call storage="stmove.ks"]
[call storage="zoom_back.ks"]
[call storage="zoom.ks"]
[call storage="affine.ks"]



;�e�^�C�g�������}�N��
[call storage="macro08_std_ch01.ks"]
[call storage="macro08_std_ch02.ks"]
[call storage="macro08_std_ch03.ks"]
[call storage="macro08_std_ch04.ks"]
[call storage="macro08_std_mob_ch05��l��.ks"]
[call storage="macro08_std_mob_ch06�J�N�G��.ks"]
[call storage="macro08_std_mob_ch07�~�Y�`.ks"]
[call storage="macro08_std_mob_ch08�V���E�W���E.ks"]
[call storage="macro08_std_mob_ch09���������`.ks"]
[call storage="macro08_std_mob_ch10���������a.ks"]
[call storage="macro08_std_mob_ch11��.ks"]

[call storage="_�Z���}�N��.ks"]
[call storage="_�A���J�i��p�}�N��.ks"]

;===========================================================
;                     ��l���f�t�H���O                      
;===========================================================

;�f�t�H���g����
;[eval exp="sf.def_name1 = '��l��'"]
;�f�t�H���g���O
[eval exp="sf.def_name2 = '��l��'"]

;===========================================================
;                     �J�[�\���ύX                          
;===========================================================

;�J�[�\���ύX�B�萔����Ȃ���Ή摜���p�ӂ��Ȃ��Ƃ��߁B
;[cursor pointed="crStar.cur" click="crStar.cur" draggable="crStar.cur"]


;===========================================================
;                      ���C����`                           
;===========================================================

;���C��������`�@10�܂ŃV�i���I�Ŏg����悤�ɂ���Quick��21�@�I������22�ɂ��邩�Bindex��Quick�̂ق�����B
[eval exp="sf.maxlayers = 26"]
[eval exp="sf.def_maxlayers = sf.maxlayers"]
;������sf�œ���Ă邯��f�̂ق����ǂ������񂶂�H
[laycount layers="&sf.maxlayers"]
;��ԏ�ɂȂ郌�C���ԍ���`
[eval exp="sf.toplayer = sf.maxlayers - 3"]




;New�}�[�N
;���Z�[�u���[�h��ʂŒ�`�ɕύX[eval exp="sf.newmarklayer = 13"]
;�g���ĂȂ�	;�U�b�v�{�^��
;	[eval exp="sf.zap_message = 'message5'"]
;	[eval exp="sf.zap_x = [50,500]"]
;	[eval exp="sf.zap_y = [100,650]"]
;�Z�[�u�}�X�N
;[eval exp="sf.layer_msk = 11"]
;[eval exp="sf.layer_msk = kag.numCharacterLayers - 2"]
;��̃��C���ɂ���index����̂ق����������H�ʓ|�����ǁB�I��������Ƃ��͑I������艺�ɂȂ�悤�ɂ��Ȃ��ƁB
;0 �C�x���g
;1 �C�x���g�\��
;2 �C�x���g�\��
;3��index �}�X�N
;4 �J�b�g�C��
;5 �J�b�g�C���\��
;6��index �}�X�N

;���S�̓r�b�`�P�ł����g��Ȃ��ϐ�
[eval exp="sf.layer_evcg      = 0"]
[eval exp="sf.layer_msk       = kag.numCharacterLayers - 3"]
;;�J�b�g�C���p�@2���\��Ƃ����邩�炻�̕�������
[eval exp="sf.layer_evcg_cutin = 4"]
[eval exp="sf.layer_msk2       = kag.numCharacterLayers - 2"]

;�^�C�g�����ɃZ�[�u�}�X�N���C����index�ł����������őł��������Ă����񂾂������Ȃ�
;�v���C���Ă�Q�[���͒�`�O������ʉ߂��ĂȂ��B���̃��C����`�ł��Ȃ��̃��C���w�肵�Ă邩�炢���̂�
;��������_���`cgmsk.ks��	[eval exp="sf.layer_msk_index = 4000"]


;�t�F�C�X�E�B���h�E�̃x�[�X
[eval exp="sf.layer_face_winbase  = kag.numCharacterLayers - 5"]
;�t�F�C�X�E�B���h�E
[eval exp="sf.layer_face_win      = kag.numCharacterLayers - 4"]
;�t�F�C�X�E�B���h�E�̃t���[��
[eval exp="sf.layer_face_winflame = kag.numCharacterLayers - 3"]
;�E�B���h�E�@���b�Z�[�W���C��0�Ɠ���index�ɂ��Ă��̃��C���̉��Z�F�𑀍삷��
;[eval exp="sf.layer_win = 23"]

;effect
;[eval exp="sf.effectlayer = 12"]
;&sf.effectlayer �t�F�C�X�̃t���[���Ɣ��������Ă�Ȃ� -2�ɂ�����

[eval exp="sf.effectlayer = kag.numCharacterLayers - 2"]
;effect�G���p
;[eval exp="sf.effectlayerH = 13"]
[eval exp="sf.effectlayerH = kag.numCharacterLayers - 2"]


;�I�����̃e�L�X�g 10���ƃN�C�b�N�Z�[�u���[�h�̉��o�Ɏg���Ă�sf.mask_dialog�Ƃ��Ԃ����Ⴄ
;[eval exp="sf.layer_seltext = 13"]
[eval exp="sf.layer_seltext = kag.numCharacterLayers - 1"]

;�_�C�A���O�x�[�X�摜�@YESNO����Ȃ������Ȃ���A�܂����̂܂܂ɂ��Ă���
;[eval exp="sf.layer_dialog_yesno = 15"]
[eval exp="sf.layer_dialog_yesno =  kag.numCharacterLayers - 1"]


;���ꌳ�̓Z�[�u�}�X�N�ƃ_�C�A���O�\���Ă����C�������ǁA���̓N�C�b�N�Z�[�u���[�h���o�������H
;���O�ς���[eval exp="sf.mask_dialog = 12"]
;kag.numCharacterLayers���������`�̎d�����ƑI�����L��Ƃ��ɉς����Ⴄ����
; �t�F�C�X�E�B���h�E��index������������Ă��܂��c�c���烌�C���Œ肵�Ȃ��Ƃ��߂�
;laycount �^�O�����s����ƁA���̏d�ˍ��킹�����͕W���̏�Ԃɖ߂���Ă��܂��ꍇ������̂Œ��ӂ��Ă��������B
;�I�����̎���index�߂�������Ă邩��Apcmssel�Ńt�F�C�X�E�B���h�E�\�������܂܂ɂ������ꍇ�́A�I�����̃��C�����Œ肵�Ȃ��Ƃ��߁B
[eval exp="sf.layer_quick = kag.numCharacterLayers - 2"]

;�R���t�B�O���b�Z�[�W�E�B���h�E�̃x�[�X�摜�i���̃��C���̔Z�x�����삳���j
;���R���t�B�O��ʂŒ�`�ɕύX[eval exp="sf.conf_fakemessage = 11"]



;���O���Z�[�u�f�[�^�ɕ\�������悤�ɂ��邽�߂�"&sf.message_hidename"��\���Ŗ��O�����B�O�ׂ̈ɂˁ[�ނ����ՂɉB�����W�ɂ���
[eval exp="sf.message_hidename = 'message3'"]

;�l�[���`�b�v
[eval exp="sf.message_namechip = 'message4'"]

;�I�����{�^��
[eval exp="sf.message_selbase = 'message5'"]

;�_�C�A���O�{�^��
;[eval exp="sf.message_dialog = 'message7'"]
;�R���t�B�O�̃T���v�����b�Z�[�W2�s������悤�ɂ����̂�index��1��ɂ�����
[eval exp="sf.message_dialog = 'message8'"]


;===========================================================
;                   �K�v�ȕϐ���`                          
;===========================================================

;�Z�[�u���Ƀe�L�X�g�\��������
[eval exp="f.noStoreCurrentMessage = false"]

;�}�X�N�p�t���O��0�ɁBvoid����I�t�������ɃZ�[�u��ʂł̓��삪���Ȃ��Ǝv������B
;�����p�������̂���
[eval exp="f.stdmsk = 0"]

;�R���t�B�O�p�t���O�B�ʓ|�Ȃ̂ł����ŃI���ɂ��Ă����B
[if exp="sf.first != 1"]
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
	;�I�[�g���Đ��I���҂�
	[eval exp="sf.v_autowait = 1"]
	;�m�F�_�C�A���O
	[eval exp="sf.dialog_on = 1"]
	;���b�Z�[�W���ߓx�̃X���C�_�[
	;[eval exp="sf.winsld_y = 700"]
	;[eval exp="sf.winsld�\�� = 1"]
	;��ʃT�C�Y��`
	[eval exp="sf.conf_winsize = 2"]
	;�E�N���b�N���蓖�Ē�`
	[eval exp="sf.conf_rclick = 1"]
	;�R���t�B�O�y�[�W
	[eval exp="sf.cnf_mes = 1"]

	[eval exp="sf.defkidoku_R = 255"]
	[eval exp="sf.defkidoku_G = 255"]
	[eval exp="sf.defkidoku_B = 255"]
	[eval exp="sf.defkidoku_edgeR = 0"]
	[eval exp="sf.defkidoku_edgeG = 70"]
	[eval exp="sf.defkidoku_edgeB = 0"]
	[eval exp="sf.kidoku_R     = sf.defkidoku_R"]
	[eval exp="sf.kidoku_G     = sf.defkidoku_G"]
	[eval exp="sf.kidoku_B     = sf.defkidoku_B"]
	[eval exp="sf.kidoku_edgeR = sf.defkidoku_edgeR"]
	[eval exp="sf.kidoku_edgeG = sf.defkidoku_edgeG"]
	[eval exp="sf.kidoku_edgeB = sf.defkidoku_edgeB"]

	[iscript]
			//�G�b�W�J���[�Z�o
			sf.kidoku_Edgecolor = '0x%02x%02x%02x'.sprintf(sf.kidoku_edgeR, sf.kidoku_edgeG, sf.kidoku_edgeB);
	[endscript]
	[eval exp="sf.edge_on = 1"]
	[eval exp="sf.kidoku_color_CHOUSEI = 120"]


	;BGM��SE�̃f�t�H���ʂ�ݒ�
	[eval exp="sf.BGM_defvolume   = 60"]
	[eval exp="sf.SE_defvolume    = 80"]
	[eval exp="sf.CHARA_defvolume = 80"]
	[eval exp="sf.BGV_defvolume = 80"]

;	[eval exp="sf.BGV_defvolume   = 30"]
	;����g���ĂȂ��H��
	[eval exp="sf.bgmopt   = 70"]
	;BGM.tjs��var volume = 20000;�@�ɂ��Ă���
	[bgmopt gvolume="&sf.BGM_defvolume"]
	;SE
	[seopt buf=0 gvolume="&sf.SE_defvolume"]
	[seopt buf=1 gvolume="&sf.SE_defvolume"]
	[seopt buf=2 gvolume="&sf.SE_defvolume"]
	[seopt buf=3 gvolume="&sf.SE_defvolume"]
	;�{�C�X first_sub_xyd�Œ�`���Ă�ϐ��Ŕ���
	[seopt buf="&sf.chara01_buf"  gvolume="&sf.CHARA_defvolume"]
	[seopt buf="&sf.chara01L_buf" gvolume="&sf.BGV_defvolume"]
	[seopt buf="&sf.chara02_buf"  gvolume="&sf.CHARA_defvolume"]
	[seopt buf="&sf.chara02L_buf" gvolume="&sf.BGV_defvolume"]
	[seopt buf="&sf.chara03_buf"  gvolume="&sf.CHARA_defvolume"]
	[seopt buf="&sf.chara03L_buf" gvolume="&sf.BGV_defvolume"]
	[seopt buf="&sf.chara04_buf" gvolume="&sf.CHARA_defvolume"]
	[seopt buf="&sf.chara04L_buf" gvolume="&sf.BGV_defvolume"]
;	[seopt buf="&sf.chara05_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara06_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara07_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara08_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara09_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara10_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara11_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara12_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara13_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara14_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara15_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf="&sf.chara16_buf" gvolume="&sf.CHARA_defvolume"]
;	[seopt buf=5  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=7  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=9  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=11 gvolume="&sf.BGV_defvolume"]
	;BGM�ESE�E�{�C�X�I���I�t�p�t���O�B�N�����̓I���B
	[eval exp="sf.bgmplay = 1"]
	[eval exp="sf.seplay = 1"]

;	[seopt buf=5  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=7  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=9  gvolume="&sf.BGV_defvolume"]
;	[seopt buf=11 gvolume="&sf.BGV_defvolume"]
	;BGM�ESE�E�{�C�X�I���I�t�p�t���O�B�N�����̓I���B
	[eval exp="sf.bgmplay = 1"]
	[eval exp="sf.seplay = 1"]

;����N�����ł͂܂��L����������`���ĂȂ��̂ŏ��������őS����`
;�o�b�t�@�L�������ɌŒ�ɕύX����̂ł����Őݒ肵�Ă��܂�
; �����u�s�v�Ȃ�v����
	[eval exp="sf.chara01_v = 1" cond="sf.bt_num_chara01  != void"]
	[eval exp="sf.chara01_L = 1" cond="sf.bt_num_chara01L != void"]
	[eval exp="sf.chara02_v = 1" cond="sf.bt_num_chara02  != void"]
	[eval exp="sf.chara02_L = 1" cond="sf.bt_num_chara02L != void"]
	[eval exp="sf.chara03_v = 1" cond="sf.bt_num_chara03  != void"]
	[eval exp="sf.chara03_L = 1" cond="sf.bt_num_chara03L != void"]
	[eval exp="sf.chara04_v = 1" cond="sf.bt_num_chara04  != void"]
	[eval exp="sf.chara04_L = 1" cond="sf.bt_num_chara04L != void"]
;	[eval exp="sf.chara05_v = 1" cond="sf.bt_num_chara05  != void"]
;	[eval exp="sf.chara05_v = 1"]
;	[eval exp="sf.chara06_v = 1"]
;	[eval exp="sf.chara07_v = 1"]
;	[eval exp="sf.chara08_v = 1"]
;	[eval exp="sf.chara09_v = 1"]
;	[eval exp="sf.chara10_v = 1"]
;	[eval exp="sf.chara11_v = 1"]
;	[eval exp="sf.chara12_v = 1"]
;	[eval exp="sf.chara13_v = 1"]
;	[eval exp="sf.chara14_v = 1"]
;	[eval exp="sf.chara15_v = 1"]
;	[eval exp="sf.chara16_v = 1"]

;	[eval exp="sf.chara01_vl = 1"]
;	[eval exp="sf.chara02_vl = 1"]
;	[eval exp="sf.chara03_vl = 1"]
;	[eval exp="sf.chara04_vl = 1"]
;	[eval exp="sf.chara05_vl = 1"]

;	[eval exp="sf.charaALL_lv = 1"]

[endif]

;===========================================================
;                �u�����h���S�E�x����                       
;===========================================================





;--------------------
;�u�����h���S�@���[�r�[�o�[�W����
;[se buf=0 storage="callvoice_B"]


; �r�f�I�̑�����ݒ� �E�B���h�E�̃T�C�Y�ɂ���ă��[�r�[��WH���ς��邩���ʔ䗦�ς��Ƃ��͒���
[if exp="sf.conf_winsize == 1"]
	[video visible=true left=0 top=0 width=960 height=540]
[else]
	[video visible=true left=0 top=0 width=1280 height=720]
[endif]

;[openvideo storage="brand_chaos.mpg"]
;�u�����h���[�r�[
[if    exp="sf.callvoice_TB == 0"]
	[eval exp="sf.callvoice_TB += 1"]
	;
	[openvideo storage="CHAOS-RbrandCall_aka.mpg"]

[elsif exp="sf.callvoice_TB == 1"]
	[eval exp="sf.callvoice_TB += 1"]
	;
	[openvideo storage="CHAOS-RbrandCall_aoi.mpg"]

[elsif exp="sf.callvoice_TB == 2"]
	[eval exp="sf.callvoice_TB += 1"]
	;
	[openvideo storage="CHAOS-RbrandCall_mia.mpg"]

[elsif exp="sf.callvoice_TB >= 3"]
	[eval exp="sf.callvoice_TB = 0"]
	;
	[openvideo storage="CHAOS-RbrandCall_mei.mpg"]

[endif]



; �r�f�I�̍Đ�
[playvideo]
[video volume=50]

;�X�L�b�v�\
[wv canskip=true]
;[ws buf=0 canskip=true]
;[stopse buf=0]
;mode�g�����Ƃ��͂����ƒ�~���߂Ȃ��Ǝ���movie���Đ��ł��Ȃ��݂���
[stopvideo]
;--------------------

;�N�����̓��C�����炾������������Ńt���O�I���ɂ��Ă������B�ꉞtitle.ks�ł�����Ă邯�ǁB
;�^�C�g���̏�ԁB
[eval exp="tf.nowtitle = 'main'"]


;--------------------
;--------------------


;	;�x����
;	[bg storage="title_attention0"][trans_c cross time=1000]
;
;	[wait time=2000]
;�x����
[bg storage="title_attention"][trans_c cross time=1000]
[wait time=2000]

[black_toplayer][trans_c cross time=1000][hide_chara_int]

[eval exp="tf.�N�� = 1"]

;===========================================================

;����N���t���O�I��
[eval exp="sf.first = 1"]

; �^�C�g�����j���[��ʂ�
;
[jump storage="title.ks"]
