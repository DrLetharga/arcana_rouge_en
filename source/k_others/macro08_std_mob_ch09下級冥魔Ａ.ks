;---------------------------------------
;���������`�i�q�S�^�C�v�j
;---------------------------------------
;�t�@�C�����̓�
[eval exp="sf.image_name_ch09  = 'ch09_'"]

[eval exp="sf.ch09_sml_w = 868"]
[eval exp="sf.ch09_sml_h = 1127"]
[eval exp="sf.ch09_mid_w = 1158"]
[eval exp="sf.ch09_mid_h = 1502"]
[eval exp="sf.ch09_lag_w = 1736"]
[eval exp="sf.ch09_lag_h = 2253"]
[eval exp="sf.ch09_xla_w = 2894"]
[eval exp="sf.ch09_xla_h = 3755"]

[eval exp="tf.std_w = sf.ch09_sml_w"]
[eval exp="sf.ch09_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 55 - 5)"]
[eval exp="sf.ch09_sml_le  = int + ((sf.ch09_sml_ce - tf.std_w)    + 200 + 265)"]
[eval exp="sf.ch09_sml_lc  = int + ((sf.ch09_sml_ce - tf.std_w/2)  + 100 + 134)"]
[eval exp="sf.ch09_sml_rc  = int + ((sf.ch09_sml_ce + tf.std_w/2)  - 100 - 134)"]
[eval exp="sf.ch09_sml_ri  = int + ((sf.ch09_sml_ce + tf.std_w)    - 200 - 265)"]
[eval exp="sf.ch09_sml_y = 0 - 190"]

[eval exp="tf.std_w = sf.ch09_mid_w"]
[eval exp="sf.ch09_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 72 - 7)"]
[eval exp="sf.ch09_mid_le  = int + ((sf.ch09_mid_ce - tf.std_w)    + 400 + 358)"]
[eval exp="sf.ch09_mid_lc  = int + ((sf.ch09_mid_ce - tf.std_w/2)  + 200 + 179)"]
[eval exp="sf.ch09_mid_rc  = int + ((sf.ch09_mid_ce + tf.std_w/2)  - 200 - 179)"]
[eval exp="sf.ch09_mid_ri  = int + ((sf.ch09_mid_ce + tf.std_w)    - 400 - 358)"]
[eval exp="sf.ch09_mid_y = -35 - 255"]

[eval exp="tf.std_w = sf.ch09_lag_w"]
[eval exp="sf.ch09_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 110 - 10)"]
;��̓��t�g�E���C�g�����t�g�Z���^�[�E���C�g�Z���^�[�Ɠ����ɂ��Ă���
[eval exp="sf.ch09_lag_le  = int + ((sf.ch09_lag_ce - tf.std_w/2) + 300 + 268)"]
[eval exp="sf.ch09_lag_lc  = int + ((sf.ch09_lag_ce - tf.std_w/2) + 300 + 268)"]
[eval exp="sf.ch09_lag_rc  = int + ((sf.ch09_lag_ce + tf.std_w/2) - 300 - 268)"]
[eval exp="sf.ch09_lag_ri  = int + ((sf.ch09_lag_ce + tf.std_w/2) - 300 - 268)"]
[eval exp="sf.ch09_lag_y = -90 - 385"]

[eval exp="tf.std_w = sf.ch09_xla_w"]
[eval exp="sf.ch09_xla_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 180 - 15)"]
;��̓��t�g�E���C�g�����t�g�Z���^�[�E���C�g�Z���^�[�Ɠ����ɂ��Ă���
[eval exp="sf.ch09_xla_le  = int + ((sf.ch09_xla_ce - tf.std_w/2) + 600 + 447)"]
[eval exp="sf.ch09_xla_lc  = int + ((sf.ch09_xla_ce - tf.std_w/2) + 600 + 447)"]
[eval exp="sf.ch09_xla_rc  = int + ((sf.ch09_xla_ce + tf.std_w/2) - 600 - 447)"]
[eval exp="sf.ch09_xla_ri  = int + ((sf.ch09_xla_ce + tf.std_w/2) - 600 - 447)"]
[eval exp="sf.ch09_xla_y = -220 - 640"]

[macro name=std_zaA]
	[eval exp=%exp]

	;�p�[�c��U�J����
	[eval exp="f.face_win_char09_parts2 = 0"]
	[eval exp="f.face_win_char09_parts3 = 0"]
	;�t�F�C�X�E�B���h�E�p�@�|�[�Y�̑ł������p ���W�ς��Ȃ�����1�ł�����
	[eval exp="f.face_win_char09_pose = 1"]

	[backlay_c cond="mp.off == void"]

	;�`�`�`�`�`�`�`�`�`�`�`��ɂȂ�����w�i����ɂ��邽�߂̃}�N���`�`�`�`�`�`�`�`�`�`�`
;����ϕ��G�����ł�
;	[bg_size_change *]

	;�ϐ���`��������image�^�O�͍Ō�ł����񂶂�Ȃ����H
	;�`�`�`�`�`�`�`�`�`�`�`�T�C�Y�E���C���E���W��`�`�`�`�`�`�`�`�`�`�`�`

	;���C���𖢎w��̎��͎����Ń��C�����m�肷��
			;�h�炵�Ŏg�����C������`�����Ⴄ
