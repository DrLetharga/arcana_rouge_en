;===========================================================
;                       CG Gallery                          
;                       Scene Replay                        
;===========================================================


;�ő�y�[�W����`
[eval exp="sf.CG_page_max = 3"]


[eval exp="sf.layer_b_page    = 1"]
[eval exp="sf.layer_b_sysjump = 2"]
[eval exp="sf.layer_b_chara   = 3"]
[eval exp="sf.layer_b_bgm     = 3"]

[eval exp="tf.x = 820"]
[eval exp="tf.xadd = 80"]
[eval exp="tf.y = 10"]


;�y�[�W�p�{�^��
;1�y�[�W��
[eval exp="sf.b_page01_x = tf.x"]
[eval exp="sf.b_page01_y = tf.y"]

;2�y�[�W��
[eval exp="sf.b_page02_x = tf.x + tf.xadd"]
[eval exp="sf.b_page02_y = tf.y"]

; 3�y�[�W��
[eval exp="sf.b_page03_x = tf.x + tf.xadd * 2"]
[eval exp="sf.b_page03_y = tf.y"]

;4�y�[�W��
[eval exp="sf.b_page04_x = tf.x + tf.xadd * 3"]
[eval exp="sf.b_page04_y = tf.y"]

;5�y�[�W��
[eval exp="sf.b_page05_x = tf.x + tf.xadd * 4"]
[eval exp="sf.b_page05_y = tf.y"]

;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@x���W�@��{�I��0�ɂȂ�܂��B
[eval exp="sf.b_page_clipleft   = 0"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@y���W�@��{�I�ɃN���b�N�������I���J�[�\�������̂ǂ��炩�̍��W�ɂȂ�܂��B
[eval exp="sf.b_page_cliptop    = 70"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o������
[eval exp="sf.b_page_clipwidth  = 70"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o���㉺���@�摜�̑S���̃T�C�Y�ł͂Ȃ��\�������������̃T�C�Y�ł��B
[eval exp="sf.b_page_clipheight = 70"]

;�I�}�P���[�h�Ԉړ��p�̃{�^���BCG�EScene�EBGM��ʂŋ���
;CG Gallery
[eval exp="sf.b_cg_x  = 720"]
[eval exp="sf.b_cg_y  = 660"]

;SceneReplay
[eval exp="sf.b_sr_x  = 850"]
[eval exp="sf.b_sr_y  = 660"]

;BGM MODE
[eval exp="sf.b_bgm_x = 980"]
[eval exp="sf.b_bgm_y = 660"]

;�^�C�g���ɖ߂�{�^��
[eval exp="sf.b_back_x = 1110"]
[eval exp="sf.b_back_y = 660"]

;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@x���W�@��{�I��0�ɂȂ�܂��B
[eval exp="sf.bnsjump_clipleft   = 0"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@y���W�@��{�I�ɃN���b�N�������I���J�[�\�������̂ǂ��炩�̍��W�ɂȂ�܂��B
[eval exp="sf.bnsjump_cliptop    = 41"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o������
[eval exp="sf.bnsjump_clipwidth  = 122"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o���㉺���@�摜�̑S���̃T�C�Y�ł͂Ȃ��\�������������̃T�C�Y�ł��B
[eval exp="sf.bnsjump_clipheight = 41"]



;���T���l�C�� �Z�[�u���[�h�Ƃ͒�`���@���኱�Ⴂ�܂��B
;��5�A�c4�B���ׂ����ύX����ɂ͕ʃt�@�C���ł̕ύX���K�v�ɂȂ�̂Ŕ����Ă��������B

;�T���l�C���T�C�Y
[eval exp="sf.cg_thum_w = 205"]
[eval exp="sf.cg_thum_h = 115"]

;�T���l�C���x�[�X�ɏ���g�L��Ƃ��p�̃}�[�W��
[eval exp="sf.cg_thum_m_x = 5"]
[eval exp="sf.cg_thum_m_y = 5"]

;�Z�[�u�f�[�^�T���l�C����
[eval exp="sf.cg_thum_offset_x = 30"]
[eval exp="sf.cg_thum_offset_y = 25"]

;�{�[�i�X�̎g����
[eval exp="tf.�𑜓xw = kag.scWidth"]
[eval exp="tf.�T���lw = sf.cg_thum_w"]
[eval exp="tf.�T���l��w = sf.cg_thum_m_x + sf.cg_thum_offset_x"]
;���}�[�W�������v�Z�@
[eval exp="tf.���}�[�W�� = (tf.�𑜓xw - ((tf.�T���lw*5) + (tf.�T���l��w*4))) / 2"]
;�O�̂��߂ɐ�����
[eval exp="tf.���}�[�W�� = int + tf.���}�[�W��"]

[eval exp="tf.x    = tf.���}�[�W��"]
[eval exp="tf.xadd = sf.cg_thum_w + sf.cg_thum_m_x +sf.cg_thum_offset_x"]
[eval exp="tf.y    = sf.thum_y"]
[eval exp="tf.yadd = sf.cg_thum_h + sf.cg_thum_m_y +sf.cg_thum_offset_y"]

;�T���l�C�������x���W
[eval exp="sf.cg_thum_x01  = tf.x"]
[eval exp="sf.cg_thum_x02  = tf.x + tf.xadd"]
[eval exp="sf.cg_thum_x03  = tf.x + tf.xadd * 2"]
[eval exp="sf.cg_thum_x04  = tf.x + tf.xadd * 3"]
[eval exp="sf.cg_thum_x05  = tf.x + tf.xadd * 4"]

;�T���l�C���c���y���W
[eval exp="sf.cg_thum_y01  = tf.y"]
[eval exp="sf.cg_thum_y02  = tf.y + tf.yadd"]
[eval exp="sf.cg_thum_y03  = tf.y + tf.yadd * 2"]
[eval exp="sf.cg_thum_y04  = tf.y + tf.yadd * 3"]

;===========================================================
;                       Scene Replay                        
;===========================================================

;�ő�y�[�W����`
[eval exp="sf.SR_page_max = 2"]


;�T���l�C���T�C�Y
[eval exp="sf.sr_thum_w = 205"]
[eval exp="sf.sr_thum_h = 115"]

;�T���l�C���x�[�X�ɏ���g�L��Ƃ��p�̃}�[�W��
[eval exp="sf.sr_thum_m_x = 5"]
[eval exp="sf.sr_thum_m_y = 5"]

;�Z�[�u�f�[�^�T���l�C����
[eval exp="sf.sr_thum_offset_x = 30"]
[eval exp="sf.sr_thum_offset_y = 25"]

;�{�[�i�X�̎g����
[eval exp="tf.�𑜓xw = kag.scWidth"]
[eval exp="tf.�T���lw = sf.sr_thum_w"]
[eval exp="tf.�T���l��w = sf.sr_thum_m_x + sf.sr_thum_offset_x"]
;���}�[�W�������v�Z�@
[eval exp="tf.���}�[�W�� = (tf.�𑜓xw - ((tf.�T���lw*5) + (tf.�T���l��w*4))) / 2"]
;�O�̂��߂ɐ�����
[eval exp="tf.���}�[�W�� = int + tf.���}�[�W��"]

[eval exp="tf.x    = tf.���}�[�W��"]
[eval exp="tf.xadd = sf.sr_thum_w + sf.sr_thum_m_x +sf.sr_thum_offset_x"]
[eval exp="tf.y    = sf.thum_y"]
[eval exp="tf.yadd = sf.sr_thum_h + sf.sr_thum_m_y +sf.sr_thum_offset_y"]


;�T���l�C�������x���W
[eval exp="sf.sr_thum_x01  = tf.x"]
[eval exp="sf.sr_thum_x02  = tf.x + tf.xadd"]
[eval exp="sf.sr_thum_x03  = tf.x + tf.xadd * 2"]
[eval exp="sf.sr_thum_x04  = tf.x + tf.xadd * 3"]
[eval exp="sf.sr_thum_x05  = tf.x + tf.xadd * 4"]

;�T���l�C���c���y���W
[eval exp="sf.sr_thum_y01  = tf.y"]
[eval exp="sf.sr_thum_y02  = tf.y + tf.yadd"]
[eval exp="sf.sr_thum_y03  = tf.y + tf.yadd * 2"]
[eval exp="sf.sr_thum_y04  = tf.y + tf.yadd * 3"]

;===========================================================
;                         BGM MODE                          
;===========================================================


[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][jump target=*gameNo01_bgm]
[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][jump target=*gameNo02_bgm]
[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][jump target=*gameNo03_bgm]
[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][jump target=*gameNo04_bgm]
[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][jump target=*gameNo05_bgm]
[endif]

;--------------------------------------
*gameNo01_bgm
*gameNo02_bgm
*gameNo03_bgm
*gameNo04_bgm
;�ǂ���̃^�C�g���ł����p

;�ő�y�[�W����`
[eval exp="sf.BGM_page_max = 1"]

;���V�d�l�p�ǉ�
;�V�X�e���ړ��{�^���̂����A�Z�[�u�E���[�h�E�R���t�B�O�����Ɏg�p
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@x���W�@��{�I��0�ɂȂ�܂��B
[eval exp="sf.bgm_clipleft   = 0"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o�����W�@y���W�@��{�I�ɃN���b�N�������I���J�[�\�������̂ǂ��炩�̍��W�ɂȂ�܂��B
[eval exp="sf.bgm_cliptop    = 40"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o������
[eval exp="sf.bgm_clipwidth  = 500"]
;�I����Ԃ̎��ɋ�`����鎞�̉摜�؂�o���㉺���@�摜�̑S���̃T�C�Y�ł͂Ȃ��\�������������̃T�C�Y�ł��B
[eval exp="sf.bgm_clipheight = 40"]


[eval exp="sf.bgmw  = sf.bgm_clipwidth"]
;[eval exp="sf.bgmxadd  = 20"]

[eval exp="tf.�𑜓xw = kag.scWidth"]
[eval exp="sf.bgm_x1 = (tf.�𑜓xw - sf.bgmw) /2"]
;[eval exp="sf.bgm_x2 = sf.bgm_x1 + (sf.bgmw + sf.bgmxadd)"]

;��������Ɖ��ڂ����킩��ɂ��������Ɋe�ϐ���`�����Ⴄ
[eval exp="sf.bgmh  = sf.bgm_clipheight"]
[eval exp="sf.bgmyadd  = 15"]

[eval exp="sf.bgm_y01 = 90"]
[eval exp="sf.bgm_y02 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 1"]
[eval exp="sf.bgm_y03 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 2"]
[eval exp="sf.bgm_y04 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 3"]
[eval exp="sf.bgm_y05 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 4"]
[eval exp="sf.bgm_y06 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 5"]
[eval exp="sf.bgm_y07 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 6"]
[eval exp="sf.bgm_y08 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 7"]
[eval exp="sf.bgm_y09 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 8"]
[eval exp="sf.bgm_y10 = sf.bgm_y01 + (sf.bgmh + sf.bgmyadd) * 9"]

;===========================================================

[return]

