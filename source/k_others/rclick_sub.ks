;�E�N���b�N�ݒ肱���ɂ܂Ƃ߂�
;
;�I�����\��������z�����w�E�B���h�E���B���x�܂��́w�Z�[�u�Ăяo���x�Ȃ�E�N���b�N�E���B
;�I�����\�������w�E�B���h�E���B���x�Ȃ�E�N���b�N�E���B
;��z���Ȃ�w�Z�[�u�Ăяo���x�́w�E�B���h�E���B���x�ɂ���B
;����ȊO�͒ʏ�Q�[�����ƌ��Ȃ��A�ݒ�ʂ�̓���ɂ���B
;
;name=default�̏ꍇ�́Acall��false�ɂ��Ȃ���call�̌Ăѐ悪�����Ă�炵���B

;�E�N���b�N�ŉ�ʑJ�ڂ����ꍇ�Af.ksStorageSys�Af.ksLabelSys���ۑ�����鏈�����Ȃ��̂�
;�ȑO�ɃV�X�e���{�^���ŉ�ʑJ�ڂ����Ƃ��̃t�@�C���E���x���ɖ߂��Ă��܂��[�I�ǂ����悤


;�I�����\����
[if exp="f.selnow == 1"]
	;�V�[����z���Ȃ�Z�[�u�Ăяo���͕s�ɃE�B���h�E���B���ɂ���
	[if exp="tf.scene_mode == 1"]
		[if exp="sf.conf_rclick == 1"]
			[rclick enabled=false]
		[elsif exp="sf.conf_rclick == 2"]
			[rclick enabled=false]
		[elsif exp="sf.conf_rclick == 3"]
			[rclick call=true enabled=true storage="systembutton_sub.ks" target=*sys_config]
		[endif]
	;�������͒ʏ�Q�[����
	[else]
		;�E�N���b�N�ݒ肪�E�B���h�E���B���̎������E�N���b�N���E��
		[if exp="sf.conf_rclick == 1"]
			; �\�����ɉE�N���b�N�����Ɖ摜�����̕����c���ēs���������̂ŉE�N���b�N�𖳌��ɂ���B�I���������Ŗ߂��Ă邩����v�Ȃ͂��B
			[rclick enabled=false]
		;����ȊO�͉E�N���b�N�@�\��߂��i��x�E�B���h�E���B���ɂ���ƉE�N���b�N�E���ꂽ�܂܂ɂȂ��Ă��܂��̂Łj
		[elsif exp="sf.conf_rclick == 2"]
			[rclick call=true enabled=true storage="systembutton_sub.ks" target=*sys_save enabled=true]
		[elsif exp="sf.conf_rclick == 3"]
			[rclick call=true enabled=true storage="systembutton_sub.ks" target=*sys_config enabled=true]
		[endif]
	[endif]
;�V�[����z���Ȃ�Z�[�u�Ăяo���͕s�ɃE�B���h�E���B���ɂ���
[elsif exp="tf.scene_mode == 1"]
	[if exp="sf.conf_rclick == 1"]
		[rclick enabled=true]
		[rclick jump=false enabled=true call=false name=default]
	[elsif exp="sf.conf_rclick == 2"]
		[rclick enabled=true]
		[rclick jump=false enabled=true call=false name=default]
	[elsif exp="sf.conf_rclick == 3"]
		[rclick enabled=true]
		[rclick call=true enabled=true storage="systembutton_sub.ks" target=*sys_config]
	[endif]

;�������͒ʏ�Q�[����
[else]
	[if exp="sf.conf_rclick == 1"]
		[rclick jump=false enabled=true call=false name=default]
	[elsif exp="sf.conf_rclick == 2"]
		[rclick enabled=true]
		[rclick call=true enabled=true storage="systembutton_sub.ks" target=*sys_save]
	[elsif exp="sf.conf_rclick == 3"]
		[rclick enabled=true]
		[rclick call=true enabled=true storage="systembutton_sub.ks" target=*sys_config]
	[endif]
[endif]

[return]