;	[if    exp="mp.ce"][eval exp="f.layer = sf.layerC  , f.layer_ch09 = sf.layerC "]
;	[elsif exp="mp.le"][eval exp="f.layer = sf.layerL  , f.layer_ch09 = sf.layerL "]
;	[elsif exp="mp.ri"][eval exp="f.layer = sf.layerR  , f.layer_ch09 = sf.layerR "]
;	[elsif exp="mp.lc"][eval exp="f.layer = sf.layerLC , f.layer_ch09 = sf.layerLC"]
;	[elsif exp="mp.rc"][eval exp="f.layer = sf.layerRC , f.layer_ch09 = sf.layerRC"]
;	;��L�ȊO�̍��W�����
;	[else]
;	[eval exp="f.layer = mp.layer  , f.layer_ch09 = mp.layer "]
;	[endif]
	;���̓T�C�Y���ł�����ق����������邩�Bf.layer������Ȃ���
	
	;�T�C�Y ��
	[if    exp="mp.s"]

;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch09�͗h�炵�Ŏg������p�Bf.image_size_ch09��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 's' , f.stdsize_ch09 = 's' , f.image_size_ch09 = 's'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch09 = sf.layerC  , f.pos_ch09 = 'ce'"][eval exp="f.pos_ch09_x = sf.ch09_sml_ce" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_sml_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch09 = sf.layerL  , f.pos_ch09 = 'le'"][eval exp="f.pos_ch09_x = sf.ch09_sml_le" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_sml_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch09 = sf.layerR  , f.pos_ch09 = 'ri'"][eval exp="f.pos_ch09_x = sf.ch09_sml_ri" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_sml_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch09 = sf.layerLC , f.pos_ch09 = 'lc'"][eval exp="f.pos_ch09_x = sf.ch09_sml_lc" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_sml_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch09 = sf.layerRC , f.pos_ch09 = 'rc'"][eval exp="f.pos_ch09_x = sf.ch09_sml_rc" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_sml_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch09_x = sf['ch09_sml_' + f.pos_ch09] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch09_y = sf.ch09_sml_y + (+mp.y)"                cond="mp.y != void"]


	;�T�C�Y ��
	[elsif exp="mp.m"]
;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch09�͗h�炵�Ŏg������p�Bf.image_size_ch09��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'm' , f.stdsize_ch09 = 'm' , f.image_size_ch09 = 'm'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch09 = sf.layerC  , f.pos_ch09 = 'ce'"][eval exp="f.pos_ch09_x = sf.ch09_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch09 = sf.layerL  , f.pos_ch09 = 'le'"][eval exp="f.pos_ch09_x = sf.ch09_mid_le" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch09 = sf.layerR  , f.pos_ch09 = 'ri'"][eval exp="f.pos_ch09_x = sf.ch09_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch09 = sf.layerLC , f.pos_ch09 = 'lc'"][eval exp="f.pos_ch09_x = sf.ch09_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch09 = sf.layerRC , f.pos_ch09 = 'rc'"][eval exp="f.pos_ch09_x = sf.ch09_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_mid_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch09_x = sf['ch09_mid_' + f.pos_ch09] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch09_y = sf.ch09_mid_y + (+mp.y)"                cond="mp.y != void"]
	;�T�C�Y ��
	[elsif exp="mp.l"]
