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

;f�ɂ���ch11~5�𗼃^�C�g���Ŏg���񂻂����Ǝv�������ǂ���ς�|�����炻�̂܂�

;[eval exp="sf.image_hoho  = '_�j��'"]
;�t�@�C�����̓�
[eval exp="sf.image_name_ch11  = 'ch11_'"]

[eval exp="sf.ch11_sml_w = 900"]
[eval exp="sf.ch11_sml_h = 960"]
;	[eval exp="sf.ch11_mid_w = 1400"]
;	[eval exp="sf.ch11_mid_h = 1461"]
;	[eval exp="sf.ch11_lag_w = 2102"]
;	[eval exp="sf.ch11_lag_h = 2193"]
[eval exp="sf.ch11_mid_w = 1200"]
[eval exp="sf.ch11_mid_h = 1280"]
[eval exp="sf.ch11_lag_w = 1800"]
[eval exp="sf.ch11_lag_h = 1920"]
[eval exp="sf.ch11_xla_w = 3000"]
[eval exp="sf.ch11_xla_h = 3200"]






;�摜�̕�
[eval exp="tf.std_w = sf.ch11_sml_w"]
[eval exp="sf.ch11_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 9)"]
[eval exp="sf.ch11_sml_le  = int + ((sf.ch11_sml_ce - tf.std_w)    + 480)"]
[eval exp="sf.ch11_sml_lc  = int + ((sf.ch11_sml_ce - tf.std_w/2)  + 240)"]
[eval exp="sf.ch11_sml_rc  = int + ((sf.ch11_sml_ce + tf.std_w/2)  - 240)"]
[eval exp="sf.ch11_sml_ri  = int + ((sf.ch11_sml_ce + tf.std_w)    - 480)"]
[eval exp="f.add_h_sml_gap = 85"]
[eval exp="sf.ch11_sml_y = sf.ch01_sml_y - f.add_h_sml_gap"]

