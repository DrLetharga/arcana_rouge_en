;�C�x���gCG�\���p�}�N��
;eval exp="tf.filename =  kag.back.layers['0'].Anim_loadParams.storage"]�ŕ\�����̃t�@�C���l�[����base���Ɠ����Ȃ��̂�
;�C�x���gCG�̓��C��0�ɓ\�鎖�I

;�Y���t�@�C���������ꍇ�ɃX���[���邽�߂�tjs�ƃC�x���g�\���}�N��

;//==//==//==//==//==//==//==//==//==//==//==//==//==//==//==
@iscript
function existentImage(storage)
{
	if(storage=="")
		return false;
		
	var test;
	
	if(test = storage + ".tlg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".png", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".bmp", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".jpg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".jpeg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(Storages.isExistentStorage(storage))
	{
		dm("existentImage:"+"�C���[�W�t�@�C���Ɋg���q�����邱�Ƃ͐�������Ă��܂���B("+storage+")");
	}
	else
	{
		//m �����ŃR���\�[���Ƀ��b�Z�[�W�o�Ă邩�炱����info�����Ώo�邩
		dm("existentImage:"+storage+"�͑��݂��܂���");
//�����[�X����
		System.inform("�����@"+storage+"�@�͑��݂��܂���");
		return false;
	}
	return storage;
}


function existentImage_evcg_check(storage)
{
	if(storage=="")
		return false;
		
	var test;
	
	if(test = storage + ".tlg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".png", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".bmp", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".jpg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".jpeg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(Storages.isExistentStorage(storage))
	{
		dm("existentImage:"+"�C���[�W�t�@�C���Ɋg���q�����邱�Ƃ͐�������Ă��܂���B("+storage+")");
	}
	else
	{
//		//m �����ŃR���\�[���Ƀ��b�Z�[�W�o�Ă邩�炱����info�����Ώo�邩
//		dm("existentImage:"+storage+"�͑��݂��܂���");
//�`�F�b�N�Ȃ̂ŃC���t�H�͏o���Ȃ�
//		System.inform("�����@"+storage+"�@�͑��݂��܂���");
		f.evcg_check_ok = 0;
		return false;
	}
	return storage;
}





@endscript
;//==//==//==//==//==//==//==//==//==//==//==//==//==//==//==

;=============================================================
;�ėpimage
;=============================================================

;�ėp
[macro name=img_c]
	[backlay_c][image * layer=%layer|6 page=back visible=true left=%x|0 top=%y|0 opacity=%opa|255]
[endmacro]


;=============================================================
;evcg�}�N�����Ŏg����t�@�C���̗L���̃`�F�b�N�}�N��
;=============================================================
[macro name=evcg_check]
	@if exp="(existentImage_evcg_check(mp.storage)!==false)"
	[image storage=%storage layer=base page=back visible=false left=0 top=0]
	[eval exp="f.evcg_check_ok = 1"]
	@endif
	[freeimage layer=base page=fore][freeimage layer=base page=back]
[endmacro]

;=============================================================
;�C�x���g
;=============================================================

;storage�𒼂�%gra�ɂ����Ⴄ��mp�̕ۑ��Ƃ������������Ȃ��Ƃ����Ȃ��Ėʓ|�Ȃ̂�2�i�K�}�N���ɂ���B
;[macro name=evcg]
;	[evcg_ * storage=%gra]
;[endmacro]

;���X�̃}�N���̂ق����A���_�[�o�[�t����
;[macro name=evcg_]
[macro name=evcg]


	;�w�i����C�x���gCG�Ȃ�E�B���h�E����
	[if    exp="f.BGorEV == 1"]
		;���O���w�i�Ȃ�O�ׂ̈Ƀu���[�t���O�I�t
		[eval exp="f.bluron = 0"]
		;�V�X�e���{�^�����E�B���h�E����
		[sysbt_meswin clear]
	[endif]
	[eval exp="f.BGorEV = 2"]

	;�O���ߗ������p�̃}�X�N�t���O���I�t��
	[eval exp="f.stdmsk = 0"]


		;layopt���ƕ����𓯎��ɐݒ�ł��Ȃ�����ϐ��ɓ����image�^�O�Ō��ʂ����s����
		;�ł�����܂�g��Ȃ��̂ɔ������܂���̂��Ȃ�
		;���ʂ��L�q���鎞�̓}�N�����̒���ɏ������ƁI�@evcg sp ���Ċ�����
		;����:�����ԉ��Z�@�����ł��ł���悤�ɂ��Ă�����
		;mcolor�͈���`���ꂿ�Ⴄ�Ƃ��ꖈ��������Ⴄ�񂶂�ˁH�������ɂ���Ƃ��Ȃ��Ƃ��߂�
		[if    exp="mp.blk"]
			[eval exp="f.evcg_mcolor = '0x000000'"]
			[layopt layer=%layer|0  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
		[elsif exp="mp.wht"]
			[eval exp="f.evcg_mcolor = '0xffffff'"]
			[layopt layer=%layer|0  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
		[elsif exp="mp.red"]
			[eval exp="f.evcg_mcolor = '0xff0000'"]
			[layopt layer=%layer|0  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
		[endif]

		;����:�Z�s�A
		[if exp="mp.spi"]
			;[layopt layer=%layer|0 page=back visible=true left=%x|0 top=%y|0 opacity=%opacity|255 grayscale=true rgamma=1.3 ggamma=1.1]
			[eval exp="f.evcg_grayscale = true"]
			[eval exp="f.evcg_rgamma    = 2"]
			[eval exp="f.evcg_ggamma    = 1.5"]
			[eval exp="f.evcg_bgamma    = 1"]
		[elsif exp="mp.tv"]
			[eval exp="f.evcg_grayscale = true"]
			[eval exp="f.evcg_rgamma    = 0.3"]
			[eval exp="f.evcg_ggamma    = 1.2"]
			[eval exp="f.evcg_bgamma    = 0.9"]
		[else]
			[eval exp="f.evcg_grayscale = false"]
			[eval exp="f.evcg_rgamma    = 1"]
			[eval exp="f.evcg_ggamma    = 1"]
			[eval exp="f.evcg_bgamma    = 1"]
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
			[eval exp="f.evcg_rfloor = 255"]
			[eval exp="f.evcg_gfloor = 255"]
			[eval exp="f.evcg_bfloor = 255"]
			[eval exp="f.evcg_rceil  = 0"]
			[eval exp="f.evcg_gceil  = 0"]
			[eval exp="f.evcg_bceil  = 0"]
		[else]
			[eval exp="f.evcg_rfloor = 0"]
			[eval exp="f.evcg_gfloor = 0"]
			[eval exp="f.evcg_bfloor = 0"]
			[eval exp="f.evcg_rceil  = 255"]
			[eval exp="f.evcg_gceil  = 255"]
			[eval exp="f.evcg_bceil  = 255"]
		[endif]

		;����:�㉺���]
		[if exp="mp.flipud"]
			;[layopt layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 flipud=true]
			[eval exp="f.evcg_flipud = true"]
		[else]
			[eval exp="f.evcg_flipud = false"]
		[endif]

		;����:���E���]
		[if exp="mp.fliplr"]
			;[layopt layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 fliplr=true]
			[eval exp="f.evcg_fliplr = true"]
		[else]
			[eval exp="f.evcg_fliplr = false"]
		[endif]

	[backlay_c]
	;�J�b�g�C�����\���Ă�������Ȃ��B�Ă��L�������\���ĂȂ�����������Ȃ��Ă����񂾂�Ȃ�
	;sf.toplayer�����͏����K�v�Ȃ��񂶂�Ȃ����H
	;�Ƃ肠�����J�b�g�C�����\���Ă鎞�����Ŕ���
	[chara_int_all cond="f.mskon2 == 0"]

;�C�x���gCG�̓V�i���I�ɃQ�[��ID���L�q�����ق�������Ȃ�
;�e�X�g�p�𓮍삳���邽�߂�addID���Ă邯�Ǎ��܂Œʂ���ۂ̃t�@�C�������L�q���悤
	@if exp="(existentImage(mp.storage)!==false)"
;	@if exp="(existentImage(sf.addgameID + mp.storage)!==false)"

		;����:�Z�s�A�p���������@
		[image storage="effect_KAISOU" layer="&sf.effectlayer" page=back visible=true left=%x|0 top=%y|0  opacity=%opacity|255 grayscale=true rgamma=2 ggamma=1.5 cond="mp.spi && mp.efoff == void"]
		[if exp="mp.tv"]
			;�N�C�b�N�Z�[�u���o�Ƃ��t���b�V���̃��C���Ɣ���Ă邩�烌�C��1�ɌŒ肵�Ă����O�̈�index�������Ƃ�
			[image storage="effect_KAISOU" layer=1 index=2000 page=back visible=true left=0 top=0 grayscale=true  grayscale=true grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma" bgamma="&f.evcg_bgamma"]
		[endif]
		;���g���Ɠ\����ςȂ��ɂȂ����Ⴄ��������Ȃ��Ƃ��߂��B�������肾�Ɩʓ|������mp��
		[if exp="mp.spioff || mp.tvoff"]
			[freeimage layer="&sf.effectlayer" page=back]
		[endif]

		;[image *]
		;���ꂱ�����Ă��ǂ��H
		;���C���ƃy�[�W�ƃr�W�u����xy��opacity�Ɗe����ʂ͒�`
		;mcolor�͈���`���ꂿ�Ⴄ�Ƃ��ꖈ��������Ⴄ�񂶂�ˁH
;�e�X�g�p�𓮍삳���邽�߂�addID���Ă邯�Ǎ��܂Œʂ���ۂ̃t�@�C�������L�q���悤
;�ǂ������������Ȃ�
		[image *  storage=%storage                     layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma" bgamma="&f.evcg_bgamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" ]
		;[image *  storage="&sf.addgameID + mp.storage" layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 opacity=%opacity|255 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" ]

		[eval exp="sf[mp.storage]= 1"]
;		[eval exp="sf[sf.addgameID + mp.storage]= 1"]
		;f.�͉��Ɏg���Ă�񂾂����Ȃ��B�{�^���I�����̔w�i�p��������
		;[eval exp="f[mp.storage] = 1"]

		;�|�������U���Z�b�g
		[eval exp="f.msk_x= 0"]
		[eval exp="f.msk_y= 0"]
		;���ڂō��W�M���Ă���}�X�N�p�̍��W�ϐ��ɕۑ��@move��ɕK���\��ւ������Ă邱�Ƃ��O��B
		[eval exp="f.msk_x= mp.x" cond="mp.x != void"]
		[eval exp="f.msk_y= mp.y" cond="mp.y != void"]


		;��U�J�b�gNo���m��
		;EV00
		[eval exp="f.CGname = mp.storage.charAt(0) + mp.storage.charAt(1) + mp.storage.charAt(2) + mp.storage.charAt(3)"]
		;[eval exp="f.CGname = sf.addgameID +  mp.storage.charAt(0) + mp.storage.charAt(1) + mp.storage.charAt(2) + mp.storage.charAt(3)"]
		;CG�M�������[�p�̕ϐ��I�� ������Ȃ畁�ʂ̃J�b�g���������b_cgmode_init�s�v�ɂȂ�񂶂�ˁH
		[eval exp="sf[f.CGname]= 1"]

		;�g�k�p�ɔw�i���o���Ă���
		[eval exp="f.bg_tmp = mp.storage"]

		;�g�又���ł������ǉ� �n�_���W�Ə������W�͓������̂��g���̂ŁA�g�債���T�C�Y�ōŏ�����\�������B���I�ɓ����������ꍇ�̓^�O�𒼑ł�
		[zoom_back *  cond="mp.z != void"]

		;�g�k���ł���ϐ�
		[eval exp="f.zoomon = 0" cond="mp.z == void ||mp.z == 100"]


		;�C�x���g�\���Ă��郌�C����ϐ��ɂ���Ƃ��ă}�X�N�T�u���[�`���Ŏg��
		[eval exp="f.layer_evcg= 0"        cond="mp.layer == void"]
		[eval exp="f.layer_evcg= mp.layer" cond="mp.layer != void"]

;�G�����[�r�[�p	;���[�r�[�Đ��O�Ƀ��C��1�ɓ\�邽�߂Ƀt�@�C�������L�^
;�G�����[�r�[�p	[eval exp="f.evcg_name = mp.storage"]

		;[eval exp="f.mskon = 1"]
		;���ڃt�@�C��������Ă���
		[eval exp="f.mskon = mp.storage" cond="tf.cutin == 0"]

		;�L�������Ƃɕ\��؂蕪���Ă�J�b�g�p
		;ch�������ꂩ��void�łȂ���Ύ��s�i5�L�����ȏ�Ƃ��ɂȂ�ꍇ�͏�����K�X�C���j
		[if exp="mp.ch1 != void || mp.ch2 != void || mp.ch3 != void || mp.ch4 != void || mp.ch5 != void"]
			;ch1��ch2�̓L�������ƂɌŒ�ɂ��邱�ƁAcg�o�^����Ƃ��ɂ킯����Ȃ��Ȃ邩��
			;�L�����̃t�@�C���������Ƃ��ɃJ�b�g�i���o�[����Ȃ��ėǂ��悤�ȏ���������

			;�J�b�g�i���o�[�̓����擾
			;[call storage="macro07_evcg.ks" target=*call]
			;����ł�����H

			;��U������
			[eval exp="f.CGface1 = void"]
			[eval exp="f.CGface2 = void"]
			[eval exp="f.CGface3 = void"]
			[eval exp="f.CGface4 = void"]
			[eval exp="f.CGface5 = void"]

			;mp.ch��void�Ȃ����face�p�̃t���O�ɓ����
			;[eval exp="f.CGface1 = mp.ch1" cond="mp.ch1 != void"]
			;[eval exp="f.CGface2 = mp.ch2" cond="mp.ch2 != void"]
			;[eval exp="f.CGface3 = mp.ch3" cond="mp.ch3 != void"]
			;[eval exp="f.CGface4 = mp.ch4" cond="mp.ch4 != void"]
			;[eval exp="f.CGface5 = mp.ch5" cond="mp.ch5 != void"]

			;��Ԃ���̕��ɏ����Ȃ��Ă����悤�ɂ������B10�ڂ����No�����ǂǂ̏�ԂɎg���Ă��ǂ��Ƃ��͊�t�@�C���̂ق���0
			;'_face_0_'�t�@�C���̑��݃`�F�b�N�@����`�F�b�N����́H ���̂ق�������B�J�b�g�ς������̔�����ɂȂ�����ȁB
			;ch1�����ł������H�L�����ɂ���Ă�0�ŕʂȃL�����͏��No���킹���Ă��蓾��񂶂�H�@��������f.CGface1��'_face_0_'���������Ȃ��Ƃ��߂�
			[if exp="mp.ch1 != void"]
				;0�t�@�C�������Ă����̐����������炻������D��݂����ȏ����ɂ��Ȃ��Ƃ����Ȃ��Ȃ��B
				;'_face_0_'�t�@�C���̑��݃`�F�b�N
				[evcg_check storage="&f.CGname + '_face_0_' + mp.ch1"]
				;f.evcg_check_ok��1�Ȃ�'_face_0_'�t�@�C��������i���ꂵ���Ȃ��j�͂��Ȃ̂Ńt�@�C�����ɒ�`
				[if exp="f.evcg_check_ok == 1"][eval exp="f.CGface1 = '_face_0_' + mp.ch1"]
				;����ȊO�̓x�[�X��10�ڂ̏��No�������I�ɓ����
				;mp.storage�̒���base_�������A�q�b�g�ӏ�����5�����ڂ���̕����𔲂��o���Ă�
				;�Q�[��ID_�̕��������ǉ����Ȃ�
				[else]				[eval exp="f.CGface1 = '_face_' + &mp.storage.substring(mp.storage.indexOf('base_')+5+4) + '_' + mp.ch1"]
				[endif]
			[endif]

			[if exp="mp.ch2 != void"]
				;'_face_0_'�t�@�C���̑��݃`�F�b�N
				[evcg_check storage="&f.CGname + '_face_0_' + mp.ch2"]
				;f.evcg_check_ok��1�Ȃ�'_face_0_'�t�@�C��������i���ꂵ���Ȃ��j�͂��Ȃ̂Ńt�@�C�����ɒ�`
				[if exp="f.evcg_check_ok == 1"][eval exp="f.CGface2 = '_face_0_' + mp.ch2"]
				;����ȊO�̓x�[�X��10�ڂ̏��No�������I�ɓ����
				[else]				[eval exp="f.CGface2 = '_face_' + &mp.storage.substring(mp.storage.indexOf('base_')+5+4) + '_' + mp.ch2"]
				[endif]
			[endif]

			[if exp="mp.ch3 != void"]
				;'_face_0_'�t�@�C���̑��݃`�F�b�N
				[evcg_check storage="&f.CGname + '_face_0_' + mp.ch3"]
				;f.evcg_check_ok��1�Ȃ�'_face_0_'�t�@�C��������i���ꂵ���Ȃ��j�͂��Ȃ̂Ńt�@�C�����ɒ�`
				[if exp="f.evcg_check_ok == 1"][eval exp="f.CGface3 = '_face_0_' + mp.ch3"]
				;����ȊO�̓x�[�X��10�ڂ̏��No�������I�ɓ����
				[else]				[eval exp="f.CGface3 = '_face_' + &mp.storage.substring(mp.storage.indexOf('base_')+5+4) + '_' + mp.ch3"]
				[endif]
			[endif]

			[if exp="mp.ch4 != void"]
				;'_face_0_'�t�@�C���̑��݃`�F�b�N
				[evcg_check storage="&f.CGname + '_face_0_' + mp.ch4"]
				;f.evcg_check_ok��1�Ȃ�'_face_0_'�t�@�C��������i���ꂵ���Ȃ��j�͂��Ȃ̂Ńt�@�C�����ɒ�`
				[if exp="f.evcg_check_ok == 1"][eval exp="f.CGface4 = '_face_0_' + mp.ch4"]
				;����ȊO�̓x�[�X��10�ڂ̏��No�������I�ɓ����
				[else]				[eval exp="f.CGface4 = '_face_' + &mp.storage.substring(mp.storage.indexOf('base_')+5+4) + '_' + mp.ch4"]
				[endif]
			[endif]

			[if exp="mp.ch5 != void"]
				;'_face_0_'�t�@�C���̑��݃`�F�b�N
				[evcg_check storage="&f.CGname + '_face_0_' + mp.ch5"]
				;f.evcg_check_ok��1�Ȃ�'_face_0_'�t�@�C��������i���ꂵ���Ȃ��j�͂��Ȃ̂Ńt�@�C�����ɒ�`
				[if exp="f.evcg_check_ok == 1"][eval exp="f.CGface5 = '_face_0_' + mp.ch5"]
				;����ȊO�̓x�[�X��10�ڂ̏��No�������I�ɓ����
				[else]				[eval exp="f.CGface5 = '_face_' + &mp.storage.substring(mp.storage.indexOf('base_')+5+4) + '_' + mp.ch5"]
				[endif]
			[endif]

			;ch1��ch2���\���Ă�΃x�[�X�̃t���O�̓I�t�ɁB���Ă��ꂶ��x�[�X�݂̂�1�x���g��Ȃ�������CG�J������Ȃ��Ȃ�
			;�ł������ō폜���Ȃ��ƁA���������̔��肪�ʓ|�B�}�N���O��CG�J���t���O����邵���Ȃ����B
			;sf.EV�`�`�𐬗������Ă������ŃI�t�ɂ��ꂿ�Ⴄ����ʂ̊J����p�t���O�ɂ��Ȃ��Ƃ��߂�
			;����ς���A�L�q�R��̓t�F�C���Z�[�t�Ƃ��āA��{�I��ch�͕K���S���\���Ēu�����ق���������B
			;�g��Ȃ��H	[eval exp="sf[mp.storage] = 0" cond="mp.ch1 != void && mp.ch2 != void"]
			;���g��Ȃ��Ȃ�open�t���O�͕s�v�ɂȂ��ăx�[�X�̃t���O���g����B
			;�ނ���void�������Ƃ��ɋ�����ch1ch2�̃t���O���I���ɂ��鏈�����K�v���B���A���߂������ĂȂ�����t�@�C������������Ȃ���B
			;�T�u���[�`���ɔ�΂������
			;[eval exp="sf[mp.storage + mp.ch1 + mp.ch2 + mp.ch3 + mp.ch4 + mp.ch5] = 1" cond="mp.ch1 == void && mp.ch2 == void && mp.ch3 == void && mp.ch4 == void && mp.ch5 == void"]
			;�����̕����ɂ���Ȃ�open�t���O�͕K�v�B

			;�����������ł���������H
			[if exp="mp.���C����"]

				;mcolor�͈���`���ꂿ�Ⴄ�Ƃ��ꖈ��������Ⴄ�񂶂�ˁH�������ɂ���Ƃ��Ȃ��Ƃ��߂�
				[if    exp="mp.bl"]
					[eval exp="f.evcg_mcolor = '0x000000'"]
					[layopt layer=%ch1layer|1  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch2layer|2  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch3layer|3  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch4layer|4  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch5layer|5  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
				[elsif exp="mp.wh"]
					[eval exp="f.evcg_mcolor = '0xffffff'"]
					[layopt layer=%ch1layer|1  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch2layer|2  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch3layer|3  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch4layer|4  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch5layer|5  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
				[elsif exp="mp.re"]
					[eval exp="f.evcg_mcolor = '0xff0000'"]
					[layopt layer=%ch1layer|1  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch2layer|2  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch3layer|3  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch4layer|4  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
					[layopt layer=%ch5layer|5  mcolor="&f.evcg_mcolor" mopacity=%addopa|200]
				[endif]


			;���C�����ɂ���Ȃ炱��ňꉞ���Ԃ͍D���ɕς����邪�B�h�炵�Ƃ��ړ�����Ƃ��Ɋ炪�����c�����Ⴄ
			;�t�^�i���Ń��C������EV19�����Ȃ�ch1�̃f�t�H����̃��C���ɂ���
			[image * storage="&f.CGname + f.CGface1"  layer=%ch1_layer|1 page=back visible=true opacity=%ch1_opa|255 left=%ch1_x|0 top=%ch1_y|0 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" cond="mp.ch1 != void"]
			[image * storage="&f.CGname + f.CGface2"  layer=%ch2_layer|2 page=back visible=true opacity=%ch2_opa|255 left=%ch2_x|0 top=%ch2_y|0 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" cond="mp.ch2 != void"]
			[image * storage="&f.CGname + f.CGface3"  layer=%ch3_layer|3 page=back visible=true opacity=%ch3_opa|255 left=%ch3_x|0 top=%ch3_y|0 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" cond="mp.ch3 != void"]
			[image * storage="&f.CGname + f.CGface4"  layer=%ch4_layer|4 page=back visible=true opacity=%ch4_opa|255 left=%ch4_x|0 top=%ch4_y|0 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" cond="mp.ch4 != void"]
			[image * storage="&f.CGname + f.CGface5"  layer=%ch5_layer|5 page=back visible=true opacity=%ch5_opa|255 left=%ch5_x|0 top=%ch5_y|0 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr" cond="mp.ch5 != void"]
			[else]
			;�J�b�g�i���o�[�̓��ƃL�����̕\�������
			[pimage storage="&f.CGname + f.CGface1"  layer=%layer|0 page=back visible=true opacity=%ch1_opa|255 dx=%ch1_x|0 dy=%ch1_y|0 cond="mp.ch1 != void"]
			[pimage storage="&f.CGname + f.CGface2"  layer=%layer|0 page=back visible=true opacity=%ch2_opa|255 dx=%ch2_x|0 dy=%ch2_y|0 cond="mp.ch2 != void"]
			[pimage storage="&f.CGname + f.CGface3"  layer=%layer|0 page=back visible=true opacity=%ch3_opa|255 dx=%ch3_x|0 dy=%ch3_y|0 cond="mp.ch3 != void"]
			[pimage storage="&f.CGname + f.CGface4"  layer=%layer|0 page=back visible=true opacity=%ch4_opa|255 dx=%ch4_x|0 dy=%ch4_y|0 cond="mp.ch4 != void"]
			[pimage storage="&f.CGname + f.CGface5"  layer=%layer|0 page=back visible=true opacity=%ch5_opa|255 dx=%ch5_x|0 dy=%ch5_y|0 cond="mp.ch5 != void"]
			[endif]


			;�g�ݍ��킹�t���O �O��mp���c���ĂȂ��̂�����H �A���_�[�o�[�t����ƑS�p�^�[�������Ȃ��Ƃ����Ȃ��Ȃ邩��ǐ������邯�ǖ�����
			;���ۂɐ��������ϐ��͂���Ȋ�����
			;EV01_base_1_�L������01_�L������01
			;���������ϐ��@�A���_�[�o�[�L�q��߂����炱����
			;EV01_base'�x�[�XNo''�L����01''�L����02'
			;����ϕϐ��ɂ��A���_�[�o�[�Ȃ��Ɗm�F���ɂ������玟�͂Ȃ񂩔��肢��đ�����
			;UnderBar
			[eval exp="f.UB1 = '_'" cond="mp.ch1 != void"]
			[eval exp="f.UB2 = '_'" cond="mp.ch2 != void"]
			[eval exp="f.UB3 = '_'" cond="mp.ch3 != void"]
			[eval exp="f.UB4 = '_'" cond="mp.ch4 != void"]
			[eval exp="f.UB5 = '_'" cond="mp.ch5 != void"]

			[eval exp="f.UB1 = void" cond="mp.ch1 == void"]
			[eval exp="f.UB2 = void" cond="mp.ch2 == void"]
			[eval exp="f.UB3 = void" cond="mp.ch3 == void"]
			[eval exp="f.UB4 = void" cond="mp.ch4 == void"]
			[eval exp="f.UB5 = void" cond="mp.ch5 == void"]

			[eval exp="sf[mp.storage + f.UB1 + mp.ch1 + f.UB2 + mp.ch2 + f.UB3 + mp.ch3 + f.UB4 + mp.ch4 + f.UB5 + mp.ch5] = 1" cond="mp.ch1 != void || mp.ch2 != void || mp.ch3 != void || mp.ch4 != void || mp.ch5 != void"]
			;�������ׂ����H�債�ĈӖ��͂Ȃ�����'_base'���Ȃ����炢 ��f.CGname�ɂ͏�ԓ����ĂȂ����炾�߂�
			;[eval exp="sf[f.CGname + mp.ch1 + mp.ch2 + mp.ch3 + mp.ch4 + mp.ch5] = 1" cond="mp.ch1 != void || mp.ch2 != void || mp.ch3 != void || mp.ch4 != void || mp.ch5 != void"]

		[endif]
	@endif
;�}�}�L�^�{�^��	;�f�o�b�O�p�}�}�L�^�{�^���B�I���Ȃ�CG���S�������Z�ɂȂ�
;�}�}�L�^�{�^��	[if exp="sf.evcgoff == 1"]
;�}�}�L�^�{�^��		;[layopt layer=%layer|0  page=back mcolor=0x00000 mopacity=220]
;�}�}�L�^�{�^��		[pimage storage="effect_black" layer=%layer|0 page=back opacity=244 dx=0 dy=0]
;�}�}�L�^�{�^��	[endif]

	[if exp="tf.�Z�[�u�}�X�N�e�X�g���s�� == 1"]
		[eval exp="tf.�ŏI���� = sf.addgameID + mp.storage"]
	[endif]

;	[trans_c *  time=%time|1000]
[endmacro]

;=============================================================
;=============================================================
;���L�̓���\���ɂ͕\��؂�ւ������͓���Ă��Ȃ��B�K�v�Ȃ悤�Ȃ�ǉ�����B
;���Z�ȊO�͂قƂ�ǎg���ĂȂ�����Aevcg�ɓ����ł����񂶂�Ȃ����H�@�ϐ�����������ƍ��킹��̖ʓ|�����B

;evcg�}�N���ɓ���
;	;=============================================================
;	;�C�x���g �Z�s�A����
;	;=============================================================
;
;	[macro name=evcg_sp]
;		;�w�i����C�x���gCG�Ȃ�E�B���h�E����
;		[if    exp="f.BGorEV == 1"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;�O���ߗ������p�̃}�X�N�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;�Ƃ肠�����J�b�g�C�����\���Ă鎞�����Ŕ���
;		[chara_int_all cond="f.mskon2 == 0"]
;		;��[chara_init*]�}�N�����ƈ�ԏ�̃��C���w��ł��Ȃ����炱���
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 grayscale=true rgamma=2 ggamma=1.5]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]
;
;	;=============================================================
;	;�C�x���g �l�K�|�W���]
;	;=============================================================
;
;	[macro name=evcg_np]
;		;�w�i����C�x���gCG�Ȃ�E�B���h�E����
;		[if    exp="f.BGorEV == 1"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;�O���ߗ������p�̃}�X�N�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;�Ƃ肠�����J�b�g�C�����\���Ă鎞�����Ŕ���
;		[chara_int_all cond="f.mskon2 == 0"]
;		;��[chara_init*]�}�N�����ƈ�ԏ�̃��C���w��ł��Ȃ����炱���
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]
;
;	;=============================================================
;	;�C�x���g �㉺���]
;	;=============================================================
;
;	[macro name=evcg_ud]
;		;�w�i����C�x���gCG�Ȃ�E�B���h�E����
;		[if    exp="f.BGorEV == 1"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;�O���ߗ������p�̃}�X�N�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;�Ƃ肠�����J�b�g�C�����\���Ă鎞�����Ŕ���
;		[chara_int_all cond="f.mskon2 == 0"]
;		;��[chara_init*]�}�N�����ƈ�ԏ�̃��C���w��ł��Ȃ����炱���
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 flipud=true]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]
;
;	;=============================================================
;	;�C�x���g ���E���]
;	;=============================================================
;
;	[macro name=evcg_lr]
;		;�w�i����C�x���gCG�Ȃ�E�B���h�E����
;		[if    exp="f.BGorEV == 1"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;�O���ߗ������p�̃}�X�N�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;�Ƃ肠�����J�b�g�C�����\���Ă鎞�����Ŕ���
;		[chara_int_all cond="f.mskon2 == 0"]
;		;��[chara_init*]�}�N�����ƈ�ԏ�̃��C���w��ł��Ȃ����炱���
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 fliplr=true]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]
;
;
;	;=============================================================
;	;�C�x���g �����Z
;	;=============================================================
;
;	;mcolor=0x00000 mopacity=200�ł��ΊȒP�����ڐA���̎����l������effect_black����pimage����
;	;���� opacity�K�{
;	[macro name=evcg_bl]
;		;�w�i����C�x���gCG�Ȃ�E�B���h�E����
;		[if    exp="f.BGorEV == 1"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;�O���ߗ������p�̃}�X�N�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;�Ƃ肠�����J�b�g�C�����\���Ă鎞�����Ŕ���
;		[chara_int_all cond="f.mskon2 == 0"]
;		;��[chara_init*]�}�N�����ƈ�ԏ�̃��C���w��ł��Ȃ����炱���
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 fliplr=true]
;			[pimage storage="effect_black" layer=0 page=back visible=true dx=0 dy=0 opacity=%opacity]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]
;
;	;=============================================================
;	;�C�x���g �����Z
;	;=============================================================
;
;	;���� opacity�K�{
;	[macro name=evcg_wh]
;		;�w�i����C�x���gCG�Ȃ�E�B���h�E����
;		[if    exp="f.BGorEV == 1"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;�O���ߗ������p�̃}�X�N�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;�Ƃ肠�����J�b�g�C�����\���Ă鎞�����Ŕ���
;		[chara_int_all cond="f.mskon2 == 0"]
;		;��[chara_init*]�}�N�����ƈ�ԏ�̃��C���w��ł��Ȃ����炱���
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 fliplr=true]
;			[pimage storage="effect_white" layer=0 page=back visible=true dx=0 dy=0 opacity=%opacity]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]
;
;	;=============================================================
;	;�C�x���g �ԉ��Z
;	;=============================================================
;
;	;���� opacity�K�{
;	[macro name=evcg_re]
;		;�w�i����C�x���gCG�Ȃ�E�B���h�E����
;		[if    exp="f.BGorEV == 1"]
;			;�V�X�e���{�^�����E�B���h�E����
;			[sysbt_meswin clear]
;		[endif]
;		[eval exp="f.BGorEV = 2"]
;
;		;�O���ߗ������p�̃}�X�N�t���O���I�t��
;		[eval exp="f.stdmsk = 0"]
;
;		[backlay_c]
;		;�Ƃ肠�����J�b�g�C�����\���Ă鎞�����Ŕ���
;		[chara_int_all cond="f.mskon2 == 0"]
;		;��[chara_init*]�}�N�����ƈ�ԏ�̃��C���w��ł��Ȃ����炱���
;		[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0]
;
;		@if exp="(existentImage(mp.storage)!==false)"
;			[image storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0 fliplr=true]
;			[pimage storage="effect_red" layer=0 page=back visible=true dx=0 dy=0 opacity=%opacity]
;			[eval exp="sf[mp.storage]= 1"]
;			[eval exp="f[mp.storage] = 1"]
;			[eval exp="f.mskon = 1"]
;		@endif
;	[endmacro]

;=============================================================
;�J�b�g�C��
;=============================================================
;�f�t�H�̃Z�[�u�}�X�N�͗��������6�ɂ���̂ŃJ�b�g�C���͂������
;�J�b�g�C���̃Z�[�u�}�X�N�͂���ɏ�

;storage�𒼂�%gra�ɂ����Ⴄ��mp�̕ۑ��Ƃ������������Ȃ��Ƃ����Ȃ��Ėʓ|�Ȃ̂�2�i�K�}�N���ɂ���B
;[macro name=evcg_cutin]
;	[evcg_cutin_ * storage=%gra]
;[endmacro]

;���X�̃}�N���̂ق����A���_�[�o�[�t����
;[macro name=evcg_cutin_]
[macro name=evcg_cutin]

;�Y���K�[�g�����ǉ��ύX�@2018/10/23�@evcg_cutin�̃}�X�N�֌W�@�t�@�C�����̎擾
;	[eval exp="f.mskon = mp.storage"]
;2����Ȃ��ƃJ�b�g�C���̃}�X�N�����ɂȂ����Ⴄ
	[eval exp="f.mskon2 = mp.storage"]
;	[eval exp="f.layer_evcg_cutin = mp.layer"]
;	[eval exp="f.layer_evcg_cutin = 7" cond="mp.layer == void"]
;
;	[backlay_c]
;	@if exp="(existentImage(mp.storage)!==false)"
;		;��U�J�b�gNo���m��
;		[eval exp="f.CGname = mp.storage.charAt(0) + mp.storage.charAt(1) + mp.storage.charAt(2) + mp.storage.charAt(3)"]
;		;CG�M�������[�p�̕ϐ��I�� ������Ȃ畁�ʂ̃J�b�g���������b_cgmode_init�s�v�ɂȂ�񂶂�ˁH
;		[eval exp="sf[f.CGname]= 1"]
;
;		[image storage=%storage layer=%layer|7 page=back visible=true  left=%x|0 top=%y|0 opacity=255]
;		[eval exp="sf[mp.storage]= 1"]
;		[eval exp="f[mp.storage] = 1"]
;		[eval exp="f.mskon2 = 1"]
;	@endif
	;�}�X�N�s�v�ȃJ�b�g�C��������ꍇ�͂��߂����ǁA����͑S���}�X�N�L��݂���������}�N���ŃI���ɂ���B
	;[eval exp="f.mskon2 = 1"]
	;�L�����������Ȃ�
	;evcg�}�N������f.mskon�ɃJ�b�g�C����mp.storage������Ȃ��悤�ɂ��邽�߂̃t���O
	[eval exp="tf.cutin = 1"]
	[evcg * layer="&sf.layer_evcg_cutin" charaon]
	[eval exp="tf.cutin = 0"]

;	[trans_c *  time=%time|1000]
[endmacro]

;�J�b�g�C������
[macro name=evcg_cutin_int]
;	[eval exp="f.mskon  = 0"]
	[eval exp="f.mskon2 = 0"]
;	[eval exp="f.BGorEV = 1"]
	[backlay_c]
	[image storage="chara_int" layer="&sf.layer_evcg_cutin" page=back visible=true opacity=255]

;	[trans_c *  time=%time|1000]
[endmacro]




;=============================================================

[return]

