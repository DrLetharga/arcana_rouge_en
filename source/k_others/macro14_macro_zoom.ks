;macro14_macro_zoom

;�g�又���ł������ǉ� �n�_���W�Ə������W�͓������̂��g���̂ŁA�g�債���T�C�Y�ōŏ�����\�������B���I�Ɋg�債�����ꍇ�̓^�O�𒼑ł�


;tjs���g�����T�u���[�`��zoom_sub.ks�͍ĕ\�����ɏd�����A�V�X�e����ʍs�����藈���肷��ƃ������G���[�o�邩���߁B
;�������͔̂w�i�ƃC�x���gCG�̃T�C�Y���Ⴄ����ʁX�Ƀ}�N����g��


;�����trans�����邩��back�ɓǂݍ��ރ}�N��
[macro name=zoom_back]

;z=100��������X���[
[if exp="mp.z != 100"]
	;�t�@�C�����͊e�}�N�����ł��̕ϐ��ɓ���Ƃ��B���[�h����V�X�e���߂莞�Ɏg��
	;[eval exp="f.bg_tmp = mp.storage"]
	;�g�k���ł���ϐ�
	[eval exp="f.zoomon = 1"]

	;�e�푮��
	[eval exp="f.layer = mp.layer"]
	[eval exp="f.layer = 0"  cond="mp.layer == void"]
	[eval exp="f.x = mp.x"]
	[eval exp="f.x = 0"  cond="mp.x == void"]
	[eval exp="f.y = mp.y"]
	[eval exp="f.y = 0"  cond="mp.y == void"]
	[eval exp="f.z = mp.z"]
	[eval exp="f.z = f.z/100"]

	;�w�i��
	[eval exp="f.w = int + (1280*f.z)" cond=" f.BGorEV == 1"]
	[eval exp="f.h = int + (720*f.z)" cond=" f.BGorEV == 1"]
	;�C�x���gCG��
	[eval exp="f.w = int + (1280*f.z)" cond=" f.BGorEV == 2"]
	[eval exp="f.h = int + (720*f.z)"  cond=" f.BGorEV == 2"]

	[fgzoom_back storage="&f.bg_tmp" layer="&f.layer" sl="&f.x" st="&f.y" sw="&f.w" sh="&f.h" dl="&f.x" dt="&f.y" dw="&f.w" dh="&f.h" time=0 accel=1]
	[wfgzoom_back]
[endif]

[endmacro]




;�����trans�����Ȃ��i���[�h����V�X�e���߂莞�j����fore�ɓǂݍ��ރ}�N��
;f.x f.y f.z�͂��łɕۑ�����Ă邩�炱���ł͒�`���Ȃ�
[macro name=zoom_fore]

	;�w�i��
	[eval exp="f.w = int + (1280*f.z)" cond=" f.BGorEV == 1"]
	[eval exp="f.h = int + (720*f.z)" cond=" f.BGorEV == 1"]
	;�C�x���gCG��
	[eval exp="f.w = int + (1280*f.z)" cond=" f.BGorEV == 2"]
	[eval exp="f.h = int + (720*f.z)"  cond=" f.BGorEV == 2"]

	[fgzoom storage="&f.bg_tmp" layer="&f.layer" sl="&f.x" st="&f.y" sw="&f.w" sh="&f.h" dl="&f.x" dt="&f.y" dw="&f.w" dh="&f.h" time=0 accel=1]
	[wfgzoom]
	;�f�o�b�O�̃V�i���I�ēǂݍ��݂���ƃ��[�h���ɔ��f����Ȃ��C�����邩��ꉞ����Ă�����
	[layopt layer="&f.layer" page=fore visible=true opacity=255]
[endmacro]



[return]
