;---------------------------------------
;�J�N�G��
;---------------------------------------
;�t�@�C�����̓�
[eval exp="sf.image_name_ch06  = 'ch06_'"]

[eval exp="sf.ch06_sml_w = 1050"]
[eval exp="sf.ch06_sml_h = 1350"]
[eval exp="sf.ch06_mid_w = 1400"]
[eval exp="sf.ch06_mid_h = 1800"]
[eval exp="sf.ch06_lag_w = 2100"]
[eval exp="sf.ch06_lag_h = 2700"]
[eval exp="sf.ch06_xla_w = 3500"]
[eval exp="sf.ch06_xla_h = 4500"]

[eval exp="tf.std_w = sf.ch06_sml_w"]
[eval exp="sf.ch06_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 50)"]
[eval exp="sf.ch06_sml_le  = int + ((sf.ch06_sml_ce - tf.std_w)    + 600)"]
[eval exp="sf.ch06_sml_lc  = int + ((sf.ch06_sml_ce - tf.std_w/2)  + 300)"]
[eval exp="sf.ch06_sml_rc  = int + ((sf.ch06_sml_ce + tf.std_w/2)  - 300)"]
[eval exp="sf.ch06_sml_ri  = int + ((sf.ch06_sml_ce + tf.std_w)    - 600)"]
[eval exp="sf.ch06_sml_y = -160"]

[eval exp="tf.std_w = sf.ch06_mid_w"]
[eval exp="sf.ch06_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 65)"]
[eval exp="sf.ch06_mid_le  = int + ((sf.ch06_mid_ce - tf.std_w)    + 1000)"]
[eval exp="sf.ch06_mid_lc  = int + ((sf.ch06_mid_ce - tf.std_w/2)  + 500)"]
[eval exp="sf.ch06_mid_rc  = int + ((sf.ch06_mid_ce + tf.std_w/2)  - 500)"]
[eval exp="sf.ch06_mid_ri  = int + ((sf.ch06_mid_ce + tf.std_w)    - 1000)"]
[eval exp="sf.ch06_mid_y = -220"]

