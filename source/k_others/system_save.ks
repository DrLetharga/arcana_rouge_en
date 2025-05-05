;
; system_save.ks�c�Z�[�u���
;

;
; �g�����F
;   [call storage="system_save.ks" target=*save_menu]
;
; ���ӎ����F
;   �]���T�u���[�`���ł̓�������̞x�Q���g�p���Ă���
;   �]�\�߁AConfig.tjs�̈ȉ��̍��ڂ��C�����邱��
;       storeMenu.visible �c false�ɕύX
;
; �g�p���Ă���ϐ��F
;   tf.save_message0                 �c �Z�[�u��ʂ���郁�b�Z�[�W���C�����i�O���t�B�J���{�^���p�j
;   tf.save_message1                 �c �Z�[�u��ʂ���郁�b�Z�[�W���C�����i�x�̓��t�E���o���\���p�j
;   tf.save_message1_layer           �c tf.save_message1���w���������b�Z�[�W���C���I�u�W�F�N�g
;   sf.saveload_now_page                 �c ���݁A�\�����̃y�[�W�i0�`4�j
;   tf.save_x, tf.save_y             �c �T���l�C���摜��`�悷����W�i�z��j
;   tf.save_column                   �c �T���l�C���摜�^�㏑���֎~�`�F�b�N�{�b�N�X��`�悷���
;   tf.save_line                     �c �T���l�C���摜�^�㏑���֎~�`�F�b�N�{�b�N�X��`�悷��s
;   tf.save_page_x, tf.save_page_y   �c �y�[�W�ԍ��摜��`�悷����W�i�z��j
;   tf.save_check_x, tf.save_check_y �c �㏑���֎~�`�F�b�N�{�b�N�X��`�悷����W�i�z��j
;   tf.save_click_num                �c �N���b�N���ꂽ�T���l�C���摜�̔ԍ��i0�`11�j
;   tf.save_check_num                �c �N���b�N���ꂽ�㏑���֎~�`�F�b�N�{�b�N�X�̔ԍ��i0�`11�j
;   tf.save_i                        �c ���[�v�J�E���^
;

*save_menu

;---------------------------------------------------------------------
;�I����ԉ摜�̃��C��
[eval exp="sf.newmarklayer    = kag.numCharacterLayers - 3"]
[eval exp="tf.layer_sysjump   = kag.numCharacterLayers - 2"]
;---------------------------------------------------------------------

;�Q�[�������炭��ƃ{�C�X�Đ��̂܂܂ɂȂ�̂Œ�~
;[stopse buf=3]
;[stopse buf=4]
;m:�ǂ����悤�Ȃ���A�~�߂Ȃ��Ă������B�C�ɂȂ�Ȃ�Ƃ߂�B

;�T���v���E�B���h�E�ƃe�L�X�g�̃��C������
[if exp="tf.conf == 1"]
;	[freeimage layer="&sf.mask_dialog" page=fore]
	[freeimage layer="&sf.newmarklayer" page=fore]
	; �X���C�_�[����������
	[call storage="system_config_srd.ks" target=*�X���C�_�[����]
	[eval exp="tf.conf = 0"]
[endif]

;�I���{�^����clip�摜�������Ă���
[freeimage layer=0 page=fore]
[freeimage layer=1 page=fore]
[freeimage layer=2 page=fore]
[freeimage layer=3 page=fore]
[freeimage layer=4 page=fore]
[freeimage layer=5 page=fore]
[freeimage layer=6 page=fore]
[freeimage layer=7 page=fore]
[freeimage layer=8 page=fore]
[freeimage layer=9 page=fore]
[freeimage layer=10 page=fore]

; �Z�[�u��ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
[rclick jump=true target="*save_return" storage="system_save.ks" enabled=true]

; �Z�[�u��ʂŎg�p���郁�b�Z�[�W���C���P�ځi�O���t�B�J���{�^����\������̂Ɏg�p�G�����͂����炪�J�����g�j
[eval exp="tf.save_message0 = 'message1'"]

; �Z�[�u��ʂŎg�p���郁�b�Z�[�W���C���Q�ځi��ʉ��Şx�̓��t�E���o����\������̂Ɏg�p�j
[eval exp="tf.save_message1 = 'message2'"]

; tf.save_message1���w���������b�Z�[�W���C���I�u�W�F�N�g��tf.save_message1_layer�ɑ��
[eval exp="tf.save_message1_layer = kag.getLayerFromElm(%['layer'=>tf.save_message1, 'page'=>'fore'])"]

;[eval exp="sf.save_text_st = []" cond="sf.save_text_st === void"]
;[eval exp="sf.save_text_la = []" cond="sf.save_text_la === void"]


; �y�[�W�p�{�^����\��������W�̔z��
[eval exp="tf.save_page_x = [sf.saveload_page01_x, sf.saveload_page02_x, sf.saveload_page03_x, sf.saveload_page04_x, sf.saveload_page05_x]" cond="tf.save_page_x === void"]
[eval exp="tf.save_page_y = [sf.saveload_page01_y, sf.saveload_page02_y, sf.saveload_page03_y, sf.saveload_page04_y, sf.saveload_page05_y]" cond="tf.save_page_y === void"]

; �V�X�e���n��ʈړ��p�{�^�����W�̔z��
[eval exp="tf.sysjump_x = [sf.sysjump_title_x,sf.sysjump_save_x,sf.sysjump_load_x,sf.sysjump_conf_x,sf.sysjump_menu_x,sf.sysjump_game_x]" cond="tf.sysjump_x === void"]
[eval exp="tf.sysjump_y = [sf.sysjump_title_y,sf.sysjump_save_y,sf.sysjump_load_y,sf.sysjump_conf_y,sf.sysjump_menu_y,sf.sysjump_game_y]" cond="tf.sysjump_y === void"]


; �T���l�C���摜��`�悷����W�̔z��
[eval exp="tf.save_x = []" cond="tf.save_x === void"]
[eval exp="tf.save_y = []" cond="tf.save_y === void"]

;�f�[�^�ی�{�^����`�悷����W�̔z��
[eval exp="tf.save_lock_x = []" cond="tf.save_lock_x === void"]
[eval exp="tf.save_lock_y = []" cond="tf.save_lock_y === void"]

;�f�[�^�폜�{�^����`�悷����W�̔z��
[eval exp="tf.save_erase_x = []" cond="tf.save_erase_x === void"]
[eval exp="tf.save_erase_y = []" cond="tf.save_erase_y === void"]

; �㏑���֎~�`�F�b�N�{�b�N�X��`�悷����W�̔z��
;�g�p���Ȃ�
;[eval exp="tf.save_check_x = []" cond="tf.save_check_x === void"]
;[eval exp="tf.save_check_y = []" cond="tf.save_check_y === void"]


;---------------------------------------------------------------------

; ���[�v�J�E���^���O�ɂ���
[eval exp="tf.save_i=0"]

*save_loop1
	; �T���l�C���摜�^�㏑���֎~�`�F�b�N�{�b�N�X��`�悷�����v�Z
	[eval exp="tf.save_column = tf.save_i % 5"]
	; �T���l�C���摜�^�㏑���֎~�`�F�b�N�{�b�N�X��`�悷��s���v�Z
	[eval exp="tf.save_line   = tf.save_i \ 5"]
	; �T���l�C���摜��`�悷����W���v�Z���A�z��Ɋi�[
	[eval exp="tf.save_x[tf.save_i] = sf.thum_x + (sf.thum_w + sf.thum_offset_x)*tf.save_column"]
	[eval exp="tf.save_y[tf.save_i] = sf.thum_y + (sf.thum_h + sf.thum_offset_y)*tf.save_line"]
	; �㏑���֎~�`�F�b�N�{�b�N�X��`�悷����W���v�Z���A�z��Ɋi�[
	[eval exp="tf.save_lock_x[tf.save_i] = sf.data_lock_x + (sf.thum_w + sf.thum_offset_x)*tf.save_column"]
	[eval exp="tf.save_lock_y[tf.save_i] = sf.data_lock_y + (sf.thum_h + sf.thum_offset_y)*tf.save_line"]
	; �f�[�^�폜�{�^����`�悷����W���v�Z���A�z��Ɋi�[
	[eval exp="tf.save_erase_x[tf.save_i] = sf.data_erase_x + (sf.thum_w + sf.thum_offset_x)*tf.save_column"]
	[eval exp="tf.save_erase_y[tf.save_i] = sf.data_erase_y + (sf.thum_h + sf.thum_offset_y)*tf.save_line"]


	[jump target=*save_loop1 cond="++tf.save_i<20"]



; ���݁A�\�����̃y�[�W�i���߂ăZ�[�u��ʂ��Ăяo���ꂽ��O��������j
[eval exp="sf.saveload_now_page = 0" cond="sf.saveload_now_page === void"]

; �������C����}�~
[history output=false enabled=false]

; �S���b�Z�[�W���C���\��ʁA�S�O�i���C���\��ʂ��\���ɂ���
[call storage="system_subroutine.ks" target=*sub_layernoshow]

; �w�i���C���\��ʂ̃N���b�J�u���}�b�v�𖳌���
[mapdisable layer=base page=fore]

; �S�O�i���C���\��ʂ̃N���b�J�u���}�b�v�𖳌���
[eval exp="tf.save_i=0"]
*save_loop0
	[mapdisable page=fore layer="&tf.save_i"]
	[jump target=*save_loop0 cond="++tf.save_i<kag.numCharacterLayers"]
; �m�[�E�F�C�g
[delay speed=nowait]

; �J�����g�̃��b�Z�[�W���C����x�̓��t�E���o���\���p���C���ɕύX
[current layer="&tf.save_message1" page=fore]

; �x�̓��t�E���o���\���p���C���̑�����ݒ�
[position layer="&tf.save_message1" page=fore left="&sf.data_num_x" top="&sf.data_num_y" width="&kag.scWidth" height=39 frame="" color=0x000000 opacity=0 marginl=10 margint=0 marginr=0 marginb=0 draggable=false visible=true]

; �J�����g�̃��b�Z�[�W���C�����O���t�B�J���{�^���\���p���C���ɕύX
[current layer="&tf.save_message0" page=fore]

; �O���t�B�J���{�^���\���p���C���̑�����ݒ�
[position layer="&tf.save_message0" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]

; �w�i���C���\��ʂɃZ�[�u��ʗp�摜��ǂݍ��݁A�\��
[image storage="&sf.addgameID + 'bg_save'" layer=base page=fore]



; ���[�v�J�E���^���O�ɂ���
[eval exp="tf.save_i = 0"]
*save_loop00
	;�Z�[�u�f�[�^�X���b�g�̃x�[�X�摜��`��B
	[pimage storage="&sf.addgameID + 'savedata_base'" layer=base page=fore visible=true dx="&tf.save_x[tf.save_i]" dy="&tf.save_y[tf.save_i]"]
	; ���[�v�J�E���^�̒l�𑝂₵�A�y�[�W�p�O���t�B�J���{�^���̌��Ԃ�J��Ԃ�
	[jump target=*save_loop00 cond="++tf.save_i<20"]


; �T���l�C���摜�^�y�[�W�p�{�^�����N���b�N���ꂽ��A�T���l�C���摜�^�y�[�W�p�{�^���̕ύX�����f�����悤*save_redraw�ɖ߂��čĕ`�悷��
*save_redraw
	;��
	;gameID�ɂ��J�E���^�Ƀv���X
	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i +=   0"]
	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i += 100"]
	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i +=   0"]
	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i += 100"]
	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="tf.save_i += 400"]
	[endif]
	;gameID�ɂ�茸�Z�l�m�� tf.sub��get_bookmark_data���ł��g���̂�if���ɓ���O�ɒ�`
	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="tf.sub =  -0"]
	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="tf.sub = -100"]
	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="tf.sub =  -0"]
	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="tf.sub = -100"]
	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="tf.sub = -400"]
	[endif]
	;��
;New�}�[�N�t���̃f�[�^�������Ă�ꍇ�͑��f�[�^������
[if exp="sf.new_saveclick == void && sf.save_slot0_on == 0"]
	[jump target=*�f�[�^����]
[endif]

[eval exp="tf.save_i = 0"]

*save_redraw2
;New�}�[�N�����C��21������
[freeimage layer="&sf.newmarklayer" page=back][freeimage layer="&sf.newmarklayer" page=fore]
;�Z�[�u�f�[�^��1�ł����݂��邩�ǂ��� �ꔭ�Ŕ���ł��Ȃ����̂��c�c
[if exp="kag.getBookMarkDate(tf.save_i) != void"]
	[jump target=*�f�[�^�L��]
[endif]
[eval exp="tf.save_i += 1"]
;��
[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"]
	[if exp="tf.save_i == 100"][jump target=*�f�[�^����][endif]
[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"]
	[if exp="tf.save_i == 200"][jump target=*�f�[�^����][endif]
[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"]
	[if exp="tf.save_i == 300"][jump target=*�f�[�^����][endif]
[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"]
	[if exp="tf.save_i == 400"][jump target=*�f�[�^����][endif]
[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"]
	[if exp="tf.save_i == 500"][jump target=*�f�[�^����][endif]
[endif]
;��
[jump target=*save_redraw2]

*�f�[�^�L��
;�͋Z�����Ǌe�y�[�W��0�ԂɃf�[�^�����邩�H
;[if exp="kag.getBookMarkDate(0) != void || kag.getBookMarkDate(20) != void  || kag.getBookMarkDate(40) != void || kag.getBookMarkDate(60) != void || kag.getBookMarkDate(80) != void "]
	;�\���y�[�W�ƍŐV�f�[�^���Z�[�u�����y�[�W�������Ȃ�ANew�}�[�N�����C��21�C���f�b�N�X��1004000�œ\��B���W�̓T���l�C���摜�z�񂩂�擾�B
	[if exp="sf.new_savepage == sf.saveload_now_page "]

		;����͒P���ȍ��W�Ȃ̂�sf.new_saveclick�������
;��		[image storage="savenew" layer="&sf.newmarklayer" page=fore visible=true left="&tf.save_x[sf.new_saveclick]+5" top="&tf.save_y[sf.new_saveclick]+5" index=1004000]
		[image storage="savenew" layer="&sf.newmarklayer" page=fore visible=true left="&tf.save_x[sf.new_saveclick + tf.sub]+5" top="&tf.save_y[sf.new_saveclick + tf.sub]+5" index=1004000]
	[endif]
;[endif]


*�f�[�^����


; ���b�Z�[�W���C���̃N���A
[er]

; �J�����g�̃��b�Z�[�W���C����x�̓��t�E���o���\���p���C���ɕύX
[current layer="&tf.save_message1" page=fore]

; �x�̓��t�E���o���\���p���C���̃t�H���g��ύX
[font size="&sf.data_size" face="&sf.data_font"  color="&sf.data_color" italic="&sf.data_italic" rubysize="&sf.data_rubysize" rubyoffset="&sf.data_rubyoffset" shadow="&sf.data_shadow" edge="&sf.data_edge" edgecolor="&sf.data_edgecolor" shadowcolor="&sf.data_shadowcolor" bold="&sf.data_bold"]


; �J�����g�̃��b�Z�[�W���C�����O���t�B�J���{�^���\���p���C���ɕύX
[current layer="&tf.save_message0" page=fore]




*�e�L�X�g�\���߂�


; ���[�v�J�E���^���O�ɂ���
[eval exp="tf.save_i = 0"]
*save_loop2
	; �y�[�W�p�O���t�B�J���{�^���̕\���ʒu���w��
	[locate x="&tf.save_page_x[tf.save_i]" y="&tf.save_page_y[tf.save_i]"]
	; ���݁A�\�����̃y�[�W�ԍ����H
	[if exp="sf.saveload_now_page == tf.save_i"]
		; �^�Ȃ�y�[�W�p�O���t�B�J���{�^���i���݁A�\�����j��z�u
		;[button graphic="&'page0'+(tf.save_i+1)+'.png'" target=*save_redraw exp="&'sf.saveload_now_page='+tf.save_i"]
		[button graphic="page" target=*save_redraw exp="&'sf.saveload_now_page='+tf.save_i"]
		[image left="&tf.save_page_x[tf.save_i]" top="&tf.save_page_y[tf.save_i]" storage="&'page0'+(tf.save_i+1)+'.png'" layer=1 page=fore visible=true clipleft="&sf.page_clipleft" cliptop="&sf.page_cliptop" clipwidth="&sf.page_clipwidth" clipheight="&sf.page_clipheight" opacity=255]
	[else]
		; �U�Ȃ�y�[�W�p�O���t�B�J���{�^���i���݁A��\�����j��z�u
		; ���́i���݁A�\�����j�{�^���Ƃ͕ʃt�@�C���̃{�^����\�������߃t�@�C�����ɒ���
		[button graphic="&'page0'+(tf.save_i+1)+'.png'" target=*save_redraw exp="&'sf.saveload_now_page='+tf.save_i"]
	[endif]
	; ���[�v�J�E���^�̒l�𑝂₵�A�y�[�W�p�O���t�B�J���{�^���̌��Ԃ�J��Ԃ�
	[jump target=*save_loop2 cond="++tf.save_i<5"]


; ���[�v�J�E���^���O�ɂ���
[eval exp="tf.save_i = 0"]
	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i_add =   0"]
	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i_add = 100"]
	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i_add =   0"]
	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="tf.save_i_add = 100"]
	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="tf.save_i_add = 400"]
	[endif]
*save_loop3
	; �T���l�C���摜�{�^���̕\���ʒu���w��
	[locate x="&tf.save_x[tf.save_i]+sf.thum_m_x" y="&tf.save_y[tf.save_i]+sf.thum_m_y"]
	; �T���l�C���摜�{�^����z�u
	;��
;��	[button graphic="thum_mouseover" target=*save_click exp="&'tf.save_click_num = '+tf.save_i" onenter="&'tf.save_message1_layer.clear2(), tf.save_message1_layer.processCh(get_bookmark_data('+(tf.save_i+sf.saveload_now_page*20)+'))'" onleave="tf.save_message1_layer.clear2()"]
	;�����ۂ̃X���b�g�̒l���`
	[eval exp="tf.save_i2 = tf.save_i + tf.save_i_add"]
	[button graphic="thum_mouseover" target=*save_click exp="&'tf.save_click_num = '+tf.save_i2" onenter="&'tf.save_message1_layer.clear2(), tf.save_message1_layer.processCh(get_bookmark_data('+(tf.save_i + tf.save_i_add +sf.saveload_now_page*20)+'))'" onleave="tf.save_message1_layer.clear2()"]

;�I��Enter������
;sf.save_text_st[tf.save_click_num+sf.saveload_now_page*20]
;sf.save_text_la[tf.save_click_num+sf.saveload_now_page*20]
;�ɔ��Ńe�L�X�g��`��
;����͒��ڃt�@�C���̃e�L�X�g��ǂ݂ɍs���������������̂���
;��
;	[if exp="sf.save_text_st[tf.save_i+sf.saveload_now_page*20] == void"]
;		[button graphic="thum_mouseover" target=*save_click exp="&'tf.save_click_num = '+tf.save_i" onenter="&'tf.save_message1_layer.clear2(), tf.save_message1_layer.processCh(get_bookmark_data('+(tf.save_i+sf.saveload_now_page*20)+'))'" onleave="tf.save_message1_layer.clear2()"]
;	[else]
;		[button graphic="thum_mouseover" target=*save_click exp="&'tf.save_click_num = '+tf.save_i" onenter=" kag.process(sf.save_text_st[tf.save_i+sf.saveload_now_page*20], sf.save_text_la[tf.save_i+sf.saveload_now_page*20])",onleave="tf.save_message1_layer.clear2()"]
;	[endif]
;��

	; �Z�[�u�f�[�^������Ȃ�T���l�C���摜�{�^���̉摜������������
;��	[button_loadthumbnail num="&tf.save_i+5" place="&tf.save_i+sf.saveload_now_page*20"]
	[button_loadthumbnail num="&tf.save_i+5" place="&tf.save_i + tf.save_i_add + sf.saveload_now_page*20"]
	; ���[�v�J�E���^�̒l�𑝂₵�A�P�y�[�W������̃Z�[�u���Ԃ�J��Ԃ�
	[jump target=*save_loop3 cond="++tf.save_i<20"]






; ���[�v�J�E���^���O�ɂ���
[eval exp="tf.save_i = 0"]
[eval exp="tf.save_i2 = 0"]
*save_loop4
	;�����ۂ̃X���b�g�̒l���`
	[eval exp="tf.save_i2 = tf.save_i + tf.save_i_add"]

	; �㏑���֎~�`�F�b�N�{�b�N�X�̕\���ʒu���w��
	[locate x="&tf.save_lock_x[tf.save_i]" y="&tf.save_lock_y[tf.save_i]"]
	; �Y���̃Z�[�u�f�[�^�͏㏑���֎~��Ԃ��H
	;�����ł�tf.save_i�̓��b�N����Ă�X���b�g�̎��ۂ̒l������tf.save_i2
;��	[if exp="kag.bookMarkProtectedStates[tf.save_i+sf.saveload_now_page*20]"]
	[if exp="kag.bookMarkProtectedStates[tf.save_i2+sf.saveload_now_page*20]"]
		;���ۂɃ��b�N����邷��X���b�g�̒l������tf.save_i2
		; �^�Ȃ�`�F�b�N�}�[�N�t���̃O���t�B�J���{�^�����쐬
;��		[button graphic="save_lock.png"   target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.save_i"]
		[button graphic="save_lock.png"   target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.save_i2"]
	[else]
		; �U�Ȃ�`�F�b�N�}�[�N�����̃O���t�B�J���{�^�����쐬
;��		[button graphic="save_unlock.png" target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.save_i"]
		[button graphic="save_unlock.png" target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.save_i2"]
	[endif]
	; ���[�v�J�E���^�̒l�𑝂₵�A�P�y�[�W������̃Z�[�u���Ԃ�J��Ԃ�
	[jump target=*save_loop4 cond="++tf.save_i<20"]


;�f�[�^�폜�}�[�N
; ���[�v�J�E���^���O�ɂ���
[eval exp="tf.save_i = 0"]
[eval exp="tf.save_i2 = 0"]
*save_loop5
	;�����ۂ̃X���b�g�̒l���`
	[eval exp="tf.save_i2 = tf.save_i + tf.save_i_add"]

	; �㏑���֎~�`�F�b�N�{�b�N�X�̕\���ʒu���w��
	[locate x="&tf.save_erase_x[tf.save_i]" y="&tf.save_erase_y[tf.save_i]"]
;��	[button graphic="save_erase.png" target=*savedata_erase exp="&'tf.save_erase_num='+tf.save_i"]
	[button graphic="save_erase.png" target=*savedata_erase exp="&'tf.save_erase_num='+tf.save_i2"]

	; ���[�v�J�E���^�̒l�𑝂₵�A�P�y�[�W������̃Z�[�u���Ԃ�J��Ԃ�
	[jump target=*save_loop5 cond="++tf.save_i<20"]






;�V�X�e���n��ʈړ��p�{�^���Ăяo��
;[call storage="system_jump_sub.ks"]

;-----------------------------------------------------------
;�V�X�e���n��ʈړ��p�{�^���z�u


; �^�C�g���փ{�^����\���B�^�C�g�����痈�Ă���back�Ɠ���������\�����Ȃ��H
[if exp="tf.title_pass == 0"]
	[locate x="&tf.sysjump_x[0]" y="&tf.sysjump_y[0]"]
	; �V�[����z���Ƀ^�C�g���߂�Ȃ�t���O�I�t�B����N���b�N���������Ⴞ�߂��B�߂�\�������邩�� exp="tf.scene_mode = 0 , tf.totitle = 1"
	[button graphic="sysjump_title" target=*jump_title exp="tf.totitle = 1"]
[endif]

; ����SAVE�փ{�^����\�� �V�[����z���ł͂Ȃ��A���Q�[�����Ȃ�\��
[if exp="tf.scene_mode == 0 && tf.gameplay == 1"]
	[locate x="&tf.sysjump_x[1]" y="&tf.sysjump_y[1]"]
	;����SAVE�y�[�W�Ȃ̂Ń{�^�����ᖳ����now�{�^���B�����Ă������N����Ȃ��B
	;[button graphic="sysjump_save" storage="system_save.ks"]
	[button graphic="sysjump" storage="system_save.ks"]
	[image left="&tf.sysjump_x[1]" top="&tf.sysjump_y[1]" storage="sysjump_save" layer="&tf.layer_sysjump" page=fore visible=true clipleft="&sf.sysjump_clipleft" cliptop="&sf.sysjump_cliptop" clipwidth="&sf.sysjump_clipwidth" clipheight="&sf.sysjump_clipheight" opacity=255]
[endif]

; LOAD�փ{�^����\�� �V�[����z���łȂ��Ȃ�\���B�^�C�g�����痈��ꍇ������̂ŃQ�[�������ǂ����͖��Ȃ��B
[if exp="tf.scene_mode == 0"]
	[locate x="&tf.sysjump_x[2]" y="&tf.sysjump_y[2]"]
	[button graphic="sysjump_load" storage="system_load.ks" exp="tf.save = 0, tf.load = 1, tf.conf = 0"]
[endif]

;�R���t�B�O�y�[�W��\���B
[locate x="&tf.sysjump_x[3]" y="&tf.sysjump_y[3]"]
[button graphic="sysjump_config" storage="system_config_mes.ks" exp="tf.save = 0, tf.load = 0, tf.conf = 1"]

;//	; �V�[����z���Ȃ��z���j���[�փ{�^����\��
;//	[if exp="tf.scene_mode"]
;//		[locate x="&tf.sysjump_x[0]" y="&tf.sysjump_y[4]"]
;//		[button graphic="sysjump_menu" target=*jump_scene]
;//	[endif]

; �u�߂�v�{�^����z�u
[locate x="&tf.sysjump_x[5]" y="&tf.sysjump_y[5]"]
[button graphic="sysjump_back" target="*save_return" storage="system_save.ks" recthit=false]

[eval exp="tf.savepass = 0"]
;�E�N���b�N�@�\�ŗ����ꍇ�ɑ����Ɍ��̉�ʂɖ߂�Ȃ��悤�ɂ��邽�߂̃E�F�C�g�Btime=1�ł����ʗL�肾���O�̈�50mm�b�ɐݒ�B
[wait time=50 canskip=false]




[s]

;-----------------------------------------------------------



;
; �T���l�C���摜�{�^�����N���b�N���ꂽ
;
*save_click



;�N���b�N�����X���b�g���ی삳��Ă���ی�_�C�A���O�\�����郉�x���ցB
[if exp="kag.bookMarkProtectedStates[tf.save_click_num+sf.saveload_now_page*20]"]
	[call storage="system_savedata_sub.ks" target=*�ی삳��Ă܂�]

	; �Z�[�u��ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
	[rclick jump=true target="*save_return" storage="system_save.ks" enabled=true]

	;���^�[��������redraw�֖߂�B
	[jump target=*save_redraw]
[endif]

; �Z�[�u
;�f�[�^�������E�㏑�����E�_�C�A���O�I�t����3�p�^�[���̏���������B�����ʓ|�Ȃ���ɂ���������Ȃ��B
[if exp="sf.dialog_on"]

	;�N���b�N�����ꏊ�̑O�̋L�^���ꎞ�I�ɕۑ�
	[eval exp="tf.new_saveclick_temp = sf.new_saveclick"]
	;�N���b�N�����y�[�W�̑O�̋L�^���ꎞ�I�ɕۑ�
	[eval exp="tf.new_savepage_temp = sf.new_savepage"]

	;kag.getBookMarkDate�ŕb�P�ʂ��擾�ł���悤�ɂ����̂ŁA���Ԃ񂱂�ōs����B���ǂ��������Y��ɂ������Ȃ��B
	;�Ł[���͂��邯�Ǐ㏑�����ĂȂ��ꍇ�͂ǂ����肵�悤�H
	[if exp="kag.getBookMarkDate(tf.save_click_num+sf.saveload_now_page*20) != void"]

		;���ݕۑ�����Ă郉�x�����ꎞ�I�ɕۑ�
		[eval exp="tf.PageName = kag.getBookMarkPageName(tf.save_click_num+sf.saveload_now_page*20)"]
		;���ݕۑ�����Ă鎞�����ꎞ�I�ɕۑ�
		[eval exp="tf.Date     = kag.getBookMarkDate(tf.save_click_num+sf.saveload_now_page*20)"]

		;�Z�[�uYESNO�_�C�����O���J���B
		;[save place="&tf.save_click_num+sf.saveload_now_page*20" ask=true]

		[eval exp="tf.dialog_save_overwrite = 1"]
		;�_�C�A���O�\��
		[jump storage="dialog.ks" target=*dialog_draw]

	[else]
	;�������̓f�[�^�����X�Ȃ������X���b�g���N���b�N�����ꍇ�B

		;�Z�[�uYESNO�_�C�����O���J���B
		;[save place="&tf.save_click_num+sf.saveload_now_page*20" ask=true]

		[eval exp="tf.dialog_save = 1"]
		;�_�C�A���O�\��
		;�f�t�H�̂ŊJ���Ȃ炱����
		;[eval exp="kag.askSavetest()"]
		[jump storage="dialog.ks" target=*dialog_draw]

	[endif]

[endif]

;�N���b�N�����ꏊ���L�^
[eval exp="sf.new_saveclick = tf.save_click_num"]
;�N���b�N�����y�[�W���L�^
[eval exp="sf.new_savepage = sf.saveload_now_page"]
;�N���b�N�����ꏊ��0�Ȃ��p�̃t���O�𗧂Ă�B
[if exp="sf.new_saveclick == 0"]
	[eval exp="sf.save_slot0_on = 1"]
	;�������Ō��0�ԃX���b�g�ɃZ�[�u�������ǂ����t���O���I�t�̂܂܂ɂȂ��Ă�̂ŏC�� 2018/02/05
	;0�ԃZ�[�u�I��
	[eval exp="sf.save_slot0 = 1"]
	;�������C�������܂�
[else]
	[eval exp="sf.save_slot0_on = 0"]
	;�������Ō��0�ԃX���b�g�ɃZ�[�u�������ǂ����t���O���I���̂܂܂ɂȂ��Ă�̂ŏC�� 2018/02/05
	;0�ԃZ�[�u�I�t
	[eval exp="sf.save_slot0 = 0"]
	;�������C�������܂�
[endif]

[save place="&tf.save_click_num+sf.saveload_now_page*20"]
;	;��
;	;���݂̃t�@�C������ۑ�
;	[eval exp="sf.save_text_st[tf.save_click_num+sf.saveload_now_page*20] = f.ksStorageSys"]
;	;���݂̃��x������ۑ�
;	[eval exp="sf.save_text_la[tf.save_click_num+sf.saveload_now_page*20] = f.ksLabelSys"]
;	;��


*�_�C�A���O����߂�
*�_�C�A���O����߂�02



;�{�^���ƃ_�C�A���O�摜�N���A
;[cm]
[layopt layer="&sf.message_dialog" page=fore visible=false]
[layopt layer="&sf.message_dialog" page=back visible=false]
;CM����Ɩ߂������ɑI�����̃x�[�X�������Ⴄ�񂾂�B�ł��Z�[�u���邽�тɃ{�^�����d�ɂȂ��ĂȂ����H
;fc�}�N���ɂȂɂ��d���ނ����Ȃ����B�Ƃ肠�������d�͂܂�������cm���Ƃ�
[call storage="dialog.ks" target=*�_�C�A���O����]


;�J�����g���C����߂��@����0�ɂ��Ă�����߂�őI���������Ă��̂�����H
[current layer="&tf.save_message0" page=fore]

; �Z�[�u��ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
[rclick jump=true target="*save_return" storage="system_save.ks" enabled=true]

; �ŐV�̏�ԂɂȂ�悤�Z�[�u��ʂ��ĕ`�悷��
[jump target=*save_redraw]

;
; �㏑���֎~�`�F�b�N�{�b�N�X���I�����ꂽ
;�g�p���Ȃ�
;*save_check
; �O���t�B�J���{�^���̃��b�N������
;[unlocklink]
; �Z�[�u�f�[�^�̕ی�t���O��ύX
;[eval exp="kag.setBookMarkProtectedState(tf.save_check_num+sf.saveload_now_page*20, !kag.bookMarkProtectedStates[tf.save_check_num+sf.saveload_now_page*12])"]
; �Z�[�u�f�[�^�̕ی�t���O�̒l�́H
;[if exp="kag.bookMarkProtectedStates[tf.save_check_num+sf.saveload_now_page*20]"]
;	; �^�Ȃ�`�F�b�N�}�[�N�t���̃`�F�b�N�{�b�N�X�ɒu������
;	[button_chgimage graphic="savemode_checkbox_box2.png" num="&tf.save_check_num+20+5"]
;[else]
;	; �U�Ȃ�`�F�b�N�}�[�N�Ȃ��̃`�F�b�N�{�b�N�X�ɒu������
;	[button_chgimage graphic="savemode_checkbox_box.png" num="&tf.save_check_num+20+5"]
;[endif]
;[s]


;-----------------------------------------------------------
*savedata_lock_button_chgimage

;�T�u���[�`���Ƀ��b�N�A�A�����b�N�{�^�������������ɂ����B
[call storage="system_savedata_sub.ks" target=*savedata_lock_button_chgimage]

;���^�[��������redraw�֖߂�B
[jump target=*save_redraw]

;-----------------------------------------------------------
*savedata_erase

;�T�u���[�`���ɃZ�[�u�f�[�^���폜���ɂ����B
[call storage="system_savedata_sub.ks" target=*savedata_erase]
*�V���[�g�J�b�g�߂�
;�{�^���ƃ_�C�A���O�摜�N���A
[layopt layer=message"&sf.dialog_message" page=fore visible=false]

; �Z�[�u��ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
;[rclick jump=true target="*save_return" storage="system_save.ks" enabled=true]
;����v��Ȃ��̂��B���ꂠ��ƉE�N���b�N���A���Ȃ�

;���^�[��������menu�֖߂�B
[jump target=*save_menu]

;-----------------------------------------------------------
*jump_title
[if exp="sf.dialog_on"]
		[eval exp="tf.dialog_savetitle = 1"]
		;�_�C�A���O�\��
		[jump storage="dialog.ks" target=*dialog_draw]
[endif]

;-----------------------------------
*save�^�C�g���ɖ߂�
;�_�C�A���O�I�t���̖߂蔲���Ă�
;�����t�@�C���ɏ����Ɩʓ|������_�C�A���O�T�u���[�`���̃^�C�g���֖߂�ɔ�΂�
[jump storage="dialog.ks" target=*�^�C�g���ɖ߂�]
;-----------------------------------






*save�^�C�g���ɖ߂�Ȃ�
[call storage="dialog.ks" target=*�_�C�A���O����]


;�ꉞ�����ɂ������ �Z�[�u��ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ�������������� 
[rclick jump=true target="*save_return" storage="system_save.ks" enabled=true]


[jump target=*save_menu]

;-----------------------------------------------------------

;
; �u�߂�v���I�����ꂽ�^�}�E�X�E�N���b�N���ꂽ
;
*save_return

;New�}�[�N�\���Ă����C���̃C���f�b�N�X��߂�
[layopt layer="&sf.newmarklayer" index="&sf.newmarklayer*1000+1000"]
[freeimage layer="&sf.newmarklayer" page=back][freeimage layer="&sf.newmarklayer" page=fore]

;������CM�����Ⴞ�߂Ȃ񂾂����H
;[cm]

; �ǂ����痈���H
; �^�C�g��
;[if exp="tf.fromtitle"]
[if exp="tf.title_pass"]
	[jump storage="title.ks" target=*title_menu]
; �Q�[����
[elsif exp="tf.gameplay"]
	;�S���p�@���uvoice�I���ɂ��Ă���Đ��������B�I���A�ł��ĂĂ��Đ����������Ⴄ���ǂ���̓X���[
	[if exp="f.mob_voice_on == 1"]
		[eval exp="f.mob_voice_on = 0"]
		[vo_m s="&f.mobbgv_file"]
	[endif]
	[jump storage="systembutton_sub.ks" target=*sys_save_return]
[endif]

; �߂�
[return]


