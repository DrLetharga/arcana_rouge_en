;_�L�����o�b�t�@�ݒ�

;�R���t�B�O�̐ݒ蕔���ƌ���ׂ�̑�ς�����ʃt�@�C���ɕ���

;�R���t�B�O�̐ݒ蕔���ƌ���ׂ�̑�ς�����ʃt�@�C���ɕ���
;===========================================================
;                    SE�o�b�t�@��`                     
;===========================================================


;	;�ʏ�SE�ƃR���t�B�O�����邩��
;	;�ʏ킪0�`3
;	[eval exp="sf.SE_buf1 = 0"]
;	[eval exp="sf.SE_buf2 = 1"]
;	[eval exp="sf.SE_buf3 = 2"]
;	[eval exp="sf.SE_buf4 = 3"]
;
;	;HSE��4�`6
;	[eval exp="sf.SE_H_buf1 = 4"]
;	[eval exp="sf.SE_H_buf2 = 5"]
;
;	[eval exp="sf.SE_HLoop_buf1 = 6"]
;	[eval exp="sf.SE_HLoop_buf2 = 7"]
;
;�V�X�e�� 1314�ł����̂��ȁH���̃o�b�t�@�̓R���t�B�O��SE0�ɂ��Ă��Ȃ����Ⴄ����01��
[eval exp="sf.SE_sys_buf1   = 0"]
[eval exp="sf.SE_sys_buf2   = 1"]
[eval exp="sf.SE_enter_buf = sf.SE_sys_buf1"]
[eval exp="sf.SE_click_buf = sf.SE_sys_buf2"]

;BGV�����ǉ������炱�ꂾ����`����
;�R���t�B�O��SE�Ȃ炷�o�b�t�@
[eval exp="sf.SE_sys_confsrd_buf = 12"]
;�L������8�ȍ~�؂�悭11����ɂ��邩�B10�Ԃ܂ŔO�̈�SE�p�ɊJ���Ă�����

