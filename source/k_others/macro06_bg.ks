; macro_bg.ks�c�w�i�p�}�N����`


;=============================================================
;�^�C�g���p�Ƃ��̈Ó]�@�V�i���I���͎g�p�֎~
;=============================================================
;�^�C�g���p�Ƃ���base�ɓ\�荞�݂̕K�v����
[macro name=�u���b�N�A�E�gbase]
	[freeimage page=fore layer=0][freeimage page=back layer=0]
	[image storage="effect_black" layer=base page=back visible=true left=0 top=0]
[endmacro]

[macro name=�z���C�g�A�E�gbase]
	[freeimage page=fore layer=0][freeimage page=back layer=0]
	[image storage="effect_white" layer=base page=back visible=true left=0 top=0]
[endmacro]



;=============================================================
;�V�i���I���̈Ó]�}�N��
;=============================================================
;�킴�킴��ԏ�̃��C���ɍ��i���E�ԁj��\��̂́AAndroid�ڐA���̂��߁B

;�F�̎w���trans��hide_chara_int�܂ŁA��̃}�N���ōςނ̂����Ă݂����ǈڐA���ɑł��ւ��ʓ|������Ȃ��B
[macro name=top]

;	;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
;	[if    exp="mp.winon == void"]
;����t�ɂ����ق����������Ȃ��B
	[if    exp="mp.winoff"]
		;�V�X�e���{�^�����E�B���h�E����
		[sysbt_meswin clear]
		;[sysbt_SIROKURO clear]
	[endif]

	[eval exp="f.BGorEV = 1"]
	[eval exp="f.stdmsk=0"]
	;�C�x���gCG�̃}�X�N�t���O�I�t
	[eval exp="f.mskon = 0"]

	[if    exp="mp.blk"][eval exp="f.effect_storage = 'effect_black'"]
	[elsif exp="mp.wht"][eval exp="f.effect_storage = 'effect_white'"]
	[elsif exp="mp.red"][eval exp="f.effect_storage = 'effect_red'"]
	[else][eval exp="f.effect_storage = 'effect_black'"]
	[endif]

	;���i���E�ԁj����ԏ�̃��C���Ɂ@��
	[backlay_c]
	[image storage="&f.effect_storage" layer="&sf.toplayer" page=back visible=true left=0 top=0 opacity=255]
	[trans_c *  time=%time|1000]

	;�O�i���C�����폜���Ĕw�i�i���C��0�j�����������Ԃɂ���
	[hide_chara_int *]

[endmacro]

	;=============================================================
	;�V�i���I���̈Ó]�}�N��
	;=============================================================

	[macro name=black_toplayer]

		;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
			;�V�X�e���{�^�����E�B���h�E����
			[sysbt_meswin clear]
			;[sysbt_SIROKURO clear]
		[endif]

		[eval exp="f.BGorEV = 1"]
		[eval exp="f.stdmsk=0"]
		;�C�x���gCG�̃}�X�N�t���O�I�t
		[eval exp="f.mskon = 0"]
		;������ԏ�̃��C���Ɂ@��
		[backlay_c]
		[image storage="effect_black" layer="&sf.toplayer" page=back visible=true left=0 top=0]
	[endmacro]

	;=============================================================
	;�V�i���I���̔��]�}�N��
	;=============================================================

	[macro name=white_toplayer]

		;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
		[if    exp="mp.winon == void"]
			;�V�X�e���{�^�����E�B���h�E����
			[sysbt_meswin clear]
			;[sysbt_SIROKURO clear]
		[endif]

		[eval exp="f.BGorEV = 1"]
		[eval exp="f.stdmsk=0"]
		;�C�x���gCG�̃}�X�N�t���O�I�t
		[eval exp="f.mskon = 0"]
		;������ԏ�̃��C���Ɂ@��
		[backlay_c]
		[image storage="effect_white" layer="&sf.toplayer" page=back visible=true left=0 top=0]
	[endmacro]

	;=============================================================
	;�V�i���I���̐ԓ]�}�N��
	;=============================================================

	[macro name=red_toplayer]

		;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
		[if    exp="mp.winon == void"]
			;�V�X�e���{�^�����E�B���h�E����
			[sysbt_meswin clear]
			;[sysbt_SIROKURO clear]
		[endif]

		[eval exp="f.BGorEV = 1"]
		[eval exp="f.stdmsk=0"]
		;�C�x���gCG�̃}�X�N�t���O�I�t
		[eval exp="f.mskon = 0"]
		;�Ԃ���ԏ�̃��C���Ɂ@��
		[backlay_c]
		[image storage="effect_red" layer="&sf.toplayer" page=back visible=true left=0 top=0]
	[endmacro]


;=============================================================
;�O�i���C�����폜���Ĕw�i�i���C��0�j�����������Ԃɂ���
;=============================================================
;�����1�ōςނ̂����Ă݂�

[macro name=hide_chara_int]
	;���K�v�Ȃ�K�X���₷
	;cond���Ƃ�����ςɑΉ����₷���H
	[freeimage page=fore layer=0  cond="sf.toplayer > 0" ][freeimage page=back layer=0  cond="sf.toplayer > 0" ]
	[freeimage page=fore layer=1  cond="sf.toplayer > 1" ][freeimage page=back layer=1  cond="sf.toplayer > 1" ]
	[freeimage page=fore layer=2  cond="sf.toplayer > 2" ][freeimage page=back layer=2  cond="sf.toplayer > 2" ]
	[freeimage page=fore layer=3  cond="sf.toplayer > 3" ][freeimage page=back layer=3  cond="sf.toplayer > 3" ]
	[freeimage page=fore layer=4  cond="sf.toplayer > 4" ][freeimage page=back layer=4  cond="sf.toplayer > 4" ]
	[freeimage page=fore layer=5  cond="sf.toplayer > 5" ][freeimage page=back layer=5  cond="sf.toplayer > 5" ]
	[freeimage page=fore layer=6  cond="sf.toplayer > 6" ][freeimage page=back layer=6  cond="sf.toplayer > 6" ]
	[freeimage page=fore layer=7  cond="sf.toplayer > 7" ][freeimage page=back layer=7  cond="sf.toplayer > 7" ]
	[freeimage page=fore layer=8  cond="sf.toplayer > 8" ][freeimage page=back layer=8  cond="sf.toplayer > 8" ]
	[freeimage page=fore layer=9  cond="sf.toplayer > 9" ][freeimage page=back layer=9  cond="sf.toplayer > 9" ]
	[freeimage page=fore layer=10 cond="sf.toplayer > 10"][freeimage page=back layer=10 cond="sf.toplayer > 10"]
	[freeimage page=fore layer=11 cond="sf.toplayer > 11"][freeimage page=back layer=11 cond="sf.toplayer > 11"]
;���C��15�����邯�Ǎ���\��g�b�v�̓}�C�i�X3��12���`���Ă�񂾁B
	[freeimage page=fore layer=12 cond="sf.toplayer > 12"][freeimage page=back layer=12 cond="sf.toplayer > 12"]
	[freeimage page=fore layer=13 cond="sf.toplayer > 13"][freeimage page=back layer=13 cond="sf.toplayer > 13"]
	[freeimage page=fore layer=14 cond="sf.toplayer > 14"][freeimage page=back layer=14 cond="sf.toplayer > 14"]
	[freeimage page=fore layer=15 cond="sf.toplayer > 15"][freeimage page=back layer=15 cond="sf.toplayer > 15"]
	[freeimage page=fore layer=16 cond="sf.toplayer > 16"][freeimage page=back layer=16 cond="sf.toplayer > 16"]
	[freeimage page=fore layer=17 cond="sf.toplayer > 17"][freeimage page=back layer=17 cond="sf.toplayer > 17"]
	[freeimage page=fore layer=18 cond="sf.toplayer > 18"][freeimage page=back layer=18 cond="sf.toplayer > 18"]
	[freeimage page=fore layer=19 cond="sf.toplayer > 19"][freeimage page=back layer=19 cond="sf.toplayer > 19"]
	[freeimage page=fore layer=20 cond="sf.toplayer > 20"][freeimage page=back layer=20 cond="sf.toplayer > 20"]


	[if    exp="mp.blk"][eval exp="f.effect_storage = 'effect_black'"]
	[elsif exp="mp.wht"][eval exp="f.effect_storage = 'effect_white'"]
	[elsif exp="mp.red"][eval exp="f.effect_storage = 'effect_red'"]
	[else][eval exp="f.effect_storage = 'effect_black'"]
	[endif]

	;���i���E�ԁj���x�[�X�� black_toplayer�Ɠ������Ƃ��߂����炱������
	[backlay_c]
	[image * storage="&f.effect_storage" layer=0 page=back visible=true left=0 top=0 opacity=255]
	[trans time=0 method=crossfade][wt_c]

	;���̃}�N�����ŏ����Ƃ��ΈÓ]���瑦�L�����̂ݕ\���Ƃ��ł��邩�炱�ꂪ������
	[freeimage page=fore layer="&sf.toplayer"][freeimage page=back layer="&sf.toplayer"]
