;===========================================================
;                     �_�C�A���O                            
;===========================================================

;�_�C�A���O���W�ݒ�e��C�����ǉ��@2016/10/04
;�^�C�g���ɖ߂�E�Q�[���I�����͋g���g���̕W���̃_�C�A���O�V�X�e���ł��B
;dialog_base.png�ɗ]���ȗ]��������Ɣ��������o�܂��̂ŁA�l���ȊO�ɗ]���ȗ]���͎��Ȃ��ł��������B
;�g���g���̕W���̃_�C�A���O�́A�w�������͎g���܂���x�B�摜�ɔ��������g�p���Ă��A�\�������ۂ͓��ߖ����ɂȂ�܂��B
;�g���g���̕W���̃_�C�A���O�̕\�����W�́A��ʂ̒����t�߁i���E�ϓ��EY���W�͉摜�T�C�Y�ɂ��ς��j�Ɏ����I�ɐݒ肳��܂��B

;�ǉ��@2016/10/04
;�^�C�g���ɖ߂�E�Q�[���I�����@�_�C�A���O�{�b�N�XYESNO�\���ʒu�B
;�������dialog_base.png�Ƃ̑��΍��W�ł��B
[eval exp="sf.dialog_def_YES_x = 120"]
[eval exp="sf.dialog_def_YES_y = 160"]
[eval exp="sf.dialog_def_NO_x = 270"]
[eval exp="sf.dialog_def_NO_y = 160"]


;����Ɠ����T�C�Y
;	[eval exp="tf.dialog_w = 367"]
;	[eval exp="tf.YESNO_w  = 122"]
;	[eval exp="tf.dialog_h = 173"]
;	[eval exp="tf.YESNO_h  = 41"]
;	[eval exp="sf.dialog_def_YES_x = int + ((tf.dialog_w - tf.YESNO_w*2)/3)"]
;	[eval exp="sf.dialog_def_YES_y = tf.dialog_h - tf.YESNO_h - 10"]
;	[eval exp="sf.dialog_def_NO_x =  sf.dialog_def_YES_x + tf.YESNO_w +sf.dialog_def_YES_x"]
;	[eval exp="sf.dialog_def_NO_y =  tf.dialog_h - tf.YESNO_h - 10"]


;���ǉ��@2017/05/05
[eval exp="sf.dialog_def_dialogImage = sf.addgameID + 'dialog_base_quit'"]
;[eval exp="sf.dialog_def_dialogImage = 'dialog_base_quit'"]
	;����Ɠ����T�C�Y[eval exp="sf.dialog_def_dialogImage = 'dialog_base'"]
;���b�Z�[�W�̃t�H���g����
[eval exp="sf.dialog_def_FontHeight = 30"]
	;����Ɠ����T�C�Y[eval exp="sf.dialog_def_FontHeight = 22"]
;���b�Z�[�W�̃t�H���g
[eval exp="sf.dialog_def_FontFace = '�l�r �o�S�V�b�N'"]
;���b�Z�[�W�𑾎��ɂ���ꍇ��true ���Ȃ��ꍇ��false
[eval exp="sf.dialog_def_FontBold = 'true'"]
;���b�Z�[�W�̐F�i0xRRGGBB�`��/�F�萔�j
[eval exp="sf.dialog_def_FontColor = '0xffffff'"]
;�e�̕s�����x�i0:�e�Ȃ��j 0~255
[eval exp="sf.dialog_def_ShadowLevel = 204"]
;�e�̐F�i0xRRGGBB�`��/�F�萔�j
[eval exp="sf.dialog_def_ShadowColor = '0x000000'"]
;�e�̕��i0:�V���[�v�`�ڂ���j
[eval exp="sf.dialog_def_ShadowWidth = 2"]
;�e�̈ʒu�̂w���W�i0:�^���j
[eval exp="sf.dialog_def_ShadowOffsetX = 3"]
;���A�x���W�i0:�^���j
[eval exp="sf.dialog_defShadowOffsetY = 3"]
;���b�Z�[�W�`��̈�̍�����w���W�i�s�N�Z���j
[eval exp="sf.dialog_def_MessageLeft = 10"]
;���A�x���W�i�s�N�Z���j
[eval exp="sf.dialog_def_MessageTop = 80"]
	;����Ɠ����T�C�Y[eval exp="sf.dialog_def_MessageTop = 60"]
;���b�Z�[�W�`��̈�̍ő剡���i�s�N�Z���j
;�摜�҂����肶�Ⴞ�߂���1���������炢���������Ȃ���
[eval exp="sf.dialog_def_MessageWidth = 500 - 10"]
	;����Ɠ����T�C�Y[eval exp="sf.dialog_def_MessageWidth = 367 - 5"]
;���A�����i�s�N�Z���j
[eval exp="sf.dialog_def_MessageHeight = 235"]
	;����Ɠ����T�C�Y[eval exp="sf.dialog_def_MessageHeight = 173"]
;�^�C�g���o�[�L���v�V�����̃t�H���g�����i�s�N�Z���j
[eval exp="sf.dialog_def_CaptionFontHeight = 24"]
;���A�x���W�i�s�N�Z���j
[eval exp="sf.dialog_def_CaptionTop = 25"]


;����_�C�A���O�{�b�N�X�\���ʒu �S��ʂ̉摜�łȂ���΂����������̈ʒu�B�S��ʉ摜���g���ꍇ��0�@0
[eval exp="sf.dialog_dialogImage = sf.addgameID + 'dialog_base'"]
;[eval exp="sf.dialog_x = 472"]
;[eval exp="sf.dialog_y = 259"]
[eval exp="sf.dialog_x = 0"]
[eval exp="sf.dialog_y = 0"]
;����_�C�A���O�{�b�N�XYESNO�\���ʒu  �S��ʂ̉摜�Ȃ̂ł��̐��l
[eval exp="sf.dialog_YES_x = 509"]
[eval exp="sf.dialog_YES_y = 360 +20"]
[eval exp="sf.dialog_NO_x = 653"]
[eval exp="sf.dialog_NO_y = 360 +20"]

;����_�C�A���O�{�b�N�X�@�e�L�X�g�T�C�Y
[eval exp="sf.dialog_text_size = 22"]

;����_�C�A���O�{�b�N�X�@�L���v�V�����u�m�F�v�̕����̈ʒu
[eval exp="sf.dialog_caption_x = 612"]
[eval exp="sf.dialog_caption_y = 271+20"]

;����_�C�A���O�{�b�N�X�@�e�L�X�g�ʒu�@�_�C�A���O�����̉摜�̏ꍇ�́@x60 y50
[eval exp="sf.erase_dialog_text =   60+452 +20"]
[eval exp="sf.erase_dialog_text_y = 50+251 +20"]

;�_�C�A���O�e�L�X�g�ݒ� true false �J���[�R�[�h0xRRGGBB�Ŏw��
;	�V�X�e���Ǘ��җp����
;	�G�b�W�ƃ{�[���h�͗������Ȃ�
;	�f�t�H�̃_�C�A���O �G�b�W�w��s��
;	�Z�[�u�f�[�^�̕ی�폜�_�C�A���Osystem_savedata_sub.ks���Ń_�C�A���O�\���B
;	�f�t�H�̃_�C�A���O�̃V���h�E��ptext�̃V���h�E�̔Z�����Ȃ񂩈Ⴄ�̂ŃV���h�E�̓I�t�ɂ��Ă����B
;�F
[eval exp="sf.dialog_text_color       = '0xffffff'"]
;;�C�^���b�N�i�Άj
;[eval exp="sf.dialog_text_italic      = 'false'"]
;�V���h�E
[eval exp="sf.dialog_text_shadow      = 'true'"]
;�V���h�E�F�@����true�ɂ��Ȃ��Ɣ��f����Ȃ�
[eval exp="sf.dialog_text_shadowcolor = '0x000000'"]
;�G�b�W
[eval exp="sf.dialog_text_edge        = 'false'"]
;;�G�b�W�F�@����true�ɂ��Ȃ��Ɣ��f����Ȃ�
;[eval exp="sf.dialog_text_edgecolor   = '0x000000'"]
;�{�[���h�i�����j
[eval exp="sf.dialog_text_bold        = 'true'"]

;===========================================================

[return]

