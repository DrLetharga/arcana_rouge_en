;===========================================================
;�l�� ��
;===========================================================

;�߂�ǂ��������璆���ȊO�͌v�Z�ŏo�������Ȃ�
;ml��
;le��25��
;lc��30��
;center��50%
;rc��70��
;ri��75��
;mr��
;�Ƃ����Ⴞ�߁H

;�قكt�@�C�����B�S�L�������ʂ̂͂� �}�N���O�ɏ����̂�sf����Ȃ��Ƃ��߂��B�^�C�g���I�ԂƂ��ɂ��Ԃ�ϐ����Z�b�g�����Ă邩��
;

;f�ɂ���ch04~5�𗼃^�C�g���Ŏg���񂻂����Ǝv�������ǂ���ς�|�����炻�̂܂�

;[eval exp="sf.image_hoho  = '_�j��'"]
;�t�@�C�����̓�
[eval exp="sf.image_name_ch04  = 'ch04_'"]

[eval exp="sf.ch04_sml_w = 900"]
[eval exp="sf.ch04_sml_h = 960"]
;	[eval exp="sf.ch04_mid_w = 1400"]
;	[eval exp="sf.ch04_mid_h = 1461"]
;	[eval exp="sf.ch04_lag_w = 2102"]
;	[eval exp="sf.ch04_lag_h = 2193"]
[eval exp="sf.ch04_mid_w = 1200"]
[eval exp="sf.ch04_mid_h = 1280"]
[eval exp="sf.ch04_lag_w = 1800"]
[eval exp="sf.ch04_lag_h = 1920"]
[eval exp="sf.ch04_xla_w = 3000"]
[eval exp="sf.ch04_xla_h = 3200"]






;�摜�̕�
[eval exp="tf.std_w = sf.ch04_sml_w"]
[eval exp="sf.ch04_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 9)"]
[eval exp="sf.ch04_sml_le  = int + ((sf.ch04_sml_ce - tf.std_w)    + 480)"]
[eval exp="sf.ch04_sml_lc  = int + ((sf.ch04_sml_ce - tf.std_w/2)  + 240)"]
[eval exp="sf.ch04_sml_rc  = int + ((sf.ch04_sml_ce + tf.std_w/2)  - 240)"]
[eval exp="sf.ch04_sml_ri  = int + ((sf.ch04_sml_ce + tf.std_w)    - 480)"]
[eval exp="f.add_h_sml_gap = 85"]
[eval exp="sf.ch04_sml_y = sf.ch01_sml_y - f.add_h_sml_gap"]