;[eval exp="sf.ch11_sml_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]-190
;	[eval exp="sf.ch11_sml_ce  = -190"]
;	[eval exp="sf.ch11_sml_le  = int + ((sf.ch11_sml_ce * 3))"]
;	[eval exp="sf.ch11_sml_lc  = int + ((sf.ch11_sml_ce * 2))"]
;	[eval exp="sf.ch11_sml_rc  = int + (sf.ch11_sml_ce + (sf.ch11_sml_ce * 1 *-1))"]
;					;�P����190�ł������񂾂���
;	[eval exp="sf.ch11_sml_ri  = int + (sf.ch11_sml_ce + (sf.ch11_sml_ce * 2 *-1))"]
;	;[eval exp="sf.ch11_sml_x = [0, 0, 0, sf.ch11_sml_ce,0,0]"]
;	;[eval exp="sf.ch11_sml_y = -15 - 20"]
;	[eval exp="sf.ch11_sml_y = 130"]

;�摜�̕�
[eval exp="tf.std_w = sf.ch11_mid_w"]
[eval exp="sf.ch11_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 12)"]
[eval exp="sf.ch11_mid_le  = int + ((sf.ch11_mid_ce - tf.std_w)    + 800)"]
[eval exp="sf.ch11_mid_lc  = int + ((sf.ch11_mid_ce - tf.std_w/2)  + 390)"]
[eval exp="sf.ch11_mid_rc  = int + ((sf.ch11_mid_ce + tf.std_w/2)  - 350)"]
[eval exp="sf.ch11_mid_ri  = int + ((sf.ch11_mid_ce + tf.std_w)    - 780)"]
[eval exp="f.add_h_mid_gap = f.add_h_sml_gap + 25"]
[eval exp="sf.ch11_mid_y = sf.ch01_mid_y - f.add_h_mid_gap"]
;	;[eval exp="sf.ch11_mid_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]
;	[eval exp="sf.ch11_mid_ce  = -190"]
;	[eval exp="sf.ch11_mid_le  = int + ((sf.ch11_mid_ce * 3))"]
;	[eval exp="sf.ch11_mid_lc  = int + ((sf.ch11_mid_ce * 2.2))"]
;	[eval exp="sf.ch11_mid_rc  = int + (sf.ch11_mid_ce + (sf.ch11_mid_ce * 1.2 *-1))"]
;	[eval exp="sf.ch11_mid_ri  = int + (sf.ch11_mid_ce + (sf.ch11_mid_ce * 2 *-1))"]
;	;[eval exp="sf.ch11_mid_x = [0, 0, 0, sf.ch11_mid_��,0,0]"]
;	[eval exp="sf.ch11_mid_y = 100"]

;�摜�̕�
[eval exp="tf.std_w = sf.ch11_lag_w"]
[eval exp="sf.ch11_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 18)"]
;��̓��t�g�E���C�g�����t�g�Z���^�[�E���C�g�Z���^�[�Ɠ����ɂ��Ă���
[eval exp="sf.ch11_lag_le  = int + ((sf.ch11_lag_ce - tf.std_w/2)  + 600)"]
[eval exp="sf.ch11_lag_lc  = int + ((sf.ch11_lag_ce - tf.std_w/2)  + 600)"]
[eval exp="sf.ch11_lag_rc  = int + ((sf.ch11_lag_ce + tf.std_w/2)  - 600)"]
[eval exp="sf.ch11_lag_ri  = int + ((sf.ch11_lag_ce + tf.std_w/2)  - 600)"]
[eval exp="f.add_h_lag_gap = f.add_h_sml_gap + 80"]
[eval exp="sf.ch11_lag_y = sf.ch01_lag_y - f.add_h_lag_gap"]
;	;[eval exp="sf.ch11_lag_ce  = int + ((kag.scWidth/2) - (tf.std_w/2))"]
;	[eval exp="sf.ch11_lag_ce  = -190"]
;	;��̓��t�g�E���C�g�����t�g�Z���^�[�E���C�g�Z���^�[�Ɠ����ɂ��Ă���
;	[eval exp="sf.ch11_lag_le  = int + ((sf.ch11_lag_ce * 3) + 70)"]
;	[eval exp="sf.ch11_lag_lc  = int + ((sf.ch11_lag_ce * 3) + 70)"]
;	[eval exp="sf.ch11_lag_rc  = int + (sf.ch11_lag_ce + (sf.ch11_lag_ce * 2 *-1) - 70)"]
;	[eval exp="sf.ch11_lag_ri  = int + (sf.ch11_lag_ce + (sf.ch11_lag_ce * 2 *-1) - 70)"]
;	;[eval exp="sf.ch11_u_x = [0, 0, 0, sf.ch11_u_��,0,0]"]
;	;��҂�����Ȃ̋C�ɂȂ邩��׈�1��菭������
;	[eval exp="sf.ch11_lag_y = -30 + 10"]

;�摜�̕�
[eval exp="tf.std_w = sf.ch11_xla_w"]
[eval exp="sf.ch11_xla_ce  = int + ((kag.scWidth/2) - (tf.std_w/2) - 30)"]
;��̓��t�g�E���C�g�����t�g�Z���^�[�E���C�g�Z���^�[�Ɠ����ɂ��Ă���
[eval exp="sf.ch11_xla_le  = int + ((sf.ch11_xla_ce - tf.std_w/2)  + 1150)"]
[eval exp="sf.ch11_xla_lc  = int + ((sf.ch11_xla_ce - tf.std_w/2)  + 1150)"]
[eval exp="sf.ch11_xla_rc  = int + ((sf.ch11_xla_ce + tf.std_w/2)  - 1150)"]
[eval exp="sf.ch11_xla_ri  = int + ((sf.ch11_xla_ce + tf.std_w/2)  - 1150)"]
[eval exp="f.add_h_xla_gap = f.add_h_sml_gap + 180"]
[eval exp="sf.ch11_xla_y = sf.ch01_xla_y - f.add_h_xla_gap"]


;�L�q��
;[std_ku l a ha a01][trans method=crossfade time=150][wt_c]

[macro name=std_ai]

	[eval exp=%exp]

	;�p�[�c��U�J����
	[eval exp="f.face_win_char11_parts2 = 0"]
	[eval exp="f.face_win_char11_parts3 = 0"]
	;�t�F�C�X�E�B���h�E�p�@�|�[�Y�̑ł������p ���W�ς��Ȃ�����1�ł�����
	[eval exp="f.face_win_char11_pose = 1"]


	[backlay_c cond="mp.off == void"]

	;�`�`�`�`�`�`�`�`�`�`�`��ɂȂ�����w�i����ɂ��邽�߂̃}�N���`�`�`�`�`�`�`�`�`�`�`
;����ϕ��G�����ł�
;	[bg_size_change *]

	;�ϐ���`��������image�^�O�͍Ō�ł����񂶂�Ȃ����H
	;�`�`�`�`�`�`�`�`�`�`�`�T�C�Y�E���C���E���W��`�`�`�`�`�`�`�`�`�`�`�`

	;���C���𖢎w��̎��͎����Ń��C�����m�肷��
			;�h�炵�Ŏg�����C������`�����Ⴄ
;	[if    exp="mp.ce"][eval exp="f.layer = sf.layerC  , f.layer_ch11 = sf.layerC "]
;	[elsif exp="mp.le"][eval exp="f.layer = sf.layerL  , f.layer_ch11 = sf.layerL "]
;	[elsif exp="mp.ri"][eval exp="f.layer = sf.layerR  , f.layer_ch11 = sf.layerR "]
;	[elsif exp="mp.lc"][eval exp="f.layer = sf.layerLC , f.layer_ch11 = sf.layerLC"]
;	[elsif exp="mp.rc"][eval exp="f.layer = sf.layerRC , f.layer_ch11 = sf.layerRC"]
;	;��L�ȊO�̍��W�����
;	[else]
;	[eval exp="f.layer = mp.layer  , f.layer_ch11 = mp.layer "]
;	[endif]
	;���̓T�C�Y���ł�����ق����������邩�Bf.layer������Ȃ���
	
	;�T�C�Y ��
	[if    exp="mp.s"]

;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch11�͗h�炵�Ŏg������p�Bf.image_size_ch11��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 's' , f.stdsize_ch11 = 's' , f.image_size_ch11 = 's'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch11 = sf.layerC  , f.pos_ch11 = 'ce'"][eval exp="f.pos_ch11_x = sf.ch11_sml_ce" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_sml_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch11 = sf.layerL  , f.pos_ch11 = 'le'"][eval exp="f.pos_ch11_x = sf.ch11_sml_le" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_sml_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch11 = sf.layerR  , f.pos_ch11 = 'ri'"][eval exp="f.pos_ch11_x = sf.ch11_sml_ri" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_sml_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch11 = sf.layerLC , f.pos_ch11 = 'lc'"][eval exp="f.pos_ch11_x = sf.ch11_sml_lc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_sml_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch11 = sf.layerRC , f.pos_ch11 = 'rc'"][eval exp="f.pos_ch11_x = sf.ch11_sml_rc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_sml_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch11_x = sf['ch11_sml_' + f.pos_ch11] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch11_y = sf.ch11_sml_y + (+mp.y)"                cond="mp.y != void"]


	;�T�C�Y ��
	[elsif exp="mp.m"]
;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch11�͗h�炵�Ŏg������p�Bf.image_size_ch11��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'm' , f.stdsize_ch11 = 'm' , f.image_size_ch11 = 'm'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch11 = sf.layerC  , f.pos_ch11 = 'ce'"][eval exp="f.pos_ch11_x = sf.ch11_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch11 = sf.layerL  , f.pos_ch11 = 'le'"][eval exp="f.pos_ch11_x = sf.ch11_mid_le" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch11 = sf.layerR  , f.pos_ch11 = 'ri'"][eval exp="f.pos_ch11_x = sf.ch11_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch11 = sf.layerLC , f.pos_ch11 = 'lc'"][eval exp="f.pos_ch11_x = sf.ch11_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch11 = sf.layerRC , f.pos_ch11 = 'rc'"][eval exp="f.pos_ch11_x = sf.ch11_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch11_x = sf['ch11_mid_' + f.pos_ch11] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch11_y = sf.ch11_mid_y + (+mp.y)"                cond="mp.y != void"]
	;�T�C�Y ��
	[elsif exp="mp.l"]
;		[bg_l *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch11�͗h�炵�Ŏg������p�Bf.image_size_ch11��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'l' , f.stdsize_ch11 = 'l' , f.image_size_ch11 = 'l'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch11 = sf.layerC  , f.pos_ch11 = 'ce'"][eval exp="f.pos_ch11_x = sf.ch11_lag_ce" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_lag_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch11 = sf.layerL  , f.pos_ch11 = 'le'"][eval exp="f.pos_ch11_x = sf.ch11_lag_le" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_lag_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch11 = sf.layerR  , f.pos_ch11 = 'ri'"][eval exp="f.pos_ch11_x = sf.ch11_lag_ri" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_lag_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch11 = sf.layerLC , f.pos_ch11 = 'lc'"][eval exp="f.pos_ch11_x = sf.ch11_lag_lc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_lag_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch11 = sf.layerRC , f.pos_ch11 = 'rc'"][eval exp="f.pos_ch11_x = sf.ch11_lag_rc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_lag_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch11_x = sf['ch11_lag_' + f.pos_ch11] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch11_y = sf.ch11_lag_y + (+mp.y)"                cond="mp.y != void"]
	;�T�C�Y ��
	[elsif exp="mp.xl"]
;		[bg_l *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch11�͗h�炵�Ŏg������p�Bf.image_size_ch11��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'x' , f.stdsize_ch11 = 'x' , f.image_size_ch11 = 'x'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch11 = sf.layerC  , f.pos_ch11 = 'ce'"][eval exp="f.pos_ch11_x = sf.ch11_xla_ce" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_xla_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch11 = sf.layerL  , f.pos_ch11 = 'le'"][eval exp="f.pos_ch11_x = sf.ch11_xla_le" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_xla_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch11 = sf.layerR  , f.pos_ch11 = 'ri'"][eval exp="f.pos_ch11_x = sf.ch11_xla_ri" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_xla_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch11 = sf.layerLC , f.pos_ch11 = 'lc'"][eval exp="f.pos_ch11_x = sf.ch11_xla_lc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_xla_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch11 = sf.layerRC , f.pos_ch11 = 'rc'"][eval exp="f.pos_ch11_x = sf.ch11_xla_rc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_xla_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch11_x = sf['ch11_xla_' + f.pos_ch11] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch11_y = sf.ch11_xla_y + (+mp.y)"                cond="mp.y != void"]
	;�t�F�C���Z�[�t�@���T�C�Y�ɂ��Ă���
	[else]
;		[bg_s *]
		;f.stdsize�͍Ō�ɓ\�����L�����̕ϐ���ۑ��Bf.stdsize_ch11�͗h�炵�Ŏg������p�Bf.image_size_ch11��image�^�O�Ŏg���t�@�C���������p�B
		[eval exp="f.stdsize = 'm' , f.stdsize_ch11 = 'm' , f.image_size_ch11 = '��'"]
		;���W�ϐ���`
		[if    exp="mp.ce"][eval exp="f.layer_ch11 = sf.layerC  , f.pos_ch11 = 'ce'"][eval exp="f.pos_ch11_x = sf.ch11_mid_ce" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.le"][eval exp="f.layer_ch11 = sf.layerL  , f.pos_ch11 = 'le'"][eval exp="f.pos_ch11_x = sf.ch11_mid_le" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.ri"][eval exp="f.layer_ch11 = sf.layerR  , f.pos_ch11 = 'ri'"][eval exp="f.pos_ch11_x = sf.ch11_mid_ri" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.lc"][eval exp="f.layer_ch11 = sf.layerLC , f.pos_ch11 = 'lc'"][eval exp="f.pos_ch11_x = sf.ch11_mid_lc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[elsif exp="mp.rc"][eval exp="f.layer_ch11 = sf.layerRC , f.pos_ch11 = 'rc'"][eval exp="f.pos_ch11_x = sf.ch11_mid_rc" cond="mp.x == void"][eval exp="f.pos_ch11_y = sf.ch11_mid_y" cond="mp.y == void"]
		[endif]
		;��L�ȊO�̍��W�����
		;�����͂̂Ƃ��̗h�炵�ǂ����悤���Ȃ� mp�ł��������
		[eval exp="f.pos_ch11_x = sf['ch11_mid_' + f.pos_ch11] + (+mp.x)" cond="mp.x != void"]
		[eval exp="f.pos_ch11_y = sf.ch11_mid_y + (+mp.y)"                cond="mp.y != void"]
	[endif]

	;���C���ς������ꍇ
	[eval exp="f.layer_ch11 = mp.layer" cond="mp.layer != void"]

	;index�����̑�����Ă����ĂȂ������񂾂Ȃ��������ق���������
	;index��`�@�ʓ|����������1000�̂��炢�ŏ����Ȃ��Ă����悤�ɂ��邩
	[if exp="mp.index"]
		;mp�ɏ����1000�����Ƃ�₱�����Ȃ肻�������炱�����͑����Ȃ�
		[eval exp="f.index_ch11 = mp.index * 1000 + 1000"]
	[else]
		[eval exp="f.index_ch11 = f.layer_ch11 * 1000 + 1000"]
	[endif]

	;�`�`�`�`�`�`�`�`�`�`�`�摜��`�`�`�`�`�`�`�`�`�`�`�`

	[eval exp="f.image_face_char11_parts3 = void"]
	[eval exp="f.image_face_char11_parts4 = void"]

	;�}�K���͖��@���̂ǂ̃|�[�Y�E���ł��ł���悤�ɂ��Ƃ���
	;�}�K��������̂́Ach11_l_face_j0_p2 ���g���ΑS�đΉ���
;;	[if exp="mp.magan"]
;;		[eval exp="f.image_base_ch11 = void"]
;;		[if    exp="mp.magan && mp.ma   && mp.p1"][eval exp="f.image_base_ch11 = '_base_j' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.mad  && mp.p1"][eval exp="f.image_base_ch11 = '_base_g' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.maw  && mp.p1"][eval exp="f.image_base_ch11 = '_base_h' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.madw && mp.p1"][eval exp="f.image_base_ch11 = '_base_i' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.ma   && mp.p2"][eval exp="f.image_base_ch11 = '_base_f' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.mad  && mp.p2"][eval exp="f.image_base_ch11 = '_base_g' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.maw  && mp.p2"][eval exp="f.image_base_ch11 = '_base_h' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && mp.madw && mp.p2"][eval exp="f.image_base_ch11 = '_base_i' , f.stdmsk = 0"]
;;		[elsif exp="mp.magan && (!mp.ma && !mp.mad && !mp.maw && !mp.madw)"][eval exp="f.image_base_ch11 = '_base_j' , f.stdmsk = 0"]
;;		[endif]
;;	[endif]

	[eval exp="f.image_base_ch11 = '_base_d0' , f.stdmsk = 0"]

	;�|�[�Y�@���̕ϐ��ɂ��̂܂܂�������
	[if    exp="mp.p1"][eval exp="f.image_base_ch11 = f.image_base_ch11 + '_p1'"]
	[elsif exp="mp.p2"][eval exp="f.image_base_ch11 = f.image_base_ch11 + '_p2'"]
;;	[if    exp="mp.p1 && !mp.magan"][eval exp="f.image_base_ch11 = f.image_base_ch11 + '_p1'"]
;;	[elsif exp="mp.p2 && !mp.magan"][eval exp="f.image_base_ch11 = f.image_base_ch11 + '_p2'"]
;	[else]
;		;�C���t�H�o���̂̓f�o�b�O�������ɂ��邩
;		[call storage="macro08_std.ks" target=*no_coss  cond="kag.debugMenu.visible == true"]
;		[eval exp="f.image_base_ch11 = '_��1' , f.stdmsk = 0"]
	[endif]

	;�t�F�C�X�E�B���h�E�p��`�B��ɒ�`�����ϐ��������邩��eval�͕�����B
	[eval exp="f.image_base_ch11w = f.image_base_ch11"]


	;�\��̕ϐ��ɕ������Ƒł������Ɩj���ߗL���𑫂��čĒ�`
	[eval exp="f.image_face_ch11 = f.image_face_ch11 + f.image_face2_ch11 + f.image_face3_ch11"]

	;�t�F�C�X�E�B���h�E�p��`
	;�x�[�X�t�@�C������`
	[eval exp="f.face_win_char11_base   = sf.image_name_ch11 + 'w' + f.image_base_ch11w"]

	;�\��t�@�C������`
;	[eval exp="f.face_win_char11_parts1 = sf.image_name_ch11 + 's' + f.image_face_ch11"]
	;�ق�
;	[eval exp="f.face_win_char11_parts2 = sf.image_name_ch11 + '��' + sf.image_hoho"  cond="mp.ho || mp.hoho"]

	;�t�@�C�����݂��Ă邩�`�F�b�N����ɂ͓��ꂵ���ϐ��ɂ���Ȃ��Ƃ��߂�
	[eval exp="f.image_std_base = sf.image_name_ch11 + f.image_size_ch11 + f.image_base_ch11"]
;	[eval exp="f.image_std_face = sf.image_name_ch11 + f.image_size_ch11 + f.image_face_ch11"]

	;�`�`�`�`�`�`�`�`�`�`�`�摜�ǂݍ��݁`�`�`�`�`�`�`�`�`�`�`
;�t�@�C������`�ł��łɃt�F�C���Z�[�t����Ă邩��`�F�b�N����Ȃ��Ă��ǂ����������ǁA�Ԉ�����ϐ�����`���ꂵ�܂������p��
@if exp="(existentImage_std_base_check(f.image_std_base)!==false)"
	;�x�[�X
	[image * storage="&f.image_std_base" layer="&f.layer_ch11" index="&f.index_ch11" page=%page|back visible=true left="&f.pos_ch11_x" top="&f.pos_ch11_y" opacity=%opacity|255 cond="mp.off == void"]
@endif
;@if exp="(existentImage_std_face_check(f.image_std_face)!==false)"
;	;�\��
;	[pimage  storage="&f.image_std_face" layer="&f.layer_ch11" page=%page|back visible=true dx=0 dy=0 cond="mp.off == void"]
;;	;�\�� �ǉ��p�[�c
;;	[if    exp="mp.ho || mp.hoho"]
;;		[pimage storage="&sf.image_name_ch11 + f.image_size_ch11 + sf.image_hoho" layer="&f.layer_ch11" page=%page|back visible=true dx=0 dy=0 mode=mul opacity=180 cond="mp.off == void"]
;;	[endif]
;@endif



	;blur���x��������Ă�΂����ŕϐ��ɓ��ꂿ�Ⴄ�B
	[if exp="(mp.blur_x != void || mp.blur_y != void)"]
		[eval exp="f.bluron_chara11     = 1"]
		[eval exp="f.blur_layer_chara11 = f.layer_ch11"]
		[eval exp="f.blur_x_chara11     = mp.blur_x" cond="mp.blur_x != void"]
		[eval exp="f.blur_y_chara11     = mp.blur_y" cond="mp.blur_y != void"]
		;blur����
		[blur layer="&f.blur_layer_chara11" page=back blur_x="&f.blur_x" blur_y="&f.blur_y" cond="mp.blur_x|mp.blur_y"]
	[endif]


	;blur���x��������ĂȂ����0�ɂ��Ă���
	[eval exp="f.bluron_chara11 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_x_chara11 = 0" cond="mp.blur_x == void && mp.blur_y == void"]
	[eval exp="f.blur_y_chara11 = 0" cond="mp.blur_x == void && mp.blur_y == void"]

[endmacro]


[return]


