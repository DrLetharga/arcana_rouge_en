;===========================================================
;                    �N�C�b�N�Z�[�u�g                       
;===========================================================
;//�@�X���b�g0 99 �Z�[�u���[�h
;//�@�X���b�g100 199 �Z�[�u���[�h
;//�@�X���b�g200 �N�C�b�N�Z�[�u���[�h
;//�@�X���b�g201 �N�C�b�N�Z�[�u���[�h
[eval exp="sf.QsaveNo = kag.numBookMarks-1"]
;[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"]
;[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"]
;[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"]
;[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"]
;[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"]
;[endif]

;===========================================================
;               �Z�[�u�E���[�h���                          
;===========================================================

;�T���l�C���̃T�C�Y�E�T���l�C�����Enew�}�[�N���̍��W�͂����ł͐ݒ�s�B

;�Z�[�u�f�[�^�T���l�C���T�C�Y
[eval exp="sf.thum_w = 205"]
[eval exp="sf.thum_h = 115"]

;�Z�[�u�f�[�^�T���l�C���x�[�X�ɏ���g�L��Ƃ��p�̃}�[�W��
[eval exp="sf.thum_m_x = 4"]
[eval exp="sf.thum_m_y = 4"]

;�Z�[�u�f�[�^�T���l�C����
[eval exp="sf.thum_offset_x = 30"]
[eval exp="sf.thum_offset_y = 25"]

;�{�[�i�X�̎g����
[eval exp="tf.�𑜓xw = kag.scWidth"]
[eval exp="tf.�T���lw = sf.thum_w"]
[eval exp="tf.�T���l��w = sf.thum_m_x + sf.thum_offset_x"]
;���}�[�W�������v�Z�@
[eval exp="tf.���}�[�W�� = (tf.�𑜓xw - ((tf.�T���lw*5) + (tf.�T���l��w*4))) / 2"]
;�O�̂��߂ɐ�����
[eval exp="tf.���}�[�W�� = int + tf.���}�[�W��"]

;�Z�[�u�f�[�^�T���l�C���@��5�A�c4�B����i1-1�j�̂ݎw��B
[eval exp="sf.thum_x = tf.���}�[�W��"]
;[eval exp="sf.thum_y = 80"]
[eval exp="sf.thum_y = 85"]


[eval exp="sf.data_lock_erase_w = 60"]
[eval exp="sf.data_lock_erase_h = 12"]

;�Z�[�u�f�[�^�ی�@����i1-1�j�̂ݎw��B�T���l�C���Ɠ����Ԋu�Ŕz�u�����B
[eval exp="sf.data_lock_x = tf.���}�[�W�� + 30"]
[eval exp="sf.data_lock_y = sf.thum_y + sf.thum_h + sf.thum_m_y - sf.data_lock_erase_h"]

;�Z�[�u�f�[�^�폜�@����i1-1�j�̂ݎw��B�T���l�C���Ɠ����Ԋu�Ŕz�u�����B
[eval exp="sf.data_erase_x = sf.data_lock_x + 30 + sf.data_lock_erase_w"]
[eval exp="sf.data_erase_y = sf.thum_y + sf.thum_h + sf.thum_m_y - sf.data_lock_erase_h"]

;�Z�[�u�f�[�^���t��
[eval exp="sf.data_num_x       = 50"]
[eval exp="sf.data_num_y       = 625"]
[eval exp="sf.data_size        = 20"]
[eval exp="sf.data_font        = '�l�r �S�V�b�N'"]
[eval exp="sf.data_color       = '0xFFFFFF'"]
[eval exp="sf.data_italic      = 'false'"]
;���r�̐ݒ�Ȃ�ĕς��邱�Ƃ���H�ꉞ�����Ă�������
[eval exp="sf.data_rubysize    = 10"]
[eval exp="sf.data_rubyoffset  = 0"]
[eval exp="sf.data_edge        = 'true'"]
[eval exp="sf.data_edgecolor   = '0xffc0c0'"]
[eval exp="sf.data_shadow      = 'false'"]
[eval exp="sf.data_shadowcolor = '0x000000'"]
[eval exp="sf.data_bold        = 'false'"]

[eval exp="tf.x = 820"]
[eval exp="tf.xadd = 80"]
[eval exp="tf.y = 10"]


;�y�[�W�p�{�^��
;1�y�[�W��
[eval exp="sf.saveload_page01_x = tf.x"]
[eval exp="sf.saveload_page01_y = tf.y"]

;2�y�[�W��
[eval exp="sf.saveload_page02_x = tf.x + tf.xadd"]
[eval exp="sf.saveload_page02_y = tf.y"]

; 3�y�[�W��
[eval exp="sf.saveload_page03_x = tf.x + tf.xadd * 2"]
[eval exp="sf.saveload_page03_y = tf.y"]

;4�y�[�W��
[eval exp="sf.saveload_page04_x = tf.x + tf.xadd * 3"]
[eval exp="sf.saveload_page04_y = tf.y"]

;5�y�[�W��
[eval exp="sf.saveload_page05_x = tf.x + tf.xadd * 4"]
[eval exp="sf.saveload_page05_y = tf.y"]



;	;6�y�[�W��
;	[eval exp="sf.saveload_page06_x = 1180"]
;	[eval exp="sf.saveload_page06_y = 350"]
;
;	;7�y�[�W��
;	[eval exp="sf.saveload_page07_x = 1180"]
;	[eval exp="sf.saveload_page07_y = 390"]


;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@x���W�@��{�I��0�ɂȂ�܂��B
[eval exp="sf.page_clipleft   = 0"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@y���W�@��{�I�ɃN���b�N�������I���J�[�\�������̂ǂ��炩�̍��W�ɂȂ�܂��B
[eval exp="sf.page_cliptop    = 70"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o������
[eval exp="sf.page_clipwidth  = 70"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o���㉺���@�摜�̑S���̃T�C�Y�ł͂Ȃ��\�������������̃T�C�Y�ł��B
[eval exp="sf.page_clipheight = 70"]


;�V�X�e���n��ʈړ��p�{�^�����W
;���R���t�B�O��ʂƂ����W�͌��p�ł��B

[eval exp="tf.x = 640"]
[eval exp="tf.addx = 122+5"]
[eval exp="tf.y = 670"]

;�V�X�e���ړ��@�^�C�g����
[eval exp="sf.sysjump_title_x = tf.x"]
[eval exp="sf.sysjump_title_y = tf.y"]

;�V�X�e���ړ��@�Z�[�u��
[eval exp="sf.sysjump_save_x = tf.x + tf.addx * 1"]
[eval exp="sf.sysjump_save_y = tf.y"]

;�V�X�e���ړ��@���[�h��
[eval exp="sf.sysjump_load_x = tf.x + tf.addx * 2"]
[eval exp="sf.sysjump_load_y = tf.y"]

;�V�X�e���ړ��@���j���[�ցi�V�[����z�������ꍇ�̂݁j�Z�[�u�Ɠ��ʒu�ɂ���B �E�l�߂����烍�[�h�̈ʒu��
[eval exp="sf.sysjump_menu_x = tf.x + tf.addx * 2"]
[eval exp="sf.sysjump_menu_y = tf.y"]

;�V�X�e���ړ��@�R���t�B�O��
[eval exp="sf.sysjump_conf_x = tf.x + tf.addx * 3"]
[eval exp="sf.sysjump_conf_y = tf.y"]

;�V�X�e���ړ��@�߂�
[eval exp="sf.sysjump_game_x = tf.x + tf.addx * 4"]
[eval exp="sf.sysjump_game_y =  tf.y"]

;�V�X�e���ړ��{�^���̂����A�Z�[�u�E���[�h�E�R���t�B�O�����Ɏg�p
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@x���W�@��{�I��0�ɂȂ�܂��B
[eval exp="sf.sysjump_clipleft   = 0"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@y���W�@��{�I�ɃN���b�N�������I���J�[�\�������̂ǂ��炩�̍��W�ɂȂ�܂��B
[eval exp="sf.sysjump_cliptop    = 41"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o������
[eval exp="sf.sysjump_clipwidth  = 122"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o���㉺���@�摜�̑S���̃T�C�Y�ł͂Ȃ��\�������������̃T�C�Y�ł��B
[eval exp="sf.sysjump_clipheight = 41"]

;===========================================================

[return]