;[eval exp="sf.ch04_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]-190
;	[eval exp="sf.ch04_sml_ce  = -190"]
;	[eval exp="sf.ch04_sml_le  = int + ((sf.ch04_sml_ce * 3))"]
;	[eval exp="sf.ch04_sml_lc  = int + ((sf.ch04_sml_ce * 2))"]
;	[eval exp="sf.ch04_sml_rc  = int + (sf.ch04_sml_ce + (sf.ch04_sml_ce * 1 *-1))"]
;					;�P����190�ł������񂾂���
;	[eval exp="sf.ch04_sml_ri  = int + (sf.ch04_sml_ce + (sf.ch04_sml_ce * 2 *-1))"]
;	;[eval exp="sf.ch04_sml_x = [0, 0, 0, sf.ch04_sml_ce,0,0]"]
;	;[eval exp="sf.ch04_sml_y = -15 - 20"]
;	[eval exp="sf.ch04_sml_y = 130"]

;�摜�̕�
[eval exp="tf.std_w = sf.ch04_mid_w"]
[eval exp="sf.ch04_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 12)"]
[eval exp="sf.ch04_mid_le  = int + ((sf.ch04_mid_ce - tf.std_w)    + 800)"]
[eval exp="sf.ch04_mid_lc  = int + ((sf.ch04_mid_ce - tf.std_w/2)  + 390)"]
[eval exp="sf.ch04_mid_rc  = int + ((sf.ch04_mid_ce + tf.std_w/2)  - 350)"]
[eval exp="sf.ch04_mid_ri  = int + ((sf.ch04_mid_ce + tf.std_w)    - 780)"]
[eval exp="f.add_h_mid_gap = f.add_h_sml_gap + 25"]
[eval exp="sf.ch04_mid_y = sf.ch01_mid_y - f.add_h_mid_gap"]
;	;[eval exp="sf.ch04_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]
;	[eval exp="sf.ch04_mid_ce  = -190"]
;	[eval exp="sf.ch04_mid_le  = int + ((sf.ch04_mid_ce * 3))"]
;	[eval exp="sf.ch04_mid_lc  = int + ((sf.ch04_mid_ce * 2.2))"]
;	[eval exp="sf.ch04_mid_rc  = int + (sf.ch04_mid_ce + (sf.ch04_mid_ce * 1.2 *-1))"]
;	[eval exp="sf.ch04_mid_ri  = int + (sf.ch04_mid_ce + (sf.ch04_mid_ce * 2 *-1))"]
;	;[eval exp="sf.ch04_mid_x = [0, 0, 0, sf.ch04_mid_��,0,0]"]
;	[eval exp="sf.ch04_mid_y = 100"]

;�摜�̕�
[eval exp="tf.std_w = sf.ch04_lag_w"]
[eval exp="sf.ch04_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 18)"]
;��̓��t�g�E���C�g�����t�g�Z���^�[�E���C�g�Z���^�[�Ɠ����ɂ��Ă���
[eval exp="sf.ch04_lag_le  = int + ((sf.ch04_lag_ce - tf.std_w/2)  + 600)"]
[eval exp="sf.ch04_lag_lc  = int + ((sf.ch04_lag_ce - tf.std_w/2)  + 600)"]
[eval exp="sf.ch04_lag_rc  = int + ((sf.ch04_lag_ce + tf.std_w/2)  - 600)"]
[eval exp="sf.ch04_lag_ri  = int + ((sf.ch04_lag_ce + tf.std_w/2)  - 600)"]
[eval exp="f.add_h_lag_gap = f.add_h_sml_gap + 80"]
[eval exp="sf.ch04_lag_y = sf.ch01_lag_y - f.add_h_lag_gap"]
;	;[eval exp="sf.ch04_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]
;	[eval exp="sf.ch04_lag_ce  = -190"]
;	;��̓��t�g�E���C�g�����t�g�Z���^�[�E���C�g�Z���^�[�Ɠ����ɂ��Ă���
;	[eval exp="sf.ch04_lag_le  = int + ((sf.ch04_lag_ce * 3) + 70)"]
;	[eval exp="sf.ch04_lag_lc  = int + ((sf.ch04_lag_ce * 3) + 70)"]
;	[eval exp="sf.ch04_lag_rc  = int + (sf.ch04_lag_ce + (sf.ch04_lag_ce * 2 *-1) - 70)"]
;	[eval exp="sf.ch04_lag_ri  = int + (sf.ch04_lag_ce + (sf.ch04_lag_ce * 2 *-1) - 70)"]
;	;[eval exp="sf.ch04_u_x = [0, 0, 0, sf.ch04_u_��,0,0]"]
;	;��҂�����Ȃ̋C�ɂȂ邩��׈�1��菭������
;	[eval exp="sf.ch04_lag_y = -30 + 10"]

;�摜�̕�
[eval exp="tf.std_w = sf.ch04_xla_w"]
[eval exp="sf.ch04_xla_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 30)"]
;��̓��t�g�E���C�g�����t�g�Z���^�[�E���C�g�Z���^�[�Ɠ����ɂ��Ă���
[eval exp="sf.ch04_xla_le  = int + ((sf.ch04_xla_ce - tf.std_w/2)  + 1150)"]
[eval exp="sf.ch04_xla_lc  = int + ((sf.ch04_xla_ce - tf.std_w/2)  + 1150)"]
[eval exp="sf.ch04_xla_rc  = int + ((sf.ch04_xla_ce + tf.std_w/2)  - 1150)"]
[eval exp="sf.ch04_xla_ri  = int + ((sf.ch04_xla_ce + tf.std_w/2)  - 1150)"]
[eval exp="f.add_h_xla_gap = f.add_h_sml_gap + 180"]
[eval exp="sf.ch04_xla_y = sf.ch01_xla_y - f.add_h_xla_gap"]


;�L�q��
;[std_ku l a ha a01][trans method=crossfade time=150][wt_c]

[macro name=std_mei]

	[eval exp=%exp]

	;�p�[�c��U�J����
	[eval exp="f.face_win_char04_parts2 = 0"]
	[eval exp="f.face_win_char04_parts3 = 0"]
	;�t�F�C�X�E�B���h�E�p�@�|�[�Y�̑ł������p ���W�ς��Ȃ�����1�ł�����
	[eval exp="f.face_win_char04_pose = 1"]


	[backlay_c cond="mp.off == void"]

	;�`�`�`�`�`�`�`�`�`�`�`��ɂȂ�����w�i����ɂ��邽�߂̃}�N���`�`�`�`�`�`�`�`�`�`�`
;����ϕ��G�����ł�
;	[bg_size_change *]

	;�ϐ���`��������image�^�O�͍Ō�ł����񂶂�Ȃ����H
	;�`�`�`�`�`�`�`�`�`�`�`�T�C�Y�E���C���E���W��`�`�`�`�`�`�`�`�`�`�`�`

	;���C���𖢎w��̎��͎����Ń��C�����m�肷��
			;�h�炵�Ŏg�����C������`�����Ⴄ
;	[if    exp="mp.ce"][eval exp="f.layer = sf.layerC  , f.layer_ch04 = sf.layerC "]
;	[elsif exp="mp.le"][eval exp="f.layer = sf.layerL  , f.layer_ch04 = sf.layerL "]
;	[elsif exp="mp.ri"][eval exp="f.layer = sf.layerR  , f.layer_ch04 = sf.layerR "]
;	[elsif exp="mp.lc"][eval exp="f.layer = sf.layerLC , f.layer_ch04 = sf.layerLC"]
;	[elsif exp="mp.rc"][eval exp="f.layer = sf.layerRC , f.layer_ch04 = sf.layerRC"]
;	;��L�ȊO�̍��W�����
;	[else]
;	[eval exp="f.layer = mp.layer  , f.layer_ch04 = mp.layer "]
;	[endif]
	;���̓T�C�Y���ł�����ق����������邩�Bf.layer������Ȃ���
	
	;�T�C�Y ��
	[if    exp="mp.s"]

;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch04�͗h�炵�Ŏg������p�Bf.image_size_ch04��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 's' , f.stdsize_ch04 = 's' , f.image_size_ch04 = 's'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch04 = sf.layerC  , f.pos_ch04 = 'ce'"][eval exp="f.pos_ch04_x = sf.ch04_sml_ce" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_sml_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch04 = sf.layerL  , f.pos_ch04 = 'le'"][eval exp="f.pos_ch04_x = sf.ch04_sml_le" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_sml_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch04 = sf.layerR  , f.pos_ch04 = 'ri'"][eval exp="f.pos_ch04_x = sf.ch04_sml_ri" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_sml_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch04 = sf.layerLC , f.pos_ch04 = 'lc'"][eval exp="f.pos_ch04_x = sf.ch04_sml_lc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_sml_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch04 = sf.layerRC , f.pos_ch04 = 'rc'"][eval exp="f.pos_ch04_x = sf.ch04_sml_rc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_sml_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch04_x = sf['ch04_sml_' + f.pos_ch04] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch04_y = sf.ch04_sml_y + (+mp.y)"                cond="mp.y != void"]


	;�T�C�Y ��
	[elsif exp="mp.m"]
;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch04�͗h�炵�Ŏg������p�Bf.image_size_ch04��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'm' , f.stdsize_ch04 = 'm' , f.image_size_ch04 = 'm'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch04 = sf.layerC  , f.pos_ch04 = 'ce'"][eval exp="f.pos_ch04_x = sf.ch04_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch04 = sf.layerL  , f.pos_ch04 = 'le'"][eval exp="f.pos_ch04_x = sf.ch04_mid_le" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch04 = sf.layerR  , f.pos_ch04 = 'ri'"][eval exp="f.pos_ch04_x = sf.ch04_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch04 = sf.layerLC , f.pos_ch04 = 'lc'"][eval exp="f.pos_ch04_x = sf.ch04_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch04 = sf.layerRC , f.pos_ch04 = 'rc'"][eval exp="f.pos_ch04_x = sf.ch04_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch04_x = sf['ch04_mid_' + f.pos_ch04] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch04_y = sf.ch04_mid_y + (+mp.y)"                cond="mp.y != void"]
	;�T�C�Y ��
	[elsif exp="mp.l"]
;		[bg_l *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch04�͗h�炵�Ŏg������p�Bf.image_size_ch04��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'l' , f.stdsize_ch04 = 'l' , f.image_size_ch04 = 'l'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch04 = sf.layerC  , f.pos_ch04 = 'ce'"][eval exp="f.pos_ch04_x = sf.ch04_lag_ce" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_lag_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch04 = sf.layerL  , f.pos_ch04 = 'le'"][eval exp="f.pos_ch04_x = sf.ch04_lag_le" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_lag_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch04 = sf.layerR  , f.pos_ch04 = 'ri'"][eval exp="f.pos_ch04_x = sf.ch04_lag_ri" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_lag_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch04 = sf.layerLC , f.pos_ch04 = 'lc'"][eval exp="f.pos_ch04_x = sf.ch04_lag_lc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_lag_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch04 = sf.layerRC , f.pos_ch04 = 'rc'"][eval exp="f.pos_ch04_x = sf.ch04_lag_rc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_lag_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch04_x = sf['ch04_lag_' + f.pos_ch04] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch04_y = sf.ch04_lag_y + (+mp.y)"                cond="mp.y != void"]
	;�T�C�Y ��
	[elsif exp="mp.xl"]
;		[bg_l *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch04�͗h�炵�Ŏg������p�Bf.image_size_ch04��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'x' , f.stdsize_ch04 = 'x' , f.image_size_ch04 = 'x'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch04 = sf.layerC  , f.pos_ch04 = 'ce'"][eval exp="f.pos_ch04_x = sf.ch04_xla_ce" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_xla_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch04 = sf.layerL  , f.pos_ch04 = 'le'"][eval exp="f.pos_ch04_x = sf.ch04_xla_le" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_xla_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch04 = sf.layerR  , f.pos_ch04 = 'ri'"][eval exp="f.pos_ch04_x = sf.ch04_xla_ri" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_xla_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch04 = sf.layerLC , f.pos_ch04 = 'lc'"][eval exp="f.pos_ch04_x = sf.ch04_xla_lc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_xla_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch04 = sf.layerRC , f.pos_ch04 = 'rc'"][eval exp="f.pos_ch04_x = sf.ch04_xla_rc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_xla_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch04_x = sf['ch04_xla_' + f.pos_ch04] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch04_y = sf.ch04_xla_y + (+mp.y)"                cond="mp.y != void"]
	;�t�F�C���Z�[�t�@���T�C�Y�ɂ��Ă���
	[else]
;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch04�͗h�炵�Ŏg������p�Bf.image_size_ch04��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'm' , f.stdsize_ch04 = 'm' , f.image_size_ch04 = '��'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch04 = sf.layerC  , f.pos_ch04 = 'ce'"][eval exp="f.pos_ch04_x = sf.ch04_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch04 = sf.layerL  , f.pos_ch04 = 'le'"][eval exp="f.pos_ch04_x = sf.ch04_mid_le" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch04 = sf.layerR  , f.pos_ch04 = 'ri'"][eval exp="f.pos_ch04_x = sf.ch04_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch04 = sf.layerLC , f.pos_ch04 = 'lc'"][eval exp="f.pos_ch04_x = sf.ch04_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch04 = sf.layerRC , f.pos_ch04 = 'rc'"][eval exp="f.pos_ch04_x = sf.ch04_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch04_y = sf.ch04_mid_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch04_x = sf['ch04_mid_' + f.pos_ch04] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch04_y = sf.ch04_mid_y + (+mp.y)"                cond="mp.y != void"]
	[endif]

	;���C���ς������ꍇ
	[eval exp="f.layer_ch04 = mp.layer" cond="mp.layer != void"]

	;index�����̑�����Ă����ĂȂ������񂾂Ȃ��������ق���������
	;index��`�@�ʓ|����������1000�̂��炢�ŏ����Ȃ��Ă����悤�ɂ��邩
	[if exp="mp.index"]
		;mp�ɏ����1000�����Ƃ�₱�����Ȃ肻�������炱�����͑����Ȃ�
		[eval exp="f.index_ch04 = mp.index * 1000 + 1000"]
	[else]
		[eval exp="f.index_ch04 = f.layer_ch04 * 1000 + 1000"]
	[endif]

	;�`�`�`�`�`�`�`�`�`�`�`�摜��`�`�`�`�`�`�`�`�`�`�`�`

	[eval exp="f.image_face_char04_parts3 = void"]
	[eval exp="f.image_face_char04_parts4 = void"]

	;�}�K���͖��@���̂ǂ̃|�[�Y�E���ł��ł���悤�ɂ��Ƃ���
	;�}�K��������̂́Ach04_l_face_j0_p2 ���g���ΑS�đΉ���
;;	[if exp="mp.magan"]
;;		[eval exp="f.image_base_ch04 = void"]
;;		[if    exp="mp.magan && mp.ma   && mp.p1"][eval exp="f.image_base_ch04 = '_base_j' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.mad  && mp.p1"][eval exp="f.image_base_ch04 = '_base_g' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.maw  && mp.p1"][eval exp="f.image_base_ch04 = '_base_h' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.madw && mp.p1"][eval exp="f.image_base_ch04 = '_base_i' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.ma   && mp.p2"][eval exp="f.image_base_ch04 = '_base_f' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.mad  && mp.p2"][eval exp="f.image_base_ch04 = '_base_g' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.maw  && mp.p2"][eval exp="f.image_base_ch04 = '_base_h' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.madw && mp.p2"][eval exp="f.image_base_ch04 = '_base_i' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && (!mp.ma && !mp.mad && !mp.maw && !mp.madw)"][eval exp="f.image_base_ch04 = '_base_j' , f.stdmsk = 0"]
;;		[endif]
;;	[endif]

	;��
	[if    exp="mp.ha"][eval exp="f.image_base_ch04 = '_base_a' , f.ch04_cos = 'ha' , f.stdmsk = 0"]
	;�����@�W���P�b�g�����@���햳��
	[elsif exp="mp.si"][eval exp="f.image_base_ch04 = '_base_b' , f.ch04_cos = 'si' , f.stdmsk = 0"]
	;�����@�W���P�b�g�����@����L��
	[elsif exp="mp.siw"][eval exp="f.image_base_ch04 = '_base_c' , f.ch04_cos = 'si' , f.stdmsk = 0"]
	;�����@�W���P�b�g�L��@���햳��
	[elsif exp="mp.ja"][eval exp="f.image_base_ch04 = '_base_d' , f.ch04_cos = 'ja' , f.stdmsk = 0"]
	;�����@�W���P�b�g�L��@����L��
	[elsif exp="mp.jaw"][eval exp="f.image_base_ch04 = '_base_e' , f.ch04_cos = 'ja' , f.stdmsk = 0"]
	;���@�� ���햳��
	[elsif exp="mp.ma"][eval exp="f.image_base_ch04 = '_base_f' , f.ch04_cos = 'ma' , f.stdmsk = 0"]
	;���@�� �j�� ���햳��
	[elsif exp="mp.mad"][eval exp="f.image_base_ch04 = '_base_g' , f.ch04_cos = 'mad' , f.stdmsk = 0"]
	;���@�� ����L��
	[elsif exp="mp.maw"][eval exp="f.image_base_ch04 = '_base_h' , f.ch04_cos = 'mad' , f.stdmsk = 0"]
	;���@�� �j�� ����L��
	[elsif exp="mp.madw || mp.mawd"][eval exp="f.image_base_ch04 = '_base_i' , f.ch04_cos = 'mad' , f.stdmsk = 0"]
;	;���@�� ����J�� ����L��
;	[elsif exp="mp.magan"][eval exp="f.image_base_ch04 = '_base_j' , f.stdmsk = 0"]
	[endif]

	;�t�F�C�X�E�B���h�E�p��`�B�|�[�Y��������O�ɕ��펝���Ȃ畐�햳�����`���Ă���
	[if    exp="mp.siw"]	[eval exp="f.image_base_ch04w = '_base_b'"]
	[elsif exp="mp.jaw"]	[eval exp="f.image_base_ch04w = '_base_d'"]
	[elsif exp="mp.maw"]	[eval exp="f.image_base_ch04w = '_base_f'"]
	[elsif exp="mp.madw || mp.mawd"]	[eval exp="f.image_base_ch04w = '_base_g'"]
	;���펝������Ȃ���΂��̂܂܃x�[�X����
	[else]	[eval exp="f.image_base_ch04w = f.image_base_ch04"]
	[endif]

	;���t�@���̕ϐ��ɂ��̂܂܂������� �ꕔ�����ɂ����Ȃ��񂾂�Ȃ��@ �ϑ��Ŗ��͂����Ńt�F�C�X�ϐ��ɐ��t����
;;	[if    exp="mp.eki && !mp.magan && (mp.ha || mp.mad)"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '1'"]
	[if    exp="mp.eki && (mp.ha || mp.mad)"]	[eval exp="f.image_base_ch04 = f.image_base_ch04 + '1' , f.image_base_ch04w = f.image_base_ch04w + '1'"]
	[else]						[eval exp="f.image_base_ch04 = f.image_base_ch04 + '0' , f.image_base_ch04w = f.image_base_ch04w + '0'"]
	[endif]

;;	;���t�̗L���̓|�[�Y�O�ɒ�`������}�K���̏����������Ȃ��Ƃ��߂�
;;	[if exp="mp.magan"]
;;		[if    exp="mp.magan && mp.p1"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1'"]
;;		[elsif exp="mp.magan && mp.p1"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1'"]
;;		[elsif exp="mp.magan && mp.p1"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1'"]
;;		[elsif exp="mp.magan && mp.p1"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1'"]
;;		;�}�K���w��݂̂Ȃ狭���I�ɂ�1��
;;		[elsif exp="mp.magan && (!mp.ma || !mp.mad || !mp.maw || !mp.madw)"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1'"]
;;		[elsif exp="mp.magan && mp.p2"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p2'"]
;;		[elsif exp="mp.magan && mp.p2"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p2'"]
;;		[elsif exp="mp.magan && mp.p2"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p2'"]
;;		[elsif exp="mp.magan && mp.p2"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p2'"]
;;		[endif]
;;	[endif]

	;�|�[�Y�@���̕ϐ��ɂ��̂܂܂������� �ϑ��Ŗ��͂����Ńt�F�C�X�ϐ��Ƀ|�[�Y����
	[if    exp="mp.p1"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1' , f.image_base_ch04w = f.image_base_ch04w + '_p1'"]
	[elsif exp="mp.p2"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p2' , f.image_base_ch04w = f.image_base_ch04w + '_p2'"]
;;	[if    exp="mp.p1 && !mp.magan"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p1'"]
;;	[elsif exp="mp.p2 && !mp.magan"][eval exp="f.image_base_ch04 = f.image_base_ch04 + '_p2'"]
;	[else]
;		;�C���t�H�o���̂̓f�o�b�O�������ɂ��邩
;		[call storage="macro08_std.ks" target=*no_coss  cond="kag.debugMenu.visible == true"]
;		[eval exp="f.image_base_ch04 = '_��1' , f.stdmsk = 0"]
	[endif]



	;01.�ʏ�
	;02.���{
	;03.�߂���
	;04.��сi�ڊJ���j
	;05.����
	;06.�{��
	;07.�˘f��
	;08.�s��
	;09.�΂�(�ڕ�)
	;10.�勃��
	;11.�^�ʖ�
	;12.���
	;13.����
	;14.�s�G�ȏ΂�

	[eval exp="f.image_face_ch04 = '_face'"]

	[if    exp="mp.p1 && !mp.magan"]
		[if    exp="mp.ha"]
			[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_a0'"]
		[elsif exp="(mp.si || mp.siw || mp.ja || mp.jaw)"]
			;���ƌ��p
			;[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_b0'"]
			[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_a0'"]
		[elsif exp="(mp.ma || mp.mad || mp.maw || mp.madw || mp.mawd)"]
			[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_c0'"]
		[endif]
	
		[eval exp="f.image_face_char04_parts3 = void"]

		[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p1'"]

	[elsif exp="mp.p2 && !mp.magan"]

		[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_j0'"]

		[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p2'"]

		;���ʂ̊��
		[if    exp="mp.ha || mp.si || mp.siw || mp.ja || mp.jaw"]
			[eval exp="f.image_face_char04_parts3 = '_face_a0_p2_add'"]
		;���@���̊��
		[elsif exp="!mp.magan && (mp.ma || mp.mad || mp.maw || mp.madw || mp.mawd)"]
			[eval exp="f.image_face_char04_parts3 = '_face_f0_p2_add'"]
		[endif]

	[elsif exp="mp.p1 && mp.magan"]
		[if    exp="mp.ha || mp.si || mp.siw || mp.ja || mp.jaw"]
			[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_k0'"]
		[else]
			[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_j0'"]
		[endif]

		[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p1'"]

	[elsif exp="mp.p2 && mp.magan"]

		[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_j0'"]

		[eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p2'"]

		;�ǉ��p�[�c�@�����@�����̎w��̂�
		[if    exp="(mp.ha || mp.si || mp.siw || mp.ja || mp.jaw)"]
			[eval exp="f.image_face_char04_parts3 = '_face_a0_p2_add2'"]
		;�ǉ��p�[�c�@���@���@�����̎w��̂�
		[elsif exp="(mp.ma || mp.mad || mp.maw || mp.madw || mp.mawd)"]
			[eval exp="f.image_face_char04_parts3 = '_face_f0_p2_add2'"]
		[endif]

	[endif]

;	;���t�ł����� �\��p�[�c�͋��ʂɂ���
;	[if    exp="mp.eki"][eval exp="f.image_face_ch04 = f.image_face_ch04 + '1'"]
;	[else]
;	[eval exp="f.image_face_ch04 = f.image_face_ch04 + '0'"]
;	[endif]

;;	;�|�[�Y�ł�����
;;	[if    exp="mp.p1"][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p1'"]
;;	;�}�K���w��݂̂Ȃ狭���I�ɂ�1��
;;	[elsif exp="mp.magan && (!mp.ma || !mp.mad || !mp.maw || !mp.madw)"][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p1'"]
;;	[elsif exp="mp.p2"][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_p2'"]
;;	[endif]



	[if    exp="mp.f01" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_01'"]
	[elsif exp="mp.f02" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_02'"]
	[elsif exp="mp.f03" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_03'"]
	[elsif exp="mp.f04" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_04'"]
	[elsif exp="mp.f05" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_05'"]
	[elsif exp="mp.f06" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_06'"]
	[elsif exp="mp.f07" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_07'"]
	[elsif exp="mp.f08" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_08'"]
	[elsif exp="mp.f09" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_09'"]
	[elsif exp="mp.f10" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_10'"]
	[elsif exp="mp.f11" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_11'"]
	[elsif exp="mp.f12" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_12'"]
	[elsif exp="mp.f13" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_13'"]
	[elsif exp="mp.f14" ][eval exp="f.image_face_ch04 = f.image_face_ch04 + '_14'"]
	[else]
		[call storage="macro08_std.ks" target=*no_face  cond="kag.debugMenu.visible == true"]
		[eval exp="f.image_face_ch04 = '_01'"]
	[endif]

	;�j���߂̗L����`
	;������ʁX�ɂ��Ȃ��Ƃ����Ȃ����Ȃ�
	[if    exp="mp.ho || mp.hoho"]	[eval exp="f.image_face_ch04 = f.image_face_ch04 + '1'"]
	[else]				[eval exp="f.image_face_ch04 = f.image_face_ch04 + '0'"]
	[endif]

	;��ɂ�����t�̃p�[�c
	[if    exp="mp.eki"]
		[if    exp="mp.ho || mp.hoho"]	[eval exp="f.image_face_char04_parts4 = '_face_a1_seieki_add1'"]
		[else]				[eval exp="f.image_face_char04_parts4 = '_face_a1_seieki_add0'"]
		[endif]
	[endif]




	;�\��̕ϐ��ɕ������Ƒł������Ɩj���ߗL���𑫂��čĒ�`
	[eval exp="f.image_face_ch04 = f.image_face_ch04 + f.image_face2_ch04 + f.image_face3_ch04"]

	;�t�F�C�X�E�B���h�E�p��`
	;�x�[�X�t�@�C������`
	[eval exp="f.face_win_char04_base   = sf.image_name_ch04 + 'w' + f.image_base_ch04w"]

	;�\��t�@�C������`
	[eval exp="f.face_win_char04_parts1 = sf.image_name_ch04 + 's' + f.image_face_ch04"]
	;�ق�
;	[eval exp="f.face_win_char04_parts2 = sf.image_name_ch04 + '��' + sf.image_hoho"  cond="mp.ho || mp.hoho"]
	[if exp="mp.p2 && (mp.ha || mp.si || mp.siw || mp.ja || mp.jaw || mp.ma || mp.mad || mp.maw || mp.madw || mp.mawd)"]
		;�\�� �ǉ��p�[�c �w��
		[eval exp="f.face_win_char04_parts3 = sf.image_name_ch04 + 's' + f.image_face_char04_parts3"]
	[endif]

	;�t�@�C�����݂��Ă邩�`�F�b�N����ɂ͓��ꂵ���ϐ��ɂ���Ȃ��Ƃ��߂�
	[eval exp="f.image_std_base = sf.image_name_ch04 + f.image_size_ch04 + f.image_base_ch04"]
	[eval exp="f.image_std_face = sf.image_name_ch04 + f.image_size_ch04 + f.image_face_ch04"]

	;�`�`�`�`�`�`�`�`�`�`�`�摜�ǂݍ��݁`�`�`�`�`�`�`�`�`�`�`
;�t�@�C������`�ł��łɃt�F�C���Z�[�t����Ă邩��`�F�b�N����Ȃ��Ă��ǂ����������ǁA�Ԉ�����ϐ�����`���ꂵ�܂������p��
@if exp="(existentImage_std_base_check(f.image_std_base)!==false)"
	;�x�[�X
	[image * storage="&f.image_std_base" layer="&f.layer_ch04" index="&f.index_ch04" page=%page|back visible=true left="&f.pos_ch04_x" top="&f.pos_ch04_y" opacity=%opacity|255 cond="mp.off == void"]
@endif
@if exp="(existentImage_std_face_check(f.image_std_face)!==false)"
	;�\��
	[pimage  storage="&f.image_std_face" layer="&f.layer_ch04" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
;	;�\�� �ǉ��p�[�c
;	[if    exp="mp.ho || mp.hoho"]
;		[pimage storage="&sf.image_name_ch04 + f.image_size_ch04 + sf.image_hoho" layer="&f.layer_ch04" page=%page|back visible=true dx=0 dy=0 mode=mul opacity=180 cond="mp.off == void"]
;	[endif]
@endif
	;�\�� �ǉ��p�[�c  �\��Ɋ|�����i�w�j
	;�}�K���w��݂̂Ȃ狭���I�ɂ�1�ɂȂ̂Ŗ�����
;;	[if exp="mp.magan && (!mp.ma || !mp.mad || !mp.maw || !mp.madw)"]
	[if exp="mp.p2 && (mp.ha || mp.si || mp.siw || mp.ja || mp.jaw || mp.ma || mp.mad || mp.maw || mp.madw || mp.mawd)"]
		[pimage storage="&sf.image_name_ch04 + f.image_size_ch04 + f.image_face_char04_parts3" layer="&f.layer_ch04" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
	[endif]

	;��ɂ�����t�̃p�[�c
	[if    exp="mp.eki"]
		[pimage storage="&sf.image_name_ch04 + f.image_size_ch04 + f.image_face_char04_parts4" layer="&f.layer_ch04" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
	[endif]



	;blur���x��������Ă�΂����ŕϐ��ɓ��ꂿ�Ⴄ�B
	[if exp="(mp.blur_x != void || mp.blur_y != void)"]
		[eval exp="f.bluron_chara04     = 1"]
		[eval exp="f.blur_layer_chara04 = f.layer_ch04"]
		[eval exp="f.blur_x_chara04     = mp.blur_x" cond="mp.blur_x != void"]
		[eval exp="f.blur_y_chara04     = mp.blur_y" cond="mp.blur_y != void"]
		;blur����
		[blur layer="&f.blur_layer_chara04" page=back blur_x="&f.blur_x" blur_y="&f.blur_y" cond="mp.blur_x|mp.blur_y"]
	[endif]


	;blur���x��������ĂȂ����0�ɂ��Ă���
	[eval exp="f.bluron_chara04 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_x_chara04 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_y_chara04 = 0" cond="mp.blur_x == void && mp.blur_y == void"]

[endmacro]


[return]