[eval exp="tf.std_w = sf.ch06_lag_w"]
[eval exp="sf.ch06_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 100)"]
;��̓��t�g�E���C�g�����t�g�Z���^�[�E���C�g�Z���^�[�Ɠ����ɂ��Ă���
[eval exp="sf.ch06_lag_le  = int + ((sf.ch06_lag_ce - tf.std_w/2) + 700)"]
[eval exp="sf.ch06_lag_lc  = int + ((sf.ch06_lag_ce - tf.std_w/2) + 700)"]
[eval exp="sf.ch06_lag_rc  = int + ((sf.ch06_lag_ce + tf.std_w/2) - 700)"]
[eval exp="sf.ch06_lag_ri  = int + ((sf.ch06_lag_ce + tf.std_w/2) - 700)"]
[eval exp="sf.ch06_lag_y = -340"]

[eval exp="tf.std_w = sf.ch06_xla_w"]
[eval exp="sf.ch06_xla_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 180)"]
;��̓��t�g�E���C�g�����t�g�Z���^�[�E���C�g�Z���^�[�Ɠ����ɂ��Ă���
[eval exp="sf.ch06_xla_le  = int + ((sf.ch06_xla_ce - tf.std_w/2) + 1350)"]
[eval exp="sf.ch06_xla_lc  = int + ((sf.ch06_xla_ce - tf.std_w/2) + 1350)"]
[eval exp="sf.ch06_xla_rc  = int + ((sf.ch06_xla_ce + tf.std_w/2) - 1350)"]
[eval exp="sf.ch06_xla_ri  = int + ((sf.ch06_xla_ce + tf.std_w/2) - 1350)"]
[eval exp="sf.ch06_xla_y = -600"]

[macro name=std_kak]
	[eval exp=%exp]

	;�p�[�c��U�J����
	[eval exp="f.face_win_char06_parts2 = 0"]
	[eval exp="f.face_win_char06_parts3 = 0"]
	;�t�F�C�X�E�B���h�E�p�@�|�[�Y�̑ł������p ���W�ς��Ȃ�����1�ł�����
	[eval exp="f.face_win_char06_pose = 1"]

	[backlay_c cond="mp.off == void"]

	;�`�`�`�`�`�`�`�`�`�`�`��ɂȂ�����w�i����ɂ��邽�߂̃}�N���`�`�`�`�`�`�`�`�`�`�`
;����ϕ��G�����ł�
;	[bg_size_change *]

	;�ϐ���`��������image�^�O�͍Ō�ł����񂶂�Ȃ����H
	;�`�`�`�`�`�`�`�`�`�`�`�T�C�Y�E���C���E���W��`�`�`�`�`�`�`�`�`�`�`�`

	;���C���𖢎w��̎��͎����Ń��C�����m�肷��
			;�h�炵�Ŏg�����C������`�����Ⴄ
;	[if    exp="mp.ce"][eval exp="f.layer = sf.layerC  , f.layer_ch06 = sf.layerC "]
;	[elsif exp="mp.le"][eval exp="f.layer = sf.layerL  , f.layer_ch06 = sf.layerL "]
;	[elsif exp="mp.ri"][eval exp="f.layer = sf.layerR  , f.layer_ch06 = sf.layerR "]
;	[elsif exp="mp.lc"][eval exp="f.layer = sf.layerLC , f.layer_ch06 = sf.layerLC"]
;	[elsif exp="mp.rc"][eval exp="f.layer = sf.layerRC , f.layer_ch06 = sf.layerRC"]
;	;��L�ȊO�̍��W�����
;	[else]
;	[eval exp="f.layer = mp.layer  , f.layer_ch06 = mp.layer "]
;	[endif]
	;���̓T�C�Y���ł�����ق����������邩�Bf.layer������Ȃ���
	
	;�T�C�Y ��
	[if    exp="mp.s"]

;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch06�͗h�炵�Ŏg������p�Bf.image_size_ch06��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 's' , f.stdsize_ch06 = 's' , f.image_size_ch06 = 's'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch06 = sf.layerC  , f.pos_ch06 = 'ce'"][eval exp="f.pos_ch06_x = sf.ch06_sml_ce" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_sml_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch06 = sf.layerL  , f.pos_ch06 = 'le'"][eval exp="f.pos_ch06_x = sf.ch06_sml_le" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_sml_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch06 = sf.layerR  , f.pos_ch06 = 'ri'"][eval exp="f.pos_ch06_x = sf.ch06_sml_ri" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_sml_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch06 = sf.layerLC , f.pos_ch06 = 'lc'"][eval exp="f.pos_ch06_x = sf.ch06_sml_lc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_sml_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch06 = sf.layerRC , f.pos_ch06 = 'rc'"][eval exp="f.pos_ch06_x = sf.ch06_sml_rc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_sml_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch06_x = sf['ch06_sml_' + f.pos_ch06] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch06_y = sf.ch06_sml_y + (+mp.y)"                cond="mp.y != void"]


	;�T�C�Y ��
	[elsif exp="mp.m"]
;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch06�͗h�炵�Ŏg������p�Bf.image_size_ch06��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'm' , f.stdsize_ch06 = 'm' , f.image_size_ch06 = 'm'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch06 = sf.layerC  , f.pos_ch06 = 'ce'"][eval exp="f.pos_ch06_x = sf.ch06_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch06 = sf.layerL  , f.pos_ch06 = 'le'"][eval exp="f.pos_ch06_x = sf.ch06_mid_le" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch06 = sf.layerR  , f.pos_ch06 = 'ri'"][eval exp="f.pos_ch06_x = sf.ch06_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch06 = sf.layerLC , f.pos_ch06 = 'lc'"][eval exp="f.pos_ch06_x = sf.ch06_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch06 = sf.layerRC , f.pos_ch06 = 'rc'"][eval exp="f.pos_ch06_x = sf.ch06_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch06_x = sf['ch06_mid_' + f.pos_ch06] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch06_y = sf.ch06_mid_y + (+mp.y)"                cond="mp.y != void"]
	;�T�C�Y ��
	[elsif exp="mp.l"]
;		[bg_l *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch06�͗h�炵�Ŏg������p�Bf.image_size_ch06��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'l' , f.stdsize_ch06 = 'l' , f.image_size_ch06 = 'l'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch06 = sf.layerC  , f.pos_ch06 = 'ce'"][eval exp="f.pos_ch06_x = sf.ch06_lag_ce" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_lag_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch06 = sf.layerL  , f.pos_ch06 = 'le'"][eval exp="f.pos_ch06_x = sf.ch06_lag_le" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_lag_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch06 = sf.layerR  , f.pos_ch06 = 'ri'"][eval exp="f.pos_ch06_x = sf.ch06_lag_ri" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_lag_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch06 = sf.layerLC , f.pos_ch06 = 'lc'"][eval exp="f.pos_ch06_x = sf.ch06_lag_lc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_lag_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch06 = sf.layerRC , f.pos_ch06 = 'rc'"][eval exp="f.pos_ch06_x = sf.ch06_lag_rc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_lag_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch06_x = sf['ch06_lag_' + f.pos_ch06] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch06_y = sf.ch06_lag_y + (+mp.y)"                cond="mp.y != void"]
	;�T�C�Y ��
	[elsif exp="mp.xl"]
;		[bg_l *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch06�͗h�炵�Ŏg������p�Bf.image_size_ch06��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'x' , f.stdsize_ch06 = 'x' , f.image_size_ch06 = 'x'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch06 = sf.layerC  , f.pos_ch06 = 'ce'"][eval exp="f.pos_ch06_x = sf.ch06_xla_ce" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_xla_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch06 = sf.layerL  , f.pos_ch06 = 'le'"][eval exp="f.pos_ch06_x = sf.ch06_xla_le" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_xla_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch06 = sf.layerR  , f.pos_ch06 = 'ri'"][eval exp="f.pos_ch06_x = sf.ch06_xla_ri" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_xla_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch06 = sf.layerLC , f.pos_ch06 = 'lc'"][eval exp="f.pos_ch06_x = sf.ch06_xla_lc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_xla_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch06 = sf.layerRC , f.pos_ch06 = 'rc'"][eval exp="f.pos_ch06_x = sf.ch06_xla_rc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_xla_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch06_x = sf['ch06_xla_' + f.pos_ch06] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch06_y = sf.ch06_xla_y + (+mp.y)"                cond="mp.y != void"]
	;�t�F�C���Z�[�t�@���T�C�Y�ɂ��Ă���
	[else]
;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch06�͗h�炵�Ŏg������p�Bf.image_size_ch06��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'm' , f.stdsize_ch06 = 'm' , f.image_size_ch06 = 'm'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch06 = sf.layerC  , f.pos_ch06 = 'ce'"][eval exp="f.pos_ch06_x = sf.ch06_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch06 = sf.layerL  , f.pos_ch06 = 'le'"][eval exp="f.pos_ch06_x = sf.ch06_mid_le" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch06 = sf.layerR  , f.pos_ch06 = 'ri'"][eval exp="f.pos_ch06_x = sf.ch06_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch06 = sf.layerLC , f.pos_ch06 = 'lc'"][eval exp="f.pos_ch06_x = sf.ch06_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch06 = sf.layerRC , f.pos_ch06 = 'rc'"][eval exp="f.pos_ch06_x = sf.ch06_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch06_y = sf.ch06_mid_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch06_x = sf['ch06_mid_' + f.pos_ch06] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch06_y = sf.ch06_mid_y + (+mp.y)"                cond="mp.y != void"]
	[endif]

	;���C���ς������ꍇ
	[eval exp="f.layer_ch06 = mp.layer" cond="mp.layer != void"]

	;index�����̑�����Ă����ĂȂ������񂾂Ȃ��������ق���������
	;index��`�@�ʓ|����������1000�̂��炢�ŏ����Ȃ��Ă����悤�ɂ��邩
	[if exp="mp.index"]
		;mp�ɏ����1000�����Ƃ�₱�����Ȃ肻�������炱�����͑����Ȃ�
		[eval exp="f.index_ch06 = mp.index * 1000 + 1000"]
	[else]
		[eval exp="f.index_ch06 = f.layer_ch06 * 1000 + 1000"]
	[endif]

	;�`�`�`�`�`�`�`�`�`�`�`�摜��`�`�`�`�`�`�`�`�`�`�`�`

	[eval exp="f.image_base_ch06 = '_base_a' , f.stdmsk = 0"]
	;�I�[��
	[if    exp="mp.o1 || mp.o"][eval exp="f.image_base_ch06 = f.image_base_ch06 + '1'"]
	;�R��
	[elsif exp="mp.o2"][eval exp="f.image_base_ch06 = f.image_base_ch06 + '2'"]
	[else][eval exp="f.image_base_ch06 = f.image_base_ch06 + '0'"]
	[endif]

	;�t�F�C�X�E�B���h�E�p��`
	[eval exp="f.image_base_ch06w = f.image_base_ch06"]

	;�x�[�X�t�@�C������`
	[eval exp="f.face_win_char06_base   = sf.image_name_ch06 + 'w' + f.image_base_ch06w"]

;	;�\��t�@�C������`
;	[eval exp="f.face_win_char06_parts1 = sf.image_name_ch06 + 's' + f.image_face_ch06"]

	;�t�@�C�����݂��Ă邩�`�F�b�N����ɂ͓��ꂵ���ϐ��ɂ���Ȃ��Ƃ��߂�
	[eval exp="f.image_std_base = sf.image_name_ch06 + f.image_size_ch06 + f.image_base_ch06"]
;	[eval exp="f.image_std_face = sf.image_name_ch06 + f.image_size_ch06 + f.image_face_ch06"]

	;�`�`�`�`�`�`�`�`�`�`�`�摜�ǂݍ��݁`�`�`�`�`�`�`�`�`�`�`
;�t�@�C������`�ł��łɃt�F�C���Z�[�t����Ă邩��`�F�b�N����Ȃ��Ă��ǂ����������ǁA�Ԉ�����ϐ�����`���ꂵ�܂������p��
@if exp="(existentImage_std_base_check(f.image_std_base)!==false)"
	;�x�[�X
	[image * storage="&f.image_std_base" layer="&f.layer_ch06" index="&f.index_ch06" page=%page|back visible=true left="&f.pos_ch06_x" top="&f.pos_ch06_y" opacity=%opacity|255 cond="mp.off == void"]
@endif
;@if exp="(existentImage_std_face_check(f.image_std_face)!==false)"
;	;�\��
;	[pimage  storage="&f.image_std_face" layer="&f.layer_ch06" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
;@endif
;
	;blur���x��������Ă�΂����ŕϐ��ɓ��ꂿ�Ⴄ�B
	[if exp="(mp.blur_x != void || mp.blur_y != void)"]
		[eval exp="f.bluron_chara06     = 1"]
		[eval exp="f.blur_layer_chara06 = f.layer_ch06"]
		[eval exp="f.blur_x_chara06     = mp.blur_x" cond="mp.blur_x != void"]
		[eval exp="f.blur_y_chara06     = mp.blur_y" cond="mp.blur_y != void"]
		;blur����
		[blur layer="&f.blur_layer_chara06" page=back blur_x="&f.blur_x" blur_y="&f.blur_y" cond="mp.blur_x|mp.blur_y"]
	[endif]


	;blur���x��������ĂȂ����0�ɂ��Ă���
	[eval exp="f.bluron_chara06 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_x_chara06 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_y_chara06 = 0" cond="mp.blur_x == void && mp.blur_y == void"]

[endmacro]


;---------------------------------------
;---------------------------------------




[return]