;
;	;Click�Ƃ��I���J�[�\����SE��`�@�^�C�g���ɂ���ėv����
;
;	;�^�C�g�����
;	[eval exp="sf.SE_enter_title = 'se_click1'"]
;	[eval exp="sf.SE_click_title = 'se_click2'"]
;
;	;�I����
;	[eval exp="sf.SE_enter_sel = 'se_click1'"]
;	[eval exp="sf.SE_click_sel = 'se_click2'"]
;
;	;�V�X�e���{�^��
;	[eval exp="sf.SE_enter_sysbt = 'se_click1'"]
;	[eval exp="sf.SE_click_sysbt = 'se_click2'"]
;
;	;�R���t�B�O�Ƃ��Z�[�u���[�h�Ƃ��I�}�P���[�h�Ƃ��ėp
;	[eval exp="sf.SE_enter_sys = 'se_click1'"]
;	[eval exp="sf.SE_click_sys = 'se_click2'"]
;
;	;�N�C�b�N�Z�[�u���[�h
;	;3�L���������邩�炱���Œ�`���Ȃ���systembutton_sub.ks�Ŏg�p���O�ɒ�`
;	;[eval exp="sf.SE_Qsave = 'se_sys_quick_s'"]
;	;[eval exp="sf.SE_Qload = 'se_sys_quick_l'"]
;
;	[eval exp="sf.ogg_se_sys   = 'se_click1.ogg'"]
;	[eval exp="sf.ogg_se       = 'conf_se.ogg'"]
;	[eval exp="sf.ogg_se_H     = 'se_sex01a.ogg'"]
;	[eval exp="sf.ogg_se_HLoop = 'se_sex03.ogg'"]
;
;===========================================================
;                    �L�����o�b�t�@��`                     
;===========================================================

;SliderFuntion.tjs
;system_config_btch.ks
;system_config_srd.ks
;��L�̃o�b�t�@�w��𒼂ł͂Ȃ����L�̕ϐ��ɂ����o�[�W�������g��
;�̂Ńo�b�t�@�̊Ԃ͋󂯂��Ɏw�肷��

;�����Ƃ��Ƃ̂��߂ɃL�����̐U�蕪���́A���L�̏��ɂ��Ă����B
;�� ch01 ;��_�@��
;�� ch02 ;�X��@��
;�� ch03 ;���R�@�~�A
;�� ch04 ;�l���@��

;�o�b�t�@
[eval exp="sf.chara01_buf  = 4"]
[eval exp="sf.chara01L_buf = 5"]
[eval exp="sf.chara02_buf  = 6"]
[eval exp="sf.chara02L_buf = 7"]
[eval exp="sf.chara03_buf  = 8"]
[eval exp="sf.chara03L_buf = 9"]
[eval exp="sf.chara04_buf  = 10"]
[eval exp="sf.chara04L_buf = 11"]

;	[eval exp="sf.chara13_buf = 16"]
;	[eval exp="sf.chara14_buf = 17"]
;	[eval exp="sf.chara15_buf = 18"]
;	[eval exp="sf.chara16_buf = 19"]


;�R���t�B�O�p�̃T���v���{�C�X�@SliderFuntion.tjs�œǂݍ��܂��
[eval exp="sf.ogg_chara01  = 'chara01.ogg'"]
[eval exp="sf.ogg_chara01L = 'akane_loop_0001.ogg'"]
[eval exp="sf.ogg_chara02  = 'chara02.ogg'"]
;[eval exp="sf.ogg_chara02L = 'chara02.ogg'"]
[eval exp="sf.ogg_chara03  = 'chara03.ogg'"]
;[eval exp="sf.ogg_chara03L = 'chara03.ogg'"]
[eval exp="sf.ogg_chara04  = 'chara04.ogg'"]
;[eval exp="sf.ogg_chara04L = 'chara04.ogg'"]





;�{�C�X�}�N��
;�L�����̏��ԁivo_chara01~4�j�͎b��B
;�R���t�B�O�̖��O���ƃT���v���{�C�X�Ɋ֌W������̂ŕύX����Ȃ�bg_conf_mes_t.png���C�����邱�ƁB

;��_�@��
[macro name="vo_aka"]
	;�~�߂��Ⴄ�ق�������@�ĊJ�����Ȃ��Ƃ����Ȃ�����"bgvstop_chara01"�}�N���͎g��Ȃ�
	;[fadeoutse buf="&sf.chara01L_buf" time=100]
	;�{�C�X�Đ�����bgv�̉��ʂ�0�ɁB���삷���volume�ł����̂���
	;�{�C�X�I���Ȃ�� ���A����0�ł͂Ȃ��@����
	[if exp="sf.chara01_v == 1 && kag.se[sf.chara01_buf].volume2 != 0"]
		[seopt buf="&sf.chara01L_buf" volume=0]
	[endif]
	[vo_chara01 *]
[endmacro]

;bgv�}�N��
[macro name="bgv_aka"]
	[if    exp="mp.toiki01 || mp.to01"][eval exp="f.bgv = 'akane_loop_0001'"]
	[elsif exp="mp.toiki02 || mp.to02"][eval exp="f.bgv = 'akane_loop_0002'"]
	[elsif exp="mp.toiki03 || mp.to03"][eval exp="f.bgv = 'akane_loop_0003'"]
	[elsif exp="mp.fella01 || mp.fe01"][eval exp="f.bgv = 'akane_loop_0004'"]
	[elsif exp="mp.fella02 || mp.fe02"][eval exp="f.bgv = 'akane_loop_0005'"]
	[else][eval exp="f.bgv = mp.s"]
	[endif]
	[bgv_chara01 *  s="&f.bgv" cond="f.bgv != void"]
[endmacro]

;�X��@��
[macro name="vo_aoi"]
	[if exp="sf.chara02_v == 1 && kag.se[sf.chara02_buf].volume2 != 0"]
		[seopt buf="&sf.chara02L_buf" volume=0]
	[endif]
	[vo_chara02 *]
[endmacro]


;bgv�}�N��
[macro name="bgv_aoi"]
	[if    exp="mp.toiki01 || mp.to01"][eval exp="f.bgv = 'aoi_loop_0001'"]
	[elsif exp="mp.toiki02 || mp.to02"][eval exp="f.bgv = 'aoi_loop_0002'"]
	[elsif exp="mp.toiki03 || mp.to03"][eval exp="f.bgv = 'aoi_loop_0003'"]
	[elsif exp="mp.fella01 || mp.fe01"][eval exp="f.bgv = 'aoi_loop_0004'"]
	[elsif exp="mp.fella02 || mp.fe02"][eval exp="f.bgv = 'aoi_loop_0005'"]
	[else][eval exp="f.bgv = mp.s"]
	[endif]
	[bgv_chara02 *  s="&f.bgv" cond="f.bgv != void"]
[endmacro]

;���R�@�~�A
[macro name="vo_mia"]
	[if exp="sf.chara03_v == 1 && kag.se[sf.chara03_buf].volume2 != 0"]
		[seopt buf="&sf.chara03L_buf" volume=0]
	[endif]
	[vo_chara03 *]
[endmacro]

;bgv�}�N��
[macro name="bgv_mia"]
	[if    exp="mp.toiki01 || mp.to01"][eval exp="f.bgv = 'mia_loop_0001'"]
	[elsif exp="mp.toiki02 || mp.to02"][eval exp="f.bgv = 'mia_loop_0002'"]
	[elsif exp="mp.toiki03 || mp.to03"][eval exp="f.bgv = 'mia_loop_0003'"]
	[elsif exp="mp.fella01 || mp.fe01"][eval exp="f.bgv = 'mia_loop_0004'"]
	[elsif exp="mp.fella02 || mp.fe02"][eval exp="f.bgv = 'mia_loop_0005'"]
	[else][eval exp="f.bgv = mp.s"]
	[endif]
	[bgv_chara03 *  s="&f.bgv" cond="f.bgv != void"]
[endmacro]

;�l���@��
[macro name="vo_mei"]
	[if exp="sf.chara04_v == 1 && kag.se[sf.chara04_buf].volume2 != 0"]
		[seopt buf="&sf.chara04L_buf" volume=0]
	[endif]
	[vo_chara04 *]
[endmacro]

;bgv�}�N��
[macro name="bgv_mei"]
	[if    exp="mp.toiki01 || mp.to01"][eval exp="f.bgv = 'mei_loop_0001'"]
	[elsif exp="mp.toiki02 || mp.to02"][eval exp="f.bgv = 'mei_loop_0002'"]
	[elsif exp="mp.toiki03 || mp.to03"][eval exp="f.bgv = 'mei_loop_0003'"]
	[elsif exp="mp.fella01 || mp.fe01"][eval exp="f.bgv = 'mei_loop_0004'"]
	[elsif exp="mp.fella02 || mp.fe02"][eval exp="f.bgv = 'mei_loop_0005'"]
	[else][eval exp="f.bgv = mp.s"]
	[endif]
	[bgv_chara04 *  s="&f.bgv" cond="f.bgv != void"]
[endmacro]



;���u1�@�O�̈�
[macro name="vo_mob1"][vo_chara11 *][endmacro]

;���u2�@�O�̈�
[macro name="vo_mob2"][vo_chara12 *][endmacro]



[return]