[endmacro]



	;=============================================================
	;�O�i���C�����폜���Ĕw�i�i���C��0�j�����ɂ���
	;=============================================================
	;�g�p���@
	;[black_toplayer][trans_c cross][hide_chara_int]
	;[white_toplayer][trans_c cross][hide_chara_int_w]
	;[red_toplayer][trans_c cross][hide_chara_int_r]
	;�g�b�v���C���ւ�trans���I��������Ƃɏ������邽�߂ɕʃ}�N���ŕK�v�������B

	[macro name=hide_chara_int_b]
		;���K�v�Ȃ�K�X���₷
		;cond���Ƃ�����ςɑΉ����₷���H
		[freeimage page=fore layer=0  cond="sf.toplayer > 0" ][freeimage page=back layer=0  cond="sf.toplayer > 0" ]
		[freeimage page=fore layer=1  cond="sf.toplayer > 1" ][freeimage page=back layer=1  cond="sf.toplayer > 1" ]
		[freeimage page=fore layer=2  cond="sf.toplayer > 2" ][freeimage page=back layer=2  cond="sf.toplayer > 2" ]
		[freeimage page=fore layer=3  cond="sf.toplayer > 3" ][freeimage page=back layer=3  cond="sf.toplayer > 3" ]
		[freeimage page=fore layer=4  cond="sf.toplayer > 4" ][freeimage page=back layer=4  cond="sf.toplayer > 4" ]
		[freeimage page=fore layer=5  cond="sf.toplayer > 5" ][freeimage page=back layer=5  cond="sf.toplayer > 5" ]
		[freeimage page=fore layer=6  cond="sf.toplayer > 6" ][freeimage page=back layer=6  cond="sf.toplayer > 6" ]
		[freeimage page=fore layer=7  cond="sf.toplayer > 7" ][freeimage page=back layer=7  cond="sf.toplayer > 7" ]
		[freeimage page=fore layer=8  cond="sf.toplayer > 8" ][freeimage page=back layer=8  cond="sf.toplayer > 8" ]
		[freeimage page=fore layer=9  cond="sf.toplayer > 9" ][freeimage page=back layer=9  cond="sf.toplayer > 9" ]
		[freeimage page=fore layer=10 cond="sf.toplayer > 10"][freeimage page=back layer=10 cond="sf.toplayer > 10"]
		[freeimage page=fore layer=11 cond="sf.toplayer > 11"][freeimage page=back layer=11 cond="sf.toplayer > 11"]
	;���C��15�����邯�Ǎ���\��g�b�v�̓}�C�i�X3��12���`���Ă�񂾁B
		[freeimage page=fore layer=12 cond="sf.toplayer > 12"][freeimage page=back layer=12 cond="sf.toplayer > 12"]
		[freeimage page=fore layer=13 cond="sf.toplayer > 13"][freeimage page=back layer=13 cond="sf.toplayer > 13"]
		[freeimage page=fore layer=14 cond="sf.toplayer > 14"][freeimage page=back layer=14 cond="sf.toplayer > 14"]
		[freeimage page=fore layer=15 cond="sf.toplayer > 15"][freeimage page=back layer=15 cond="sf.toplayer > 15"]
		[freeimage page=fore layer=16 cond="sf.toplayer > 16"][freeimage page=back layer=16 cond="sf.toplayer > 16"]
		[freeimage page=fore layer=17 cond="sf.toplayer > 17"][freeimage page=back layer=17 cond="sf.toplayer > 17"]
		[freeimage page=fore layer=18 cond="sf.toplayer > 18"][freeimage page=back layer=18 cond="sf.toplayer > 18"]
		[freeimage page=fore layer=19 cond="sf.toplayer > 19"][freeimage page=back layer=19 cond="sf.toplayer > 19"]
		[freeimage page=fore layer=20 cond="sf.toplayer > 20"][freeimage page=back layer=20 cond="sf.toplayer > 20"]
		;��ԏ�͂܂��������Ⴞ�߁Bbg��evcg�^�O���ɏ���
		;�����x�[�X�� black_toplayer�Ɠ������Ƃ��߂����炱������
		[backlay]
		[image * storage="effect_black" layer=0 page=back visible=true left=0 top=0 opacity=255][trans time=0 method=crossfade][wt_c]
		;���̃}�N�����ŏ����Ƃ��ΈÓ]���瑦�L�����̂ݕ\���Ƃ��ł��邩�炱�ꂪ������
		[freeimage page=fore layer="&sf.toplayer"][freeimage page=back layer="&sf.toplayer"]
	[endmacro]

	;=============================================================
	;�O�i���C�����폜���Ĕw�i�i���C��0�j�𔒂ɂ���
	;=============================================================

	[macro name=hide_chara_int_w]
		;���K�v�Ȃ�K�X���₷
		[freeimage page=fore layer=0  cond="sf.toplayer > 0" ][freeimage page=back layer=0  cond="sf.toplayer > 0" ]
		[freeimage page=fore layer=1  cond="sf.toplayer > 1" ][freeimage page=back layer=1  cond="sf.toplayer > 1" ]
		[freeimage page=fore layer=2  cond="sf.toplayer > 2" ][freeimage page=back layer=2  cond="sf.toplayer > 2" ]
		[freeimage page=fore layer=3  cond="sf.toplayer > 3" ][freeimage page=back layer=3  cond="sf.toplayer > 3" ]
		[freeimage page=fore layer=4  cond="sf.toplayer > 4" ][freeimage page=back layer=4  cond="sf.toplayer > 4" ]
		[freeimage page=fore layer=5  cond="sf.toplayer > 5" ][freeimage page=back layer=5  cond="sf.toplayer > 5" ]
		[freeimage page=fore layer=6  cond="sf.toplayer > 6" ][freeimage page=back layer=6  cond="sf.toplayer > 6" ]
		[freeimage page=fore layer=7  cond="sf.toplayer > 7" ][freeimage page=back layer=7  cond="sf.toplayer > 7" ]
		[freeimage page=fore layer=8  cond="sf.toplayer > 8" ][freeimage page=back layer=8  cond="sf.toplayer > 8" ]
		[freeimage page=fore layer=9  cond="sf.toplayer > 9" ][freeimage page=back layer=9  cond="sf.toplayer > 9" ]
		[freeimage page=fore layer=10 cond="sf.toplayer > 10"][freeimage page=back layer=10 cond="sf.toplayer > 10"]
		[freeimage page=fore layer=11 cond="sf.toplayer > 11"][freeimage page=back layer=11 cond="sf.toplayer > 11"]
		[freeimage page=fore layer=12 cond="sf.toplayer > 12"][freeimage page=back layer=12 cond="sf.toplayer > 12"]
		[freeimage page=fore layer=13 cond="sf.toplayer > 13"][freeimage page=back layer=13 cond="sf.toplayer > 13"]
		[freeimage page=fore layer=14 cond="sf.toplayer > 14"][freeimage page=back layer=14 cond="sf.toplayer > 14"]
		[freeimage page=fore layer=15 cond="sf.toplayer > 15"][freeimage page=back layer=15 cond="sf.toplayer > 15"]
		[freeimage page=fore layer=16 cond="sf.toplayer > 16"][freeimage page=back layer=16 cond="sf.toplayer > 16"]
		[freeimage page=fore layer=17 cond="sf.toplayer > 17"][freeimage page=back layer=17 cond="sf.toplayer > 17"]
		[freeimage page=fore layer=18 cond="sf.toplayer > 18"][freeimage page=back layer=18 cond="sf.toplayer > 18"]
		[freeimage page=fore layer=19 cond="sf.toplayer > 19"][freeimage page=back layer=19 cond="sf.toplayer > 19"]
		[freeimage page=fore layer=20 cond="sf.toplayer > 20"][freeimage page=back layer=20 cond="sf.toplayer > 20"]
		;��ԏ�͂܂��������Ⴞ�߁Bbg��evcg�^�O���ɏ���
		;�����x�[�X�� black_toplayer�Ɠ������Ƃ��߂����炱������
		[backlay]
		[image * storage="effect_white" layer=0 page=back visible=true left=0 top=0 opacity=255][trans time=0 method=crossfade][wt_c]
		[freeimage page=fore layer="&sf.toplayer"][freeimage page=back layer="&sf.toplayer"]
	[endmacro]

	;=============================================================
	;�O�i���C�����폜���Ĕw�i�i���C��0�j��Ԃɂ���
	;=============================================================

	[macro name=hide_chara_int_r]
		;���K�v�Ȃ�K�X���₷
		[freeimage page=fore layer=0  cond="sf.toplayer > 0" ][freeimage page=back layer=0  cond="sf.toplayer > 0" ]
		[freeimage page=fore layer=1  cond="sf.toplayer > 1" ][freeimage page=back layer=1  cond="sf.toplayer > 1" ]
		[freeimage page=fore layer=2  cond="sf.toplayer > 2" ][freeimage page=back layer=2  cond="sf.toplayer > 2" ]
		[freeimage page=fore layer=3  cond="sf.toplayer > 3" ][freeimage page=back layer=3  cond="sf.toplayer > 3" ]
		[freeimage page=fore layer=4  cond="sf.toplayer > 4" ][freeimage page=back layer=4  cond="sf.toplayer > 4" ]
		[freeimage page=fore layer=5  cond="sf.toplayer > 5" ][freeimage page=back layer=5  cond="sf.toplayer > 5" ]
		[freeimage page=fore layer=6  cond="sf.toplayer > 6" ][freeimage page=back layer=6  cond="sf.toplayer > 6" ]
		[freeimage page=fore layer=7  cond="sf.toplayer > 7" ][freeimage page=back layer=7  cond="sf.toplayer > 7" ]
		[freeimage page=fore layer=8  cond="sf.toplayer > 8" ][freeimage page=back layer=8  cond="sf.toplayer > 8" ]
		[freeimage page=fore layer=9  cond="sf.toplayer > 9" ][freeimage page=back layer=9  cond="sf.toplayer > 9" ]
		[freeimage page=fore layer=10 cond="sf.toplayer > 10"][freeimage page=back layer=10 cond="sf.toplayer > 10"]
		[freeimage page=fore layer=11 cond="sf.toplayer > 11"][freeimage page=back layer=11 cond="sf.toplayer > 11"]
		[freeimage page=fore layer=12 cond="sf.toplayer > 12"][freeimage page=back layer=12 cond="sf.toplayer > 12"]
		[freeimage page=fore layer=13 cond="sf.toplayer > 13"][freeimage page=back layer=13 cond="sf.toplayer > 13"]
		[freeimage page=fore layer=14 cond="sf.toplayer > 14"][freeimage page=back layer=14 cond="sf.toplayer > 14"]
		[freeimage page=fore layer=15 cond="sf.toplayer > 15"][freeimage page=back layer=15 cond="sf.toplayer > 15"]
		[freeimage page=fore layer=16 cond="sf.toplayer > 16"][freeimage page=back layer=16 cond="sf.toplayer > 16"]
		[freeimage page=fore layer=17 cond="sf.toplayer > 17"][freeimage page=back layer=17 cond="sf.toplayer > 17"]
		[freeimage page=fore layer=18 cond="sf.toplayer > 18"][freeimage page=back layer=18 cond="sf.toplayer > 18"]
		[freeimage page=fore layer=19 cond="sf.toplayer > 19"][freeimage page=back layer=19 cond="sf.toplayer > 19"]
		[freeimage page=fore layer=20 cond="sf.toplayer > 20"][freeimage page=back layer=20 cond="sf.toplayer > 20"]
		;��ԏ�͂܂��������Ⴞ�߁Bbg��evcg�^�O���ɏ���
		;�����x�[�X�� black_toplayer�Ɠ������Ƃ��߂����炱������
		[backlay]
		[image * storage="effect_red" layer=0 page=back visible=true left=0 top=0 opacity=255][trans time=0 method=crossfade][wt_c]
		[freeimage page=fore layer="&sf.toplayer"][freeimage page=back layer="&sf.toplayer"]
	[endmacro]



;=============================================================
;�w�i
;=============================================================

;storage�𒼂�%gra�ɂ����Ⴄ��mp�̕ۑ��Ƃ������������Ȃ��Ƃ����Ȃ��Ėʓ|�Ȃ̂�2�i�K�}�N���ɂ���B
;[macro name=bg]
;	[bg_ * storage=%gra]
;[endmacro]

;���X�̃}�N���̂ق����A���_�[�o�[�t����
;[macro name=bg_]
[macro name=bg]

	[eval exp="f.BGorEV = 1"]

	;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
	[if    exp="mp.winon == void"]
		;�V�X�e���{�^�����E�B���h�E����
		[sysbt_meswin clear]
	[endif]

	;�L�����������症�������ꍇ�ɃI���ɂȂ��Ă�t���O���I�t��
	[eval exp="f.stdmsk = 0"]
	;�C�x���gCG�̃}�X�N�t���O�I�t
	[eval exp="f.mskon = 0"]
	[eval exp="f.mskon2 = 0"]

		;layopt���ƕ����𓯎��ɐݒ�ł��Ȃ�����ϐ��ɓ����image�^�O�Ō��ʂ����s����
		;�ł�����܂�g��Ȃ��̂ɔ������܂���̂��Ȃ�
		;���ʂ��L�q���鎞�̓}�N�����̒���ɏ������ƁI�@bg sp ���Ċ�����
		;����:�����ԉ��Z�@�����ł��ł���悤�ɂ��Ă�����
		;mcolor�͈���`���ꂿ�Ⴄ�Ƃ��ꖈ��������Ⴄ�񂶂�ˁH�������ɂ���Ƃ��Ȃ��Ƃ��߂�
		[if    exp="mp.blk"]
			[eval exp="f.bg_mcolor = '0x000000'"]
			[layopt layer=%layer|0  mcolor="&f.bg_mcolor" mopacity=%addopa|200]
		[elsif exp="mp.wht"]
			[eval exp="f.bg_mcolor = '0xffffff'"]
			[layopt layer=%layer|0  mcolor="&f.bg_mcolor" mopacity=%addopa|200]
		[elsif exp="mp.red"]
			[eval exp="f.bg_mcolor = '0xff0000'"]
			[layopt layer=%layer|0  mcolor="&f.bg_mcolor" mopacity=%addopa|200]
		[endif]

		;����:�Z�s�A
		[if exp="mp.spi"]
			;[layopt layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 grayscale=true rgamma=1.3 ggamma=1.1]
			[eval exp="f.bg_grayscale = true"]
			[eval exp="f.bg_rgamma    = 2"]
			[eval exp="f.bg_ggamma    = 1.5"]
			[eval exp="f.bg_bgamma    = 1"]
		[elsif exp="mp.tv"]
			[eval exp="f.bg_grayscale = true"]
			[eval exp="f.bg_rgamma    = 0.3"]
			[eval exp="f.bg_ggamma    = 1.2"]
			[eval exp="f.bg_bgamma    = 0.9"]
		[else]
			[eval exp="f.bg_grayscale = false"]
			[eval exp="f.bg_rgamma    = 1"]
			[eval exp="f.bg_ggamma    = 1"]
			[eval exp="f.bg_bgamma    = 1"]
		[endif]


		;����:�����O���X�P �Z�s�A�̃O���X�P�Ɣ�����Ⴄ����sp����Ȃ�����ǉ�
		[if exp="mp.gray && mp.spi && mp.tv == void"]
			;����:�Z�s�A�p���������@
			[eval exp="f.bg_grayscale = true"]
		[elsif exp="mp.spi == void && mp.tv == void"]
			[eval exp="f.bg_grayscale = false"]
		[endif]

		;����:�l�K�|�W���]
		[if exp="mp.nps"]
			;[layopt layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0]
			[eval exp="f.bg_rfloor = 255"]
			[eval exp="f.bg_gfloor = 255"]
			[eval exp="f.bg_bfloor = 255"]
			[eval exp="f.bg_rceil  = 0"]
			[eval exp="f.bg_gceil  = 0"]
			[eval exp="f.bg_bceil  = 0"]
		[else]
			[eval exp="f.bg_rfloor = 0"]
			[eval exp="f.bg_gfloor = 0"]
			[eval exp="f.bg_bfloor = 0"]
			[eval exp="f.bg_rceil  = 255"]
			[eval exp="f.bg_gceil  = 255"]
			[eval exp="f.bg_bceil  = 255"]
		[endif]

		;����:�㉺���]
		[if exp="mp.flipud"]
			;[layopt layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 flipud=true]
			[eval exp="f.bg_flipud = true"]
		[else]
			[eval exp="f.bg_flipud = false"]
		[endif]

		;����:���E���]
		[if exp="mp.fliplr"]
			;[layopt layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 fliplr=true]
			[eval exp="f.bg_fliplr = true"]
		[else]
			[eval exp="f.bg_fliplr = false"]
		[endif]

	[backlay_c]
	;�����L�����������ꂿ��s�����񂾂����H
	;�ꉞcond����Ă�����
	[chara_int_all cond="mp.charaon == void && mp.blur_x == void && mp.blur_y == void"]

	;����:�Z�s�A�p���������@
	;&sf.effectlayer �t�F�C�X�̃t���[���Ɣ��������Ă�Ȃ�
	[image storage="effect_KAISOU" layer="&sf.effectlayer" page=back visible=true left=%x|0 top=%y|0 grayscale=true rgamma=2 ggamma=1.5 cond="mp.spi && mp.efoff == void"]
	[if exp="mp.tv"]
		[image storage="effect_KAISOU" layer="&sf.effectlayer" page=back visible=true left=0 top=0 grayscale=true  grayscale=true grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma" bgamma="&f.evcg_bgamma"]
	[endif]
	;���g���Ɠ\����ςȂ��ɂȂ����Ⴄ��������Ȃ��Ƃ��߂��B�������肾�Ɩʓ|������mp��
	[if exp="mp.spioff || mp.tvoff"]
		[freeimage layer="&sf.effectlayer" page=back]
	[endif]

@if exp="(existentImage(mp.storage)!==false)"
	;���C���ƃy�[�W�ƃr�W�u����xy��opacity�Ɗe����ʂ͒�`
	[image * layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 grayscale="&f.bg_grayscale"  rgamma="&f.bg_rgamma" ggamma="&f.bg_ggamma"  ggamma="&f.bg_ggamma" rfloor="&f.bg_rfloor" gfloor="&f.bg_gfloor" bfloor="&f.bg_bfloor" rceil="&f.bg_rceil" gceil="&f.bg_gceil" bceil="&f.bg_bceil" flipud="&f.bg_flipud" fliplr="&f.bg_fliplr" ]

	;�g�k�p�ɔw�i���o���Ă���
	[eval exp="f.bg_tmp = mp.storage"]
@endif
;	;�����ԉ��Z�@�����ł��ł���悤�ɂ��Ă�����
;	[if    exp="mp.bl"][eval exp="f.effect_storage = 'effect_black'"]
;	[elsif exp="mp.wh"][eval exp="f.effect_storage = 'effect_white'"]
;	[elsif exp="mp.re"][eval exp="f.effect_storage = 'effect_red'"]
;	;[else][eval exp="f.effect_storage = 'effect_black'"]
;	[endif]
;
;	;�����ԉ��Z�@pimage
;	[if exp="mp.bl || mp.wh || mp.re"]
;	[pimage storage="&f.effect_storage" layer=%layer|0 page=back visible=true dx=0 dy=0 opacity=%bgaddopa]
;	[endif]

	;blur�}�N���ɑg�ݍ��񂾕��������̂��H
	;blur���x��������Ă�΂����ŕϐ��ɓ��ꂿ�Ⴄ�B�I���̓}�N�����œ����Ă�B
	[eval exp="f.blur_layer = mp.layer" cond="(mp.blur_x != void || mp.blur_y != void) && mp.layer != void"]
	[eval exp="f.blur_layer = 0"        cond="(mp.blur_x != void || mp.blur_y != void) && mp.layer == void"]
	[eval exp="f.blur_x = mp.blur_x" cond="mp.blur_x != void"]
	[eval exp="f.blur_y = mp.blur_y" cond="mp.blur_y != void"]
	;blur����
	[blur layer="&f.blur_layer" page=back blur_x="&f.blur_x" blur_y="&f.blur_y" cond="mp.blur_x|mp.blur_y"]
	;blur���x��������ĂȂ����0�ɂ��Ă���
	[eval exp="f.bluron = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_x = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_y = 0" cond="mp.blur_x == void && mp.blur_y == void"]

;	[trans_c *  time=%time|1000]
[endmacro]
;bg�}�N���ɓ���
;	;=============================================================
;	;�w�i�@�L�����������Ȃ����
;	;=============================================================
;	;���ʂ�bg�}�N����mp�ł���Ă��悳����������
;	[macro name=bg_unint]
;		[eval exp="f.BGorEV = 1"]
;
;		;�L�����������症�������ꍇ�ɃI���ɂȂ��Ă�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;		;�C�x���gCG�̃}�X�N�t���O�I�t
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		;������������Ȃ��B*�ɂ��đS���ɂ��邩�B���C����0�ɌŒ肷��ɂ͂ǂ�������
;		;[image *]
;		;imaege�ɏ����ƒ����ēǂ݂ɂ������烌�C���ݒ�Ƀf�t�H���L�q
;		;[layopt layer=0 page=back opacity=%opacity|255 grayscale=%grayscale|false rgamma=%rgamma|1.0 ggamma=%ggamma|1.0 bgamma=%bgamma|1.0 mcolor=%mcolor|false mopacity=%mopacity|false rfloor=%rfloor|0 gfloor=%gfloor|0 bfloor=%bfloor|0 rceil=%rceil|255 gceil=%gceil|255 bceil=%bceil|255 fliplr=%fliplr|false flipud=%flipud|false]
;		[backlay_c]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255]
;		;�g�N�G�X�g�p�ɔw�i���o���Ă���
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;�w�i �Z�s�A����
;	;=============================================================
;
;	[macro name=bg_sp]
;		[eval exp="f.BGorEV = 1"]
;
;		;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
;		[if    exp="mp.winon == void"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;
;		;�L�����������症�������ꍇ�ɃI���ɂȂ��Ă�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;		;�C�x���gCG�̃}�X�N�t���O�I�t
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;
;		[backlay_c]
;		;�����L�����������ꂿ��s�����񂾂����H
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 grayscale=true rgamma=2 ggamma=1.5]
;
;		;���������@�s�v�Ȃ�R�����g�A�E�g�̂ق����������H
;		[if    exp="mp.efoff == void"]
;		[image storage="effect_KAISOU" layer="&sf.toplayer - 1" page=back visible=true left=%x|0 top=%y|0 grayscale=true rgamma=2 ggamma=1.5]
;		[endif]
;
;		;�g�N�G�X�g�p�ɔw�i���o���Ă���
;		[eval exp="f.bg_tmp = mp.storage"]
;
;	[endmacro]
;
;	;=============================================================
;	;�w�i �l�K�|�W���]
;	;=============================================================
;
;	[macro name=bg_np]
;		[eval exp="f.BGorEV = 1"]
;
;		;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
;		[if    exp="mp.winon == void"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;
;		;�L�����������症�������ꍇ�ɃI���ɂȂ��Ă�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;		;�C�x���gCG�̃}�X�N�t���O�I�t
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		;�����L�����������ꂿ��s�����񂾂����H
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0]
;		;�g�N�G�X�g�p�ɔw�i���o���Ă���
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;�w�i �㉺���]
;	;=============================================================
;
;	[macro name=bg_ud]
;		[eval exp="f.BGorEV = 1"]
;
;		;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
;		[if    exp="mp.winon == void"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;
;		;�L�����������症�������ꍇ�ɃI���ɂȂ��Ă�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;		;�C�x���gCG�̃}�X�N�t���O�I�t
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		;�����L�����������ꂿ��s�����񂾂����H
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 flipud=true]
;		;�g�N�G�X�g�p�ɔw�i���o���Ă���
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;�w�i ���E���]
;	;=============================================================
;
;	[macro name=bg_lr]
;		[eval exp="f.BGorEV = 1"]
;
;		;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
;		[if    exp="mp.winon == void"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;
;		;�L�����������症�������ꍇ�ɃI���ɂȂ��Ă�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;		;�C�x���gCG�̃}�X�N�t���O�I�t
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		;�����L�����������ꂿ��s�����񂾂����H
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 fliplr=true]
;		;�g�N�G�X�g�p�ɔw�i���o���Ă���
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;�w�i �����Z
;	;=============================================================
;
;	;mcolor=0x00000 mopacity=200�ł��ΊȒP�����ڐA���̎����l������effect_black����pimage����
;	;���� opacity�K�{
;	[macro name=bg_bl]
;		[eval exp="f.BGorEV = 1"]
;
;		;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
;		[if    exp="mp.winon == void"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;
;		;�L�����������症�������ꍇ�ɃI���ɂȂ��Ă�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;		;�C�x���gCG�̃}�X�N�t���O�I�t
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		;�����L�����������ꂿ��s�����񂾂����H
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255]
;		[pimage storage="effect_black" layer=%layer|0 page=back visible=true dx=0 dy=0 opacity=%bgaddopa]
;		;�g�N�G�X�g�p�ɔw�i���o���Ă���
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;�w�i �����Z
;	;=============================================================
;
;	;���� opacity�K�{
;	[macro name=bg_wh]
;		[eval exp="f.BGorEV = 1"]
;
;		;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
;		[if    exp="mp.winon == void"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;
;		;�L�����������症�������ꍇ�ɃI���ɂȂ��Ă�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;		;�C�x���gCG�̃}�X�N�t���O�I�t
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		;�����L�����������ꂿ��s�����񂾂����H
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255]
;		[pimage storage="effect_white" layer=%layer|0 page=back visible=true dx=0 dy=0 opacity=%bgaddopa]
;		;�g�N�G�X�g�p�ɔw�i���o���Ă���
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;�w�i �����Z
;	;=============================================================
;
;	;���� opacity�K�{
;	[macro name=bg_wh_unint]
;		[eval exp="f.BGorEV = 1"]
;
;		;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
;		[if    exp="mp.winon == void"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;
;		;�L�����������症�������ꍇ�ɃI���ɂȂ��Ă�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;		;�C�x���gCG�̃}�X�N�t���O�I�t
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255]
;		[pimage storage="effect_white" layer=%layer|0 page=back visible=true dx=0 dy=0 opacity=%bgaddopa]
;		;�g�N�G�X�g�p�ɔw�i���o���Ă���
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]
;
;	;=============================================================
;	;�w�i �ԉ��Z
;	;=============================================================
;
;	;���� opacity�K�{
;	[macro name=bg_re]
;		[eval exp="f.BGorEV = 1"]
;
;		;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
;		[if    exp="mp.winon == void"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;
;		;�L�����������症�������ꍇ�ɃI���ɂȂ��Ă�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;		;�C�x���gCG�̃}�X�N�t���O�I�t
;		[eval exp="f.mskon = 0"]
;		[eval exp="f.mskon2 = 0"]
;		[backlay_c]
;		;�����L�����������ꂿ��s�����񂾂����H
;		[chara_int_all cond="mp.charaon == void"]
;		[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255]
;		[pimage storage="effect_red" layer=%layer|0 page=back visible=true dx=0 dy=0 opacity=%bgaddopa]
;		;�g�N�G�X�g�p�ɔw�i���o���Ă���
;		[eval exp="f.bg_tmp = mp.storage"]
;	[endmacro]


;=============================================================
;�w�i �ߋ���z�I�ȉ��o
;=============================================================

;�݂��������O���X�P
[macro name=bg_kaisou]
	[eval exp="f.BGorEV = 1"]

	;winon��������Ė�����Ώ����Bwinon������ꍇ�̓E�B���h�E�p��
	[if    exp="mp.winon == void"]
		;�V�X�e���{�^�����E�B���h�E����
		[sysbt_meswin clear]
	[endif]

	;�L�����������症�������ꍇ�ɃI���ɂȂ��Ă�t���O���I�t��
	[eval exp="f.stdmsk = 0"]
	;�C�x���gCG�̃}�X�N�t���O�I�t
	[eval exp="f.mskon = 0"]
	[eval exp="f.mskon2 = 0"]
	;������������Ȃ��B*�ɂ��đS���ɂ��邩�B���C����0�ɌŒ肷��ɂ͂ǂ�������
	;[image *]
	;imaege�ɏ����ƒ����ēǂ݂ɂ������烌�C���ݒ�Ƀf�t�H���L�q
	;[layopt layer=0 page=back opacity=%opacity|255 grayscale=%grayscale|false rgamma=%rgamma|1.0 ggamma=%ggamma|1.0 bgamma=%bgamma|1.0 mcolor=%mcolor|false mopacity=%mopacity|false rfloor=%rfloor|0 gfloor=%gfloor|0 bfloor=%bfloor|0 rceil=%rceil|255 gceil=%gceil|255 bceil=%bceil|255 fliplr=%fliplr|false flipud=%flipud|false]
	[backlay_c]
	;�����L�����������ꂿ��s�����񂾂����H
	[chara_int_all cond="mp.charaon == void"]
	[image * storage="%storage" layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 grayscale=true rgamma=0.5 ggamma=0.5 bgamma=1 rfloor=20 gfloor=20 bfloor=20]

	;���������@�s�v�Ȃ�R�����g�A�E�g�̂ق����������H
	[if    exp="mp.efoff == void"]
	[image storage="effect_KAISOU" layer="&sf.toplayer - 1" page=back visible=true left=%x|0 top=%y|0 grayscale=true rgamma=0.5 ggamma=0.5 bgamma=1 rfloor=20 gfloor=20 bfloor=20]
	[endif]

	;�g�N�G�X�g�p�ɔw�i���o���Ă���
	[eval exp="f.bg_tmp = mp.storage"]

[endmacro]


;=============================================================
;�L������ɂȂ�����w�i����ɂ��邽�߂̃}�N��
;=============================================================

	;���݂̃T�C�Y���������Ȃ�A��Ȃ�w�i����ɁBmp.nobig�͑傫�����Ȃ����߂�mp
	;��[�A���̃L���������������ꍇ�́A���ꂶ��_������ˁHch4���Ō�ɕ\�������T�C�Y�Ŕ��肵���Ⴄ���炠��

;�����ɑg�ݍ��ނƗ�O�I�ȏ����i�u���[���Ȃ��Ƃ���ɂ��Ȃ��Ƃ��j���ʓ|������
;	[macro name=bg_size_change]
;		;���O�̃L�����̑傫����ۑ����Ă����Ȃ��Ƃ����Ȃ��̂��B�Ⴆ�Α�Ə��𓯎��ɓ\���Ă���ꍇ�̔���́c�c
;
;		;���O���L�������������
;		[if    exp="mp.l && mp.nobig == void && (f.stdsize == 's' || f.stdsize == 'm')"]
;
;			;���ƂŌ��̃T�C�Y�ɖ߂����߂ɁA�ϐ��ɍ��̔w�i�̃t�@�C������ۑ�
;			[eval exp="f.bg_tmp2 = f.bg_tmp"]
;			;f.bg_tmp�ɑ������blur�������邩
;			;winon�i�E�B���h�E�����Ȃ��j�����Ă����Ȃ��ƁA�E�B���h�E��������������trans���Ă��܂��̂ŃL�����������������Ȃ��Ȃ�
;			[bg  storage="&f.bg_tmp + '��'" winon charaon blur_x=5 blur_y=5]
;
;		;������Ɠ����ɓ\���Ă�ꍇ�́Amp�ŏ��������̔���B���̏�������ɂ����Ȃ��Ƃ��߁B
;		[elsif exp="(mp.andl)"]
;
;		;���O���L�����偨������
;		[elsif exp="(mp.s || mp.m) && f.stdsize == 'l'"]
;			;�ۑ����Ă�tmp2�������߂�
;			[eval exp="f.bg_tmp = f.bg_tmp2"]
;			;winon�i�E�B���h�E�����Ȃ��j�����Ă����Ȃ��ƁA�E�B���h�E��������������trans���Ă��܂��̂ŃL�����������������Ȃ��Ȃ�
;			;f.bg_tmp
;			[bg  storage="&f.bg_tmp" winon charaon]
;
;		[endif]
;
;	[endmacro]




;�e�X�g�p�Ɂ��̃}�N���؂蕪������
[macro name=bg_l]
;	[if    exp="mp.nobig == void && (f.stdsize == 's' || f.stdsize == 'm')"]
	;�T�C�Y�Ŕ������Ⴄ�ƁA�ʂ̔w�i�傩��ʂ̔w�i��ɐ؂�ւ��Ȃ��Ȃ����Ⴄ��
;	[if    exp="f.bg_size == 0"]
		;���ƂŌ��̃T�C�Y�ɖ߂����߂ɁA�ϐ��ɍ��̔w�i�̃t�@�C������ۑ�
		[eval exp="f.bg_tmp2 = f.bg_tmp"]
;		;BG�g�咆�t���O 1�Ȃ�g�咆�A0�Ȃ�ʏ�
;		[eval exp="f.bg_size = 1"]

		;f.bg_tmp�ɑ������blur�������邩
		;�������łɑ��\���Ă�̂ɑ�ɂ����Ⴄ�Ƒ��ɂȂ邩�玩���ŃG���[�o�Ȃ��悤�ɂ��Ȃ��Ƃ����Ȃ���
		;bg_001_�J��
		;01234567 8
		;winon�i�E�B���h�E�����Ȃ��j�����Ă����Ȃ��ƁA�E�B���h�E��������������trans���Ă��܂��̂ŃL�����������������Ȃ��Ȃ�
		;Y-90����Ȃ���0�̂ق������R����
		[if    exp="mp.noblur != void && f.bg_tmp.substring(8,1) != '��'"][bg * storage="&f.bg_tmp + '��'" winon charaon  x=%x|-160 y=%y|0]
		[elsif exp="mp.noblur == void && f.bg_tmp.substring(8,1) != '��'"][bg * storage="&f.bg_tmp + '��'" winon charaon blur_x=%blur_x|3 blur_y=%blur_y|3 x=%x|-160 y=%y|0]
		[elsif exp="mp.noblur != void && f.bg_tmp.substring(8,1) == '��'"][bg * storage="&f.bg_tmp"        winon charaon x=%x|-160 y=%y|0]
		[elsif exp="mp.noblur == void && f.bg_tmp.substring(8,1) == '��'"][bg * storage="&f.bg_tmp"        winon charaon blur_x=%blur_x|3 blur_y=%blur_y|3 x=%x|-160 y=%y|0]
		[endif]
;	[endif]
[endmacro]


[macro name=bg_s]
	;������Ɠ����ɓ\���Ă�ꍇ�́Amp�ŏ��������̔���
	;[if    exp="(mp.andl)"]
	;[if exp="f.stdsize == 'l'"]
;	[if    exp="f.bg_size == 1"]
		;�ۑ����Ă�tmp2�������߂�
		[eval exp="f.bg_tmp = f.bg_tmp2"]
;		;BG�g�咆�t���O 1�Ȃ�g�咆�A0�Ȃ�ʏ�
;		[eval exp="f.bg_size = 0"]

		;f.bg_tmp
		[bg * storage="&f.bg_tmp" winon charaon x=%x|0 y=%y|0]

		;�O�̈׃J���ɂ��Ă����@�J���̂܂܂��̃}�N����bg��؂�ւ��悤�Ƃ����ꍇ�́Bbg�}�N�����̃t�F�C���Z�[�t�Ŕw�i�͍X�V����Ȃ�
		;���ꂪ�L��̂�bg_l�̂܂ܕʔw�i�ɐ؂�ς����Ƃ��΍􂾂����H
		;����O�ɏo�����Ⴄ��bg_s2�񓥂݂Ńo�O�ɂȂ����Ⴄ�Ȃ�
		[eval exp="f.bg_tmp2 = void"]

;	[endif]
[endmacro]

[macro name=bg_m][bg_s][endmacro]

[return]
