;---------------------------------------
;��l��	�V���G�b�g
;---------------------------------------
;�t�@�C�����̓�
[eval exp="sf.image_name_ch05  = 'ch05_'"]

[eval exp="sf.ch05_sml_w = 366"]
[eval exp="sf.ch05_sml_h = 1127"]
[eval exp="sf.ch05_mid_w = 488"]
[eval exp="sf.ch05_mid_h = 1503"]
[eval exp="sf.ch05_lag_w = 731"]
[eval exp="sf.ch05_lag_h = 2254"]
[eval exp="sf.ch05_xla_w = 1219"]
[eval exp="sf.ch05_xla_h = 3757"]

[eval exp="tf.std_w = sf.ch05_sml_w"]
[eval exp="sf.ch05_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 0)"]
[eval exp="sf.ch05_sml_le  = int + ((sf.ch05_sml_ce - tf.std_w)    - 50)"]
[eval exp="sf.ch05_sml_lc  = int + ((sf.ch05_sml_ce - tf.std_w/2)  - 0)"]
[eval exp="sf.ch05_sml_rc  = int + ((sf.ch05_sml_ce + tf.std_w/2)  + 0)"]
[eval exp="sf.ch05_sml_ri  = int + ((sf.ch05_sml_ce + tf.std_w)    + 50)"]
[eval exp="sf.ch05_sml_y = 10"]

[eval exp="tf.std_w = sf.ch05_mid_w"]
[eval exp="sf.ch05_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 0)"]
[eval exp="sf.ch05_mid_le  = int + ((sf.ch05_mid_ce - tf.std_w)    + 80)"]
[eval exp="sf.ch05_mid_lc  = int + ((sf.ch05_mid_ce - tf.std_w/2)  + 20)"]
[eval exp="sf.ch05_mid_rc  = int + ((sf.ch05_mid_ce + tf.std_w/2)  - 20)"]
[eval exp="sf.ch05_mid_ri  = int + ((sf.ch05_mid_ce + tf.std_w)    - 80)"]
[eval exp="sf.ch05_mid_y = 10"]

