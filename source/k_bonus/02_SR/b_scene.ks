;b_scene.ks
;�O�̃��@�[�W�������g���ɂ�������S���C����
;�y�[�W���ɍ���������J�X�^�}�C�Y���₷������

*scene_menu

[call storage="&sf.addgameID + 'b_scene_init.ks'"]

;[�S����]
[cgthum_int]
; ��������̞x�U�Ɍ��݂̏�Ԃ�ۑ� ���ꂷ��ƃV�[����z����^�C�g���o�b�N�����Ƃ��Ƀ^�C�g���w�i�o���Ⴄ
;[tempsave place=6]

; �V�[����z���ł��邱�Ƃ������ϐ��i�Ăяo�����KAG�V�i���I�ŃV�[����z�����ۂ��𔻒肷��j
[eval exp="tf.scene_mode = 1"]

[freeimage layer=base page=fore]
[freeimage layer=base page=back]


; �T���l�C���x�[�X��\��
; �T���l�C����\��������W�̔z�� //sf.sr_thum_x03��ǉ�
;�Q�^�C�g���ԂňႤ����������cond���ꂵ���Ⴞ�߂�
[eval exp="tf.scene_thum_x = [sf.sr_thum_x01, sf.sr_thum_x02, sf.sr_thum_x03, sf.sr_thum_x04, sf.sr_thum_x05]"]
[eval exp="tf.scene_thum_y = [sf.sr_thum_y01, sf.sr_thum_y02, sf.sr_thum_y03, sf.sr_thum_y04, sf.sr_thum_y05]"]

; �y�[�W�p�{�^����\��������W�̔z�� [0]�͎g�p���Ȃ��B�y�[�W����[n]�������ɂȂ�悤�ɂ���
[eval exp="tf.b_sr_pageX = [sf.b_page00_x, sf.b_page01_x, sf.b_page02_x, sf.b_page03_x, sf.b_page04_x, sf.b_page05_x, sf.b_page06_x, sf.b_page07_x, sf.b_page08_x, sf.b_page09_x, sf.b_page10_x]"]
[eval exp="tf.b_sr_pageY = [sf.b_page00_y, sf.b_page01_y, sf.b_page02_y, sf.b_page03_y, sf.b_page04_y, sf.b_page05_y, sf.b_page06_y, sf.b_page07_y, sf.b_page08_y, sf.b_page09_y, sf.b_page10_y]"]



; �A���o����ʂŎg�p���郁�b�Z�[�W���C��
[eval exp="tf.scene_message = 'message1'"]

; �A���o����ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
[rclick jump=true target="*scene_return" storage="b_scene.ks" enabled=true]

; ���b�Z�[�W���C���̑�����ݒ�
[position layer="&tf.scene_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[current layer="&tf.scene_message"]

;�L���v�V�����p���C���̒�` 1��2�̓y�[�W�{�^���ƈړ��{�^���Ŏg�p�ς�
[eval exp="tf.layer_cap01 = 3"]
[eval exp="tf.layer_cap02 = 4"]
[eval exp="tf.layer_cap03 = 5"]
[eval exp="tf.layer_cap04 = 6"]
[eval exp="tf.layer_cap05 = 7"]
[eval exp="tf.layer_cap06 = 8"]
;����ȏ㑝�₷�ꍇ�̓��C�����̒������K�v
;[eval exp="tf.layer_cap07 = "]
;[eval exp="tf.layer_cap08 = "]
;[eval exp="tf.layer_cap09 = "]
;[eval exp="tf.layer_cap10 = "]
;[eval exp="tf.layer_cap11 = "]
;[eval exp="tf.layer_cap12 = "]
;[eval exp="tf.layer_cap13 = "]
;[eval exp="tf.layer_cap14 = "]
;[eval exp="tf.layer_cap15 = "]
;[eval exp="tf.layer_cap16 = "]
;[eval exp="tf.layer_cap17 = "]
;[eval exp="tf.layer_cap18 = "]
;[eval exp="tf.layer_cap19 = "]
;[eval exp="tf.layer_cap20 = "]


;����ɗ������p
[if exp="sf.SR_page == void"]
	[eval exp="sf.SR_page = 1"]
[endif]

;�ő�y�[�W����` �����first_xy�Œ�`
;[eval exp="sf.SR_page_max = 4"]

;�O�̃^�� �y�[�W�ϐ����y�[�W����葽���Ȃ����������3�ɂ��Ă���
[if exp="sf.SR_page > sf.SR_page_max"]
	[eval exp="sf.SR_page = sf.SR_page_max"]
[endif]


; �y�[�W���e�`��ցB��ѐ�ł܂��W�����v���邩��call����Ȃ���jump�ɂ��Ă����B
;[jump storage="b_scene_sub.ks"]

;�׈��p�@���C���^�C�g���ƍĐ�����̕ʂ�����gostart�������Ƃł͂Ȃ������ł��
;BGM�������ĂȂ���΍Đ�����
[if exp="kag.bgm.currentBuffer.status == 'stop' || kag.bgm.currentBuffer.status == 'unload'"]
	;BGM�Đ�
	[bgmTitle]
[endif]
;-------------------------------------------
;--------------scene_sub.ks-----------------
;-------------------------------------------
;------------------------------------------------
*SR�ĕ`��
[cm]
[cgthum_int]
; �w�i�摜��ǂݍ��݁A�\��
[image storage="&sf.addgameID + 'bg_scene01'" layer=base page=fore]


;�I�}�P���[�h�Ԃ̈ړ��{�^���Ăяo��
[call storage="b_sub.ks"]


; �u�߂�v�{�^����\��
[locate x="&tf.b_menuX[3]" y="&tf.b_menuY[3]"]
[button graphic="bnsjump_back" target=*scene_return]


; �y�[�W�{�^���\��
[pagebt_SR]

;	[�f�o�b�O�p�J���{�^�� x=0 y=660]

;------------------------------------------------
; �T���l�C���x�[�X��\��


[if    exp="sf.SR_slot01 == 0 && sf.SR_thm01 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[0]"]
[elsif exp="sf.SR_slot01"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[0]"]
	[pimage storage="&sf.SR_thm01+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[0] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[0] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 1"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 1"  onenter="kag.fore.layers[tf.layer_cap01].opacity = 255" onleave="kag.fore.layers[tf.layer_cap01].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap01" layer="&tf.layer_cap01" page=fore visible=true left="&tf.scene_thum_x[0]" top="&tf.scene_thum_y[0]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot02 == 0 && sf.SR_thm02 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[0]"]
[elsif exp="sf.SR_slot02"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[0]"]
	[pimage storage="&sf.SR_thm02+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[1] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[1] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 2"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 2"  onenter="kag.fore.layers[tf.layer_cap02].opacity = 255" onleave="kag.fore.layers[tf.layer_cap02].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap02" layer="&tf.layer_cap02" page=fore visible=true left="&tf.scene_thum_x[1]" top="&tf.scene_thum_y[0]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot03 == 0 && sf.SR_thm03 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[0]"]
[elsif exp="sf.SR_slot03"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[0]"]
	[pimage storage="&sf.SR_thm03+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[2] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[2] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 3"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 3"  onenter="kag.fore.layers[tf.layer_cap03].opacity = 255" onleave="kag.fore.layers[tf.layer_cap03].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap03" layer="&tf.layer_cap03" page=fore visible=true left="&tf.scene_thum_x[2]" top="&tf.scene_thum_y[0]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot04 == 0 && sf.SR_thm04 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[0]"]
[elsif exp="sf.SR_slot04"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[0]"]
	[pimage storage="&sf.SR_thm04+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[3] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[3] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 4"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 4"  onenter="kag.fore.layers[tf.layer_cap04].opacity = 255" onleave="kag.fore.layers[tf.layer_cap04].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap04" layer="&tf.layer_cap04" page=fore visible=true left="&tf.scene_thum_x[3]" top="&tf.scene_thum_y[0]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot05 == 0 && sf.SR_thm05 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[0]"]
[elsif exp="sf.SR_slot05"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[0]"]
	[pimage storage="&sf.SR_thm05+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[4] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[4] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[0] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 5"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 5"  onenter="kag.fore.layers[tf.layer_cap05].opacity = 255" onleave="kag.fore.layers[tf.layer_cap05].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap05" layer="&tf.layer_cap05" page=fore visible=true left="&tf.scene_thum_x[4]" top="&tf.scene_thum_y[0]" opacity="&tf.capopa_off"]
	[endif]
[endif]

;-----------------------------------------------------
[if    exp="sf.SR_slot06 == 0 && sf.SR_thm06 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[1]"]
[elsif exp="sf.SR_slot06"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[1]"]
	[pimage storage="&sf.SR_thm06+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[0] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[0] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 6"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 6"  onenter="kag.fore.layers[tf.layer_cap06].opacity = 255" onleave="kag.fore.layers[tf.layer_cap06].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap06" layer="&tf.layer_cap06" page=fore visible=true left="&tf.scene_thum_x[0]" top="&tf.scene_thum_y[1]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot07 == 0 && sf.SR_thm07 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[1]"]
[elsif exp="sf.SR_slot07"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[1]"]
	[pimage storage="&sf.SR_thm07+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[1] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[1] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 7"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 7"  onenter="kag.fore.layers[tf.layer_cap07].opacity = 255" onleave="kag.fore.layers[tf.layer_cap07].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap07" layer="&tf.layer_cap07" page=fore visible=true left="&tf.scene_thum_x[1]" top="&tf.scene_thum_y[1]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot08 == 0 && sf.SR_thm08 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[1]"]
[elsif exp="sf.SR_slot08"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[1]"]
	[pimage storage="&sf.SR_thm08+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[2] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[2] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 8"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 8"  onenter="kag.fore.layers[tf.layer_cap08].opacity = 255" onleave="kag.fore.layers[tf.layer_cap08].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap08" layer="&tf.layer_cap08" page=fore visible=true left="&tf.scene_thum_x[2]" top="&tf.scene_thum_y[1]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot09 == 0 && sf.SR_thm09 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[1]"]
[elsif exp="sf.SR_slot09"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[1]"]
	[pimage storage="&sf.SR_thm09+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[3] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[3] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 9"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 9"  onenter="kag.fore.layers[tf.layer_cap09].opacity = 255" onleave="kag.fore.layers[tf.layer_cap09].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap09" layer="&tf.layer_cap09" page=fore visible=true left="&tf.scene_thum_x[3]" top="&tf.scene_thum_y[1]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot10 == 0 && sf.SR_thm10 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[1]"]
[elsif exp="sf.SR_slot10"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[1]"]
	[pimage storage="&sf.SR_thm10+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[4] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[4] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[1] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 10"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 10" onenter="kag.fore.layers[tf.layer_cap10].opacity = 255" onleave="kag.fore.layers[tf.layer_cap10].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap10" layer="&tf.layer_cap10" page=fore visible=true left="&tf.scene_thum_x[4]" top="&tf.scene_thum_y[1]" opacity="&tf.capopa_off"]
	[endif]
[endif]

;-----------------------------------------------------
[if    exp="sf.SR_slot11 == 0 && sf.SR_thm11 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[2]"]
[elsif exp="sf.SR_slot11"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[2]"]
	[pimage storage="&sf.SR_thm11+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[0] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[0] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 11"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 11" onenter="kag.fore.layers[tf.layer_cap11].opacity = 255" onleave="kag.fore.layers[tf.layer_cap11].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap11" layer="&tf.layer_cap11" page=fore visible=true left="&tf.scene_thum_x[0]" top="&tf.scene_thum_y[2]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot12 == 0 && sf.SR_thm12 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[2]"]
[elsif exp="sf.SR_slot12"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[2]"]
	[pimage storage="&sf.SR_thm12+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[1] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[1] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 12"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 12" onenter="kag.fore.layers[tf.layer_cap12].opacity = 255" onleave="kag.fore.layers[tf.layer_cap12].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap12" layer="&tf.layer_cap12" page=fore visible=true left="&tf.scene_thum_x[1]" top="&tf.scene_thum_y[2]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot13 == 0 && sf.SR_thm13 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[2]"]
[elsif exp="sf.SR_slot13"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[2]"]
	[pimage storage="&sf.SR_thm13+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[2] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[2] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 13"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 13" onenter="kag.fore.layers[tf.layer_cap13].opacity = 255" onleave="kag.fore.layers[tf.layer_cap13].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap13" layer="&tf.layer_cap13" page=fore visible=true left="&tf.scene_thum_x[2]" top="&tf.scene_thum_y[2]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot14 == 0 && sf.SR_thm14 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[2]"]
[elsif exp="sf.SR_slot14"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[2]"]
	[pimage storage="&sf.SR_thm14+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[3] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[3] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 14"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 14" onenter="kag.fore.layers[tf.layer_cap14].opacity = 255" onleave="kag.fore.layers[tf.layer_cap14].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap14" layer="&tf.layer_cap14" page=fore visible=true left="&tf.scene_thum_x[3]" top="&tf.scene_thum_y[2]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot15 == 0 && sf.SR_thm15 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[2]"]
[elsif exp="sf.SR_slot15"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[2]"]
	[pimage storage="&sf.SR_thm15+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[4] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[4] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[2] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 15"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 15" onenter="kag.fore.layers[tf.layer_cap15].opacity = 255" onleave="kag.fore.layers[tf.layer_cap15].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap15" layer="&tf.layer_cap15" page=fore visible=true left="&tf.scene_thum_x[4]" top="&tf.scene_thum_y[2]" opacity="&tf.capopa_off"]
	[endif]
[endif]


;-----------------------------------------------------
[if    exp="sf.SR_slot16 == 0 && sf.SR_thm16 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[3]"]
[elsif exp="sf.SR_slot16"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[0]" dy="&tf.scene_thum_y[3]"]
	[pimage storage="&sf.SR_thm16+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[0] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[0] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 16"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 16" onenter="kag.fore.layers[tf.layer_cap16].opacity = 255" onleave="kag.fore.layers[tf.layer_cap16].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap16" layer="&tf.layer_cap16" page=fore visible=true left="&tf.scene_thum_x[0]" top="&tf.scene_thum_y[3]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot17 == 0 && sf.SR_thm17 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[3]"]
[elsif exp="sf.SR_slot17"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[1]" dy="&tf.scene_thum_y[3]"]
	[pimage storage="&sf.SR_thm17+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[1] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[1] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 17"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 17" onenter="kag.fore.layers[tf.layer_cap17].opacity = 255" onleave="kag.fore.layers[tf.layer_cap17].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap17" layer="&tf.layer_cap17" page=fore visible=true left="&tf.scene_thum_x[1]" top="&tf.scene_thum_y[3]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot18 == 0 && sf.SR_thm18 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[3]"]
[elsif exp="sf.SR_slot18"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[2]" dy="&tf.scene_thum_y[3]"]
	[pimage storage="&sf.SR_thm18+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[2] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[2] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 18"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 18" onenter="kag.fore.layers[tf.layer_cap18].opacity = 255" onleave="kag.fore.layers[tf.layer_cap18].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap18" layer="&tf.layer_cap18" page=fore visible=true left="&tf.scene_thum_x[2]" top="&tf.scene_thum_y[3]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot19 == 0 && sf.SR_thm19 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[3]"]
[elsif exp="sf.SR_slot19"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[3]" dy="&tf.scene_thum_y[3]"]
	[pimage storage="&sf.SR_thm19+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[3] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[3] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 19"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 19" onenter="kag.fore.layers[tf.layer_cap19].opacity = 255" onleave="kag.fore.layers[tf.layer_cap19].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap19" layer="&tf.layer_cap19" page=fore visible=true left="&tf.scene_thum_x[3]" top="&tf.scene_thum_y[3]" opacity="&tf.capopa_off"]
	[endif]
[endif]

[if    exp="sf.SR_slot20 == 0 && sf.SR_thm20 != void"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[3]"]
[elsif exp="sf.SR_slot20"]
	[pimage storage="&sf.addgameID + 'thumbase_SR'" layer=base page=fore visible=true dx="&tf.scene_thum_x[4]" dy="&tf.scene_thum_y[3]"]
	[pimage storage="&sf.SR_thm20+'_thum'"           layer=base page=fore visible=true dx="&tf.scene_thum_x[4] + sf.sr_thum_m_x" dy="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[locate                                                                            x="&tf.scene_thum_x[4] + sf.sr_thum_m_x"  y="&tf.scene_thum_y[3] + sf.sr_thum_m_y"]
	[if    exp="sf.cap == 0"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 20"]
	[elsif exp="sf.cap == 1"]
		[button graphic="thum_mouseoverSR" target=*scene_select exp="tf.SR_click = 20" onenter="kag.fore.layers[tf.layer_cap20].opacity = 255" onleave="kag.fore.layers[tf.layer_cap20].opacity = tf.capopa_off"]
		[image storage="&sf.SR_cap20" layer="&tf.layer_cap20" page=fore visible=true left="&tf.scene_thum_x[4]" top="&tf.scene_thum_y[3]" opacity="&tf.capopa_off"]
	[endif]
[endif]


[s]


;------------------------------------------------

; �V�[�����I�����ꂽ
*scene_select

;unlocklink�̑O�Ƀ{�^���Ƃ������Ȃ���trance���Ƀ{�^�������Ċ�Ȃ�
;�u���b�N�A�E�g�O�ɃT���l�C���ƃT���l�C���x�[�X�������@2014/01/27
;�Ȃ�₱��̓��C���ԈႦ�Ă邵���������Ȃ��Ă����̂ł́H
;[current layer=message0][layopt layer=message0 left=0 top=0 visible=true]
;[layopt layer="&tf.scene_message" visible=false]

;�u���b�N�A�E�g
[image storage="effect_black" layer=0 page=fore visible=false left=0 top=0]
[image storage="effect_black" layer=0 page=back visible=true left=0 top=0]
[trans time=500 method=crossfade]
[wt canskip=false]

[cm]
[cgthum_int]

;[tempsave place=6]

; �����N�̃��b�N������
[unlocklink]
; �E�F�C�g����
[delay speed=user]
; �x�̋@�\�𖳌����i�Ăяo�����KAG�V�i���I�ɃZ�[�u�\�ȃ��x�������邽�߁j
[store enabled=false]

;�E�N���b�N�̐ݒ������
[call storage="rclick_sub.ks"]

; �������C����L����
[history output=true enabled=true]
; �u�����I�ɓǂݐi�ށv�̂�����
[cancelautomode]
; �X�L�b�v������
[cancelskip]
;BGM������~
[stopbgm]


;[backlay layer=message0]
;[layopt layer=message0 page=back visible=false]
;[trans method="crossfade" time=0]
;[wt]


;[layopt layer=0 page=back index=1000]

[wait_c time=500]
;��������cm�͕s�v�Ȃ̂ŃI�t��@2014/01/27
;�V�[����z��ʂ̃{�^������
;[cm]
[eval exp="tf.scenestart = 1"]

;��z��ԑO�ɔ����ݒ��sf�����킹��
[eval exp="f.SIROKURO = sf.SIROKURO"]

;�t�F�C�X�I�� ���K�v�����Ǖ��\���ĂȂ��ƃt���[�������ɂȂ邩�獡��͂�߂Ƃ�
;[eval exp="f.face_win_on = 1"]

;------------------------------------------------
;�e�V�[���ɃW�����v

;�y�[�W����͂���Ȃ��͂�
;[if    exp="sf.SR_page == 1"]
	[if    exp="tf.SR_click ==  1"][eval exp="tf.scenesel_bg = sf.SR_thm01"][jump storage="&sf.SR_filename01 + '.ks'" target="&sf.SR_target01"]
	[elsif exp="tf.SR_click ==  2"][eval exp="tf.scenesel_bg = sf.SR_thm02"][jump storage="&sf.SR_filename02 + '.ks'" target="&sf.SR_target02"]
	[elsif exp="tf.SR_click ==  3"][eval exp="tf.scenesel_bg = sf.SR_thm03"][jump storage="&sf.SR_filename03 + '.ks'" target="&sf.SR_target03"]
	[elsif exp="tf.SR_click ==  4"][eval exp="tf.scenesel_bg = sf.SR_thm04"][jump storage="&sf.SR_filename04 + '.ks'" target="&sf.SR_target04"]
	[elsif exp="tf.SR_click ==  5"][eval exp="tf.scenesel_bg = sf.SR_thm05"][jump storage="&sf.SR_filename05 + '.ks'" target="&sf.SR_target05"]
	[elsif exp="tf.SR_click ==  6"][eval exp="tf.scenesel_bg = sf.SR_thm06"][jump storage="&sf.SR_filename06 + '.ks'" target="&sf.SR_target06"]
	[elsif exp="tf.SR_click ==  7"][eval exp="tf.scenesel_bg = sf.SR_thm07"][jump storage="&sf.SR_filename07 + '.ks'" target="&sf.SR_target07"]
	[elsif exp="tf.SR_click ==  8"][eval exp="tf.scenesel_bg = sf.SR_thm08"][jump storage="&sf.SR_filename08 + '.ks'" target="&sf.SR_target08"]
	[elsif exp="tf.SR_click ==  9"][eval exp="tf.scenesel_bg = sf.SR_thm09"][jump storage="&sf.SR_filename09 + '.ks'" target="&sf.SR_target09"]
	[elsif exp="tf.SR_click == 10"][eval exp="tf.scenesel_bg = sf.SR_thm10"][jump storage="&sf.SR_filename10 + '.ks'" target="&sf.SR_target10"]
	[elsif exp="tf.SR_click == 11"][eval exp="tf.scenesel_bg = sf.SR_thm11"][jump storage="&sf.SR_filename11 + '.ks'" target="&sf.SR_target11"]
	[elsif exp="tf.SR_click == 12"][eval exp="tf.scenesel_bg = sf.SR_thm12"][jump storage="&sf.SR_filename12 + '.ks'" target="&sf.SR_target12"]
	[elsif exp="tf.SR_click == 13"][eval exp="tf.scenesel_bg = sf.SR_thm13"][jump storage="&sf.SR_filename13 + '.ks'" target="&sf.SR_target13"]
	[elsif exp="tf.SR_click == 14"][eval exp="tf.scenesel_bg = sf.SR_thm14"][jump storage="&sf.SR_filename14 + '.ks'" target="&sf.SR_target14"]
	[elsif exp="tf.SR_click == 15"][eval exp="tf.scenesel_bg = sf.SR_thm15"][jump storage="&sf.SR_filename15 + '.ks'" target="&sf.SR_target15"]
	[elsif exp="tf.SR_click == 16"][eval exp="tf.scenesel_bg = sf.SR_thm16"][jump storage="&sf.SR_filename16 + '.ks'" target="&sf.SR_target16"]
	[elsif exp="tf.SR_click == 17"][eval exp="tf.scenesel_bg = sf.SR_thm17"][jump storage="&sf.SR_filename17 + '.ks'" target="&sf.SR_target17"]
	[elsif exp="tf.SR_click == 18"][eval exp="tf.scenesel_bg = sf.SR_thm18"][jump storage="&sf.SR_filename18 + '.ks'" target="&sf.SR_target18"]
	[elsif exp="tf.SR_click == 19"][eval exp="tf.scenesel_bg = sf.SR_thm19"][jump storage="&sf.SR_filename19 + '.ks'" target="&sf.SR_target19"]
	[elsif exp="tf.SR_click == 20"][eval exp="tf.scenesel_bg = sf.SR_thm20"][jump storage="&sf.SR_filename20 + '.ks'" target="&sf.SR_target20"]
	[endif]
;[endif]
;�t�F�C���Z�[�t
[jump target=*back_from_SR2]

;-----------------------------------------------------------
;*sceneback
*back_from_SR
*back_from_SR2
;[tempload place=6]

;�V�[����z����̖߂�ʒu

;�R���t�B�O�ɍs���Ă��t���O���I�t
[eval exp="tf.slider_on_mes = 0"]
;��z�����Ƃ����Ɉ�U�߂邩�炱���ŃR���t�B�O�I�t��Ȃ��Ƃ��߂�
[eval exp="tf.conf = 0"]






;�N���b�N�����ꏊ�̃t���O�I�t
[eval exp="tf.SR_click = 0"]
[eval exp="tf.scenestart = 0"]
[eval exp="tf.�� = 0"]

;�V�X�e���{�^�����E�B���h�E����
[sysbt_meswin clear]


[stopse_all]


;m:��z�����^�C�g�����ƁA�ǂ���BG�̐؂�ւ��ɊԂ��ł���̂ł�����ƃu���b�N�A�E�g�������
[if exp="tf.title_pass2 == 0"]
	;BGM��~
	[fadeoutbgm time=500]
	[black_toplayer][trans_c cross][hide_chara_int]
	[wait time=500 canskip=false]
[endif]

;�ʉߏ����I������̂ŃI�t��
[eval exp="tf.title_pass2 = 0"]



;BGM������~
[stopbgm]
;SE�t�F�[�h �ꉞ�߂��Ă�����
[seopt buf=0 volume=100]
[seopt buf=1 volume=100]
[seopt buf=2 volume=100]
[seopt buf=3 volume=100]

;�����t���O����[sf�ɕۑ�
;[eval exp="sf.SIROKURO = f.SIROKURO"]

;��z���Ɏg�����t���O�̃N���A
[clearvar]
;�����ŃN���A�����Ⴄ�����z�o����͕K�����L�ɂȂ����Ⴄ�Ȃ��A�����sf�ł������ق���������

;�����t���O��f�ɏ����߂�
;[eval exp="f.SIROKURO = sf.SIROKURO"]


;�V�X�e���{�^�����E�B���h�E����
[sysbt_meswin clear]

; �}�E�X�E�N���b�N�̐ݒ�����ɖ߂�
[rclick jump=true target="*scene_return" storage="b_scene.ks" enabled=true]

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


; �A���o����ʂŎg�p���郁�b�Z�[�W���C��
[eval exp="tf.scene_message = 'message1'"]

; �A���o����ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
[rclick jump=true target="*scene_return" storage="b_scene.ks" enabled=true]

; ���b�Z�[�W���C���̑�����ݒ�
[position layer="&tf.scene_message" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
[current layer="&tf.scene_message"]

;BGM�������ĂȂ���΍Đ�����
[if exp="kag.bgm.currentBuffer.status == 'stop' || kag.bgm.currentBuffer.status == 'unload'"]
	;BGM�Đ�
	[bgmTitle]
[endif]

[jump target=*SR�ĕ`��]

;------------------------------------------------

;
; �u�߂�v���I�����ꂽ
;
*scene_return

;[�S����]
[cgthum_int]
; ��������̞x�U��ǂݍ��݁A��ԕ��A
;[tempload place=6]

; �}�E�X�E�N���b�N���ꂽ�Ƃ��̓�������ɖ߂�
[rclick enabled=false]

;�V�[�����[�h����
[eval exp="tf.scene_mode = 0"]


;���^�[�����Ɩʓ|�����璼�Ƀ^�C�g����
;[jump storage="title.ks" target=*title_menu]
;�o�c���Ɛ؂�邩��ꉞ�����Ǝ~�߂Ă݂�
;[fadeoutbgm time=100][wf canskip=false][stopbgm]
[gotostart]
;[return]

;------------------------------------------------
*debug_on
[if    exp="sf.gameNo == 1"]
[elsif exp="sf.gameNo == 2"]
[elsif exp="sf.gameNo == 3"]
[elsif exp="sf.gameNo == 4"]
[endif]
[call storage="&sf.addgameID + 'b_scene_init.ks'"]
[jump target=*SR�ĕ`��]

*debug_off
[if    exp="sf.gameNo == 1"]
[elsif exp="sf.gameNo == 2"]
[elsif exp="sf.gameNo == 3"]
[elsif exp="sf.gameNo == 4"]

[endif]
[call storage="&sf.addgameID + 'b_scene_init.ks'"]
[jump target=*SR�ĕ`��]