;		[bg_l *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch09�͗h�炵�Ŏg������p�Bf.image_size_ch09��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'l' , f.stdsize_ch09 = 'l' , f.image_size_ch09 = 'l'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch09 = sf.layerC  , f.pos_ch09 = 'ce'"][eval exp="f.pos_ch09_x = sf.ch09_lag_ce" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_lag_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch09 = sf.layerL  , f.pos_ch09 = 'le'"][eval exp="f.pos_ch09_x = sf.ch09_lag_le" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_lag_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch09 = sf.layerR  , f.pos_ch09 = 'ri'"][eval exp="f.pos_ch09_x = sf.ch09_lag_ri" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_lag_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch09 = sf.layerLC , f.pos_ch09 = 'lc'"][eval exp="f.pos_ch09_x = sf.ch09_lag_lc" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_lag_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch09 = sf.layerRC , f.pos_ch09 = 'rc'"][eval exp="f.pos_ch09_x = sf.ch09_lag_rc" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_lag_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch09_x = sf['ch09_lag_' + f.pos_ch09] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch09_y = sf.ch09_lag_y + (+mp.y)"                cond="mp.y != void"]
	;�T�C�Y ��
	[elsif exp="mp.xl"]
;		[bg_l *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch09�͗h�炵�Ŏg������p�Bf.image_size_ch09��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'x' , f.stdsize_ch09 = 'x' , f.image_size_ch09 = 'x'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch09 = sf.layerC  , f.pos_ch09 = 'ce'"][eval exp="f.pos_ch09_x = sf.ch09_xla_ce" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_xla_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch09 = sf.layerL  , f.pos_ch09 = 'le'"][eval exp="f.pos_ch09_x = sf.ch09_xla_le" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_xla_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch09 = sf.layerR  , f.pos_ch09 = 'ri'"][eval exp="f.pos_ch09_x = sf.ch09_xla_ri" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_xla_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch09 = sf.layerLC , f.pos_ch09 = 'lc'"][eval exp="f.pos_ch09_x = sf.ch09_xla_lc" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_xla_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch09 = sf.layerRC , f.pos_ch09 = 'rc'"][eval exp="f.pos_ch09_x = sf.ch09_xla_rc" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_xla_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch09_x = sf['ch09_xla_' + f.pos_ch09] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch09_y = sf.ch09_xla_y + (+mp.y)"                cond="mp.y != void"]
	;�t�F�C���Z�[�t�@���T�C�Y�ɂ��Ă���
	[else]
;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch09�͗h�炵�Ŏg������p�Bf.image_size_ch09��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'm' , f.stdsize_ch09 = 'm' , f.image_size_ch09 = 'm'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch09 = sf.layerC  , f.pos_ch09 = 'ce'"][eval exp="f.pos_ch09_x = sf.ch09_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch09 = sf.layerL  , f.pos_ch09 = 'le'"][eval exp="f.pos_ch09_x = sf.ch09_mid_le" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch09 = sf.layerR  , f.pos_ch09 = 'ri'"][eval exp="f.pos_ch09_x = sf.ch09_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch09 = sf.layerLC , f.pos_ch09 = 'lc'"][eval exp="f.pos_ch09_x = sf.ch09_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch09 = sf.layerRC , f.pos_ch09 = 'rc'"][eval exp="f.pos_ch09_x = sf.ch09_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch09_y = sf.ch09_mid_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch09_x = sf['ch09_mid_' + f.pos_ch09] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch09_y = sf.ch09_mid_y + (+mp.y)"                cond="mp.y != void"]
	[endif]

	;���C���ς������ꍇ
	[eval exp="f.layer_ch09 = mp.layer" cond="mp.layer != void"]

	;index�����̑�����Ă����ĂȂ������񂾂Ȃ��������ق���������
	;index��`�@�ʓ|����������1000�̂��炢�ŏ����Ȃ��Ă����悤�ɂ��邩
	[if exp="mp.index"]
		;mp�ɏ����1000�����Ƃ�₱�����Ȃ肻�������炱�����͑����Ȃ�
		[eval exp="f.index_ch09 = mp.index * 1000 + 1000"]
	[else]
		[eval exp="f.index_ch09 = f.layer_ch09 * 1000 + 1000"]
	[endif]

	;�`�`�`�`�`�`�`�`�`�`�`�摜��`�`�`�`�`�`�`�`�`�`�`�`

	[eval exp="f.image_base_ch09 = '_base' , f.stdmsk = 0"]
	[eval exp="f.image_base_ch09w = f.image_base_ch09"]
