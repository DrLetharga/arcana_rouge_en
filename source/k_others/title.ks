; title.ks�c�^�C�g�����j���[���

*title_menu|

; �u�ŏ��ɖ߂�v��L���ɂ���
[startanchor]

;���j���[�o�[�ňړ������ꍇ�A
; �X���C�_�[���������� snd��mes�ǂ������ł������ǈꉞ������
[if exp="tf.conf == 1 && tf.slider_on_snd == 1 && tf.slider_on_mes == 1"]
	[call storage="system_config_srd.ks" target=*�X���C�_�[����]
[endif]
;�R���t�B�O�ɍs���Ă��t���O���I�t
[eval exp="tf.slider_on_mes = 0"]

;��z�����Ƃ����Ɉ�U�߂邩�炱���ŃR���t�B�O�I�t��Ȃ��Ƃ��߂�
[eval exp="tf.conf = 0"]

;�~�j�Q�[��	;�퓬��ʂ��烁�j���[�Ń^�C�g���ɖ߂邩��������
;�~�j�Q�[��	[if exp="tf.battle == 1"]
;�~�j�Q�[��		;�_�C�A���O�̃��C����߂�
;�~�j�Q�[��		[eval exp="sf.layer_dialog_yesno = 12"]
;�~�j�Q�[��		;�`���[�g���A���I�t�� 
;�~�j�Q�[��		[eval exp="sf.tutorial_unit = 0"]
;�~�j�Q�[��		[eval exp="sf.tutorial_operation = 0"]
;�~�j�Q�[��
;�~�j�Q�[��		;�o�g�����[�h�t���O�I�t
;�~�j�Q�[��		[eval exp="tf.battle = 0"]
;�~�j�Q�[��	[endif]

[layopt layer=0 opacity=255]
[layopt layer=1 opacity=255]
[layopt layer=2 opacity=255]
[layopt layer=3 opacity=255]
[layopt layer=4 opacity=255]
[layopt layer=5 opacity=255]
[layopt layer=6 opacity=255]
[layopt layer=7 opacity=255]
[layopt layer=8 opacity=255]
[layopt layer=9 opacity=255]
[layopt layer=10 opacity=255]

;�_�C�����O�J���Ă�Œ��Ƀ��j���[�o�[����߂��Ă邩������Ȃ�����_�C�A���O�J���Ă��t���O�I�t
[dialog_flag_init]

;��z�{�����t���O�I�t	
[eval exp="tf.scenestart = 0"]
;�b�f�{�����t���O�I�t	
[eval exp="tf.cgmodestart = 0"]

[eval exp="tf.sys_sub = 0"]
;�����̃��Z�b�g
[eval exp="kag.historyLayer.clear()"] 

;systembutton.ks���C������΂����ɖ߂�Ȃ��Ă����̂ɂ�
;��z���Ȃ��z��ʂɖ߂��Ȃ��ƁB�R���t�B�O���^�C�g���ցitf.totitle�������j�̎��͂��̂܂܃^�C�g���\����
[if exp="tf.scene_mode ==1 && tf.totitle == 0"]
	;�X�s�[�J�[�摜�ł邩�����
	;[cfree]
	;�w�i�̃^�C�g���摜�o�邩��0�ɍ�
	[image storage="effect_black" layer=0 page=fore visible=true left=0 top=0]
	;�^�C�g���ʉ߃t���O�@����Ȃ�ŕK�v�Ȃ񂾂�H�V�o�[�W�����Ŗ����Ȃ��ĂƂ�����Ǝv�����瓮��v����
	[eval exp="tf.title_pass2 = 1"]
	[jump storage="b_scene.ks" target=*back_from_SR2]

[elsif exp="tf.cg_mode ==1 && tf.totitle == 0"]
;	[bgmTitle]
	[image storage="effect_black" layer=0 page=fore visible=true left=0 top=0]
	[eval exp="tf.title_pass2 = 1"]
	[jump storage="b_cgmode.ks" target=*back_from_cg]

[endif]

;�t���O�̃N���A
[clearvar]
	;�����tf������H�@�����đ��v���Ȃ� tf.�N�� ���������Ⴄ����v����
	;[eval exp="(Dictionary.clear incontextof kag.tflags)()"]

;�X�L�b�v�ƃI�[�g�ꉞ�~�߂�
[cancelskip]
[cancelautomode]



;�����̃��Z�b�g
[eval exp="kag.historyLayer.clear()"]
;�J�����g���C����߂��Ȃ��Ƃ��߂��ۂ�
[current layer=message0]

*�X���C�_�[�����I���

;�Q�[���̓r���Ŗ߂��ė����ꍇ�A�Q�[���ϐ��̃N���A
;�����̃t���O�ɕ�����Ԃ����߂Ηǂ������Ȃ�
[eval exp="tf.gameplay = 0"]
[eval exp="tf.save = 0"]
[eval exp="tf.load = 0"]
[eval exp="tf.conf = 0"]
[eval exp="tf.totitle = 0"]
;����ȂɁH[eval exp="f.sel = 0"]
[eval exp="tf.scene_mode = 0"]


;	;�Q�[��ID��void�łȂ��Ȃ�ʃ^�C�g����ʂɔ��
;	[if    exp="sf.gameID != void"]
;		[jump target=*title_menu_Individual]
;	[endif]

;==================================================
;==================================================
;�@�@�@�@�@�@�@�@�^�C�g���I����ʁ@�@�@�@�@�@�@�@�@
;==================================================
;==================================================
; �S���b�Z�[�W���C���\��ʁA�S�O�i���C���\��ʂ��\���ɂ���i�ڍׂ́u�E�N���b�N�T�u���[�`������낤�v���Q�Ɓj
[call storage="system_subroutine.ks" target=*sub_layernoshow]

; �^�C�g����ʂŃO���t�B�J���{�^����\�����郁�b�Z�[�W���C����
[eval exp="tf.title_message = 'message1'"]

; ���b�Z�[�W�����ւ̏o�͂��~���A�\���s�ɂ���
[history output=false enabled=false]

; �x�ɂ͂��߂Ȃ�����i���̃Z�[�u�\�ȃ��x��title_menu�́u�ŏ��ɖ߂�v���߂ɂ̂ݎg�p����j
[disablestore store=true restore=false]

; �E�N���b�N�𖳌��ɂ���
[rclick enabled=false]

;---------------------------------------------------
; �^�C�g�����j���[��ʗp���b�Z�[�W���C���̊e��ݒ�
[position layer="&tf.title_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[layopt layer="&tf.title_message" page=fore visible=true]
[current layer="&tf.title_message" page=fore]
;---------------------------------------------------
;�Q�[���I���{�^�����W
;1280/2 640 (640-400)/2


;	;	[eval exp="sf.T_game_sel01_x = 140"]
;	;	[eval exp="sf.T_game_sel01_y = 600"]
;	;
;	;	[eval exp="sf.T_game_sel02_x = 1280/2 + sf.T_game_sel01_x"]
;	;	[eval exp="sf.T_game_sel02_y = 600"]
;
;	;�{�^���T�C�Y�ύX
;	[eval exp="sf.T_game_sel01_x = 127 + 10"]
;	[eval exp="sf.T_game_sel01_y = 41"]
;
;	[eval exp="sf.T_game_sel02_x = 640 + 127 + 10"]
;	[eval exp="sf.T_game_sel02_y = 41"]
;
;
;	;	[eval exp="sf.T_game_sel01_x = 0"]
;	;	[eval exp="sf.T_game_sel01_y = 0"]
;	;
;	;	[eval exp="sf.T_game_sel02_x = 521"]
;	;	[eval exp="sf.T_game_sel02_y = 0"]
;
;	;���W��z��ŗp��
;	[eval exp="sf.title_game_selX = [sf.T_game_sel01_x,sf.T_game_sel02_x]"]
;	[eval exp="sf.title_game_selY = [sf.T_game_sel01_y,sf.T_game_sel02_y]"]
;
;	;�^�C�g��
;	[eval exp="sf.T_maintitle_x = 310"]
;	[eval exp="sf.T_maintitle_y = 447"]
;	;���S
;	[eval exp="sf.T_brandlogo_x = 1123"]
;	[eval exp="sf.T_brandlogo_y = 5"]
;
;
;
;	;---------------------------------------------------
;	;�^�C�g���ς���Ă������������������ōςނ悤�ɂ���
;	;�Ȃ񂩃^�C�g�����̓r�A���J��D��݂����Ȋ��������ǁA
;	;�^�C�g�����̓A���e�A�̂ق����悾���烁�j���[�o�[�ł̈ړ����̕��т��l�����Ă��̂܂�
;	;01�A���e�A�@02�r�A���J�Ƃ��Ă���
;	;�Q�[���i���o�[�Ƃ���
;	[eval exp="sf.gameID_01 ='�G��P�A���e�A'"]
;	[eval exp="sf.gameID_02 ='���q�{�����r�A���J'"]
;	[eval exp="sf.gameID_03 = '���E�҂ƏC����'"]
;	[eval exp="sf.gameID_04 = '�G��n���ɑ����_�[�N�G���t�Ɛ���'"]
;	[eval exp="sf.gameID_05 = void"]
;
;	[eval exp="sf.addgameID_01 = 'ALT_'"]
;	[eval exp="sf.addgameID_02 = 'BIA_'"]
;	[eval exp="sf.addgameID_03 = 'RIG_'"]
;	[eval exp="sf.addgameID_04 = 'EST_'"]
;	[eval exp="sf.addgameID_05 = void"]
;
;
;
;	;---------------------------------------------------
;	;���j���[�o�[���o�R���Ă̌ʃ^�C�g���ֈړ�
;	;�ʂ̃}�N���Ăяo���Ƃh�c��`�����邩��A�ʃ��x���ɔ�΂Ȃ��Ƃ����Ȃ��B
;
;	;����Ɏg����ϐ���MainWindow.tjs
;	;function onGoToStartMenuItemClick_gameID_01
;	;function onGoToStartMenuItemClick_gameID_02
;	;�Œ�`�����
;	;�g�p�����ϐ��I�t���Ă�����
;	[if    exp="tf.go_gameNo == 1"][eval exp="tf.go_gameNo = void"][jump target=*title_01]
;	[elsif exp="tf.go_gameNo == 2"][eval exp="tf.go_gameNo = void"][jump target=*title_02]
;	[elsif exp="tf.go_gameNo == 3"][eval exp="tf.go_gameNo = void"][jump target=*title_03]
;	[elsif exp="tf.go_gameNo == 4"][eval exp="tf.go_gameNo = void"][jump target=*title_04]
;	;[elsif exp="tf.go_gameNo == 5"]
;	[endif]
;	;���C���ɍs���Ƃ����ꉞ�I�t��
;	[eval exp="tf.go_gameNo = void"]
;	;���C���ɂ����Ȃ�Q�[��ID�����Ȃ��Ƃ����Ȃ��̂ł́H
;	;	;�ʃ^�C�g���t���O���Z�b�g
;	;	[eval exp="sf.gameID    = void"]
;	;	[eval exp="sf.addgameID = void"]
;	;	[eval exp="sf.gameNo = void"]
;	;����Ϗ������Ⴞ�߂Ȃ񂾁BMainWindow.tjs�@function goToStartWithAsk()�ŏ����Ȃ���
;
;	;---------------------------------------------------
;	;����t���O�ǂ����ł���������void����Ȃ���Όʃ^�C�g���ɓ˓����Ă邩��ʃ^�C�g����ʂ�
;	;[if exp="sf.gameNo == void"]
;	[if exp="sf.gameID != void"]
;	;	[eval exp="System.inform('�������Ă�̂��Ȃ����̏�������Œ��ɔ�Ԃ��痈�Ȃ��̂ł́H')"]
;		[jump target=*title_menu_Individual]
;	[endif]
;
;	;---------------------------------------------------
;	;���̕���ゾ���炱����
;	;�^�C�g���̏�ԁB���̃t���O�����Ŕ��ʂ��邼�I
;	[eval exp="tf.nowtitle = 'main'"]
;	;�ʃ^�C�g������߂�������sf.addgameID�������܂܂̐ݒ�ɂȂ��Ă邩���`���Ȃ����B
;	[eval exp="sf.dialog_def_dialogImage = sf.addgameID + 'dialog_base_quit'"]
;
;	[if exp="tf.�N�� == 1"]
;		;BGM�Đ�
;		[bgmTitle]
;		[backlay]
;		[image storage="bg_title1" layer=base page=back visible=true]
;		;�f�o�b�O�p�}�}�L�^�{�^���B�I���Ȃ�CG���S�������Z�ɂȂ�
;		[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
;		;[trans_c cross time=1000]
;		;���[��
;		;[trans_c wave3 time=3000]
;		[trans_c cross time=1000]
;	;	;�{�^���̖����I���J�[�\��SE�Ŏ~�܂����Ⴄ����o�b�t�@1��
;	;	;�^�C�g���R�[��
;	;	[se buf=1 storage="callvoice_T"]
;		;[se buf=1 storage="callvoice_TR"]
;	;	[backlay]
;	;	[image storage="bg_title2" layer=base page=back visible=true]
;	;	;�f�o�b�O�p�}�}�L�^�{�^���B�I���Ȃ�CG���S�������Z�ɂȂ�
;	;	[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
;	;	[trans_c cross time=1000]
;		[wait time=1000]
;		[backlay]
;		[image storage="bg_title2" layer=base page=back visible=true]
;		[trans_c cross time=2000]
;
;	[elsif exp="tf.�N�� == 0"]
;		;BGM�Đ�
;		;[fadeinbgm storage="bgm08" loop=true time=100]
;		; �^�C�g�����j���[��ʂ�w�i���C���\��ʂɓǂݍ���
;		[backlay]
;		[image storage="bg_title2" layer=base page=back visible=true]
;	;	[image storage="bg_title2" layer=base page=back visible=true]
;		;�f�o�b�O�p�}�}�L�^�{�^���B�I���Ȃ�CG���S�������Z�ɂȂ�
;		[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
;		;�N��0�Ȃ�܂��Q�[��No�̓��Z�b�g����ĂȂ����画��ł���͂�
;		;���邢�^�C�g������Ȃ�����wave�ł����C�����Ă���
;		;���[��
;		;[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][trans_c pat_rt]
;		;[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][trans_c pat_lt]
;		;[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][trans_c pat_rt]
;		;[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][trans_c pat_lt]
;		;[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][trans_c pat_rt]
;		;;�t�F�C���Z�[�t
;		;[else][trans_c cross time=300]
;		;[endif]
;		[trans_c cross time=300]
;		;�ʃ^�C�g���t���O���Z�b�g
;		[eval exp="sf.gameNo    = void"]
;	[endif]
;
;
;	; ���e���j���[����߂��Ă��郉�x��
;	*title_menu_loop_main
;
;	;�f�o�b�O�p�@�V�X�e���n�{�^�������W�ݒ�T�u���[�`���Ăяo��
;	;[call storage="first_sub_xy.ks"]
;
;
;	; �m�[�E�F�C�g
;	[delay speed=nowait]
;
;
;	;�^�C�g���ʉ߃t���O���Z�b�g
;	[eval exp="tf.title_pass = 0"]
;
;	;�V���[�g�J�b�g�ł̔���p���݃^�C�g���t���O
;	;�V���[�g�J�b�g����p[eval exp="tf.title = 1"]
;
;
;	;[if exp="tf.�N�� == 0"]
;	;BGM�������ĂȂ���΍Đ�����
;	[if exp="kag.bgm.currentBuffer.status == 'stop' || kag.bgm.currentBuffer.status == 'unload'"]
;		;BGM�Đ�
;		[bgmTitle]
;	[endif]
;
;	; ���b�Z�[�W���C�����N���A
;	[er]
;
;	[if exp="tf.�N�� == 1"]
;		;�{�^���摜�̃{�^������Ȃ���ǂݍ��݁@���C��01�̓��S�Ŏg���Ă邩��23
;		[image storage="bg_title_selbt_RIG_" layer=2 page=fore visible=true left="&sf.title_game_selX[0]" top="&sf.title_game_selY[0]-540" opacity=0 mcolor=0x00000 mopacity=100]
;		[image storage="bg_title_selbt_EST_" layer=3 page=fore visible=true left="&sf.title_game_selX[1]" top="&sf.title_game_selY[1]-540" opacity=0 mcolor=0x00000 mopacity=100]
;
;		;�ӂ�ӂ킭�邭�邳����
;		;	[affine layer=0  page=fore storage="bg_title_selbt_BIA_" time=2500 accel=-2 cx=0 cy=0 sx="&sf.title_game_selX[0]" sy=-540  smag=1 dmag=1  srot=0  drot=0 opa=0 path='&@"(${&sf.title_game_selX[0]},-540,0)(${&sf.title_game_selX[0]*2},${&sf.title_game_selY[0]*2},255)"']
;		;	;[affine layer=1  page=fore storage="bg_title_selbt_ALT_" time=2500 accel=-2 cx=c cy=c smag=1 dmag=1  srot=0.5  drot=1 opa=0 path='&@"(${&sf.title_game_selX[1]/2},-540/2,0)(${&sf.title_game_selX[1]/2},${&sf.title_game_selY[1]/2},255)"']
;		;	[waffine]
;
;		;	[fgzoom storage="bg_title_selbt_BIA_" layer=0 sl="&sf.title_game_selX[0]+143" st="&sf.title_game_selY[0]" sw=0 sh=540 dl="&sf.title_game_selX[0]" dt="&sf.title_game_selY[0]" dw=386 dh=540 time=2000 accel=-1]
;		;	[wfgzoom]
;		;	[fgzoom storage="bg_title_selbt_ALT_" layer=1 sl="&sf.title_game_selX[1]+143" st="&sf.title_game_selY[1]" sw=0 sh=540 dl="&sf.title_game_selX[1]" dt="&sf.title_game_selY[1]" dw=386 dh=540 time=2000 accel=-1]
;		;	[wfgzoom]
;
;		[image storage="bg_title_maintitle" layer=1 page=fore visible=true left="&sf.T_maintitle_x" top="&sf.T_maintitle_y-50" opacity=0 index=1003000]
;		;�Ƃ肠��������ł�����
;	;;	[move layer=2 page=fore time=2500 accel=-2 path=(0,0,255)"']
;	;;	[move layer=3 page=fore time=2500 accel=-2 path=(0,0,255)"']
;		[move layer=2 page=fore time=2500 accel=-2 path='&@"(${&sf.title_game_selX[0]},${&sf.title_game_selY[0]},255)"']
;		[move layer=3 page=fore time=2500 accel=-2 path='&@"(${&sf.title_game_selX[1]},${&sf.title_game_selY[1]},255)"']
;		;[wait time=1500 canskip=false]
;		[wm ]
;		[wm ]
;		[move layer=1 page=fore time=1500 accel=-2 path='&@"(${&sf.T_maintitle_x},${&sf.T_maintitle_y},255)"']
;		[wm ]
;	[endif]
;
;	;�{�^���\���I����Ă���^�C�g�����S�ƃu�����h���S�\�� index��"tf.title_message = 'message1'"�����
;	[backlay_c]
;	;���C���^�C�g��
;	[image storage="bg_title_maintitle" layer=0 page=back visible=true left="&sf.T_maintitle_x" top="&sf.T_maintitle_y" opacity=255 index=1003000]
;	;���S
;	[image storage="bg_title_brandlogo" layer=1 page=back visible=true left="&sf.T_brandlogo_x" top="&sf.T_brandlogo_y" opacity=255 index=1003000]
;	[image storage="bg_title_selbt_RIG" layer=2 page=back visible=true left="&sf.title_game_selX[0]" top="&sf.title_game_selY[0]" clipleft=0  cliptop=0   clipwidth=406 clipheight=560]
;	[image storage="bg_title_selbt_EST" layer=3 page=back visible=true left="&sf.title_game_selX[1]" top="&sf.title_game_selY[1]" clipleft=0  cliptop=0   clipwidth=406 clipheight=560]
;	[trans_c cross time=1000]
;	;[unlocklink]
;
;	;�Ȃ񂩃r�A���J�����z�u�炵�����target���t�ɂ��Ƃ���
;
;
;	;�G�X�^�[�̕������ɂȂ��ĂȂ��Ƃ����Ȃ��̂ŃG�X�^�[�����ɓ\��
;	;�A���e�A2
;	[locate x="&sf.title_game_selX[0]" y="&sf.title_game_selY[0]"]
;	;[button graphic="title_LOAD" target=*title_menu_load recthit=true enterse="se_enter"]
;	;[button graphic="title_START02" target=*title_01 recthit=true exp="tf.menuitem = 0"]
;	[button graphic="bg_title_selbt_RIG" target=*title_03 recthit=false exp="tf.menuitem = 0"]
;	;�r�A���J2
;	[locate x="&sf.title_game_selX[1]" y="&sf.title_game_selY[1]"]
;	;[button graphic="title_START" target=*title_menu_start recthit=true enterse="se_enter" clickse="se_click"]
;	;[button graphic="title_START01" target=*title_02 recthit=true exp="tf.menuitem = 0"]
;	[button graphic="bg_title_selbt_EST" target=*title_04 recthit=false exp="tf.menuitem = 0"]
;	;;	;�r�A���J2
;	;;	[locate x="&sf.title_game_selX[1]" y="&sf.title_game_selY[1]"]
;	;;	;[button graphic="title_START" target=*title_menu_start recthit=true enterse="se_enter" clickse="se_click"]
;	;;	;[button graphic="title_START01" target=*title_02 recthit=true exp="tf.menuitem = 0"]
;	;;	[button graphic="bg_title_selbt_EST" target=*title_04 recthit=false exp="tf.menuitem = 0"  onenter="kag.process('','*onenter02')" onleave="kag.process('','*onleave02')" enterse="seD017"]
;	;;
;	;;	;�A���e�A2
;	;;	[locate x="&sf.title_game_selX[0]" y="&sf.title_game_selY[0]"]
;	;;	;[button graphic="title_LOAD" target=*title_menu_load recthit=true enterse="se_enter"]
;	;;	;[button graphic="title_START02" target=*title_01 recthit=true exp="tf.menuitem = 0"]
;	;;	[button graphic="bg_title_selbt_RIG" target=*title_03 recthit=false exp="tf.menuitem = 0"  onenter="kag.process('','*onenter01')" onleave="kag.process('','*onleave01')" enterse="seD017"]
;
;
;
;	;���j���[�ړ��g����悤�ɂȂ�t���O�I���B�ǂ����ł܂��I�t�ɂ��ׂ���
;	;�{�^�����������ɃI�t�ɂ���B�ʉ�ʕ\���I�������܂��I���ɖ߂�
;	[eval exp="tf.menuitem = 1"]
;
;	;[locklink]
;
;	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
;	[freeimage layer=3 page=fore][freeimage layer=3 page=back]
;
;	;[�f�o�b�O�p]
;
;
;	[s]
;
;	;--------------------------------------------------
;
;	*onenter01
;	;02�̃{�^�����O���[�A�E�g
;	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
;	[image storage="bg_title_selbt_EST_off" layer=3 page=fore visible=true left="&sf.title_game_selX[1]" top="&sf.title_game_selY[1]" opacity=255 index=1002000]
;	[s]
;
;	*onenter02
;	;01�̃{�^�����O���[�A�E�g
;	[freeimage layer=3 page=fore][freeimage layer=3 page=back]
;	[image storage="bg_title_selbt_RIG_off" layer=2 page=fore visible=true left="&sf.title_game_selX[0]" top="&sf.title_game_selY[0]" opacity=255 index=1002000]
;	[s]
;
;	*onleave01
;	;02�̃{�^�����O���[�A�E�g����
;	[freeimage layer=3 page=fore][freeimage layer=3 page=back]
;	[s]
;
;	*onleave02
;	;01�̃{�^�����O���[�A�E�g����
;	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
;	[s]
;	;--------------------------------------------------
;	;--------------------------------------------------
;	*title_03
;
;	[�^�C�g����ʂ���̈ړ� bgmoff]
;
;	;�^�C�g���R�[���炷�ׂɂ���1�x�I����
;	[eval exp="tf.�N�� = 1"]
;
;	;�^�C�g���̏��
;	[eval exp="tf.nowtitle = 3"]
;
;	;�K�v�Ȃ�^�C�g���ʂ̃}�N���Ăяo��
;	; ����sound�Ƃ����t�@�C�����ς��Ă�Ȃ�ŏ��ɓǂ񂾕��������ˁH
;
;	[eval exp="sf.gameID    = sf.gameID_03"]
;	[eval exp="sf.addgameID = sf.addgameID_03"]
;
;
;
;	[jump target=*title_menu_Individual00]
;	;[jump storage="title_altair.ks"]
;
;	;--------------------------------------------------
;	;--------------------------------------------------
;	*title_04
;
;	[�^�C�g����ʂ���̈ړ� bgmoff]
;
;	;�^�C�g���R�[���炷�ׂɂ���1�x�I����
;	[eval exp="tf.�N�� = 1"]
;
;	;�^�C�g���̏��
;	[eval exp="tf.nowtitle = 4"]
;
;	;�K�v�Ȃ�^�C�g���ʂ̃}�N���Ăяo��
;
;
;	[eval exp="sf.gameID    = sf.gameID_04"]
;	[eval exp="sf.addgameID = sf.addgameID_04"]
;
;
;	[jump target=*title_menu_Individual00]
;	;[jump storage="title_bianca.ks"]


;�^�C�g���̏��
[eval exp="tf.nowtitle = 1"]
[eval exp="sf.gameID    = sf.gameID_01"]
[eval exp="sf.addgameID = sf.addgameID_01"]

;==================================================
;==================================================
;�@�@�@�@�@�@�@�@�ʃ^�C�g����ʁ@�@�@�@�@�@�@�@�@
;==================================================
;==================================================
*title_menu_Individual00

[call storage="&sf.addgameID + '0�V�X�e���o�[�W�������.ks'"]

;�ʃ^�C�g��������Ȃ��Ă���ɔėp�ϐ��ɂԂ����񂾕����������Ȃ��B���Ƃ��ƕ����^�C�g���Ƃ������
;first_sub_xy.ks�ł��Ə���N������sf.gameID == sf.gameID_01������void�Œʂ����Ⴄ���炾��
[if    exp="sf.gameID == sf.gameID_01 && sf.game_total >= sf.gameNo"][eval exp="sf.gameNo = 1"]
[elsif exp="sf.gameID == sf.gameID_02 && sf.game_total >= sf.gameNo"][eval exp="sf.gameNo = 2"]
[elsif exp="sf.gameID == sf.gameID_03 && sf.game_total >= sf.gameNo"][eval exp="sf.gameNo = 3"]
[elsif exp="sf.gameID == sf.gameID_04 && sf.game_total >= sf.gameNo"][eval exp="sf.gameNo = 4"]
[elsif exp="sf.gameID == sf.gameID_05 && sf.game_total == sf.gameNo"][eval exp="sf.gameNo = 5"]
[endif]

;�V�X�e���n�{�^�������W�ݒ�T�u���[�`���Ăяo��
[call storage="first_sub_xy.ks"]

;1�^�C�g���݂̂ł��ꂵ���Ⴄ�ƁA�N���b�N�ӏ���ϐ��ɏ����߂��i*title_menu_return�ł���Ă鏈���j�����Ȃ��ƍs���Ȃ�����s�v
;	;�^�C�g���ʂɌĂяo���Ă����Ȃ��Ƃ܂��悤�ȕϐ�
;	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"]
;		;storage�ƃ��x���@����͏����߂��Ӗ��͂Ȃ����ň����ꂾ���Ď�����Ηǂ��悤�ɕۑ�
;		;���݂̃t�@�C����
;		[eval exp="sf.ksStorageSys�Ď��p = sf.ksStorageSys�Ď��p_game01"]
;		;���݂̃��x����
;		[eval exp="sf.ksLabelSys�Ď��p = sf.ksLabelSys�Ď��p_game01"]
;		;�Z�[�u���[�h�̕\�����y�[�W
;		[eval exp="sf.saveload_now_page = sf.saveload_now_page_game01"]
;		;�N���b�N�����ꏊ���L�^
;		[eval exp="sf.new_saveclick     = sf.new_saveclick_game01"]
;		;�N���b�N�����y�[�W���L�^
;		[eval exp="sf.new_savepage      = sf.new_savepage_game01"]
;		;�I�}�P�{�����y�[�W
;		[eval exp="sf.CG_page = sf.CG_page_game01"]
;		[eval exp="sf.SR_page = sf.SR_page_game01"]
;	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"]
;		;storage�ƃ��x���@����͏����߂��Ӗ��͂Ȃ����ň����ꂾ���Ď�����Ηǂ��悤�ɕۑ�
;		;���݂̃t�@�C����
;		[eval exp="sf.ksStorageSys�Ď��p = sf.ksStorageSys�Ď��p_game02"]
;		;���݂̃��x����
;		[eval exp="sf.ksLabelSys�Ď��p = sf.ksLabelSys�Ď��p_game02"]
;		;�Z�[�u���[�h�̕\�����y�[�W
;		[eval exp="sf.saveload_now_page = sf.saveload_now_page_game02"]
;		;�N���b�N�����ꏊ���L�^
;		[eval exp="sf.new_saveclick     = sf.new_saveclick_game02"]
;		;�N���b�N�����y�[�W���L�^
;		[eval exp="sf.new_savepage      = sf.new_savepage_game02"]
;		;�I�}�P�{�����y�[�W
;		[eval exp="sf.CG_page = sf.CG_page_game02"]
;		[eval exp="sf.SR_page = sf.SR_page_game02"]
;	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"]
;		;storage�ƃ��x���@����͏����߂��Ӗ��͂Ȃ����ň����ꂾ���Ď�����Ηǂ��悤�ɕۑ�
;		;���݂̃t�@�C����
;		[eval exp="sf.ksStorageSys�Ď��p = sf.ksStorageSys�Ď��p_game03"]
;		;���݂̃��x����
;		[eval exp="sf.ksLabelSys�Ď��p = sf.ksLabelSys�Ď��p_game03"]
;		;�Z�[�u���[�h�̕\�����y�[�W
;		[eval exp="sf.saveload_now_page = sf.saveload_now_page_game03"]
;		;�N���b�N�����ꏊ���L�^
;		[eval exp="sf.new_saveclick     = sf.new_saveclick_game03"]
;		;�N���b�N�����y�[�W���L�^
;		[eval exp="sf.new_savepage      = sf.new_savepage_game03"]
;		;�I�}�P�{�����y�[�W
;		[eval exp="sf.CG_page = sf.CG_page_game03"]
;		[eval exp="sf.SR_page = sf.SR_page_game03"]
;	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"]
;		;storage�ƃ��x���@����͏����߂��Ӗ��͂Ȃ����ň����ꂾ���Ď�����Ηǂ��悤�ɕۑ�
;		;���݂̃t�@�C����
;		[eval exp="sf.ksStorageSys�Ď��p = sf.ksStorageSys�Ď��p_game04"]
;		;���݂̃��x����
;		[eval exp="sf.ksLabelSys�Ď��p = sf.ksLabelSys�Ď��p_game04"]
;		;�Z�[�u���[�h�̕\�����y�[�W
;		[eval exp="sf.saveload_now_page = sf.saveload_now_page_game04"]
;		;�N���b�N�����ꏊ���L�^
;		[eval exp="sf.new_saveclick     = sf.new_saveclick_game04"]
;		;�N���b�N�����y�[�W���L�^
;		[eval exp="sf.new_savepage      = sf.new_savepage_game04"]
;		;�I�}�P�{�����y�[�W
;		[eval exp="sf.CG_page = sf.CG_page_game04"]
;		[eval exp="sf.SR_page = sf.SR_page_game04"]
;	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"]
;		;storage�ƃ��x���@����͏����߂��Ӗ��͂Ȃ����ň����ꂾ���Ď�����Ηǂ��悤�ɕۑ�
;		;���݂̃t�@�C����
;		[eval exp="sf.ksStorageSys�Ď��p = sf.ksStorageSys�Ď��p_game05"]
;		;���݂̃��x����
;		[eval exp="sf.ksLabelSys�Ď��p = sf.ksLabelSys�Ď��p_game05"]
;		;�Z�[�u���[�h�̕\�����y�[�W
;		[eval exp="sf.saveload_now_page = sf.saveload_now_page_game05"]
;		;�N���b�N�����ꏊ���L�^
;		[eval exp="sf.new_saveclick     = sf.new_saveclick_game05"]
;		;�N���b�N�����y�[�W���L�^
;		[eval exp="sf.new_savepage      = sf.new_savepage_game05"]
;		;�I�}�P�{�����y�[�W
;		[eval exp="sf.CG_page = sf.CG_page_game05"]
;		[eval exp="sf.SR_page = sf.SR_page_game05"]
;	[endif]

;---------------------------------------------------
*title_menu_Individual

; �^�C�g�����j���[��ʗp���b�Z�[�W���C���̊e��ݒ�
[position layer="&tf.title_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[layopt layer="&tf.title_message" page=fore visible=true]
[current layer="&tf.title_message" page=fore]


;���W��z��ŗp�� �^�C�g���ʂɕς���K�v������Ȃ炱���ɗ��钼�O�ɒ�`�ɂ���B
[eval exp="sf.titleX = [sf.T_newgame_x,sf.T_load_x,sf.T_conf_x,sf.T_cg_x,sf.T_sr_x,sf.T_bgm_x,sf.T_ohp_x,sf.T_quit_x,sf.T_Qload_x,sf.T_pski_x,sf.T_return_x]"]
[eval exp="sf.titleY = [sf.T_newgame_y,sf.T_load_y,sf.T_conf_y,sf.T_cg_y,sf.T_sr_y,sf.T_bgm_y,sf.T_ohp_y,sf.T_quit_y,sf.T_Qload_y,sf.T_pski_y,sf.T_return_y]"]

;---------------------------------------------------
;���S���摜�ɓ����Ė����̂œ����
;[eval exp="tf.logo_x = 1100 ,tf.logo_y = 650" cond="sf.gameNo == 3"]
;[eval exp="tf.logo_x = 50 ,tf.logo_y = 650"   cond="sf.gameNo == 4"]
[eval exp="tf.logo_x = 1100 ,tf.logo_y = 650"]


[if exp="tf.�N�� == 1"]
	;BGM�Đ�
	[bgmTitle]
	[backlay]
	[image storage="&sf.addgameID + 'bg_title1'" layer=base page=back visible=true]
	;�f�o�b�O�p�}�}�L�^�{�^���B�I���Ȃ�CG���S�������Z�ɂȂ�
	[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
	[trans_c cross time=1000]

	;�^�C�g���R�[��
	[se buf=1 storage="&sf.addgameID + 'callvoice_T'"]
	;[se buf=1 storage="callvoice_TR"]
	[backlay]
	[image storage="&sf.addgameID + 'bg_title2'" layer=base page=back visible=true]
	;���S���摜�ɓ����Ė����̂œ����
	;[pimage storage="bg_title_brandlogo" layer=base page=back visible=true dx="&tf.logo_x" dy="&tf.logo_y"]
	;�f�o�b�O�p�}�}�L�^�{�^���B�I���Ȃ�CG���S�������Z�ɂȂ�
	[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
	[trans time=1000 method=crossfade][wt]

	;���[��
	;[trans_c wave]
[elsif exp="tf.�N�� == 0"]
	;BGM�Đ�
	;[fadeinbgm storage="bgm08" loop=true time=100]
	; �^�C�g�����j���[��ʂ�w�i���C���\��ʂɓǂݍ���
	[backlay]
	[image storage="&sf.addgameID + 'bg_title2'" layer=base page=back visible=true]
	;���S���摜�ɓ����Ė����̂œ����
	;[pimage storage="bg_title_brandlogo" layer=base page=back visible=true dx="&tf.logo_x" dy="&tf.logo_y"]
	;�f�o�b�O�p�}�}�L�^�{�^���B�I���Ȃ�CG���S�������Z�ɂȂ�
	[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
	[trans_c cross time=0]

[endif]

; ���e���j���[����߂��Ă��郉�x��
*title_menu_loop

;�f�o�b�O�p�@�V�X�e���n�{�^�������W�ݒ�T�u���[�`���Ăяo��
;[call storage="first_sub_xy.ks"]


; �m�[�E�F�C�g
[delay speed=nowait]


;�^�C�g���ʉ߃t���O���Z�b�g
[eval exp="tf.title_pass = 0"]

;�V���[�g�J�b�g�ł̔���p���݃^�C�g���t���O
;�V���[�g�J�b�g����p[eval exp="tf.title = 1"]


;[if exp="tf.�N�� == 0"]
;BGM�������ĂȂ���΍Đ�����
[if exp="kag.bgm.currentBuffer.status == 'stop' || kag.bgm.currentBuffer.status == 'unload'"]
	;BGM�Đ�
	[bgmTitle]
[endif]

; ���b�Z�[�W���C�����N���A
[er]
[locate x="&sf.titleX[0]" y="&sf.titleY[0]"]
;[button graphic="title_START" target=*title_menu_start recthit=true enterse="se_enter" clickse="se_click"]
[button graphic="title_START" target=*title_menu_start recthit=true]

[locate x="&sf.titleX[1]" y="&sf.titleY[1]"]
;[button graphic="title_LOAD" target=*title_menu_load recthit=true enterse="se_enter"]
[button graphic="title_LOAD" target=*title_menu_load recthit=true]


;[if exp="sf.pskip == 1"]
;	;���W�b��
;	[locate x="&sf.titleX[2]" y="&sf.titleY[0]"]
;	[button graphic="title_pskip.png" target=*title_menu_start exp="tf.pskip = 1"]
;[else]
;	[image storage="title_pskip_off.png"    layer=4 page=fore visible=true left="&sf.titleX[2]" top="&sf.titleY[0]"]
;[endif]

;�N�C�b�N�Z�[�u�g����ۑ��������擾
[eval exp="tf.Qload_date = kag.getBookMarkDate(sf.QsaveNo)"]


;�f�[�^��������{�^���\���B�����Ȃ��Ƃ��̓O���[�A�E�g�B
[if exp="tf.Qload_date != ''"]
	;[locate x="&sf.titleX[8]" y="&sf.titleY[8]"][button graphic="title_quickload" recthit=true target=*title_QLOAD recthit=true enterse="se_enter"]
	[locate x="&sf.titleX[8]" y="&sf.titleY[8]"][button graphic="title_quickload" recthit=true target=*title_QLOAD recthit=true]
[else]
	;[image storage="title_quickload" layer=0 page=fore visible=true left="&sf.titleX[8]+40" top="&sf.titleY[8]" clipleft=0  cliptop=0 clipwidth=10 clipheight=0]
	;pimage���Ɖ�����������J��Ԃ�����Quit��No�����Ƃ��Ƃ��ɂǂ�ǂ�d�Ȃ����Ⴄ�񂾂Ȃ��B�t���O����Ĕ����邩���̃��C��0�ɂ��Ă������ǂ�����������
	;���C�����Ə����Y��Ƃ��ʓ|�����Ȃ�
	[if exp="tf.exitpass == 0"]
		[pimage storage="title_quickload" layer=base page=fore visible=true dx="&sf.titleX[8]" dy="&sf.titleY[8]" sx=0 sy=0 sw=258 sh=36 mcolor=0x00000 mopacity=110 opacity=140]
	[endif]
[endif]

;�^�C�g����ʂ́u�I���v�{�^����ʉ߂����t���O�I�t
[eval exp="tf.exitpass = 0"]

[locate x="&sf.titleX[2]" y="&sf.titleY[2]"]
;[button graphic="title_CONFIG" target=*title_menu_config enterse="se_enter"]
[button graphic="title_CONFIG" target=*title_menu_config]



;//�e�X�g�p�����������[if exp="sf.gameclera"]


	[locate x="&sf.titleX[3]" y="&sf.titleY[3]"]
	;[button graphic="title_cgmode" target=*title_menu_album recthit=true enterse="se_enter"]
	[button graphic="title_cgmode" target=*title_menu_album recthit=true]

	[locate x="&sf.titleX[4]" y="&sf.titleY[4]"]
	;[button graphic="title_scenemode" target=*title_menu_scene recthit=true enterse="se_enter"]
	[button graphic="title_scenemode" target=*title_menu_scene recthit=true]

	[locate x="&sf.titleX[5]" y="&sf.titleY[5]"]
	;[button graphic="title_bgmmode" target=*title_menu_sound recthit=true enterse="se_enter"]
	[button graphic="title_bgmmode" target=*title_menu_sound recthit=true]


;//�e�X�g�p�����������[endif]

;	[locate x="&sf.titleX[10]" y="&sf.titleY[10]"]
;	;[button graphic="title_EXIT.png" target=*title_menu_exit recthit=true enterse="se_enter"]
;	[button graphic="title_return.png" target=*title_menu_return recthit=true]


[locate x="&sf.titleX[7]" y="&sf.titleY[7]"]
;[button graphic="title_EXIT.png" target=*title_menu_exit recthit=true enterse="se_enter"]
[button graphic="title_EXIT.png" target=*title_menu_exit recthit=true]

;	;�f�o�b�O�p�}�}�L�^�{�^���B�I���Ȃ�CG���S�������Z�ɂȂ�
;	[if exp="sf.evcgoff == 1"]
;		[locate x="950" y="140"]
;		[button graphic="cnf_on" target=*evcgoff recthit=true exp="sf.evcgoff = 0"]
;	[elsif exp="sf.evcgoff == 0"]
;		[locate x="1000" y="140"]
;		[button graphic="cnf_off" target=*evcgoff recthit=true exp="sf.evcgoff = 1"]
;	[endif]

;	;�f�o�b�O�p�@�����[�X���ɂ̓t�@�C������������
;	[call storage="title_�f�o�b�O.ks"]

;���j���[�ړ��g����悤�ɂȂ�t���O�I���B
;�{�^�����������ɃI�t�ɂ���?
[eval exp="tf.menuitem = 1"]

;[�f�o�b�O�p]


[s]

;--------------------------------------------------
*evcgoff
[backlay]
;[image storage="bg_title1" layer=base page=back visible=true]
[image storage="bg_title2" layer=base page=back visible=true]
;�f�o�b�O�p�}�}�L�^�{�^���B�I���Ȃ�CG���S�������Z�ɂȂ�
[pimage storage="effect_black" layer=base page=back opacity=244 dx=0 dy=0 cond="sf.evcgoff == 1"]
[trans_c cross time=0]

[cm]

[jump target=*title_menu_loop]
;--------------------------------------------------

;--------------------------------------------------
; �u��������v���I�����ꂽ
;
*title_menu_load

;[�^�C�g����ʂ���̈ړ� time=100]
[cm]

;��������R�[�������_���Đ��B
[eval exp="tf.random_voice=intrandom(1,4)"]
[eval exp="tf.title_pass = 1"]
;�V���[�g�J�b�g����p[eval exp="tf.title = 0"]
[eval exp="tf.save = 0 , tf.load = 1 , tf.conf = 0"]

[eval exp="tf.�N�� = 0"]

; ���[�h��ʂ�
[jump storage="system_load.ks" target=*load_menu]



;--------------------------------------------------
*title_QLOAD

;[�^�C�g����ʂ���̈ړ� time=100]
;�R���t�B�O�{�^���Ƃ��c���Ă�ۂ��������
[cm]

; �E�F�C�g����
[delay speed=user]
; �^�C�g�����j���[��ʗp���b�Z�[�W���C�����\��
[layopt layer="&tf.title_message" page=fore visible=false]
; ; �E�N���b�N�T�u���[�`���̐ݒ��ύX
;���[�h���O�ɉE�N���b�N�ݒ肵�Ă����߂炵���̂Ńt���O�𗧂Ă�
[eval exp="sf.���[�h��E�N���b�N���ݒ� = 1"]

; �x�ɂ͂��߂�悤�ɂ���
[disablestore store=false restore=false]
; ���b�Z�[�W�����ւ̏o�͂��ĊJ�A�\���ɂ���
[history output=true enabled=true]
;BGM��~
[fadeoutbgm time=1000]

[eval exp="tf.fromtitle = 0"]
;�V���[�g�J�b�g����p[eval exp="tf.title = 0"]


[eval exp="tf.�N�� = 0"]
;�f�[�^�X���b�g�̃N�C�b�N���[�h�p�̃f�[�^���Ăяo��

;���[�h�O�̃��b�Z�[�W����
[cm]

;�^�C�g����ʂ̃N�C�b�N���[�h�������t���O
[eval exp="tf.QuickLoad_title = 1"]

;[load place="&kag.numBookMarks-1"]
[load place="&sf.QsaveNo"]


;--------------------------------------------------
; �u�R���t�B�O�v���I�����ꂽ
;
*title_menu_config

;[�^�C�g����ʂ���̈ړ� time=100]
[cm]

; �E�F�C�g����
;[delay speed=user]

;[freeimage layer=0 page=fore]
;[playse buf=0 storage="title_click.ogg"]
;�^�C�g���ʉ߃t���O
[eval exp="tf.title_pass = 1"]

;���X���C�_�[�� �ǂ������J�������f
;�^�C�g���ʉ߃t���O
[eval exp="tf.fromtitle = 1"]
;�V���[�g�J�b�g����p[eval exp="tf.title = 0"]
[eval exp="tf.save = 0 , tf.load = 0 , tf.conf = 1"]

[eval exp="tf.�N�� = 0"]

;�R���t�B�O��ʂ�
[jump storage="system_config_mes.ks" target=*config_menu]

;--------------------------------------------------
; �u�V�[�����[�h�v���I�����ꂽ
;
*title_menu_scene

;�I�}�P�����Ȃ�Ń{�^���c�����܂܈Ó]�ɂ��Ă��񂾂����Ȃ�
;[�^�C�g����ʂ���̈ړ� time=0]
[cm]

[eval exp="tf.�N�� = 0"]
;�V���[�g�J�b�g����p[eval exp="tf.title = 0"]

;call�����܂܉�z�s���ƃG���[�o�邩�炾�߁I
[jump storage="b_scene.ks"]

;--------------------------------------------------
; �uCG���[�h�v���I�����ꂽ
;
*title_menu_album

;[�^�C�g����ʂ���̈ړ� time=0]
[cm]

[eval exp="tf.�N�� = 0"]
;�V���[�g�J�b�g����p[eval exp="tf.title = 0"]

[jump storage="b_cgmode.ks"]

;--------------------------------------------------
; �uBGM���[�h�v���I�����ꂽ
;
*title_menu_sound

;[�^�C�g����ʂ���̈ړ� time=0]
[cm]

[eval exp="tf.�N�� = 0"]
;�V���[�g�J�b�g����p[eval exp="tf.title = 0"]

; �T�E���h�e�X�g��ʂ�
[jump storage="b_bgmmode.ks"]

;---------------------------------------
*title_menu_return

[eval exp="tf.return = 1"]

[�^�C�g����ʂ���̈ړ� bgmoff]


;;�����ȊO�ɂ��E�B���h�E����̂��{�^���ƃ��j���[�̃��C���^�C�g���ƏI�����ɂ��ۑ����Ȃ��Ƃ����Ȃ���
;����ł�����̂��H �i���o�[�Ő��䂵�Ăėǂ�����
	;;�^�C�g���ʂɋL�^���Ă����Ȃ��Ƃ܂��悤�ȕϐ�
	;storage�ƃ��x���@����͏����߂��Ӗ��͂Ȃ����ň����ꂾ���Ď�����Ηǂ��悤�ɕۑ�
	;���݂̃t�@�C����
	[eval exp="sf['ksStorageSys�Ď��p_game0' + sf.gameNo] = sf.ksStorageSys�Ď��p"]
	;���݂̃��x����
	[eval exp="sf['ksLabelSys�Ď��p_game0' + sf.gameNo] = sf.ksLabelSys�Ď��p"]

	;�Z�[�u���[�h�̕\�����y�[�W
	[eval exp="sf['saveload_now_page_game0' + sf.gameNo] = sf.saveload_now_page"]
	;�N���b�N�����ꏊ���L�^
	[eval exp="sf['new_saveclick_game0' + sf.gameNo] = sf.new_saveclick"]
	;�N���b�N�����y�[�W���L�^
	[eval exp="sf['new_savepage_game0' + sf.gameNo] = sf.new_savepage"]
	;���b�N�����X���b�g���L�^

	;�I�}�P�{�����y�[�W
	[eval exp="sf['CG_page_game0' + sf.gameNo] = sf.CG_page"]
	[eval exp="sf['SR_page_game0' + sf.gameNo] = sf.SR_page"]

	;����Ń��Z�b�g���Ă����ׂ��H
	;�Z�[�u���[�h�̕\�����y�[�W
	[eval exp="sf.saveload_now_page = void"]
	;�N���b�N�����ꏊ���L�^
	[eval exp="sf.new_saveclick     = void"]
	;�N���b�N�����y�[�W���L�^
	[eval exp="sf.new_savepage      = void"]
	;�I�}�P�{�����y�[�W
	[eval exp="sf.CG_page = void"]
	[eval exp="sf.SR_page = void"]

;�ʃ^�C�g���t���O���Z�b�g
[eval exp="sf.gameID    = void"]
[eval exp="sf.addgameID = void"]
;sf.gameNo�͂����ŏ����Ɩ߂��ʂ�trans�ł��Ȃ����炻��I����Ă���
;[eval exp="sf.gameNo    = void"]






[eval exp="tf.�N�� = 0"]

[gotostart]

;---------------------------------------
;
; �u�I���v���I�����ꂽ
;
*title_menu_exit

;function onExitMenuItemClick(sender)�ɂ������Ă邯�ǌ����Ȃ�����u���Ă������@YES�ł�NO�ł��ۑ����Ă���
;MainWindow.tjs��onCloseQuery�����s����Ă邩�炱���͂��Ȃ��Ă����񂶂�Ȃ����ȁH
;	;;�^�C�g���ʂɋL�^���Ă����Ȃ��Ƃ܂��悤�ȕϐ�

;	;storage�ƃ��x���@����͏����߂��Ӗ��͂Ȃ����ň����ꂾ���Ď�����Ηǂ��悤�ɕۑ�
;	;���݂̃t�@�C����
;	[eval exp="sf['ksStorageSys�Ď��p_game0' + sf.gameNo] = sf.ksStorageSys�Ď��p"]
;	;���݂̃��x����
;	[eval exp="sf['ksLabelSys�Ď��p_game0' + sf.gameNo] = sf.ksLabelSys�Ď��p"]
;
;	;�Z�[�u���[�h�̕\�����y�[�W
;	[eval exp="sf['saveload_now_page_game0' + sf.gameNo] = sf.saveload_now_page"]
;	;�N���b�N�����ꏊ���L�^
;	[eval exp="sf['new_saveclick_game0' + sf.gameNo] = sf.new_saveclick"]
;	;�N���b�N�����y�[�W���L�^
;	[eval exp="sf['new_savepage_game0' + sf.gameNo] = sf.new_savepage"]
;	;�I�}�P�{�����y�[�W
;	[eval exp="sf['CG_page0' + sf.gameNo] = sf.CG_page"]
;	[eval exp="sf['SR_page0' + sf.gameNo] = sf.SR_page"]

[if exp="sf.dialog_on"]
	[close]
	;No�������火��������
	;��������bg�\�蒼���̂��Ȃ��B�t�@�C�����ς�����Ƃ��ɖʓ|��������σt���O��
	;[image storage="&sf.addgameID + 'bg_title2'" layer=base page=fore visible=true]
	[eval exp="tf.exitpass = 1"]
	[jump target=*title_menu_loop]
[endif]
;�]�m�F�_�C�A���O�{�b�N�X���J�����ƂȂ��A�����ɏI��������ꍇ�́Akag.shutdown()���Ăяo������
;���Ă��邩�����ς������ł��Ȃ��Ƃ��߂Ȃ̂��Ȃ�
;[close ask=false]
[eval exp="kag.shutdown()"]

;�_�C�A���O�I�t�Ȃ灪�ł����ɕ��邩�火�ɂ͎��ۂɂ͍s���Ȃ��B
;No�������火��������
[jump target=*title_menu_loop]
;---------------------------------------
; �u�Q�[���J�n�v���I�����ꂽ�G�ݒ�𕜋A����
;
*title_menu_start
[freeimage layer=0 page=fore]
[if exp="tf.pskip == 1"]
	[jump target=*�����_���{�C�X����]
[endif]


*�����_���{�C�X����

;�^�C�g���R�[���~�߁B���񂾂��~�߂Ă����΃{�C�X�o�b�t�@�ł���ĂĂ����S���낤�B
[stopse buf=0]
[stopse buf=1]
[stopse buf=2]
[stopse buf=3]
[stopse buf=4]
[stopse buf=6]

[�^�C�g����ʂ���̈ړ� time=500]

; �E�F�C�g����
[delay speed=user]
; �^�C�g�����j���[��ʗp���b�Z�[�W���C�����\��
[layopt layer="&tf.title_message" page=fore visible=false]


;���O�ݒ��ʂ�
[call storage="title_nameedit.ks"]



; ; �E�N���b�N�T�u���[�`���̐ݒ��ύX
; [rclick call=true target="*rclick_menu" storage="rclick.ks" enabled=true]
[rclick call=false jump=false enabled=true]


;�E�N���b�N�̐ݒ������
[call storage="rclick_sub.ks"]

; �x�ɂ͂��߂�悤�ɂ���
[disablestore store=false restore=false]
; ���b�Z�[�W�����ւ̏o�͂��ĊJ�A�\���ɂ���
[history output=true enabled=true]
;BGM��~
[fadeoutbgm time=1000]

[eval exp="tf.fromtitle = 0"]

;CGMODE�ŊJ���`�F�b�N�Ɏg���t���O�I�t
;[eval exp="tf.CG�J���`�F�b�N = 0"]

[eval exp="tf.�N�� = 0"]
;�V���[�g�J�b�g����p[eval exp="tf.title = 0"]
;�V���[�g�J�b�g�L�[�̃Z�[�u�L�� �����system_savedata_sub.ks�ł�����Ɋ܂�łď����̕|�����炻�̂܂�
[eval exp="f.shortcut_save = 1"]

;
; ���ۂ̃V�i���I�ցc
;

[wt canskip=fales]

[wait time=500 canskip=fales]

[if exp="tf.�T���v�� == 1"]
	[eval exp="tf.�T���v�� = 0"]
	[jump storage="�T���v���X�N���v�g.ks"]
[endif]

;�Q�[���v���C���̃t���O�I���@�V�X�e���߂�ł���tf.gameplay�Ƃ͕ʁB
;�Q�[���v���C���͏�ɃI���̂܂܁B�^�C�g����ʂɖ߂������Ɏ����ŃI�t�ɂȂ�͂��B
[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="f.gameplay = 1"]
[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="f.gameplay = 2"]
[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="f.gameplay = 3"]
[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="f.gameplay = 4"]
[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="f.gameplay = 5"]
[endif]

;skip�̔�΂�����܂����ł��Ȃ��ق���������ȁB0000�ɂ��悤
;[if    exp="tf.pskip == 1"]
;	[eval exp="tf.pskip = 0"]
;	[jump storage="0008.ks"]
;[endif]

;���ꂼ��̃Q�[���̓���
[jump storage="&sf.addgameID + '0000.ks'"]
