;b_cgmode.ks
;�O�̃��@�[�W�������g���ɂ�������S���C����
;�y�[�W���ɍ���������J�X�^�}�C�Y���₷������

;�f�o�b�O
;[eval exp="sf.BIT_std = 1"]
;[eval exp="sf.GUE_std = 1"]

[if exp="sf.gameclear_RIG == 1"][eval exp="sf.RIG_std = 1"][endif]
[if exp="sf.gameclear_EST == 1"][eval exp="sf.EST_std = 1"][endif]



;[�S����]
[cgthum_int]
;m:�������ʒu�v����
; ��������̞x�U�Ɍ��݂̏�Ԃ�ۑ�
[tempsave place=6]
[eval exp="tf.cg_mode = 1"]

;�ŏ��̃S�`���S�`�������ݒ肷��̂ɕK�v�Ȃ�
[call storage="&sf.addgameID + 'b_cgmode_init.ks'"]



[freeimage layer=base page=fore]
[freeimage layer=base page=back]

; �T���l�C����\��������W�̔z��
;�Q�^�C�g���ԂňႤ����������cond���ꂵ���Ⴞ�߂�
[eval exp="tf.CGMODE_thum_x = [sf.cg_thum_x01, sf.cg_thum_x02, sf.cg_thum_x03, sf.cg_thum_x04, sf.cg_thum_x05]"]
[eval exp="tf.CGMODE_thum_y = [sf.cg_thum_y01, sf.cg_thum_y02, sf.cg_thum_y03, sf.cg_thum_y04, sf.cg_thum_y05]"]


; �y�[�W�p�{�^����\��������W�̔z�� [0]�͎g�p���Ȃ��B�y�[�W����[n]�������ɂȂ�悤�ɂ���
[eval exp="tf.b_cg_pageX = [sf.b_page00_x, sf.b_page01_x, sf.b_page02_x, sf.b_page03_x, sf.b_page04_x, sf.b_page05_x, sf.b_page06_x, sf.b_page07_x, sf.b_page08_x, sf.b_page09_x, sf.b_page10_x]"]
[eval exp="tf.b_cg_pageY = [sf.b_page00_y, sf.b_page01_y, sf.b_page02_y, sf.b_page03_y, sf.b_page04_y, sf.b_page05_y, sf.b_page06_y, sf.b_page07_y, sf.b_page08_y, sf.b_page09_y, sf.b_page10_y]"]


;;mm tf�Ōv�Z�ŏo���̊낤���񂾂�ȁB�ݒ�ς݃t���O�ňꉞ�����Ȃ��ƃC�P�i�C��
;;-------------------------------------------------
;[if exp="tf.�{�^��_CG�ݒ�ς� != 1"]
;
;	;�T���l�C���̊�{�ʒu�ݒ�B�^�C�g�����ƂɕύX�B
;	[eval exp="sf.CGMODE_setX = 40"]
;	[eval exp="sf.CGMODE_defaddX = 250"]
;
;	;���W��z��ŗp��
;	[eval exp="tf.CGMODE_thum_x = []"]
;
;	;[0]�ɏ����l�����
;	[eval exp="tf.CGMODE_thum_x[0] = sf.CGMODE_setX"]
;
;	[eval exp="tf.CGMODE_loop = 0"]
;
;	*CGMODE_loop1
;	;���[�v�J�E���g
;	[eval exp="tf.CGMODE_loop += 1"]
;	;���Z�p�̐��l�Ƀ��[�v�J�E���g�̉񐔂�������
;	[eval exp="tf.CGMODE_addX = sf.CGMODE_defaddX * tf.CGMODE_loop"]
;	;���[�v�J�E���g�̔z��ɏ����l�{���Z���𑫂��Ċi�[�B
;	[eval exp="tf.CGMODE_thum_x[tf.CGMODE_loop] = sf.CGMODE_setX + tf.CGMODE_addX"]
;
;	[if exp="tf.CGMODE_loop == 5"]
;		[eval exp="tf.CGMODE_loop = 0"]
;		[jump target=*CGMODE_setY]
;	[endif]
;	[jump target=*CGMODE_loop1]
;
;
;	;-------------------------------------------------
;
;	*CGMODE_setY
;
;	;�{�^���̊�{�ʒu�ݒ�B�^�C�g�����ƂɕύX�B
;	[eval exp="sf.CGMODE_addY = 100"]
;	[eval exp="sf.CGMODE_defaddY = 140"]
;
;	;���W��z��ŗp��
;	[eval exp="tf.CGMODE_thum_y = []"]
;
;	;[0]�ɏ����l�����
;	[eval exp="tf.CGMODE_thum_y[0] = sf.CGMODE_addY"]
;
;	[eval exp="tf.CGMODE_loop = 0"]
;
;	*CGMODE_loop2
;	;���[�v�J�E���g
;	[eval exp="tf.CGMODE_loop += 1"]
;	;���Z�p�̐��l�Ƀ��[�v�J�E���g�̉񐔂�������
;	[eval exp="tf.CGMODE_addY = sf.CGMODE_defaddY * tf.CGMODE_loop"]
;	;���[�v�J�E���g�̔z��ɏ����l�{���Z���𑫂��Ċi�[�B
;	[eval exp="tf.CGMODE_thum_y[tf.CGMODE_loop] = sf.CGMODE_addY + tf.CGMODE_addY"]
;
;	[if exp="tf.CGMODE_loop == 5"]
;		[eval exp="tf.CGMODE_loop = 0"]
;		[jump target=*CGMODE_menu]
;	[endif]
;	[jump target=*CGMODE_loop2]
;
;	[eval exp="tf.�{�^��_CG�ݒ�ς� = 1"]
;[endif]
;;-------------------------------------------------

*CGMODE_menu

; �y�[�W�p�{�^����\��������W�̔z��
;[eval exp="tf.b_pageX = [1150, 1150, 1150, 1150, 1150]" cond="tf.b_pageX === void"]
;[eval exp="tf.b_pageY = [200, 240, 280, 320, 360]" cond="tf.b_pageY === void"]


; �A���o����ʂŎg�p���郁�b�Z�[�W���C��
[eval exp="tf.CGMODE_message = 'message1'"]

; �A���o����ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
[rclick jump=true target="*CGMODE_return" storage="b_cgmode.ks" enabled=true]

; ���b�Z�[�W���C���̑�����ݒ�
[position layer="&tf.CGMODE_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[current layer="&tf.CGMODE_message"]


;����ɗ������p
[if exp="sf.CG_page == void"]
	[eval exp="sf.CG_page = 1"]
[endif]

;�ő�y�[�W����` �����first_xy�Œ�`
;[eval exp="sf.CG_page_max = 4"]

;�O�̃^�� �y�[�W�ϐ����y�[�W����葽���Ȃ����������3�ɂ��Ă���
[if exp="sf.CG_page > sf.CG_page_max"]
	[eval exp="sf.CG_page = sf.CG_page_max"]
[endif]
; �T���l�C���x�[�X��\��

;�Y�K�������Ȃ�ʂ邩�ȁA�V�[����z�ŃI�[�g��ԂŃV�[���I����CG�\���~�߂Ă�[p]�^�O���I�[�g�ő�����̂ŉ���
[cancelautomode]

;------------------------------------------------
*CGMODE�ĕ`��
[cm]
[cgthum_int]
; �w�i�摜��ǂݍ��݁A�\��
[image storage="&sf.addgameID + 'bg_CGMODE01'" layer=base page=fore]



;�I�}�P���[�h�Ԃ̈ړ��{�^���Ăяo��
[call storage="b_sub.ks"]

; �u�߂�v�{�^����\��
[locate x="&tf.b_menuX[3]" y="&tf.b_menuY[3]"]
[button graphic="bnsjump_back" target=*CGMODE_return]

; �y�[�W�{�^���\��
[pagebt_CG]
;	[�f�o�b�O�p�J���{�^�� x=0 y=660]
;------------------------------------------------
; �T���l�C���x�[�X��\��



; �t���O�����Ă�CG����������T���l��`��B�{�^���ɂ��ĉ�����悤�ɂ���B
;CG_slot��0���T���l�C��void�łȂ���΁i�܂�T���l���ݒ肳��Ă���j�T���l�C���̃x�[�X��\���B

;�T���l���J���Ă�base�̉摜�͕\�������܂܂ɂ���B�O�����ʂ��Ă邩��
[if exp="sf.CG_slot01 == 0 && sf.CG_thm01 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[0]"]
[elsif exp="sf.CG_slot01"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[0]"]
	[pimage storage="&sf.CG_thm01+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 1"]
[endif]

[if exp="sf.CG_slot02 == 0 && sf.CG_thm02 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[0]"]
[elsif exp="sf.CG_slot02"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[0]"]
	[pimage storage="&sf.CG_thm02+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 2"]
[endif]

[if exp="sf.CG_slot03 == 0 && sf.CG_thm03 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[0]"]
[elsif exp="sf.CG_slot03"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[0]"]
	[pimage storage="&sf.CG_thm03+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 3"]
[endif]

[if exp="sf.CG_slot04 == 0 && sf.CG_thm04 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[0]"]
[elsif exp="sf.CG_slot04"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[0]"]
	[pimage storage="&sf.CG_thm04+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 4"]
[endif]

[if exp="sf.CG_slot05 == 0 && sf.CG_thm05 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[0]"]
[elsif exp="sf.CG_slot05"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[0]"]
	[pimage storage="&sf.CG_thm05+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[0] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 5"]
[endif]






[if exp="sf.CG_slot06 == 0 && sf.CG_thm06 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[1]"]
[elsif exp="sf.CG_slot06"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[1]"]
	[pimage storage="&sf.CG_thm06+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 6"]
[endif]

[if exp="sf.CG_slot07 == 0 && sf.CG_thm07 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[1]"]
[elsif exp="sf.CG_slot07"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[1]"]
	[pimage storage="&sf.CG_thm07+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 7"]
[endif]

[if exp="sf.CG_slot08 == 0 && sf.CG_thm08 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[1]"]
[elsif exp="sf.CG_slot08"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[1]"]
	[pimage storage="&sf.CG_thm08+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 8"]
[endif]

[if exp="sf.CG_slot09 == 0 && sf.CG_thm09 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[1]"]
[elsif exp="sf.CG_slot09"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[1]"]
	[pimage storage="&sf.CG_thm09+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 9"]
[endif]

[if exp="sf.CG_slot10 == 0 && sf.CG_thm10 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[1]"]
[elsif exp="sf.CG_slot10"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[1]"]
	[pimage storage="&sf.CG_thm10+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[1] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 10"]
[endif]





[if exp="sf.CG_slot11 == 0 && sf.CG_thm11 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[2]"]
[elsif exp="sf.CG_slot11"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[2]"]
	[pimage storage="&sf.CG_thm11+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 11"]
[endif]

[if exp="sf.CG_slot12 == 0 && sf.CG_thm12 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[2]"]
[elsif exp="sf.CG_slot12"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[2]"]
	[pimage storage="&sf.CG_thm12+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 12"]
[endif]

[if exp="sf.CG_slot13 == 0 && sf.CG_thm13 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[2]"]
[elsif exp="sf.CG_slot13"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[2]"]
	[pimage storage="&sf.CG_thm13+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 13"]
[endif]

[if exp="sf.CG_slot14 == 0 && sf.CG_thm14 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[2]"]
[elsif exp="sf.CG_slot14"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[2]"]
	[pimage storage="&sf.CG_thm14+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 14"]
[endif]

[if exp="sf.CG_slot15 == 0 && sf.CG_thm15 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[2]"]
[elsif exp="sf.CG_slot15"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[2]"]
	[pimage storage="&sf.CG_thm15+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[2] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 15"]
[endif]




[if exp="sf.CG_slot16 == 0 && sf.CG_thm16 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[3]"]
[elsif exp="sf.CG_slot16"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0]" dy="&tf.CGMODE_thum_y[3]"]
	[pimage storage="&sf.CG_thm16+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[0] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 16"]
[endif]

[if exp="sf.CG_slot17 == 0 && sf.CG_thm17 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[3]"]
[elsif exp="sf.CG_slot17"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1]" dy="&tf.CGMODE_thum_y[3]"]
	[pimage storage="&sf.CG_thm17+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[1] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 17"]
[endif]

[if exp="sf.CG_slot18 == 0 && sf.CG_thm18 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[3]"]
[elsif exp="sf.CG_slot18"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2]" dy="&tf.CGMODE_thum_y[3]"]
	[pimage storage="&sf.CG_thm18+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[2] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 18"]
[endif]

[if exp="sf.CG_slot19 == 0 && sf.CG_thm19 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[3]"]
[elsif exp="sf.CG_slot19"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3]" dy="&tf.CGMODE_thum_y[3]"]
	[pimage storage="&sf.CG_thm19+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[3] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 19"]
[endif]

[if exp="sf.CG_slot20 == 0 && sf.CG_thm20 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[3]"]
[elsif exp="sf.CG_slot20"]
	[pimage storage="&sf.addgameID + 'thumbase_CG'" layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4]" dy="&tf.CGMODE_thum_y[3]"]
	[pimage storage="&sf.CG_thm20+'_thum'"       layer=base page=fore visible=true dx="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x" dy="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[locate                                                                            x="&tf.CGMODE_thum_x[4] + sf.cg_thum_m_x"  y="&tf.CGMODE_thum_y[3] + sf.cg_thum_m_y"]
	[button graphic="thum_mouseoverCG" storage="b_cgmode_view.ks" exp="tf.CG_click = 20"]
[endif]

[s]




;------------------------------------------------


	;
	; �T���l�C���摜���I�����ꂽ
	;
	*album_select

	; �����N�̃��b�N������
	;[unlocklink]
	; �E�F�C�g����
	;[delay speed=user]

	; ��������̞x7�Ɍ��݂̏�Ԃ�ۑ�
	[tempsave place=10]

	;�N���b�N�҂��O���t�����炵�Č����Ȃ�����ׂɃJ�����g�̃��C�����Q�ɁB����Ȃ���������
	;[position layer=message3 page=fore left=-50 top=-50 width=50 height=50 frame="" color=0x000000 opacity=255 marginl=0 margint=0 draggable=false visible=true]
	;[current layer=message3]


	[backlay layer=message0]
	[layopt layer=message0 page=back visible=false]
	[trans method="crossfade" time=0]
	[wt]

	;�u���b�N�A�E�g
	[image storage="black" layer=10 page=fore visible=false]
	[image storage="black" layer=10 page=back visible=true]
	[trans time=150 method=crossfade]
	[wt]

	[call storage="&tf.album_storage[tf.album_select+20*sf.album_page]" target="&tf.album_target[tf.album_select+20*sf.album_page]"]

;------------------------------------------------

*back_from_cg
[eval exp="tf.cgmodestart = 0"]

; ��������̞x7��ǂݍ��݁A��ԕ��A
;[tempload place=10]

;�J�����g�̃��C�������ɖ߂�
;[current layer="&tf.album_message"]

; �x�̋@�\��L�����i�x���͂��ށ^���ǂ鋤�ɗL���ɂȂ邽�߁A�X�Ɂ���disablestore�^�O���g���j
[store enabled=true]

; �x�ɂ͂��߂Ȃ�����i�^�C�g�����j���[��ʂł̐ݒ�ɖ߂��j
[disablestore store=true restore=false]
;�����̃��Z�b�g
[eval exp="kag.historyLayer.clear()"] 
; �������C����}�~
[history output=false enabled=false]
; �m�[�E�F�C�g�ɖ߂�
[delay speed=nowait]

; �A���o����ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
[rclick jump=true target="*CGMODE_return" storage="b_cgmode.ks" enabled=true]


; �A���o����ʂŎg�p���郁�b�Z�[�W���C��
[eval exp="tf.CGMODE_message = 'message1'"]

; �A���o����ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
[rclick jump=true target="*CGMODE_return" storage="b_cgmode.ks" enabled=true]

; ���b�Z�[�W���C���̑�����ݒ�
[position layer="&tf.CGMODE_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[current layer="&tf.CGMODE_message"]


;m:��z����߂�������BGM�Ȃ�Ȃ��ˁB
;BGM�Đ�
;[fadeinbgm storage="bgm01.ogg" loop=true time=100]

;�׈��p�@���C���^�C�g���ƍĐ�����̕ʂ�����gostart�������Ƃł͂Ȃ������ł��
;BGM�������ĂȂ���΍Đ�����
[if exp="kag.bgm.currentBuffer.status == 'stop' || kag.bgm.currentBuffer.status == 'unload'"]
	;BGM�Đ�
	[bgmTitle]
[endif]

[jump target=*CGMODE�ĕ`��]

;------------------------------------------------




; �N���b�N��҂�
;[waitclick]
; �C�x���g�G�̑O�i���C�����\���ɂ���
;[layopt layer="&tf.album_layer" page=fore visible=false]
;[unlocklink]
;[s]


;
; �u�߂�v���I�����ꂽ
;
*CGMODE_return
;[�S����]
[cgthum_int]


[eval exp="tf.cg_mode = 0"]

; ��������̞x�U��ǂݍ��݁A��ԕ��A
;�Ȃ���CG�����e���v���[�h���Ă�BGM�Đ�����Ȃ�����Ă�
;[tempload place=6]
; �}�E�X�E�N���b�N���ꂽ�Ƃ��̓�������ɖ߂�
[rclick enabled=false]
;[call storage="append.ks" target=*append_menu]
;�o�c���Ɛ؂�邩��ꉞ�����Ǝ~�߂Ă݂�
;[fadeoutbgm time=100][wf canskip=false][stopbgm]
;���^�[�����Ɩʓ|�����璼�Ƀ^�C�g����
;[jump storage="title.ks" target=*title_menu]
[gotostart]
;[return]

;------------------------------------------------
;------------------------------------------------
;�f�o�b�O

*debug_on
[if    exp="sf.gameNo == 1"]
[elsif exp="sf.gameNo == 2"]
[elsif exp="sf.gameNo == 3"]

[elsif exp="sf.gameNo == 4"]
[endif]

[call storage="&sf.addgameID + 'b_cgmode_init.ks'"]
[jump target=*CGMODE�ĕ`��]

*debug_off
[if    exp="sf.gameNo == 1"]
[elsif exp="sf.gameNo == 2"]
[elsif exp="sf.gameNo == 3"]

[elsif exp="sf.gameNo == 4"]
[endif]

[call storage="&sf.addgameID + 'b_cgmode_init.ks'"]
[jump target=*CGMODE�ĕ`��]