;	;�I�[��
;	[if    exp="mp.o"][eval exp="f.image_base_ch09 = f.image_base_ch09 + '1'"]
;	;�R��
;	[elsif exp="mp.n"][eval exp="f.image_base_ch09 = f.image_base_ch09 + '2'"]
;	[else][eval exp="f.image_base_ch09 = f.image_base_ch09 + '0'"]
;	[endif]
;
	;�t�F�C�X�E�B���h�E�p��`
	;�x�[�X�t�@�C������`
	[eval exp="f.face_win_char09_base   = sf.image_name_ch09 + 'w' + f.image_base_ch09w"]

;	;�\��t�@�C������`
;	[eval exp="f.face_win_char09_parts1 = sf.image_name_ch09 + 's' + f.image_face_ch09"]

	;�t�@�C�����݂��Ă邩�`�F�b�N����ɂ͓��ꂵ���ϐ��ɂ���Ȃ��Ƃ��߂�
	[eval exp="f.image_std_base = sf.image_name_ch09 + f.image_size_ch09 + f.image_base_ch09"]
;	[eval exp="f.image_std_face = sf.image_name_ch09 + f.image_size_ch09 + f.image_face_ch09"]

	;�`�`�`�`�`�`�`�`�`�`�`�摜�ǂݍ��݁`�`�`�`�`�`�`�`�`�`�`
;�t�@�C������`�ł��łɃt�F�C���Z�[�t����Ă邩��`�F�b�N����Ȃ��Ă��ǂ����������ǁA�Ԉ�����ϐ�����`���ꂵ�܂������p��
@if exp="(existentImage_std_base_check(f.image_std_base)!==false)"
	;�x�[�X
	[image * storage="&f.image_std_base" layer="&f.layer_ch09" index="&f.index_ch09" page=%page|back visible=true left="&f.pos_ch09_x" top="&f.pos_ch09_y" opacity=%opacity|255 cond="mp.off == void"]
@endif
;@if exp="(existentImage_std_face_check(f.image_std_face)!==false)"
;	;�\��
;	[pimage  storage="&f.image_std_face" layer="&f.layer_ch09" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
;@endif
;
	;blur���x��������Ă�΂����ŕϐ��ɓ��ꂿ�Ⴄ�B
	[if exp="(mp.blur_x != void || mp.blur_y != void)"]
		[eval exp="f.bluron_chara09     = 1"]
		[eval exp="f.blur_layer_chara09 = f.layer_ch09"]
		[eval exp="f.blur_x_chara09     = mp.blur_x" cond="mp.blur_x != void"]
		[eval exp="f.blur_y_chara09     = mp.blur_y" cond="mp.blur_y != void"]
		;blur����
		[blur layer="&f.blur_layer_chara09" page=back blur_x="&f.blur_x" blur_y="&f.blur_y" cond="mp.blur_x|mp.blur_y"]
	[endif]


	;blur���x��������ĂȂ����0�ɂ��Ă���
	[eval exp="f.bluron_chara09 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_x_chara09 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_y_chara09 = 0" cond="mp.blur_x == void && mp.blur_y == void"]

[endmacro]


;---------------------------------------
;---------------------------------------




[return]


