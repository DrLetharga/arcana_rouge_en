;b_sub.ks
;�{�[�i�X���[�h�Ԉړ��p�̃{�^����\�����邾���̃T�u���[�`������B

[eval exp="tf.b_menuX = [sf.b_cg_x,sf.b_sr_x,sf.b_bgm_x,sf.b_back_x]"]
[eval exp="tf.b_menuY = [sf.b_cg_y,sf.b_sr_y,sf.b_bgm_y,sf.b_back_y]"]

[if exp="tf.cg_mode == 1"]
	[freeimage layer=2 page=fore]
	; �b�f�փ{�^����\���@�N���b�N������V�[�����[�h�I�t��
	[locate x="&tf.b_menuX[0]" y="&tf.b_menuY[0]"]
	;[button graphic="bnsjump_cg_now" storage="b_cgmode.ks"]
	[button graphic="bnsjump" storage="b_cgmode.ks"]
	[image left="&tf.b_menuX[0]" top="&tf.b_menuY[0]" storage="bnsjump_cg" layer=2 page=fore visible=true clipleft="&sf.bnsjump_clipleft" cliptop="&sf.bnsjump_cliptop" clipwidth="&sf.bnsjump_clipwidth" clipheight="&sf.bnsjump_clipheight"]

	; �V�[����z�փ{�^����\��
	[locate x="&tf.b_menuX[1]" y="&tf.b_menuY[1]"]
	[button graphic="bnsjump_scene" storage="b_scene.ks"  exp="tf.cg_mode = 0"]

	; �a�f�l�փ{�^����\��
	[locate x="&tf.b_menuX[2]" y="&tf.b_menuY[2]"]
	[button graphic="bnsjump_bgm" storage="b_bgmmode.ks" exp="tf.cg_mode = 0"]
	[return]
[endif]

[if exp="tf.scene_mode == 1"]
	[freeimage layer=2 page=fore]
	; �b�f�փ{�^����\���@�N���b�N������V�[�����[�h�I�t��
	[locate x="&tf.b_menuX[0]" y="&tf.b_menuY[0]"]
	[button graphic="bnsjump_cg" storage="b_cgmode.ks" exp="tf.scene_mode = 0"]

	; �V�[����z�փ{�^����\��
	[locate x="&tf.b_menuX[1]" y="&tf.b_menuY[1]"]
	;[button graphic="bnsjump_scene_now" storage="b_scene.ks"]
	[button graphic="bnsjump" storage="b_scene.ks"]
	[image left="&tf.b_menuX[1]" top="&tf.b_menuY[1]" storage="bnsjump_scene" layer=2 page=fore visible=true clipleft="&sf.bnsjump_clipleft" cliptop="&sf.bnsjump_cliptop" clipwidth="&sf.bnsjump_clipwidth" clipheight="&sf.bnsjump_clipheight"]

	; �a�f�l�փ{�^����\��
	[locate x="&tf.b_menuX[2]" y="&tf.b_menuY[2]"]
	[button graphic="bnsjump_bgm" storage="b_bgmmode.ks" exp="tf.scene_mode = 0"]
	[return]
[endif]

[if exp="tf.bgm_mode == 1"]
	[freeimage layer=2 page=fore]
	; �b�f�փ{�^����\���@�N���b�N������V�[�����[�h�I�t��
	[locate x="&tf.b_menuX[0]" y="&tf.b_menuY[0]"]
	[button graphic="bnsjump_cg" storage="b_cgmode.ks" exp="tf.bgm_mode = 0"]

	; �V�[����z�փ{�^����\��
	[locate x="&tf.b_menuX[1]" y="&tf.b_menuY[1]"]
	[button graphic="bnsjump_scene" storage="b_scene.ks" exp="tf.bgm_mode = 0"]

	; �a�f�l�փ{�^����\��
	[locate x="&tf.b_menuX[2]" y="&tf.b_menuY[2]"]
	;[button graphic="bnsjump_bgm_now" storage="b_bgmmode.ks"]
	[button graphic="bnsjump" storage="b_bgmmode.ks"]
	[image left="&tf.b_menuX[2]" top="&tf.b_menuY[2]" storage="bnsjump_bgm" layer=2 page=fore visible=true clipleft="&sf.bnsjump_clipleft" cliptop="&sf.bnsjump_cliptop" clipwidth="&sf.bnsjump_clipwidth" clipheight="&sf.bnsjump_clipheight"]
	[return]
[endif]

[return]
