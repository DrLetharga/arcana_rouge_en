;===========================================================
;                    �^�C�g�����                           
;===========================================================


;�^�C�g��bgm
[eval exp="tf.bgmTitle = 'BGM01'"]
;bgm�}�N���㏑������Ă�mp.v����ʂ�Ȃ��Ȃ�
[macro name="bgmTitle"][bgm storage="&tf.bgmTitle" vol=70][endmacro]

;�^�C�g��bgm
;[eval exp="tf.bgmTitle2 = sf.addgameID + 'BGM01'"]
;sf.addgameID��bgm�}�N���̒��ŕt����


;[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"]
	[eval exp="tf.T_bt_x = 1060"]
	[eval exp="tf.y = 60  + 25"]
	[eval exp="tf.addy = 50"]
;[endif]

;�}�N������2�͌ʃ^�C�g���̂ǂ��炩���w���Ă�̂ł͂Ȃ��A�匳�̃^�C�g����ʂ���2�ڂ̃^�C�g����ʂ�����2�Ȃ́B
;���̋K�������ƌ��߂Ă����Ȃ��Ƌ��ʃ}�N���Ȃ̂��A�^�C�g���ʂ�01�A02���w���Ă�̂��������������Ȃ��B
;[macro name="bgmTitle2"][bgm storage="&tf.bgmTitle2"][endmacro]

;�Q�[���J�n
[eval exp="sf.T_newgame_x = tf.T_bt_x"]
[eval exp="sf.T_newgame_y = tf.y + tf.addy * 1"]

;���[�h
[eval exp="sf.T_load_x = tf.T_bt_x"]
[eval exp="sf.T_load_y = tf.y + tf.addy * 2"]

;�N�C�b�N���[�h
[eval exp="sf.T_Qload_x = tf.T_bt_x"]
[eval exp="sf.T_Qload_y = tf.y + tf.addy * 3"]

;�R���t�B�O
[eval exp="sf.T_conf_x = tf.T_bt_x"]
[eval exp="sf.T_conf_y = tf.y + tf.addy * 4"]



;CG Gallery
[eval exp="sf.T_cg_x = tf.T_bt_x"]
[eval exp="sf.T_cg_y = tf.y + tf.addy * 5"]

;Scene Replay
[eval exp="sf.T_sr_x = tf.T_bt_x"]
[eval exp="sf.T_sr_y = tf.y + tf.addy * 6"]

;BGM MOde
[eval exp="sf.T_bgm_x = tf.T_bt_x"]
[eval exp="sf.T_bgm_y = tf.y + tf.addy * 7"]

;	;�����T�C�g��
;	[eval exp="sf.T_ohp_x = tf.T_bt_x"]
;	[eval exp="sf.T_ohp_y =  sf.T_newgame_y + (50*7)"]

;	;�Q�[���I���ɖ߂�
;	[eval exp="sf.T_return_x = tf.T_bt_x"]
;	[eval exp="sf.T_return_y = tf.y + tf.addy * 7"]

;�Q�[���I��
[eval exp="sf.T_quit_x = tf.T_bt_x"]
[eval exp="sf.T_quit_y = tf.y + tf.addy * 8"]

;===========================================================

[return]

