

;��z�ɕK�v�ȃ}�N��
[macro name=scene_exp_init]
	;�ϐ��������}�N�����s
	[exp_init]
	;�X�L�b�v�������Ƃ���
	[cancelskip]
	;�I�[�g���������Ƃ���
	[cancelautomode]
	;������Ƃ��Ȃ��Ƃ�����ςȂ�CG���t�F�[�h���Ȃ��H
	[black_toplayer][trans time=100 method=crossfade][wt_c][hide_chara_int]
[endmacro]

;��z�ꗗ�ɖ߂�O�̏���
[macro name=scene_end_bg]
	;�V�X�e���{�^�����E�B���h�E����
	[sysbt_meswin_clear]
	;[black_toplayer][trans time=500 method=crossfade][wt_c][hide_chara_int]

	[stopse_all]
	;BGM��~
	[stopbgm]
	[backlay]
	[layopt layer=base page=back grayscale=true]
	[layopt layer=1    page=back grayscale=true]
	[image storage="effect_black" layer=5 opacity=150 page=back visible=true left=0 top=0]
	[trans time=500 method=crossfade][wt_c]

[endmacro]


[macro name=scene_end]
	;[if exp="f.fromSceneList == 1"]
	;	[scene_end_bg]
	;	[link storage=sceneAgain]������x����[endlink]
	;	[link storage=sceneList]�ꗗ�ɖ߂�[endlink]
	;	[s]
	;[endif]

	; ��z���[�h���Ȃ�A��z���[�h��ʂɖ߂�
	[if exp="tf.scene_mode == 1"]
		[bgvstop]
		[jump storage="b_scene.ks" target=*back_from_SR]
	[endif]

[endmacro]

[return]
