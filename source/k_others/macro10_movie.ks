;macro10_movie.ks


;���[�r�[�Đ��̃e���v���B�ꉞ�}�N�������Ă���
[macro name=movie]

	[stopbgm]
	[stopse_all]
	;�X�L�b�v���Ă���Ƃ񂶂Ⴄ����X�L�b�v�̉���
	[cancelskip]
	; �r�f�I�̑�����ݒ�
	[video visible=true left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" mode=overlay loop=false]
	[openvideo storage=%storage]
	; �r�f�I�̍Đ�
	[playvideo]
	;���[�r�[�̉��ʕύX
	[if exp="sf.bgmplay == 1"]
		;[video volume="&kag.bgm.currentBuffer.volume2"]
		;[video volume=60]
		;�����bgm�Ɠ����ɂȂ邩�ȁH
		;����A�R���t�B�O��ʂɈ�x������Ȃ��Ń��[�r�[�ɂȂ�����sf.dummy_bgmopt��void�̂܂܂ŉ���0����c�c
		;void�Ȃ�R���t�B�O�̂Ɠ������������Ă���
		[eval exp="sf.dummy_bgmopt = kag.bgm.currentBuffer.volume2" cond="sf.dummy_bgmopt == void"]
		[video volume="&(sf.dummy_bgmopt/1000)"]
	[elsif exp="sf.bgmplay == 0"]
		[video volume=0]
	[endif]
	;�X�L�b�v�\
	[wv canskip=true]
	;mode�g�����Ƃ��͂����ƒ�~���߂Ȃ��Ǝ���movie���Đ��ł��Ȃ��݂���
	[stopvideo]

[endmacro]






;------------------------------
;�V�i���I���̃G�����[�r�[����

;�L�q��@�g���q�͕s�v�@����loop�̂�
;[movie �t�@�C���� loop]
;�}�N�����@movie�Ȃ̂��A�j���Ȃ̂�����������asd���g�����A�j���ƍ��������Ⴄ����movie�Ƃ���
[macro name=movieH]

	;�E�N���b�N�T�u���[�`���ŃV�X�e���ړ����ĊJ�̎���wp�Œ�~���Ă��܂��̂�
	;�E�N���b�N���E�B���h�E�����ȊO�Ȃ疳���ɂ���B[stopmovie]�}�N�����Ō��ɖ߂��B
	;�V�X�e���ړ����Ė߂鎞���ēx���̃}�N�������s���邩�珈���͂��������ł����͂��B
	[if exp="sf.conf_rclick != 1"]
		[rclick enabled=false]
	[endif]

	[layopt layer=1 left=0 top=0 opacity=255]

	;�߂�ǂ��������ǃ��[�v�̎��̕����w�肠��ɂ���
	[if exp="mp.loop"]
		[eval exp="f.movie_loop = 1"]
		[video visible=true left=0 top=0 width=1024 height=768 mode=layer loop=true]
	[else]
		[eval exp="f.movie_loop = 0"]
		[video visible=true left=0 top=0 width=1024 height=768 mode=layer loop=false]
	[endif]
	[freeimage layer=1 page=fore][freeimage layer=1 page=back]

	;movie����movie�̂Ƃ��ɂ��ꂠ��Ƃ܂�����
	;���l�p�ł��Ⴄ���ǎd���Ȃ�
	[if exp="mp.baseoff == void"]
		;���[�r�[�̓���ŉ�ʍ���ɍ������o��̋C�������̂Ń��[�r�[�̏�̃��C���ɃC�x���gCG��fore�ɓ\���Ă���
		;f.evcg_name��void�Ȃ獕�����Ă���
		[eval exp="f.evcg_name = 'effect_black'" cond="f.evcg_name == void"]
		[image storage="&f.evcg_name" layer=2 page=fore visible=true left=0 top=0]
	[endif]

	;Back�ɓ\���ăt�F�[�h�ŕ\�Ɏ����Ă��Ȃ��Ɣ��t���Ƃ������Ƃ��Ɍ����Ȃ��Ȃ����Ⴄ�̂�?
	;������t�F�[�h�������movie����movie����肭�����Ȃ��������ϕ\��
;	[videolayer channel=1 page=back layer=1]
	[videolayer channel=1 page=fore layer=1]
	;����Ȃ��ƃ��C��1��false�̏ꍇ�����Ȃ��񂶂��
	[layopt layer=1 page=fore visible=true]
;	[layopt layer=1 page=back visible=true]
	[eval exp="f.movieplaynow = 1"]
	[eval *]
	;[eval exp="f.moviefile = 'CGH03_1_MV_tes.mpg'"]
	;�ϐ��Ŏw�肷��̖ʓ|������mp�őS�������Ă����� mp�ɑ啶���g���Ȃ����珬������
	;�I�}�P�p�̃t���O�A�V�i���I���Œ��ɃI���ɂ�����������ǈꉞ�����ł����Ă悤
	[if    exp="mp.cgh03"][eval exp="f.moviefile = 'CGH03_MV.mpg'"][eval exp="sf.g_anime_CGH03 = 1"]
	[elsif exp="mp.cgh06"][eval exp="f.moviefile = 'CGH06_MV.mpg'"][eval exp="sf.g_anime_CGH06 = 1"]
	[elsif exp="mp.cgh11"][eval exp="f.moviefile = 'CGH11_MV.mpg'"][eval exp="sf.g_anime_CGH11 = 1"]
	[elsif exp="mp.cgh31"][eval exp="f.moviefile = 'CGH31_MV.mpg'"][eval exp="sf.g_anime_CGH31 = 1"]
	[else]
;	�t�@�C�������s���ł�
	[endif]
	[openvideo storage="&f.moviefile"]
	;�Ȃ񂩏��������Ə����I���҂�
	[preparevideo]
	;�E�N���b�N�T�u���[�`���ŃV�X�e���ړ������ꍇ�ɁA�ĊJ�̎��ɂ������火�����s����Ȃ��������B�G�����[�r�[���͉E�N���b�N�ړ��֎~���邵���Ȃ���
	[wp for=prepare]
	[playvideo]

	;���[�r�[�̏�̃��C���ɃC�x���gCG������
	[freeimage layer=2 page=fore]
[endmacro]


;�G�����[�r�[��~
[macro name=stopmovieH]
	;�A�j���I���Ȃ�ɂ��Ƃ����ق����ǂ��Ȃ��H��z�̎��ɓ��ŃI�t��邩��
	[if    exp="sf.g_anime_skip == 0"]
		[stopvideo]
		;�r�f�I���C������
		[clearvideolayer  channel=1]
		[freeimage layer=1 page=fore][freeimage layer=1 page=back]
		[eval exp="f.movie_loop   = 0"]
		[eval exp="f.movieplaynow = 0"]
		[eval exp="f.moviefile    = void"]

		;�E�N���b�N��L���ɖ߂�
		;[if exp="sf.conf_rclick != 1"]
		[rclick enabled=true]
		;[endif]
	[endif]
[endmacro]


[return]

