;
; sound_test.ks�c�T�E���h�e�X�g���
;
;
; �g�����F
;   [call storage="sound_test.ks" target=*sound_menu]
;
; �g�p���Ă���ϐ��F
;   tf.sound_message   �c �T�E���h�e�X�g��ʂŎg�p���郁�b�Z�[�W���C����
;   tf.sound_layer     �c �I��p�摜��\������O�i���C���ԍ�
;   tf.sound_select    �c ���݁A�I�𒆂̋Ȃ̔ԍ��i-1�Ȃ疢�I�����Ӗ�����j
;   tf.sound_x         �c �O���t�B�J���{�^���ƑI��p�摜��\������w���W�̔z��
;   tf.sound_y         �c ���A�x���W�̔z��
;   tf.sound_i         �c ���[�v�J�E���^
;
;   �ȉ��̔z��́Asound_init.ks�̃T�u���[�`��*sound_init�Őݒ�
;   tf.sound_caption   �c �Ȗ��̔z��
;   tf.sound_storage   �c ���ۂɍĐ����鉹�y�t�@�C�����̔z��
;

*sound_menu

;[�S����]
[cgthum_int]
; ��������̞x�S�Ɍ��݂̏�Ԃ�ۑ�
;[tempsave place=4]

[eval exp="tf.bgm_mode = 1"]


;�ŏ��̃S�`���S�`�������ݒ肷��̂ɕK�v�Ȃ�
[call storage="b_bgmmode_init.ks"]

; �T�E���h�e�X�g��ʂŎg�p���郁�b�Z�[�W���C��
[eval exp="tf.sound_message = 'message1'"]
; �I��p�摜��\������O�i���C���i�\��ʁj
[eval exp="tf.sound_layer = 0"]


;	; �O���t�B�J���{�^���ƑI��p�摜��\��������W�̔z�� [0]�͎g�p���Ȃ��BBGM��[n]�������ɂȂ�悤�ɂ���
;	[eval exp="tf.sound_x = [sf.bgm00_x,sf.bgm01_x,sf.bgm02_x,sf.bgm03_x,sf.bgm04_x,sf.bgm05_x,sf.bgm06_x,sf.bgm07_x,sf.bgm08_x,sf.bgm09_x,sf.bgm10_x,sf.bgm11_x,sf.bgm12_x,sf.bgm13_x,sf.bgm14_x,sf.bgm15_x,sf.bgm16_x,sf.bgm17_x,sf.bgm18_x,sf.bgm19_x,sf.bgm20_x,sf.bgm21_x,sf.bgm22_x]" cond="tf.sound_x === void"]
;	[eval exp="tf.sound_y = [sf.bgm00_y,sf.bgm01_y,sf.bgm02_y,sf.bgm03_y,sf.bgm04_y,sf.bgm05_y,sf.bgm06_y,sf.bgm07_y,sf.bgm08_y,sf.bgm09_y,sf.bgm10_y,sf.bgm11_y,sf.bgm12_y,sf.bgm13_y,sf.bgm14_y,sf.bgm15_y,sf.bgm16_y,sf.bgm17_y,sf.bgm18_y,sf.bgm19_y,sf.bgm20_y,sf.bgm21_y,sf.bgm22_y]" cond="tf.sound_y === void"]

; �y�[�W�p�{�^����\��������W�̔z��
[eval exp="tf.b_bgm_pageX = [sf.b_page00_x, sf.b_page01_x, sf.b_page02_x, sf.b_page03_x, sf.b_page04_x, sf.b_page05_x, sf.b_page06_x, sf.b_page07_x, sf.b_page08_x, sf.b_page09_x, sf.b_page10_x]"]
[eval exp="tf.b_bgm_pageY = [sf.b_page00_y, sf.b_page01_y, sf.b_page02_y, sf.b_page03_y, sf.b_page04_y, sf.b_page05_y, sf.b_page06_y, sf.b_page07_y, sf.b_page08_y, sf.b_page09_y, sf.b_page10_y]"]

; �T�E���h�e�X�g��ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
[rclick jump=true target="*sound_return" storage="b_bgmmode.ks" enabled=true]

; ���b�Z�[�W���C���̑�����ݒ�
[position layer="&tf.sound_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[current layer="&tf.sound_message"]


; ���b�Z�[�W���C���̃N���A
[er]

;tf.bgm_num��void�Ȃ�1������
;�y�[�W�ʂ�����	[eval exp="tf.bgm_num = 1" cond="tf.bgm_num === void"]

;�Đ�����storage�����擾
;[eval exp="tf.playbgmname = kag.bgm.playingStorage"]
;�擾�����t�@�C���l�[����7�����������āB
;[iscript]
;	var str = tf.playbgmname;
;	var playbgmname_ch1 = str.charAt(0);//b
;	var playbgmname_ch2 = str.charAt(1);//g
;	var playbgmname_ch3 = str.charAt(2);//m
;	var playbgmname_ch4 = str.charAt(3);//����0��1
;	var playbgmname_ch5 = str.charAt(4);//����1~9
;[endscript]

;�������ăt���O������
;[eval exp="f.playbgmname = playbgmname_ch4 + playbgmname_ch5"]

;����ł����񂶂�H
[eval exp="f.playbgmname = kag.bgm.playingStorage "]

;����ɗ������p
[if exp="sf.BGM_page == void"]
	[eval exp="sf.BGM_page = 1"]
[endif]



;�{�^��1�����肵�������Ȃ̑����ɑΉ����₷�������ȁB



;------------------------------------------------



;------------------------------------------------
*sound_loop
*BGM�ĕ`��


[cm]
[freeimage layer=1 page=fore]
[freeimage layer=2 page=fore]
[freeimage layer=3 page=fore]
[image storage="&sf.addgameID + 'bg_soundmode'" layer=base page=fore]

; �y�[�W�{�^���\��
[pagebt_BGM]
[eval exp="tf.bgm_num =  0"]

[if    exp="kag.bgm.playingStorage == sf.BGM001[2]"][eval exp="tf.bgm_num =  1"]
[elsif exp="kag.bgm.playingStorage == sf.BGM002[2]"][eval exp="tf.bgm_num =  2"]
[elsif exp="kag.bgm.playingStorage == sf.BGM003[2]"][eval exp="tf.bgm_num =  3"]
[elsif exp="kag.bgm.playingStorage == sf.BGM004[2]"][eval exp="tf.bgm_num =  4"]
[elsif exp="kag.bgm.playingStorage == sf.BGM005[2]"][eval exp="tf.bgm_num =  5"]
[elsif exp="kag.bgm.playingStorage == sf.BGM006[2]"][eval exp="tf.bgm_num =  6"]
[elsif exp="kag.bgm.playingStorage == sf.BGM007[2]"][eval exp="tf.bgm_num =  7"]
[elsif exp="kag.bgm.playingStorage == sf.BGM008[2]"][eval exp="tf.bgm_num =  8"]
[elsif exp="kag.bgm.playingStorage == sf.BGM009[2]"][eval exp="tf.bgm_num =  9"]
[elsif exp="kag.bgm.playingStorage == sf.BGM010[2]"][eval exp="tf.bgm_num = 10"]
[elsif exp="kag.bgm.playingStorage == sf.BGM011[2]"][eval exp="tf.bgm_num = 11"]
[elsif exp="kag.bgm.playingStorage == sf.BGM012[2]"][eval exp="tf.bgm_num = 12"]
[elsif exp="kag.bgm.playingStorage == sf.BGM013[2]"][eval exp="tf.bgm_num = 13"]
[elsif exp="kag.bgm.playingStorage == sf.BGM014[2]"][eval exp="tf.bgm_num = 14"]
[elsif exp="kag.bgm.playingStorage == sf.BGM015[2]"][eval exp="tf.bgm_num = 15"]
[elsif exp="kag.bgm.playingStorage == sf.BGM016[2]"][eval exp="tf.bgm_num = 16"]
[elsif exp="kag.bgm.playingStorage == sf.BGM017[2]"][eval exp="tf.bgm_num = 17"]
[elsif exp="kag.bgm.playingStorage == sf.BGM018[2]"][eval exp="tf.bgm_num = 18"]
[elsif exp="kag.bgm.playingStorage == sf.BGM019[2]"][eval exp="tf.bgm_num = 19"]
[elsif exp="kag.bgm.playingStorage == sf.BGM020[2]"][eval exp="tf.bgm_num = 20"]
[endif]

;�{�^���\���@�����ƕK�v�Ȃ�K�X�}�N���ǉ��B
[bgm01_bt cond="sf.BGM_slot01 == 1"]
[bgm02_bt cond="sf.BGM_slot02 == 1"]
[bgm03_bt cond="sf.BGM_slot03 == 1"]
[bgm04_bt cond="sf.BGM_slot04 == 1"]
[bgm05_bt cond="sf.BGM_slot05 == 1"]
[bgm06_bt cond="sf.BGM_slot06 == 1"]
[bgm07_bt cond="sf.BGM_slot07 == 1"]
[bgm08_bt cond="sf.BGM_slot08 == 1"]
[bgm09_bt cond="sf.BGM_slot09 == 1"]
[bgm10_bt cond="sf.BGM_slot10 == 1"]
[bgm11_bt cond="sf.BGM_slot11 == 1"]
[bgm12_bt cond="sf.BGM_slot12 == 1"]
[bgm13_bt cond="sf.BGM_slot13 == 1"]
[bgm14_bt cond="sf.BGM_slot14 == 1"]
[bgm15_bt cond="sf.BGM_slot15 == 1"]
[bgm16_bt cond="sf.BGM_slot16 == 1"]
[bgm17_bt cond="sf.BGM_slot17 == 1"]
[bgm18_bt cond="sf.BGM_slot18 == 1"]
[bgm19_bt cond="sf.BGM_slot19 == 1"]
[bgm20_bt cond="sf.BGM_slot20 == 1"]


;------------------------------------------------

*sound_loop2

;�I�}�P���[�h�Ԃ̈ړ��{�^���Ăяo��
[call storage="b_sub.ks"]

; �u�߂�v�{�^����\��
[locate x="&tf.b_menuX[3]" y="&tf.b_menuY[3]"]
[button graphic="bnsjump_back" target=*sound_return]
[s]
;------------------------------------------------


;�Đ����̃{�^���O�����N���b�N�摜�̂܂܂ɂȂ�悤�Ɍ�łȂ�Ƃ�����
;���ʂ��ƂŌʂɒ����@��������bgm�}�N���g��
*bgm01
[bgm storage="&sf.BGM01_ogg"]
[jump target=*sound_loop]

*bgm02
[bgm storage="&sf.BGM02_ogg"]
[jump target=*sound_loop]

*bgm03
[bgm storage="&sf.BGM03_ogg"]
[jump target=*sound_loop]

*bgm04
[bgm storage="&sf.BGM04_ogg"]
[jump target=*sound_loop]

*bgm05
[bgm storage="&sf.BGM05_ogg"]
[jump target=*sound_loop]

*bgm06
[bgm storage="&sf.BGM06_ogg"]
[jump target=*sound_loop]

*bgm07
[bgm storage="&sf.BGM07_ogg"]
[jump target=*sound_loop]

*bgm08
[bgm storage="&sf.BGM08_ogg"]
[jump target=*sound_loop]

*bgm09
[bgm storage="&sf.BGM09_ogg"]
[jump target=*sound_loop]

*bgm10
[bgm storage="&sf.BGM10_ogg"]
[jump target=*sound_loop]

*bgm11
[bgm storage="&sf.BGM11_ogg"]
[jump target=*sound_loop]


*bgm12
[bgm storage="&sf.BGM12_ogg"]
[jump target=*sound_loop]

*bgm13
[bgm storage="&sf.BGM13_ogg"]
[jump target=*sound_loop]

*bgm14
[bgm storage="&sf.BGM14_ogg"]
[jump target=*sound_loop]

*bgm15
[bgm storage="&sf.BGM15_ogg"]
[jump target=*sound_loop]

*bgm16
[bgm storage="&sf.BGM16_ogg"]
[jump target=*sound_loop]

*bgm17
[bgm storage="&sf.BGM17_ogg"]
[jump target=*sound_loop]

*bgm18
[bgm storage="&sf.BGM18_ogg"]
[jump target=*sound_loop]

*bgm19
[bgm storage="&sf.BGM19_ogg" v=70]
[jump target=*sound_loop]

*bgm20
[bgm storage="&sf.BGM20_ogg" v=70]
[jump target=*sound_loop]




; �u�߂�v���I�����ꂽ
;
*sound_return

[eval exp="tf.bgm_mode = 0"]


; ��������̞x�S��ǂݍ��݁A��ԕ��A
;[tempload place=4]
; �}�E�X�E�N���b�N���ꂽ�Ƃ��̓�������ɖ߂�
[rclick enabled=false]

;���^�[�����Ɩʓ|�����璼�Ƀ^�C�g����
;[jump storage="title.ks" target=*title_menu]
[gotostart]

[return]
