;
; system_load.ks�c���[�h���
;

;
; �g�����F
;   [call storage="system_load.ks" target=*load_menu]
;
; ���ӎ����F
;   �]���T�u���[�`���ł̓�������̞x�P���g�p���Ă���
;   �]�\�߁AConfig.tjs�̈ȉ��̍��ڂ��C�����邱��
;       restoreMenu.visible �c false�ɕύX
;
; �g�p���Ă���ϐ��F
;   tf.load_message0                 �c ���[�h��ʂ���郁�b�Z�[�W���C�����i�O���t�B�J���{�^���p�j
;   tf.load_message1                 �c ���[�h��ʂ���郁�b�Z�[�W���C�����i�x�̓��t�E���o���\���p�j
;   tf.load_message1_layer           �c tf.load_message1���w���������b�Z�[�W���C���I�u�W�F�N�g
;   sf.saveload_now_page                 �c ���݁A�\�����̃y�[�W�i0�`4�j
;   tf.load_x, tf.load_y             �c �T���l�C���摜��`�悷����W�i�z��j
;   tf.load_column                   �c �T���l�C���摜��`�悷���
;   tf.load_line                     �c �T���l�C���摜��`�悷��s
;   tf.load_page_x, tf.load_page_y   �c �y�[�W�ԍ��摜��`�悷����W�i�z��j
;   tf.load_click_num                �c �N���b�N���ꂽ�T���l�C���摜�̔ԍ��i0�`11�j
;   tf.load_i                        �c ���[�v�J�E���^
;

*load_menu
;---------------------------------------------------------------------
;�I����ԉ摜�̃��C��
[eval exp="sf.newmarklayer    = kag.numCharacterLayers - 3"]
[eval exp="tf.layer_sysjump   = kag.numCharacterLayers - 2"]
;---------------------------------------------------------------------


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



; ���[�h��ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
[rclick jump=true target="*load_return" storage="system_load.ks" enabled=true]

; ���[�h��ʂŎg�p���郁�b�Z�[�W���C���P�ځi�O���t�B�J���{�^����\������̂Ɏg�p�G�����͂����炪�J�����g�j
[eval exp="tf.load_message0 = 'message1'"]

; ���[�h��ʂŎg�p���郁�b�Z�[�W���C���Q�ځi��ʉ��Şx�̓��t�E���o����\������̂Ɏg�p�j
[eval exp="tf.load_message1 = 'message2'"]

; tf.load_message1���w���������b�Z�[�W���C���I�u�W�F�N�g��tf.load_message1_layer�ɑ��
[eval exp="tf.load_message1_layer = kag.getLayerFromElm(%['layer'=>tf.load_message1, 'page'=>'fore'])"]

; �y�[�W�p�{�^����\��������W�̔z��
[eval exp="tf.load_page_x = [sf.saveload_page01_x, sf.saveload_page02_x, sf.saveload_page03_x, sf.saveload_page04_x, sf.saveload_page05_x]"]
[eval exp="tf.load_page_y = [sf.saveload_page01_y, sf.saveload_page02_y, sf.saveload_page03_y, sf.saveload_page04_y, sf.saveload_page05_y]"]

; �V�X�e���n��ʈړ��p�{�^�����W�̔z��
[eval exp="tf.sysjump_x = [sf.sysjump_title_x,sf.sysjump_save_x,sf.sysjump_load_x,sf.sysjump_conf_x,sf.sysjump_menu_x,sf.sysjump_game_x]"]
[eval exp="tf.sysjump_y = [sf.sysjump_title_y,sf.sysjump_save_y,sf.sysjump_load_y,sf.sysjump_conf_y,sf.sysjump_menu_y,sf.sysjump_game_y]"]

; �T���l�C���摜��`�悷����W�̔z��
[eval exp="tf.load_x = []"]
[eval exp="tf.load_y = []"]

;�f�[�^�ی�{�^����`�悷����W�̔z��
[eval exp="tf.save_lock_x = []"]
[eval exp="tf.save_lock_y = []"]

;�f�[�^�폜�{�^����`�悷����W�̔z��
[eval exp="tf.save_erase_x = []"]
[eval exp="tf.save_erase_y = []"]

;---------------------------------------------------------------------

; ���[�v�J�E���^���O�ɂ���
[eval exp="tf.load_i=0"]

*load_loop1
	; �T���l�C���摜�^�㏑���֎~�`�F�b�N�{�b�N�X��`�悷�����v�Z
	;m:��A�s�Ƃ��ɂǂ��炩�̍ő�l�ō��킹�邱�ƁB
	[eval exp="tf.load_column = tf.load_i % 5"]
	; �T���l�C���摜�^�㏑���֎~�`�F�b�N�{�b�N�X��`�悷��s���v�Z
	[eval exp="tf.load_line   = tf.load_i \ 5"]
	;m:�y�[�W���̃T���l�C������ς��鎞�́��̐��l�Ɗe���̃T���l�C�����i���̃t�@�C������20���w�肵�Ă�ӏ��j��ς���B
	; �T���l�C���摜��`�悷����W���v�Z���A�z��Ɋi�[
	[eval exp="tf.load_x[tf.load_i] = sf.thum_x + (sf.thum_w + sf.thum_offset_x)*tf.load_column"]
	[eval exp="tf.load_y[tf.load_i] = sf.thum_y + (sf.thum_h + sf.thum_offset_y)*tf.load_line"]
	; �㏑���֎~�`�F�b�N�{�b�N�X��`�悷����W���v�Z���A�z��Ɋi�[
	[eval exp="tf.save_lock_x[tf.load_i] = sf.data_lock_x + (sf.thum_w + sf.thum_offset_x)*tf.load_column"]
	[eval exp="tf.save_lock_y[tf.load_i] = sf.data_lock_y + (sf.thum_h + sf.thum_offset_y)*tf.load_line"]
	; �f�[�^�폜�{�^����`�悷����W���v�Z���A�z��Ɋi�[
	[eval exp="tf.save_erase_x[tf.load_i] = sf.data_erase_x + (sf.thum_w + sf.thum_offset_x)*tf.load_column"]
	[eval exp="tf.save_erase_y[tf.load_i] = sf.data_erase_y + (sf.thum_h + sf.thum_offset_y)*tf.load_line"]
	[jump target=*load_loop1 cond="++tf.load_i<20"]




; ���݁A�\�����̃y�[�W�i���߂ă��[�h��ʂ��Ăяo���ꂽ��O��������j
[eval exp="sf.saveload_now_page = 0" cond="sf.saveload_now_page === void"]

; �������C����}�~
[history output=false enabled=false]

; �S���b�Z�[�W���C���\��ʁA�S�O�i���C���\��ʂ��\���ɂ���
[call storage="system_subroutine.ks" target=*sub_layernoshow]

; �w�i���C���\��ʂ̃N���b�J�u���}�b�v�𖳌���
[mapdisable layer=base page=fore]


[eval exp="tf.load_i=0"]
*load_loop0
	[mapdisable page=fore layer="&tf.load_i"]
	[jump target=*load_loop0 cond="++tf.load_i<kag.numCharacterLayers"]
; �m�[�E�F�C�g
[delay speed=nowait]

; �J�����g�̃��b�Z�[�W���C����x�̓��t�E���o���\���p���C���ɕύX
[current layer="&tf.load_message1" page=fore]

; �x�̓��t�E���o���\���p���C���̑�����ݒ�
[position layer="&tf.load_message1" page=fore left="&sf.data_num_x" top="&sf.data_num_y" width="&kag.scWidth" height=39 frame="" color=0x000000 opacity=0 marginl=10 margint=0 marginr=0 marginb=0 draggable=false visible=true]

; �J�����g�̃��b�Z�[�W���C�����O���t�B�J���{�^���\���p���C���ɕύX
[current layer="&tf.load_message0" page=fore]

; �O���t�B�J���{�^���\���p���C���̑�����ݒ�
[position layer="&tf.load_message0" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]

; �w�i���C���\��ʂɃ��[�h��ʗp�摜��ǂݍ��݁A�\��
[image storage="&sf.addgameID + 'bg_load'" layer=base page=fore]


; ���[�v�J�E���^���O�ɂ���
[eval exp="tf.load_i = 0"]

*load_loop00
	;�Z�[�u�f�[�^�X���b�g�̃x�[�X�摜��`��B
	[pimage storage="&sf.addgameID + 'savedata_base'" layer=base page=fore visible=true dx="&tf.load_x[tf.load_i]" dy="&tf.load_y[tf.load_i]"]
	; ���[�v�J�E���^�̒l�𑝂₵�A�y�[�W�p�O���t�B�J���{�^���̌��Ԃ�J��Ԃ�
	[jump target=*load_loop00 cond="++tf.load_i<20"]

	;��
	;gameID�ɂ��J�E���^�Ƀv���X
	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i +=   0"]
	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i += 100"]
	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i +=   0"]
	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i += 100"]
	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="tf.load_i += 400"]
	[endif]
	;gameID�ɂ�茸�Z�l�m�� tf.sub��get_bookmark_data���ł��g���̂�if���ɓ���O�ɒ�`
	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="tf.sub =  -0"]
	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="tf.sub = -100"]
	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="tf.sub =  -0"]
	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="tf.sub = -100"]
	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="tf.sub = -400"]
	[endif]
	;��

; �T���l�C���摜�^�y�[�W�p�{�^�����N���b�N���ꂽ��A�T���l�C���摜�^�y�[�W�p�{�^���̕ύX�����f�����悤*load_redraw�ɖ߂��čĕ`�悷��
*load_redraw
;New�}�[�N�t���̃f�[�^�������Ă�ꍇ�͑��f�[�^������
[if exp="sf.new_saveclick == void && sf.save_slot0_on == 0"]
	[jump target=*�f�[�^����]
[endif]

;//�׈��p�ɑ��₷
;//�A���e�A�@�X���b�g1 100 �Z�[�u���[�h
;//�r�A���J�@�X���b�g101 200 �Z�[�u���[�h
;//�A���e�A�@�X���b�g201 �N�C�b�N�Z�[�u���[�h
;//�r�A���J�@�X���b�g202 �N�C�b�N�Z�[�u���[�h
;;numBookMarks = 203;

[eval exp="tf.load_i = 0"]
*load_redraw2
;New�}�[�N�����C��21������
[freeimage layer="&sf.newmarklayer" page=back][freeimage layer="&sf.newmarklayer" page=fore]
;�Z�[�u�f�[�^��1�ł����݂��邩�ǂ��� �ꔭ�Ŕ���ł��Ȃ����̂��c�c
[if exp="kag.getBookMarkDate(tf.load_i) != void"]
	[freeimage layer="&sf.newmarklayer" page=back][freeimage layer="&sf.newmarklayer" page=fore]
	[jump target=*�f�[�^�L��]
[endif]
[eval exp="tf.load_i += 1"]
;��
[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"]
	[if exp="tf.load_i == 100"][jump target=*�f�[�^����][endif]
[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"]
	[if exp="tf.load_i == 200"][jump target=*�f�[�^����][endif]
[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"]
	[if exp="tf.load_i == 300"][jump target=*�f�[�^����][endif]
[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"]
	[if exp="tf.load_i == 400"][jump target=*�f�[�^����][endif]
[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"]
	[if exp="tf.load_i == 500"][jump target=*�f�[�^����][endif]
[endif]
;��
[jump target=*load_redraw2]

*�f�[�^�L��
;�͋Z�����Ǌe�y�[�W��0�ԂɃf�[�^�����邩�H
;[if exp="kag.getBookMarkDate(0) != void || kag.getBookMarkDate(20) != void  || kag.getBookMarkDate(40) != void || kag.getBookMarkDate(60) != void || kag.getBookMarkDate(80) != void "]
	;�\���y�[�W�ƍŐV�f�[�^���Z�[�u�����y�[�W�������Ȃ�ANew�}�[�N�����C��21�C���f�b�N�X��1004000�œ\��B���W�̓T���l�C���摜�z�񂩂�擾�B
	[if exp="sf.new_savepage == sf.saveload_now_page "]

		;����͒P���ȍ��W�Ȃ̂�sf.new_saveclick�������
;��		[image storage="savenew" layer="&sf.newmarklayer" page=fore visible=true left="&tf.load_x[sf.new_saveclick]+5" top="&tf.load_y[sf.new_saveclick]+5" index=1004000]
		[image storage="savenew" layer="&sf.newmarklayer" page=fore visible=true left="&tf.load_x[sf.new_saveclick + tf.sub]+5" top="&tf.load_y[sf.new_saveclick + tf.sub]+5" index=1004000]
	[endif]
;[endif]

*�f�[�^����

; ���b�Z�[�W���C���̃N���A
[er]

; �J�����g�̃��b�Z�[�W���C����x�̓��t�E���o���\���p���C���ɕύX
[current layer="&tf.load_message1" page=fore]

; �x�̓��t�E���o���\���p���C���̃t�H���g��ύX
;�Ȃ����ϐ��̎w�肪�����Ȃ��I�Ȃ��H
;[font size="&sf.data_size" face="&sf.data_font"  color="&sf.data_color" italic="&sf.data_italic" rubysize="&sf.data_rubysize" rubyoffset="&sf.data_rubyoffset" shadow="&sf.data_shadow" edge="&sf.data_edge" edgecolo="&sf.data_edgecolor" shadowcolor="&sf.data_shadowcolor" bold="&sf.data_bold"]
[font size="&sf.data_size"              face="�l�r �S�V�b�N" color=0xFFFFFF         italic=false             rubysize=10                  rubyoffset=0                     shadow=false             edge=true            edgecolor=0xffc0c0            shadowcolor=0x000000               bold=false]

; �J�����g�̃��b�Z�[�W���C�����O���t�B�J���{�^���\���p���C���ɕύX
[current layer="&tf.load_message0" page=fore]




; ���[�v�J�E���^���O�ɂ���
[eval exp="tf.load_i = 0"]
*load_loop2
	; �y�[�W�p�O���t�B�J���{�^���̕\���ʒu���w��
	[locate x="&tf.load_page_x[tf.load_i]" y="&tf.load_page_y[tf.load_i]"]
	; ���݁A�\�����̃y�[�W�ԍ����H
	[if exp="sf.saveload_now_page == tf.load_i"]
		; �^�Ȃ�y�[�W�p�O���t�B�J���{�^���i���݁A�\�����j��z�u
		;[button graphic="&'page0'+(tf.load_i+1)+'_on.png'" target=*load_redraw exp="&'sf.saveload_now_page='+tf.load_i"]
		[button graphic="page" target=*load_redraw exp="&'sf.saveload_now_page='+tf.load_i"]
		[image left="&tf.load_page_x[tf.load_i]" top="&tf.load_page_y[tf.load_i]" storage="&'page0'+(tf.load_i+1)+'.png'" layer=1 page=fore visible=true clipleft="&sf.page_clipleft" cliptop="&sf.page_cliptop" clipwidth="&sf.page_clipwidth" clipheight="&sf.page_clipheight" opacity=255]
	[else]
		; �U�Ȃ�y�[�W�p�O���t�B�J���{�^���i���݁A��\�����j��z�u
		[button graphic="&'page0'+(tf.load_i+1)+'.png'" target=*load_redraw exp="&'sf.saveload_now_page='+tf.load_i"]
	[endif]
	; ���[�v�J�E���^�̒l�𑝂₵�A�y�[�W�p�O���t�B�J���{�^���̌��Ԃ�J��Ԃ�
	[jump target=*load_loop2 cond="++tf.load_i<5"]


; ���[�v�J�E���^���O�ɂ���
[eval exp="tf.load_i = 0"]
	[if    exp="sf.gameNo == 1 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i_add =   0"]
	[elsif exp="sf.gameNo == 2 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i_add = 100"]
	[elsif exp="sf.gameNo == 3 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i_add =   0"]
	[elsif exp="sf.gameNo == 4 && sf.game_total >= sf.gameNo"][eval exp="tf.load_i_add = 100"]
	[elsif exp="sf.gameNo == 5 && sf.game_total == sf.gameNo"][eval exp="tf.load_i_add = 400"]
	[endif]
*load_loop3
	; �T���l�C���摜�{�^���̕\���ʒu���w��
	[locate x="&tf.load_x[tf.load_i]+sf.thum_m_x" y="&tf.load_y[tf.load_i]+sf.thum_m_y"]
	; �T���l�C���摜�{�^����z�u
;��	[button graphic="thum_mouseover" target=*load_click exp="&'tf.load_click_num = '+tf.load_i" onenter="&'tf.load_message1_layer.clear2(), tf.load_message1_layer.processCh(get_bookmark_data('+(tf.load_i+sf.saveload_now_page*20)+'))'" onleave="tf.load_message1_layer.clear2()"]
	;�����ۂ̃X���b�g�̒l���`
	[eval exp="tf.load_i2 = tf.load_i + tf.load_i_add"]
	[button graphic="thum_mouseover" target=*load_click exp="&'tf.load_click_num = '+tf.load_i2" onenter="&'tf.load_message1_layer.clear2(), tf.load_message1_layer.processCh(get_bookmark_data('+(tf.load_i + tf.load_i_add +sf.saveload_now_page*20)+'))'" onleave="tf.load_message1_layer.clear2()"]

	;��;����͒��ڃt�@�C���̃e�L�X�g��ǂ݂ɍs���������������̂���
	;[button graphic="thum_mouseover" target=*save_click exp="&'tf.save_click_num = '+tf.load_i" onenter=" kag.process('','*sub')",onleave="tf.save_message1_layer.clear2()"]
	;��


	; �Z�[�u�f�[�^������Ȃ�T���l�C���摜�{�^���̉摜������������
;	[button_loadthumbnail num="&tf.load_i+5" place="&tf.load_i+sf.saveload_now_page*20"]
	[button_loadthumbnail num="&tf.load_i+5" place="&tf.load_i + tf.load_i_add + sf.saveload_now_page*20"]
	; ���[�v�J�E���^�̒l�𑝂₵�A�P�y�[�W������̃Z�[�u���Ԃ�J��Ԃ�
	[jump target=*load_loop3 cond="++tf.load_i<20"]


; ���[�v�J�E���^���O�ɂ���
[eval exp="tf.load_i = 0"]
[eval exp="tf.load_i2 = 0"]
*load_loop4
	;�����ۂ̃X���b�g�̒l���`
	[eval exp="tf.load_i2 = tf.load_i + tf.load_i_add"]
	; �㏑���֎~�`�F�b�N�{�b�N�X�̕\���ʒu���w��
	[locate x="&tf.save_lock_x[tf.load_i]" y="&tf.save_lock_y[tf.load_i]"]
	; �Y���̃Z�[�u�f�[�^�͏㏑���֎~��Ԃ��H
	;�����ł�tf.load_i�̓��b�N����Ă�X���b�g�̎��ۂ̒l������tf.load_i2
;��	[if exp="kag.bookMarkProtectedStates[tf.load_i+sf.saveload_now_page*20]"]
	[if exp="kag.bookMarkProtectedStates[tf.load_i2+sf.saveload_now_page*20]"]
		;���ۂɃ��b�N����邷��X���b�g�̒l������tf.load_i2
		; �^�Ȃ�`�F�b�N�}�[�N�t���̃O���t�B�J���{�^�����쐬
;��		[button graphic="save_lock.png"   target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.load_i"]
		[button graphic="save_lock.png"   target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.load_i2"]
	[else]
		; �U�Ȃ�`�F�b�N�}�[�N�����̃O���t�B�J���{�^�����쐬
;��		[button graphic="save_unlock.png" target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.load_i"]
		[button graphic="save_unlock.png" target=*savedata_lock_button_chgimage exp="&'tf.save_lock_num='+tf.load_i2"]
	[endif]
	; ���[�v�J�E���^�̒l�𑝂₵�A�P�y�[�W������̃Z�[�u���Ԃ�J��Ԃ�
	[jump target=*load_loop4 cond="++tf.load_i<20"]


;�f�[�^�폜�}�[�N
; ���[�v�J�E���^���O�ɂ���
[eval exp="tf.load_i = 0"]
[eval exp="tf.load_i2 = 0"]
*load_loop5
	;�����ۂ̃X���b�g�̒l���`
	[eval exp="tf.load_i2 = tf.load_i + tf.load_i_add"]
	; �㏑���֎~�`�F�b�N�{�b�N�X�̕\���ʒu���w��
	[locate x="&tf.save_erase_x[tf.load_i]" y="&tf.save_erase_y[tf.load_i]"]
	;�����ł�tf.load_i�͍폜����X���b�g�̎��ۂ̒l������tf.load_i2
;��	[button graphic="save_erase.png" target=*savedata_erase exp="&'tf.save_erase_num='+tf.load_i"]
	[button graphic="save_erase.png" target=*savedata_erase exp="&'tf.save_erase_num='+tf.load_i2"]

	; ���[�v�J�E���^�̒l�𑝂₵�A�P�y�[�W������̃Z�[�u���Ԃ�J��Ԃ�
	[jump target=*load_loop5 cond="++tf.load_i<20"]


;-----------------------------------------------------------
;�V�X�e���n��ʈړ��p�{�^���z�u

; �^�C�g���փ{�^����\���B�^�C�g�����痈�Ă���back�Ɠ���������\�����Ȃ��H
[if exp="tf.title_pass == 0"]
	[locate x="&tf.sysjump_x[0]" y="&tf.sysjump_y[0]"]
	; �V�[����z���Ƀ^�C�g���߂�Ȃ�t���O�I�t�B����N���b�N���������Ⴞ�߂��B�߂�\�������邩�� exp="tf.scene_mode = 0 , tf.totitle = 1"
	[button graphic="sysjump_title" target=*jump_title exp="tf.totitle = 1"]
[endif]

; SAVE�փ{�^����\�� �V�[����z���ł͂Ȃ��A���Q�[�����A���^�C�g����ʌo�R���ĂȂ��Ȃ�\��
[if exp="tf.scene_mode == 0 && tf.gameplay == 1 && tf.title_pass == 0"]
	[locate x="&tf.sysjump_x[1]" y="&tf.sysjump_y[1]"]
	[button graphic="sysjump_save" storage="system_save.ks" exp="tf.save = 1, tf.load = 0, tf.conf = 0"]
[endif]


;title�����[�h��BACK���ƃR�[�����^�[���̂��܂�����Ȃ��悤�Ȃ̂�title���烍�[�h�ɗ����ꍇ�̓R���t�B�O�փ{�^���\�����Ȃ�
;  ����LOAD�փ{�^����\�� �V�[����z���łȂ��Ȃ�\���B�^�C�g�����痈��ꍇ������̂ŃQ�[�������ǂ����͖��Ȃ��B
[if exp="tf.scene_mode == 0"]
	[locate x="&tf.sysjump_x[2]" y="&tf.sysjump_y[2]"]
	;����LOAD�y�[�W�Ȃ̂Ń{�^�����ᖳ����now�{�^���B�����Ă������N����Ȃ��B
	;[button graphic="sysjump_load" storage="system_load.ks"]
	[button graphic="sysjump" storage="system_load.ks"]
	[image left="&tf.sysjump_x[2]" top="&tf.sysjump_y[2]" storage="sysjump_load" layer="&tf.layer_sysjump" page=fore visible=true clipleft="&sf.sysjump_clipleft" cliptop="&sf.sysjump_cliptop" clipwidth="&sf.sysjump_clipwidth" clipheight="&sf.sysjump_clipheight" opacity=255]
[endif]


;[if exp="tf.title_pass == 0"]
	;�R���t�B�O�y�[�W��\���B
	[locate x="&tf.sysjump_x[3]" y="&tf.sysjump_y[3]"]
	[button graphic="sysjump_config" storage="system_config_mes.ks" exp="tf.save = 0, tf.load = 0, tf.conf = 1"]
;[endif]

;//	; �V�[����z���Ȃ��z���j���[�փ{�^����\��
;//	[if exp="tf.scene_mode"]
;//		[locate x="&tf.sysjump_x[0]" y="&tf.sysjump_y[4]"]
;//		[button graphic="sysjump_menu" target=*jump_scene]
;//	[endif]


; �u�߂�v�{�^����z�u
[locate x="&tf.sysjump_x[5]" y="&tf.sysjump_y[5]"]
[button graphic="sysjump_back" target="*load_return" storage="system_load.ks" recthit=false]
[s]

;-----------------------------------------------------------

;
; �T���l�C���摜�{�^�����N���b�N���ꂽ
;
*load_click

[if exp="kag.getBookMarkDate(tf.load_click_num+sf.saveload_now_page*20) == void"]
	[jump target=*load_menu]
[endif]

; �O���t�B�J���{�^���̃��b�N������
;[unlocklink]
;�����ꂪ����ƃ_�C�A���O�o�Ă��T���l�������Ⴄ�̂�


; ���[�h
[if exp="sf.dialog_on"]
;�_�C�A���O�I���ł������Ă邯�ǁA����ȊO�ł��K�v�Ȃ̊܂܂�ĂˁH
	; �X�i�b�v�V���b�g�̃��b�N�������Ă����Ȃ��Ƃ܂����H�E�N���͂����Ŗ߂��ĂȂ����Ǘǂ��̂��ȁH
	;[unlocksnapshot]

	;����I�t���Ƃ܂����H�悭�킩��Ȃ��Ȃ������玗���悤�Ȃ̗����I�t��B
	[if exp="tf.fromtitle == 1 || tf.title_pass == 1 "]
		[eval exp="f.�^�C�g���ʉ߃t���O���I�t���� = 1"]
		[eval exp="tf.fromtitle = 0"]
		[eval exp="tf.title_pass = 0"]
	[endif]

	;CGMODE�ŊJ���`�F�b�N�Ɏg���t���O�I�t
	[eval exp="tf.CG�J���`�F�b�N = 0"]

	;���[�h���O�ɉE�N���b�N�ݒ肵�Ă����߂炵���̂Ńt���O�𗧂Ă�
	;���̃t���O���ĂĂ����Ȃ��ƃ��[�h��̉E�N���b�N�ݒ肳��Ȃ������B2015/04/28
	[eval exp="sf.���[�h��E�N���b�N���ݒ� = 1"]
	;���_�C�A���O�I���ł������Ă钆�ɓ����Ă����ǁA�����fc���Ń��[�h����̔���Ɏg���Ă邩��O�ɂȂ��Ƃ��߂����


	;�e��ʂ���߂鎞��f.sys_sub���I�� ���ꉽ�Ɏg���Ă�񂶂��H
	;//[eval exp="sf.sys_sub = 1"]
	[eval exp="tf.load = 0"]
	;[load place="&tf.load_click_num+sf.saveload_now_page*20" ask=true]

	[eval exp="tf.dialog_load = 1"]
	;�_�C�A���O�\��
	[jump storage="dialog.ks" target=*dialog_draw]


[endif]

;���_�C�A���O�I���ł������Ă钆�ɓ����Ă����ǁA�����fc���Ń��[�h����̔���Ɏg���Ă邩��O�ɂȂ��Ƃ��߂����
[eval exp="sf.���[�h��E�N���b�N���ݒ� = 1"]

[eval exp="tf.fromtitle = 0"]
[eval exp="tf.title_pass = 0"]
[eval exp="tf.load = 0"]

[eval exp="tf.�I�������O�\�����Ă� = 1"]
;���[�h�O�̃��b�Z�[�W����
[cm]
;�_�C�A���O�I�t�Ȃ炻�̂܂܃��[�h
[load place="&tf.load_click_num+sf.saveload_now_page*20"]
[s]


*load
[eval exp="tf.fromtitle = 0"]
[eval exp="tf.title_pass = 0"]
[eval exp="tf.load = 0"]
[eval exp="tf.�I�������O�\�����Ă� = 1"]
;���[�h�O�̃��b�Z�[�W����
;�}�N���ɓ���Ă�����1�ӏ��ōςނ��ǁA[load]�^�O�̑O�ɓ����ׂ���
[cm]
[load place="&tf.load_click_num+sf.saveload_now_page*20"]

;No�������火�������ցH
*load���Ȃ�
;�E�N���b�N�ݒ�t���O���I�t
;���̃t���O���ĂĂ����Ȃ��ƃ��[�h��̉E�N���b�N�ݒ肳��Ȃ������B2015/04/28
[eval exp="sf.���[�h��E�N���b�N���ݒ� = 0"]

[eval exp="tf.load = 1"]

[if exp="f.�^�C�g���ʉ߃t���O���I�t���� == 1"]
	[eval exp="f.�^�C�g���ʉ߃t���O���I�t���� = 0"]
	[eval exp="tf.fromtitle = 1"]
	[eval exp="tf.title_pass = 1"]
[endif]

[jump target=*load_menu]




;-----------------------------------------------------------
*savedata_lock_button_chgimage

;�T�u���[�`���Ƀ��b�N�A�A�����b�N�{�^�������������ɂ����B
[call storage="system_savedata_sub.ks" target=*savedata_lock_button_chgimage]

;���^�[��������redraw�֖߂�B
[jump target=*load_redraw]

;-----------------------------------------------------------
*savedata_erase

;�T�u���[�`���ɃZ�[�u�f�[�^���폜���ɂ����B
[call storage="system_savedata_sub.ks" target=*savedata_erase]
*�V���[�g�J�b�g�߂�

; ���[�h��ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
;[rclick jump=true target="*load_return" storage="system_load.ks" enabled=true]
;����v��Ȃ��̂��B���ꂠ��ƉE�N���b�N���A���Ȃ�


;���^�[��������menu�֖߂�B
[jump target=*load_menu]


;-----------------------------------------------------------
*jump_title
[if exp="sf.dialog_on"]
		[eval exp="tf.dialog_loadtitle = 1"]
		;�_�C�A���O�\��
		[jump storage="dialog.ks" target=*dialog_draw]
[endif]

;-----------------------------------
*load�^�C�g���ɖ߂�
;�_�C�A���O�I�t���̖߂蔲���Ă�
;�����t�@�C���ɏ����Ɩʓ|������_�C�A���O�T�u���[�`���̃^�C�g���֖߂�ɔ�΂�
[jump storage="dialog.ks" target=*�^�C�g���ɖ߂�]
;-----------------------------------

*load�^�C�g���ɖ߂�Ȃ�
;[cm]�Ȃ���������
[layopt layer="&sf.message_dialog" page=fore visible=false]
[layopt layer="&sf.message_dialog" page=back visible=false]

[call storage="dialog.ks" target=*�_�C�A���O����]


;�ꉞ�����ɂ������ ���[�h��ʂŃ}�E�X�E�N���b�N���ꂽ��A�u�߂�v�Ɠ��������������
[rclick jump=true target="*load_return" storage="system_load.ks" enabled=true]


[jump target=*load_menu]


;-----------------------------------------------------------

;
; �u�߂�v���I�����ꂽ�^�}�E�X�E�N���b�N���ꂽ
;
*load_return

;New�}�[�N�\���Ă����C���̃C���f�b�N�X��߂�
[layopt layer="&sf.newmarklayer" index="&sf.newmarklayer*1000+1000"]
[freeimage layer="&sf.newmarklayer" page=back][freeimage layer="&sf.newmarklayer" page=fore]

;������CM�����Ⴞ�߂Ȃ񂾂����H
;[cm]

; �ǂ����痈���H
; �^�C�g���@�Ȃ񂩓����悤�ȗp�r�̃t���O�������Ă��܂��Ă��
;[if exp="tf.fromtitle"]
[if exp="tf.title_pass"]
	;[jump storage="title.ks" target=*title_menu]
	;�^�C�g���R���t�B�O���[�h�Ŗ߂�Ȃ��́�����Ȃ����炩�B�R���t�B�O�Ɠ��������ɂȂ��ĂȂ������B
	[gotostart]
; �Q�[����
[elsif exp="tf.gameplay"]
	;�S���p�@���uvoice�I���ɂ��Ă���Đ��������B�I���A�ł��ĂĂ��Đ����������Ⴄ���ǂ���̓X���[
	[if exp="f.mob_voice_on == 1"]
		[eval exp="f.mob_voice_on = 0"]
		[vo_m s="&f.mobbgv_file"]
	[endif]
	[jump storage="systembutton_sub.ks" target=*sys_load_return]
[endif]

[return]


;��������sf�������ς��߂�
;*sub
;[eval exp="sf.save = 1"]
;[load place="&tf.load_i+sf.saveload_now_page*20"]
;[return]