[eval exp="tf.std_w = sf.ch05_lag_w"]
[eval exp="sf.ch05_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 0)"]
;��̓��t�g�E���C�g�����t�g�Z���^�[�E���C�g�Z���^�[�Ɠ����ɂ��Ă���
[eval exp="sf.ch05_lag_le  = int + ((sf.ch05_lag_ce - tf.std_w/2) + 70)"]
[eval exp="sf.ch05_lag_lc  = int + ((sf.ch05_lag_ce - tf.std_w/2) + 70)"]
[eval exp="sf.ch05_lag_rc  = int + ((sf.ch05_lag_ce + tf.std_w/2) - 70)"]
[eval exp="sf.ch05_lag_ri  = int + ((sf.ch05_lag_ce + tf.std_w/2) - 70)"]
[eval exp="sf.ch05_lag_y = 10"]

[eval exp="tf.std_w = sf.ch05_xla_w"]
[eval exp="sf.ch05_xla_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) + 0)"]
;��̓��t�g�E���C�g�����t�g�Z���^�[�E���C�g�Z���^�[�Ɠ����ɂ��Ă���
[eval exp="sf.ch05_xla_le  = int + ((sf.ch05_xla_ce - tf.std_w/2) + 250)"]
[eval exp="sf.ch05_xla_lc  = int + ((sf.ch05_xla_ce - tf.std_w/2) + 250)"]
[eval exp="sf.ch05_xla_rc  = int + ((sf.ch05_xla_ce + tf.std_w/2) - 250)"]
[eval exp="sf.ch05_xla_ri  = int + ((sf.ch05_xla_ce + tf.std_w/2) - 250)"]
[eval exp="sf.ch05_xla_y = -100"]

[macro name=std_syu]
	[eval exp=%exp]

	;�p�[�c��U�J����
	[eval exp="f.face_win_char05_parts2 = 0"]
	[eval exp="f.face_win_char05_parts3 = 0"]
	;�t�F�C�X�E�B���h�E�p�@�|�[�Y�̑ł������p ���W�ς��Ȃ�����1�ł�����
	[eval exp="f.face_win_char05_pose = 1"]
	[backlay_c cond="mp.off == void"]

	;�`�`�`�`�`�`�`�`�`�`�`��ɂȂ�����w�i����ɂ��邽�߂̃}�N���`�`�`�`�`�`�`�`�`�`�`
;����ϕ��G�����ł�
;	[bg_size_change *]

	;�ϐ���`��������image�^�O�͍Ō�ł����񂶂�Ȃ����H
	;�`�`�`�`�`�`�`�`�`�`�`�T�C�Y�E���C���E���W��`�`�`�`�`�`�`�`�`�`�`�`

	;���C���𖢎w��̎��͎����Ń��C�����m�肷��
			;�h�炵�Ŏg�����C������`�����Ⴄ
;	[if    exp="mp.ce"][eval exp="f.layer = sf.layerC  , f.layer_ch05 = sf.layerC "]
;	[elsif exp="mp.le"][eval exp="f.layer = sf.layerL  , f.layer_ch05 = sf.layerL "]
;	[elsif exp="mp.ri"][eval exp="f.layer = sf.layerR  , f.layer_ch05 = sf.layerR "]
;	[elsif exp="mp.lc"][eval exp="f.layer = sf.layerLC , f.layer_ch05 = sf.layerLC"]
;	[elsif exp="mp.rc"][eval exp="f.layer = sf.layerRC , f.layer_ch05 = sf.layerRC"]
;	;��L�ȊO�̍��W�����
;	[else]
;	[eval exp="f.layer = mp.layer  , f.layer_ch05 = mp.layer "]
;	[endif]
	;���̓T�C�Y���ł�����ق����������邩�Bf.layer������Ȃ���
	
	;�T�C�Y ��
	[if    exp="mp.s"]

;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch05�͗h�炵�Ŏg������p�Bf.image_size_ch05��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 's' , f.stdsize_ch05 = 's' , f.image_size_ch05 = 's'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch05 = sf.layerC  , f.pos_ch05 = 'ce'"][eval exp="f.pos_ch05_x = sf.ch05_sml_ce" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_sml_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch05 = sf.layerL  , f.pos_ch05 = 'le'"][eval exp="f.pos_ch05_x = sf.ch05_sml_le" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_sml_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch05 = sf.layerR  , f.pos_ch05 = 'ri'"][eval exp="f.pos_ch05_x = sf.ch05_sml_ri" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_sml_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch05 = sf.layerLC , f.pos_ch05 = 'lc'"][eval exp="f.pos_ch05_x = sf.ch05_sml_lc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_sml_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch05 = sf.layerRC , f.pos_ch05 = 'rc'"][eval exp="f.pos_ch05_x = sf.ch05_sml_rc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_sml_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch05_x = sf['ch05_sml_' + f.pos_ch05] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch05_y = sf.ch05_sml_y + (+mp.y)"                cond="mp.y != void"]


	;�T�C�Y ��
	[elsif exp="mp.m"]
;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch05�͗h�炵�Ŏg������p�Bf.image_size_ch05��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'm' , f.stdsize_ch05 = 'm' , f.image_size_ch05 = 'm'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch05 = sf.layerC  , f.pos_ch05 = 'ce'"][eval exp="f.pos_ch05_x = sf.ch05_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch05 = sf.layerL  , f.pos_ch05 = 'le'"][eval exp="f.pos_ch05_x = sf.ch05_mid_le" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch05 = sf.layerR  , f.pos_ch05 = 'ri'"][eval exp="f.pos_ch05_x = sf.ch05_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch05 = sf.layerLC , f.pos_ch05 = 'lc'"][eval exp="f.pos_ch05_x = sf.ch05_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch05 = sf.layerRC , f.pos_ch05 = 'rc'"][eval exp="f.pos_ch05_x = sf.ch05_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch05_x = sf['ch05_mid_' + f.pos_ch05] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch05_y = sf.ch05_mid_y + (+mp.y)"                cond="mp.y != void"]
	;�T�C�Y ��
	[elsif exp="mp.l"]
;		[bg_l *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch05�͗h�炵�Ŏg������p�Bf.image_size_ch05��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'l' , f.stdsize_ch05 = 'l' , f.image_size_ch05 = 'l'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch05 = sf.layerC  , f.pos_ch05 = 'ce'"][eval exp="f.pos_ch05_x = sf.ch05_lag_ce" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_lag_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch05 = sf.layerL  , f.pos_ch05 = 'le'"][eval exp="f.pos_ch05_x = sf.ch05_lag_le" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_lag_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch05 = sf.layerR  , f.pos_ch05 = 'ri'"][eval exp="f.pos_ch05_x = sf.ch05_lag_ri" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_lag_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch05 = sf.layerLC , f.pos_ch05 = 'lc'"][eval exp="f.pos_ch05_x = sf.ch05_lag_lc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_lag_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch05 = sf.layerRC , f.pos_ch05 = 'rc'"][eval exp="f.pos_ch05_x = sf.ch05_lag_rc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_lag_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch05_x = sf['ch05_lag_' + f.pos_ch05] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch05_y = sf.ch05_lag_y + (+mp.y)"                cond="mp.y != void"]
	;�T�C�Y ��
	[elsif exp="mp.xl"]
;		[bg_l *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch05�͗h�炵�Ŏg������p�Bf.image_size_ch05��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'x' , f.stdsize_ch05 = 'x' , f.image_size_ch05 = 'x'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch05 = sf.layerC  , f.pos_ch05 = 'ce'"][eval exp="f.pos_ch05_x = sf.ch05_xla_ce" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_xla_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch05 = sf.layerL  , f.pos_ch05 = 'le'"][eval exp="f.pos_ch05_x = sf.ch05_xla_le" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_xla_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch05 = sf.layerR  , f.pos_ch05 = 'ri'"][eval exp="f.pos_ch05_x = sf.ch05_xla_ri" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_xla_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch05 = sf.layerLC , f.pos_ch05 = 'lc'"][eval exp="f.pos_ch05_x = sf.ch05_xla_lc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_xla_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch05 = sf.layerRC , f.pos_ch05 = 'rc'"][eval exp="f.pos_ch05_x = sf.ch05_xla_rc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_xla_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch05_x = sf['ch05_xla_' + f.pos_ch05] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch05_y = sf.ch05_xla_y + (+mp.y)"                cond="mp.y != void"]
	;�t�F�C���Z�[�t�@���T�C�Y�ɂ��Ă���
	[else]
;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch05�͗h�炵�Ŏg������p�Bf.image_size_ch05��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'm' , f.stdsize_ch05 = 'm' , f.image_size_ch05 = 'm'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch05 = sf.layerC  , f.pos_ch05 = 'ce'"][eval exp="f.pos_ch05_x = sf.ch05_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch05 = sf.layerL  , f.pos_ch05 = 'le'"][eval exp="f.pos_ch05_x = sf.ch05_mid_le" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch05 = sf.layerR  , f.pos_ch05 = 'ri'"][eval exp="f.pos_ch05_x = sf.ch05_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch05 = sf.layerLC , f.pos_ch05 = 'lc'"][eval exp="f.pos_ch05_x = sf.ch05_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch05 = sf.layerRC , f.pos_ch05 = 'rc'"][eval exp="f.pos_ch05_x = sf.ch05_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch05_y = sf.ch05_mid_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch05_x = sf['ch05_mid_' + f.pos_ch05] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch05_y = sf.ch05_mid_y + (+mp.y)"                cond="mp.y != void"]
	[endif]

	;���C���ς������ꍇ
	[eval exp="f.layer_ch05 = mp.layer" cond="mp.layer != void"]

	;index�����̑�����Ă����ĂȂ������񂾂Ȃ��������ق���������
	;index��`�@�ʓ|����������1000�̂��炢�ŏ����Ȃ��Ă����悤�ɂ��邩
	[if exp="mp.index"]
		;mp�ɏ����1000�����Ƃ�₱�����Ȃ肻�������炱�����͑����Ȃ�
		[eval exp="f.index_ch05 = mp.index * 1000 + 1000"]
	[else]
		[eval exp="f.index_ch05 = f.layer_ch05 * 1000 + 1000"]
	[endif]

	;�`�`�`�`�`�`�`�`�`�`�`�摜��`�`�`�`�`�`�`�`�`�`�`�`

	[eval exp="f.image_base_ch05 = '_base' , f.stdmsk = 0"]
	[eval exp="f.image_base_ch05w = f.image_base_ch05"]

	;�t�F�C�X�E�B���h�E�p��`
	;�x�[�X�t�@�C������`
	[eval exp="f.face_win_char05_base   = sf.image_name_ch05 + 'w' + f.image_base_ch05w"]

;	;�\��t�@�C������`
;	[eval exp="f.face_win_char05_parts1 = sf.image_name_ch05 + 's' + f.image_face_ch05"]

	;�t�@�C�����݂��Ă邩�`�F�b�N����ɂ͓��ꂵ���ϐ��ɂ���Ȃ��Ƃ��߂�
	[eval exp="f.image_std_base = sf.image_name_ch05 + f.image_size_ch05 + f.image_base_ch05"]
;	[eval exp="f.image_std_face = sf.image_name_ch05 + f.image_size_ch05 + f.image_face_ch05"]

	;�`�`�`�`�`�`�`�`�`�`�`�摜�ǂݍ��݁`�`�`�`�`�`�`�`�`�`�`
;�t�@�C������`�ł��łɃt�F�C���Z�[�t����Ă邩��`�F�b�N����Ȃ��Ă��ǂ����������ǁA�Ԉ�����ϐ�����`���ꂵ�܂������p��
@if exp="(existentImage_std_base_check(f.image_std_base)!==false)"
	;�x�[�X
	[image * storage="&f.image_std_base" layer="&f.layer_ch05" index="&f.index_ch05" page=%page|back visible=true left="&f.pos_ch05_x" top="&f.pos_ch05_y" opacity=%opacity|255 cond="mp.off == void"]
@endif
;@if exp="(existentImage_std_face_check(f.image_std_face)!==false)"
;	;�\��
;	[pimage  storage="&f.image_std_face" layer="&f.layer_ch05" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
;@endif
;
	;blur���x��������Ă�΂����ŕϐ��ɓ��ꂿ�Ⴄ�B
	[if exp="(mp.blur_x != void || mp.blur_y != void)"]
		[eval exp="f.bluron_chara05     = 1"]
		[eval exp="f.blur_layer_chara05 = f.layer_ch05"]
		[eval exp="f.blur_x_chara05     = mp.blur_x" cond="mp.blur_x != void"]
		[eval exp="f.blur_y_chara05     = mp.blur_y" cond="mp.blur_y != void"]
		;blur����
		[blur layer="&f.blur_layer_chara05" page=back blur_x="&f.blur_x" blur_y="&f.blur_y" cond="mp.blur_x|mp.blur_y"]
	[endif]


	;blur���x��������ĂȂ����0�ɂ��Ă���
	[eval exp="f.bluron_chara05 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_x_chara05 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_y_chara05 = 0" cond="mp.blur_x == void && mp.blur_y == void"]

[endmacro]


;---------------------------------------
;---------------------------------------




[return]


