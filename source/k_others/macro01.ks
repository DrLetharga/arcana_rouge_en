;
; macro.ks�c�}�N����`
;

;
; �g�����F
;   [call storage="macro.ks"]
;
; ���ӎ����F
;   �]first.ks�̐擪�i�Z�[�u�\�ȃ��x�����O�Ɂj�œ��T�u���[�`�����Ăяo������
;

;=============================================================
; button_chgimage�}�N��
;=============================================================
; �@�\�T�v�F
;   �O���t�B�J���{�^���̉摜��ύX����
;
; �����F
;   num �c �O���t�B�J���{�^���̔ԍ��B�ȗ����O
;   graphic �c �{�^���̉摜�t�@�C�����B�w��K�{
;   graphickey �c �J���[�L�[
;
; ���l�F
;   �]num�����Ɏw�肷��l�́A���b�Z�[�W���C���̃N���A��A�쐬�����O���t�B�J���{�^���̏��ԁi�O�I���W���j�ƂȂ�
;
[macro name=button_chgimage]
	[eval exp="kag.current.links[+mp.num].object.loadImages(mp.graphic, mp.graphickey)"]
[endmacro]


;=============================================================
; button_loadthumbnail�}�N��
;=============================================================
; �@�\�T�v�F
;   �O���t�B�J���{�^���ɃZ�[�u�f�[�^�̃T���l�C���摜��`�悷��
;     �ʏ�̏�ԁF�Z�s�A���ɂ���
;     �{�^���������ꂽ��ԁF�K���}���グ��
;     �{�^����Ƀ}�E�X�������ԁF���H�Ȃ�
;   �O���t�B�J���{�^���̌��X�̉摜�f�[�^�̓T���l�C���摜�̏�Ƀ��u�����h�����
;
; �����F
;   num �c �O���t�B�J���{�^���̔ԍ��i�O�I���W���j
;   place �c �x�̔ԍ��i�O�I���W���j
;
; ���l�F
;   �]num�Ɏw�肷��l�́A�J�����g�̃��b�Z�[�W���C���̃N���A��A�쐬�����O���t�B�J���{�^���̏��Ԃł��邱�ƁB
;     ���̒l�́A�n�C�p�[�����N�A�`�F�b�N�{�b�N�X�A�G�f�B�b�g�{�b�N�X���J�E���g�̑ΏۂƂȂ��Ă���̂Œ���
;   �]�O���t�B�J���{�^���̃T�C�Y�͕�kag.thumbnailWidth*3�~����kag.thumbnailWidth*kag.scHeight\kag.scWidth
;     �s�N�Z���ł��邱��
;       ��ʃT�C�Y800�~600�s�N�Z���Ȃ�A�f�t�H���g�̃O���t�B�J���{�^����399�~99�s�N�Z���ƂȂ�
;   �]Config.tjs��saveThumbnail��true�ł��邱��
;
[macro name=button_loadthumbnail]
	[eval exp="loadThumbnail(+mp.num, +mp.place)"]
[endmacro]

	;=============================================================
	; sysbt_messagewindowl�V�X�e���{�^���ƃ��b�Z�[�W�E�B���h�E�\��
	;=============================================================
	; �@�\�T�v�F
	; �V�X�e���{�^���ƃ��b�Z�[�W�E�B���h�E���t�F�[�h�C���ꊇ�ŕ\��
	; 
	;[macro name=sysbt_messagewindow]
	;	[sysbtopt forevisible=true backvisible=true]
	;	[backlay layer=message0]
	;	[layopt layer=message0 page=back visible=true]
	;	[trans method="crossfade" time=150]
	;	[wt]
	;[endmacro]

	;=============================================================
	; sysbt_messagewindow_intl�V�X�e���{�^���ƃ��b�Z�[�W�E�B���h�E����
	;=============================================================
	; �@�\�T�v�F
	; �V�X�e���{�^���ƃ��b�Z�[�W�E�B���h�E���t�F�[�h�A�E�g�ꊇ�ŏ���
	; 
	;[macro name=sysbt_messagewindow_int]
	;	[sysbtopt forevisible=false backvisible=false]
	;	[backlay layer=message2]
	;	[layopt layer=message2 page=back visible=false]
	;	[trans method="crossfade" time=150]
	;	[wt]
	;[endmacro]


	; �w�i�\�� 2013/03/29�ǉ�
	; method�����@crossfade  universal
	; time�����@�t�F�[�h�̎���
	; �L�q��
	; [BG storage="BG02a" method=crossfade time=2000]
	; [BG storage="BG02a" rule="blindX" vague=50 time=2000]
	; rule�����@universal���̂ݐݒ�
	; vague�����@universal���̂ݐݒ�
	;[macro name=BG]
	;	[backlay layer=base]
	;	[image storage="%storage" layer=base page=back]
	;	[trans method=%method rule="%rule" vague=%vague time=%time]
	;	[wt]
	;[endmacro]


;=============================================================
;�_�C�A���O�n�̃t���O�I�t
;=============================================================
;�_�C�A���O�n�̃t���O���I�t�ɂ���B
;�_�C�����O�J���Ă�Œ��Ƀ��j���[�o�[����߂��Ă邩������Ȃ�����_�C�A���O�J���Ă��t���O�I�t
[macro name=dialog_flag_init]

	[eval exp="tf.dialog_conf_def       = 0"]
	[eval exp="tf.dialog_conf_scene     = 0"]
	[eval exp="tf.dialog_game_title     = 0"]
	[eval exp="tf.dialog_load           = 0"]
	[eval exp="tf.dialog_loadtitle      = 0"]
	[eval exp="tf.dialog_save           = 0"]
	[eval exp="tf.dialog_save_overwrite = 0"]
	[eval exp="tf.dialog_savedata_erase = 0"]
	[eval exp="tf.dialog_savedata_lock  = 0"]
	[eval exp="tf.dialog_savetitle      = 0"]
	[eval exp="tf.dialog_noappenddata      = 0"]
	;�ǉ�
	[eval exp="tf.dialog_now = 0"]
[endmacro]

;=============================================================
; fcl���ǃe�L�X�g�F�ς�
;=============================================================
; �@�\�T�v�F
; ���ǃe�L�X�g�F�ς�
; ���F�X�����ς�����
; 
[macro name=fc]
;�@�u*���x����|���o�����v �`���̃��x���̎��ɂ́A���� ct �^�O���邢�� cm �^�O�������ׂ��ł��B( �x�̃��[�h���ɂ̓��x��������s���n�܂邪�A���[�h���ɂ͕K�����b�Z�[�W���C����̕������N���A����邽�� )
;�����ł������Ƃ��Ȃ��ƃ��[�h�O�̃e�L�X�g���c���Ă�̂�
;�}�N���ɓ���Ă�����1�ӏ��ōςނ��ǁA[load]�^�O�̑O�ɓ����ׂ���
;[cm]

;;�Z�[�u�����[�h���Ȃ炱�̂��Ƃ̏����S����΂�
;[if    exp="sf.save == 1"]
;	[current layer="&tf.save_message1" page=fore]
;[elsif exp="sf.load == 1"]
;	[current layer="&tf.load_message1" page=fore]
;[else]



	;�E�B���h�E�t���O���I�t�Ȃ�\��
	;f.graphic_bt_sel�̓O���t�B�b�N�{�^���ɂ��I������ʗp�̃t���O�B
	;�^�C�g���ɂ�蕪����₷���t���O����p�ӂ����ꍇ���K�����̕ϐ��ɓ��꒼�����ƁI
	[if exp="f.winon == 0 && f.graphic_bt_sel == 0"]
		;�V�X�e���{�^�����E�B���h�E�\��
		[sysbt_meswin]
;	[elsif exp="f.txtgra == 1"]
;		;�V�X�e���{�^�����E�B���h�E����
;		[s_m clear]
	[endif]


;systembutton_sub.ks���o�R���Ă���e�L�X�g�ĕ\�����Ƀm�[�^�C��
[if exp="tf.sys_sub == 1"]
	[nowait]
	;�����ɕ������o�͂��Ȃ�
	[history output = false]
[endif]


;pcms�ŕۑ����Ă錻�݂̃t�@�C�����Ɠ����Ȃ�Z�[�u�e�L�X�g�ւ̑��d�L�^�����Ȃ����߂Ɏ��s
;AfterInit.tjs����������̂���������̂ŁAf.noStoreCurrentMessage�̃I���I�t�ŏ�������B
[if exp="kag.conductor.curStorage == f.ksStorageSys && kag.conductor.curLabel == f.ksLabelSys"]
	[eval exp="f.noStoreCurrentMessage = true"]
[endif]


[if exp="tf.QuickLoad == 1"]
		;�g�k�p�摜�ĕ\��
		[if    exp="f.zoomon == 1"]
			[zoom_fore]
		[endif]
		
		;blur�p�摜�ĕ\��
		[if    exp="f.bluron == 1"]
			[blur_again]
		[endif]

	;�N�C�b�N���[�h���ɕۑ������t�@�C���E���x���ƕۑ�����Ă�t�@�C���E���x���������Ȃ痚���o�͂��Ȃ�
	;�󔒂͑ł��o����邯�ǎd������܂�
	;[if exp="sf.ksStorageSys_tmp == f.ksStorageSys && sf.ksLabelSys_tmp == kag.currentLabel"]
	;;	;�����ɕ������o�͂��Ȃ�
	;	[history output = false]
	;[endif]
	;��肭�����Ă��͂���
	[call storage="systembutton_sub.ks" target=*sys_Qload]
[endif]

	;m:�I�[�g�E�X�L�b�v�������ɃO���t�Ɣ���Ă��܂��̂ŏ����ۗ�
	;[if exp="kag.autoMode"]
	;	[layopt layer=message3 page=fore visible=true]
	;	[position layer=message3 page=fore left=979 top=705 width="&kag.scWidth" height="&kag.scHeight" frame="game_auto_now" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
	;	[current layer=message1]
	;[endif]
	;[if exp="kag.skipMode"]
	;	[layopt layer=message3 page=fore visible=true]
	;	[position layer=message3 page=fore left=979 top=705 width="&kag.scWidth" height="&kag.scHeight" frame="game_skip_now" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
	;	[current layer=message1]
	;[endif]
	;[if exp="!kag.autoMode && !kag.skipMode"]
	;	[layopt layer=message3 page=fore visible=false]
	;	[current layer=message1]
	;[endif]

	;m �I������ĊJ���邩�ǂ����̔��f�Ɏg��
	;m:�X�L�b�v�ƃI�[�g�������ɍs���邱�Ƃ͂Ȃ��̂ŁAsf.now_skipauto=1���I�[�g�A2���X�L�b�v�Ƃ���B



	;�I�����\�����ł͂Ȃ��̂ł��ꂼ��̃��[�h�ɍ��킹�ăt���O�I��
	[if exp="f.selnow == 0 && f.briefing == 0"]
		[if exp="kag.autoMode"]
			[eval exp="f.now_skipauto = 1"]
		[elsif exp="kag.skipMode"]
			[eval exp="f.now_skipauto = 2"]
		[else]
			[eval exp="f.now_skipauto = 0"]
		[endif]
	[endif]

	;�I����������������� �����ǑI�����\�����ɃV�X�e����ʂɍs�������������Ȃ̂�
	;�I�������\�����A���A�V�X�e���߂�t���O���I���łȂ���ΑI��������������
	;�I�����̃f�[�^���N�C�b�N���[�h����Ƃ������񂶂���Ă邯�Ǘǂ��̂���
	;���̏����͒ʏ�v���C���ɑI�����ʉߌ�ׂ̈̏���
	;�Ȃ̂ŃV�X�e����ʂ���̖߂莞�͎��s���Ȃ��A���[�h��������s���Ȃ��B
	[if exp="f.selnow == 1 && tf.sys_sub == 0 && sf.���[�h��E�N���b�N���ݒ� != 1"]
	;[if exp="f.selnow == 1"]
;�S���p�J�b�g		[freeimage layer="&sf.layer_seltext" page=fore]
;�S���p�J�b�g		;�I����base���\��
;�S���p�J�b�g		[layopt layer="&sf.message_selbase" page=fore visible=false]
;�S���p�J�b�g		[current layer=message0]
;�S���p�J�b�g		;���C���̃C���f�b�N�X�߂�
;�S���p�J�b�g		[layopt layer="&sf.layer_seltext" index="&sf.layer_seltext*1000+1000"]

		[sellayer_index_init]
	[cm]
		;�I������X�L�b�v�p�����X�L�b�v���������Ȃ�X�L�b�v�J�n
		[if exp="sf.sel_skip == 1 && f.now_skipauto == 2"]
			[eval exp="kag.skipToStop()"]
		;�I������I�[�g�p�����I�[�g���������Ȃ�X�L�b�v�J�n
		[elsif exp="sf.sel_auto == 1 && f.now_skipauto == 1"]
			[eval exp="kag.enterAutoMode()"]
		[endif]

		;�Z�[�u���Ƀe�L�X�g�\���ɂ��邽�߂�false�ɖ߂�
		[eval exp="f.noStoreCurrentMessage = false"]

		;�I�����t���O�I�t
		[eval exp="f.selnow = 0"]
		[eval exp="f.�I�����\�������� = 0"]
		; �E�N���b�N���蓖�Ă�߂� �I�����\���t���O�I�t���Ă���E�N���Đݒ�
		[call storage="rclick_sub.ks"]



	[endif]





	;���[�h���ɉE�N���b�N�ݒ肷��B���x�����L�̏����ʂ�̂��A���Ȃ̂Ńt���O���I���Ȃ���s
	[if exp="sf.���[�h��E�N���b�N���ݒ� == 1"]

		;�g�k�p�摜�ĕ\��
		[if    exp="f.zoomon == 1"]
			[zoom_fore]
		[endif]

		;blur�p�摜�ĕ\�� ��������QuickLoad���o�R���ĂȂ���Ύ��s
		[if    exp="f.bluron == 1 && tf.QuickLoad != 1"]
			[blur_again]
		[endif]


		;���[�h�f�[�^�̔����ݒ��sf�����킹��
		;[eval exp="sf.SIROKURO = f.SIROKURO"]
		[eval exp="f.loadnow = 1"]

		; �E�N���b�N���蓖�Ă�ݒ肷��
		[call storage="rclick_sub.ks"]
		[eval exp="sf.���[�h��E�N���b�N���ݒ� = 0"]
		;SE�t�F�[�h �ꉞ�߂��Ă�����
;SE�}�N�����Ńf�t�H�ɖ߂����炱��͖���
;		[seopt buf=0 volume=100]
;		[seopt buf=1 volume=100]
;		[seopt buf=2 volume=100]
;		[seopt buf=3 volume=100]
;		[seopt buf=4 volume=100]

		;�O�̈׃^�C�g����Ԃ��I�t
		[eval exp="tf.title = 0"]

		;�N���[�h���ɕۑ������t�@�C���E���x���ƕۑ�����Ă�t�@�C���E���x���������Ȃ痚���o�͂��Ȃ�
		;�󔒂͑ł��o����邯�ǎd������܂�
		;[if exp="sf.ksStorageSys_tmpload == f.ksStorageSys && sf.ksLabelSys_tmpload == kag.currentLabel"]
		;;	;�����ɕ������o�͂��Ȃ�
		;	[history output = false]
		;[endif]

		;���[�h���Ȃ炽�Ƃ��I�����̒��O�܂ŃX�L�b�vor�I�[�g�if.now_skipauto�j���낤�ƃL�����Z�����Ă����B
		;��̕��́A�I������������������p��if�����ł��ق����������낤���ǂ����Ⴒ���Ⴕ�Ă邩�炱���Ŗⓚ���p�ŁB
		[eval exp="f.now_skipauto = 0"]
		[cancelskip]
		[cancelautomode]
		;�R�����Ƃ��Ȃ��ƃZ�[�u���̓��ߓx�ɂȂ��Ă� 2016/11/26
		;f.win_narration == 1�͖S���p�̔���
;		[if    exp="f.win_narration == 1"]
;			[sysbt_meswin3]
;		;�u���[�t�B���O��ʂɓ����Ă��Ȃ��Ȃ�\��
;		[elsif exp="f.winon == 0 && f.briefing == 0 && f.txtgra == 0"]
			[s_m cond="f.graphic_bt_sel == 0"]
;		[endif]

		[eval exp="kag.fore.messages[0].frameOpacity = sf.graphicframe_opacity"]
		[eval exp="kag.back.messages[0].frameOpacity = sf.graphicframe_opacity"]

		;�t�F�[�h�A�E�g�������o�b�t�@��O�̃^����~�@2017/10/14
		[if exp="f.stopse_fadeout != void"]
			[stopse buf=0  cond="f.stopse_fadeout == 0"]
			[stopse buf=1  cond="f.stopse_fadeout == 1"]
			[stopse buf=2  cond="f.stopse_fadeout == 2"]
			[stopse buf=3  cond="f.stopse_fadeout == 3"]
			[eval exp="f.stopse_fadeout = void"]
		[endif]

	[endif]


	;�V�X�e����ʋA��p�̊��ǔ���
	[if exp="tf.sys_sub == 1"]

	;�Ȃ�Ŏ��̃N���b�N����ĊJ�Ȃ񂾁H�Ă��V�X�̖߂�̎�����Ȃ��Ɩ�������Ⴄ��
	[se_HLoop buf1 storage="&f.tmp_se_HLoop1" cond="f.tmp_se_HLoop1 != void"]
	[se_HLoop buf2 storage="&f.tmp_se_HLoop2" cond="f.tmp_se_HLoop2 != void"]
	;BGV�ēx�Đ�
	[bgv_aka s="&f.tmp_bgv_ch01" cond="f.tmp_bgv_ch01 != void"]
	[bgv_aoi s="&f.tmp_bgv_ch02" cond="f.tmp_bgv_ch02 != void"]
	[bgv_mia s="&f.tmp_bgv_ch03" cond="f.tmp_bgv_ch03 != void"]
	[bgv_mei s="&f.tmp_bgv_ch04" cond="f.tmp_bgv_ch04 != void"]

		;���ǂ̃n�Y�A�������͖��ǂ��X�L�b�v�Ȃ̂ŏ�������
		[if     exp="f.�܂����ǂł͂Ȃ� == 0 || sf.allskip == 1"]
			[font face="user" color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor"]

		;�܂����ǂł͂Ȃ�
		[elsif  exp="f.�܂����ǂł͂Ȃ� == 1"]
		;���ǐF�ւ��͂��Ȃ��̂ŏ��������Ŕ�����
			[font face="user" color="0xffffff" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor"]
		[endif]

	;�������͒ʏ펞�̊��ǔ���
	[else]

		;���ǃe�L�X�g�F�ς�
;		[if exp="kag.getCurrentRead() == true && f.���ǐF�ւ����Ȃ� != 1"]
		;���Ȃ񂩗]�v�ȃt���O��
		[if exp="kag.getCurrentRead() == true"]
			[font color="&sf.kidoku_RGB" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor"]
			[eval face="user" exp="f.�܂����ǂł͂Ȃ� = 0"]
		[else]
			;�܂����ǂł͂Ȃ�
			[eval exp="f.�܂����ǂł͂Ȃ� = 1"]
			[font face="user" color="0xffffff" bold=true edge="&sf.edge_on" edgecolor="&sf.kidoku_Edgecolor"]

		[endif]
	[endif]



;�G�����[�r�[�p	;�Ȃ񂩁��̂ق���Load���̂Ƃ��ł��ƃ��[�r�[�Đ��ł��Ȃ����炱����
;�G�����[�r�[�p	;�}�N���ɂ���ƃt�@�C�������������炾�߂�
;�G�����[�r�[�p	;�t�H���g�p�@movie�Đ����Ȃ�movie���ߎ��s�@�Ƃ肠�������[�v���߂���������1�V���b�g�̂��K�v����
;�G�����[�r�[�p	[if exp="f.loadnow == 1 && f.movieplaynow == 1"]
;�G�����[�r�[�p
;�G�����[�r�[�p		;�A�j���X�L�b�v���Ȃ�
;�G�����[�r�[�p		[eval exp="sf.g_anime_skip = 0"]
;�G�����[�r�[�p
;�G�����[�r�[�p		[if exp="f.movie_loop == 1"]
;�G�����[�r�[�p			[video visible=true left=0 top=0 width=1024 height=768 mode=layer loop=true]
;�G�����[�r�[�p		[else]
;�G�����[�r�[�p			[video visible=true left=0 top=0 width=1024 height=768 mode=layer loop=false]
;�G�����[�r�[�p		[endif]
;�G�����[�r�[�p		[videolayer channel=1 page=fore layer=1]
;�G�����[�r�[�p		[openvideo storage="&f.moviefile"]
;�G�����[�r�[�p		[preparevideo][wp for=prepare]
;�G�����[�r�[�p		[playvideo]
;�G�����[�r�[�p	[endif]

	;�^�C�g����ʂ̃N�C�b�N���[�h�������t���O
	[eval exp="tf.QuickLoad_title = 0"]

[endmacro]

;=============================================================
; pcmsl���y�[�W�A���b�Z�[�W�N���A�A�{�C�X������~
;=============================================================

;�������Ȃ��}�[�J�[����̃}�N��
[macro name=nor]
[endmacro]



; �@�\�T�v�F
; ���y�[�W�A���b�Z�[�W�N���A�A�{�C�X������~
; �I�[�g���[�h�̎��̓{�C�X�Đ��҂�������B
; 
[macro name=pcms]

;�O���t�ʒu��C�ӂ̍��W�ɕύX
[glyph fix=true]
[eval exp="f.loadnow = 0"]
;	;��
;	;�Z�[�u�����[�h���Ȃ烊�^�[��
;	[if exp="sf.save == 1"]
;		[jump storage="system_save.ks" target=*�e�L�X�g�\���߂�]
;
;	[elsif exp="sf.load == 1"]
;		[jump storage="system_load.ks" target=*�e�L�X�g�\���߂�]
;
;	[endif]
;	;��


;pcms�ŕۑ����Ă錻�݂̃t�@�C�����Ɠ����Ȃ�Z�[�u�e�L�X�g�ւ̋L�^�����Ȃ����߂Ɏ��s��������false�ɖ߂�
[if exp="kag.conductor.curStorage == f.ksStorageSys && kag.conductor.curLabel == f.ksLabelSys"]
	[eval exp="f.noStoreCurrentMessage = false"]
[endif]

;�E�N���b�N�ŉ�ʑJ�ڂ����ꍇ�Ƀt���O��ۑ��ł��Ȃ��̂ŁA�ۑ������������ł��B
;���݂̃t�@�C����
[eval exp="f.ksStorageSys = (kag.conductor.curStorage)"]
;���݂̃��x����
[eval exp="f.ksLabelSys = (kag.conductor.curLabel)"]
;�׈��ŊĎ��p��sf�ɂ��ۑ��@QuickLoad�œ������O�g���Ă邩�炿����Ɩ��O�ς���
[eval exp="sf.ksStorageSys�Ď��p = (kag.conductor.curStorage)"]
[eval exp="sf.ksLabelSys�Ď��p = (kag.conductor.curLabel)"]

;;//���O���d�o�͂悯�̔���ׂ̈̃t���O�ۑ� ���[�h������������Ⴄ����sf��
;[eval exp="sf.ksStorageSys_tmpload = (kag.conductor.curStorage)"]
;;//kag.conductor.currentLabel���Ƃ��܂������Ȃ�
;[eval exp="sf.ksLabelSys_tmpload = (kag.currentLabel)"]

	[ws buf="&sf.chara01_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara01 != void"]
	[ws buf="&sf.chara02_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara02 != void"]
	[ws buf="&sf.chara03_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara03 != void"]
	[ws buf="&sf.chara04_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara04 != void"]
	[ws buf="&sf.chara05_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara05 != void"]
	[ws buf="&sf.chara06_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara06 != void"]
	[ws buf="&sf.chara07_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara07 != void"]
	[ws buf="&sf.chara08_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara08 != void"]
	[ws buf="&sf.chara09_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara09 != void"]
	[ws buf="&sf.chara10_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara10 != void"]
	[ws buf="&sf.chara11_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara11 != void"]
	[ws buf="&sf.chara12_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara12 != void"]
;//	[ws buf=16 canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara07 != void"]
;//	[ws buf=5 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=7 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=9 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=11 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=13 canskip=true cond="kag.autoMode && sf.v_autowait"]


	;systembutton_sub.ks���o�R���Ă���e�L�X�g�ĕ\�����ɃG���h�m�[�^�C���B�t���O���I�t��
	[if exp="tf.sys_sub == 1"]
		[endnowait]


		[eval exp="tf.sys_sub = 0"]
		[p]
		[cm]

		;�����ɕ������o��
		[history output = true]



;	[elsif exp="sf.���[�h��E�N���b�N���ݒ� == 1"]
;		[p]
;		[cm]
;		;�����ɕ������o��
;		[history output = true]
;		[eval exp="sf.���[�h��E�N���b�N���ݒ� = 0"]
	[else]

		[hr]

		[eval exp="tf.QuickLoad = 0"]

		[p]
		[cm]
		
		;�����ɕ������o��
		[history output = true]

		[endif]

	[endif]



	;��ʗh�炵���Ȃ�~�߂�
	[if exp="f.quakesp_now == 1"]
		[eval exp="f.quakesp_now = 0"]
		[stopquakesp]
	[endif]


	;f.�Q�[�����{�^����void�łȂ���΃T�u���[�`�����Ăтɂ����{�^����\���B
	;���̃T�u���[�`���͎��_�ύX�{�^�����Ŏg�p�\��B
	[if exp="f.�Q�[�����{�^�� != void"]
		[call storage="gameplay_bt_sub.ks"]
	[endif]

	[if exp="f.namechip_on == 1"]
		[layopt layer=message4 page=fore visible=false]
		;�t�F�C�X�E�B���h�E����
		;�I�����Ȃ��ɃI���Ԃ����Ⴄ����n�̕��ŕ\�����ꂿ�Ⴄ����visible���䂶��Ȃ���freeimage����
		[freeimage layer="&sf.layer_face_winbase"  page=fore][freeimage layer="&sf.layer_face_winbase"  page=back]
		[freeimage layer="&sf.layer_face_win"      page=fore][freeimage layer="&sf.layer_face_win"      page=back]
		[freeimage layer="&sf.layer_face_winflame" page=fore][freeimage layer="&sf.layer_face_winflame" page=back]

;�摜�l�[���`�b�v�̏ꍇ�͕s�v
;//		;�l�[���`�b�v��\�����Ă��ꍇ���b�Z�[�W�̃}�[�W�����ς���Ă邩��߂��B�l�[���`�b�v�̕\�����e�L�X�g�ł�message4�ɂ��Ă邩��z���g�͂����ōĐݒ肢��Ȃ����ǎc���Ă���
;//		[layopt layer=message1 left="&sf.window_x" top="&sf.window_y+sf.window_chousei" visible=true]
;//		;�N���b�N�҂��O���t�̍��W���ɖ߂�
;//		[glyph page=PageBreak fix=true left="&sf.glyph_x" top="&sf.glyph_y"]
		[eval exp="f.namechip_on = 0"]
	[endif]

;�{�C�X�J�b�g�I���Ȃ���y�[�W���ɂ��ꂼ��̃o�b�t�@���~
	[if exp="sf.v_stop"]
		;[stopse buf=4]
		;[stopse buf=6]
		;[stopse buf=8]
		;[stopse buf=10]
		;[stopse buf=12]
		;�t�F�[�h�̕����������ȁH �₽��u�`�u�`�����̂ŏ�����������
		[fadeoutse buf="&sf.chara01_buf" time=200 cond="sf.bt_num_chara01 != void"]
		[fadeoutse buf="&sf.chara02_buf" time=200 cond="sf.bt_num_chara02 != void"]
		[fadeoutse buf="&sf.chara03_buf" time=200 cond="sf.bt_num_chara03 != void"]
		[fadeoutse buf="&sf.chara04_buf" time=200 cond="sf.bt_num_chara04 != void"]
		[fadeoutse buf="&sf.chara05_buf" time=200 cond="sf.bt_num_chara05 != void"]
		[fadeoutse buf="&sf.chara06_buf" time=200 cond="sf.bt_num_chara06 != void"]
		[fadeoutse buf="&sf.chara07_buf" time=200 cond="sf.bt_num_chara07 != void"]
		[fadeoutse buf="&sf.chara08_buf" time=200 cond="sf.bt_num_chara08 != void"]
		[fadeoutse buf="&sf.chara09_buf" time=200 cond="sf.bt_num_chara09 != void"]
		[fadeoutse buf="&sf.chara10_buf" time=200 cond="sf.bt_num_chara10 != void"]
		[fadeoutse buf="&sf.chara11_buf" time=200 cond="sf.bt_num_chara11 != void"]
		[fadeoutse buf="&sf.chara12_buf" time=200 cond="sf.bt_num_chara12 != void"]
	[endif]


;		;�{�C�XOnly���[�h�Ȃ�X�L�b�v�J�n
;		[if exp="tf.voiceonly == 1"]
;			[eval exp="kag.enterAutoMode()"]
;		[endif]

	;�{�C�X�I���Ȃ�΁@����
	;�ŏ��̓I�����������ǃ{�C�X�Đ����Ă���R���t�B�O�����ăI�t�ɂ����ꍇ�́A���ꂾ�Ɖ��ʂ��Ƃɖ߂�Ȃ���
	;sf.chara01_v�͕s�v���H���ʂ����Ɠ����܂܂��Ȃ�
	;�����L�����Ȃ�f.bgvnow�������K�v���H
;	[if exp="f.bgvnow"]
		;[bgv_a s="&f.tmp_bgv_ch01"]
		[seopt buf="&sf.chara01L_buf" volume="&f.tmp_seopt_chara01L"  cond="f.bgvnow_ch01"]
		[seopt buf="&sf.chara02L_buf" volume="&f.tmp_seopt_chara02L"  cond="f.bgvnow_ch02"]
		[seopt buf="&sf.chara03L_buf" volume="&f.tmp_seopt_chara03L"  cond="f.bgvnow_ch03"]
		[seopt buf="&sf.chara04L_buf" volume="&f.tmp_seopt_chara04L"  cond="f.bgvnow_ch04"]
;	[endif]



	;�Z���t�����o���΂����ǂ����̔���Ɏg���B[p]�߂��Ă邩��I�t��
	[eval exp="tf.sys_return = 0"]

	;�t�F�[�h�A�E�g�������o�b�t�@��O�̃^����~�@2017/10/14
	;����ς������ł��������Ȃ��Ǝ~�߂��t���O���������ςɂȂ��
	;����@�Ƃ߂�pcms�܂����Ȃ��œ����o�b�t�@�Ń��[�v�����ƃt���O�I���̂܂܂�����~�܂����Ⴄ��
	;fc�ɓ����Ƃ����Ɏ~�܂����Ⴄ���Ȃ��ǂ����悤�B�~�߂�����Ȃ��̂�
	[if exp="f.stopse_fadeout != void"]
		;[stopse buf=0  cond="f.stopse_fadeout == 0"]
		;[stopse buf=1  cond="f.stopse_fadeout == 1"]
		;[stopse buf=2  cond="f.stopse_fadeout == 2"]
		;[stopse buf=3  cond="f.stopse_fadeout == 3"]
		[eval exp="f.stopse_fadeout = void"]
	[endif]

	;�{�C�X�Đ���������Ɍ��肵�Ă������ق���������
	;���b�Z�[�W�����A�N�V�����̏I�� ����ʂɂ���Ȃ������̂��ȁB�Ȃ��̂ɕ��ʂɓ��삵�Ă邵
	[if exp="f.voice_now == 1"]
		;����Ȃ�ł����ł���Ă��񂾂�
;		[endhact]
		[eval exp="f.voice_now = 0"]
	[endif]

	;�t�F�C�X�\���t���OOFF
	;���̃t���O��face_win�^�O�����ŕK��ON�ɂȂ�A�����G�\���̏ꍇ�K��ON�ɂȂ�
	;�o�b�N���O�\��������̍ĕ\������Ɏg���@�L�ډӏ��uMainWindow.tjs(4031): 	function showMessageLayerByUser()�v
	;�o�b�N���O�\������t�F�C�X���\������Ă�Ƃ��ɁA�ĕ\������΂��������Ȃ̂�pcms�ʉߌ�͏��������Ă����Ȃ��͂�
	[eval exp="f.face_win_�o�b�N���O�΍� = 0"]

[endmacro]

;�ł��������b�Z�[�W�E�B���h�E�̉��y�[�W�}�N���B�����������Ȃ�
[macro name=lrs]

;�O���t�ʒu��C�ӂ̍��W�ɕύX
[glyph fix=false]
[eval exp="f.loadnow = 0"]
;	;��
;	;�Z�[�u�����[�h���Ȃ烊�^�[��
;	[if exp="sf.save == 1"]
;		[jump storage="system_save.ks" target=*�e�L�X�g�\���߂�]
;
;	[elsif exp="sf.load == 1"]
;		[jump storage="system_load.ks" target=*�e�L�X�g�\���߂�]
;
;	[endif]
;	;��


;pcms�ŕۑ����Ă錻�݂̃t�@�C�����Ɠ����Ȃ�Z�[�u�e�L�X�g�ւ̋L�^�����Ȃ����߂Ɏ��s��������false�ɖ߂�
[if exp="kag.conductor.curStorage == f.ksStorageSys && kag.conductor.curLabel == f.ksLabelSys"]
	[eval exp="f.noStoreCurrentMessage = false"]
[endif]

;�E�N���b�N�ŉ�ʑJ�ڂ����ꍇ�Ƀt���O��ۑ��ł��Ȃ��̂ŁA�ۑ������������ł��B
;���݂̃t�@�C����
[eval exp="f.ksStorageSys = (kag.conductor.curStorage)"]
;���݂̃��x����
[eval exp="f.ksLabelSys = (kag.conductor.curLabel)"]
;�׈��ŊĎ��p��sf�ɂ��ۑ��@QuickLoad�œ������O�g���Ă邩�炿����Ɩ��O�ς���
[eval exp="sf.ksStorageSys�Ď��p = (kag.conductor.curStorage)"]
[eval exp="sf.ksLabelSys�Ď��p = (kag.conductor.curLabel)"]

;;//���O���d�o�͂悯�̔���ׂ̈̃t���O�ۑ� ���[�h������������Ⴄ����sf��
;[eval exp="sf.ksStorageSys_tmpload = (kag.conductor.curStorage)"]
;;//kag.conductor.currentLabel���Ƃ��܂������Ȃ�
;[eval exp="sf.ksLabelSys_tmpload = (kag.currentLabel)"]

	[ws buf="&sf.chara01_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara01 != void"]
	[ws buf="&sf.chara02_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara02 != void"]
	[ws buf="&sf.chara03_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara03 != void"]
	[ws buf="&sf.chara04_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara04 != void"]
	[ws buf="&sf.chara05_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara05 != void"]
	[ws buf="&sf.chara06_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara06 != void"]
	[ws buf="&sf.chara07_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara07 != void"]
	[ws buf="&sf.chara08_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara08 != void"]
	[ws buf="&sf.chara09_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara09 != void"]
	[ws buf="&sf.chara10_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara10 != void"]
	[ws buf="&sf.chara11_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara11 != void"]
	[ws buf="&sf.chara12_buf" canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara12 != void"]
;//	[ws buf=16 canskip=true cond="kag.autoMode && sf.v_autowait && sf.bt_num_chara07 != void"]
;//	[ws buf=5 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=7 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=9 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=11 canskip=true cond="kag.autoMode && sf.v_autowait"]
;//	[ws buf=13 canskip=true cond="kag.autoMode && sf.v_autowait"]


	;systembutton_sub.ks���o�R���Ă���e�L�X�g�ĕ\�����ɃG���h�m�[�^�C���B�t���O���I�t��
	[if exp="tf.sys_sub == 1"]
		[endnowait]


		[eval exp="tf.sys_sub = 0"]
		[l]
		[r]

		;�����ɕ������o��
		[history output = true]



;	[elsif exp="sf.���[�h��E�N���b�N���ݒ� == 1"]
;		[p]
;		[cm]
;		;�����ɕ������o��
;		[history output = true]
;		[eval exp="sf.���[�h��E�N���b�N���ݒ� = 0"]
	[else]

		[hr]

		[eval exp="tf.QuickLoad = 0"]

		[l]
		[r]
		
		;�����ɕ������o��
		[history output = true]

		[endif]

	[endif]



	;��ʗh�炵���Ȃ�~�߂�
	[if exp="f.quakesp_now == 1"]
		[eval exp="f.quakesp_now = 0"]
		[stopquakesp]
	[endif]


	;f.�Q�[�����{�^����void�łȂ���΃T�u���[�`�����Ăтɂ����{�^����\���B
	;���̃T�u���[�`���͎��_�ύX�{�^�����Ŏg�p�\��B
	[if exp="f.�Q�[�����{�^�� != void"]
		[call storage="gameplay_bt_sub.ks"]
	[endif]

	[if exp="f.namechip_on == 1"]
		[layopt layer=message4 page=fore visible=false]
		;�t�F�C�X�E�B���h�E����
		;�I�����Ȃ��ɃI���Ԃ����Ⴄ����n�̕��ŕ\�����ꂿ�Ⴄ����visible���䂶��Ȃ���freeimage����
		;����	[freeimage layer="&sf.layer_face_winbase"  page=fore][freeimage layer="&sf.layer_face_winbase"  page=back]
		[freeimage layer="&sf.layer_face_win"      page=fore][freeimage layer="&sf.layer_face_win"      page=back]
		;����	[freeimage layer="&sf.layer_face_winflame" page=fore][freeimage layer="&sf.layer_face_winflame" page=back]

;�摜�l�[���`�b�v�̏ꍇ�͕s�v
;//		;�l�[���`�b�v��\�����Ă��ꍇ���b�Z�[�W�̃}�[�W�����ς���Ă邩��߂��B�l�[���`�b�v�̕\�����e�L�X�g�ł�message4�ɂ��Ă邩��z���g�͂����ōĐݒ肢��Ȃ����ǎc���Ă���
;//		[layopt layer=message1 left="&sf.window_x" top="&sf.window_y+sf.window_chousei" visible=true]
;//		;�N���b�N�҂��O���t�̍��W���ɖ߂�
;//		[glyph page=PageBreak fix=true left="&sf.glyph_x" top="&sf.glyph_y"]
		[eval exp="f.namechip_on = 0"]
	[endif]

;�{�C�X�J�b�g�I���Ȃ���y�[�W���ɂ��ꂼ��̃o�b�t�@���~
	[if exp="sf.v_stop"]
		;[stopse buf=4]
		;[stopse buf=6]
		;[stopse buf=8]
		;[stopse buf=10]
		;[stopse buf=12]
		;�t�F�[�h�̕����������ȁH �₽��u�`�u�`�����̂ŏ�����������
		[fadeoutse buf="&sf.chara01_buf" time=200 cond="sf.bt_num_chara01 != void"]
		[fadeoutse buf="&sf.chara02_buf" time=200 cond="sf.bt_num_chara02 != void"]
		[fadeoutse buf="&sf.chara03_buf" time=200 cond="sf.bt_num_chara03 != void"]
		[fadeoutse buf="&sf.chara04_buf" time=200 cond="sf.bt_num_chara04 != void"]
		[fadeoutse buf="&sf.chara05_buf" time=200 cond="sf.bt_num_chara05 != void"]
		[fadeoutse buf="&sf.chara06_buf" time=200 cond="sf.bt_num_chara06 != void"]
		[fadeoutse buf="&sf.chara07_buf" time=200 cond="sf.bt_num_chara07 != void"]
		[fadeoutse buf="&sf.chara08_buf" time=200 cond="sf.bt_num_chara08 != void"]
		[fadeoutse buf="&sf.chara09_buf" time=200 cond="sf.bt_num_chara09 != void"]
		[fadeoutse buf="&sf.chara10_buf" time=200 cond="sf.bt_num_chara10 != void"]
		[fadeoutse buf="&sf.chara11_buf" time=200 cond="sf.bt_num_chara11 != void"]
		[fadeoutse buf="&sf.chara12_buf" time=200 cond="sf.bt_num_chara12 != void"]
	[endif]


;		;�{�C�XOnly���[�h�Ȃ�X�L�b�v�J�n
;		[if exp="tf.voiceonly == 1"]
;			[eval exp="kag.enterAutoMode()"]
;		[endif]

	;�Z���t�����o���΂����ǂ����̔���Ɏg���B[p]�߂��Ă邩��I�t��
	[eval exp="tf.sys_return = 0"]

	;�t�F�[�h�A�E�g�������o�b�t�@��O�̃^����~�@2017/10/14
	;����ς������ł��������Ȃ��Ǝ~�߂��t���O���������ςɂȂ��
	;����@�Ƃ߂�pcms�܂����Ȃ��œ����o�b�t�@�Ń��[�v�����ƃt���O�I���̂܂܂�����~�܂����Ⴄ��
	;fc�ɓ����Ƃ����Ɏ~�܂����Ⴄ���Ȃ��ǂ����悤�B�~�߂�����Ȃ��̂�
	[if exp="f.stopse_fadeout != void"]
		;[stopse buf=0  cond="f.stopse_fadeout == 0"]
		;[stopse buf=1  cond="f.stopse_fadeout == 1"]
		;[stopse buf=2  cond="f.stopse_fadeout == 2"]
		;[stopse buf=3  cond="f.stopse_fadeout == 3"]
		[eval exp="f.stopse_fadeout = void"]
	[endif]

	;�{�C�X�Đ���������Ɍ��肵�Ă������ق���������
	;���b�Z�[�W�����A�N�V�����̏I�� ����ʂɂ���Ȃ������̂��ȁB�Ȃ��̂ɕ��ʂɓ��삵�Ă邵
	[if exp="f.voice_now == 1"]
;		[endhact]
		[eval exp="f.voice_now = 0"]
	[endif]


[endmacro]


;�E�B���h�E3���ɃV�X�e����ʂ���߂������̏���
[macro name=win3wait]
	[eval exp="f.loadnow = 0"]
	[l cond="tf.sys_sub == 1"][r cond="tf.sys_sub == 1"][eval exp="tf.sys_sub = 0"]
[endmacro]

;=============================================================
;�I�����\�����p�̃}�N��
;���ۂɂ�p�^�O�͒u���Ȃ����A�������₷�����邽�߂��̖��O�B
[macro name=pcms_sel]

	;�V���[�g�J�b�g���b�N����
	;[eval exp="tf.shortcut = 1"] �g���ĂȂ��H

	;�E�N���b�N�ŉ�ʑJ�ڂ����ꍇ�Ƀt���O��ۑ��ł��Ȃ��̂ŁA�ۑ�������pcms�}�N�����ł���Ă�񂾂���
	;���݂̃t�@�C����
	[eval exp="f.ksStorageSys = (kag.conductor.curStorage)"]
	;���݂̃��x����
	[eval exp="f.ksLabelSys = (kag.conductor.curLabel)"]
	;�׈��ŊĎ��p��sf�ɂ��ۑ��@QuickLoad�œ������O�g���Ă邩�炿����Ɩ��O�ς���
	[eval exp="sf.ksStorageSys�Ď��p = (kag.conductor.curStorage)"]
	[eval exp="sf.ksLabelSys�Ď��p = (kag.conductor.curLabel)"]

	[r]
	[hr]

	;�����o�̓I���ɂ��邽�߂ɏ�����pcms���Ɉړ�
	[if exp="tf.QuickLoad == 1"]
		;�����ɕ������o��
		[history output = true]
		[eval exp="tf.QuickLoad = 0"]
	[endif]


	;[if exp="sf.���[�h��E�N���b�N���ݒ� == 1"]
	;	;�����ɕ������o��
	;	[history output = true]
	;	[eval exp="sf.���[�h��E�N���b�N���ݒ� = 0"]
	;[endif]


	;��ʗh�炵���Ȃ�~�߂�
	[if exp="f.quakesp_now == 1"]
		[eval exp="f.quakesp_now = 0"]
		[stopquakesp]
	[endif]

	;�t�F�[�h�A�E�g�������o�b�t�@��O�̃^����~�@2017/10/14
	;����ς������ł��������Ȃ��Ǝ~�߂��t���O���������ςɂȂ��
	[if exp="f.stopse_fadeout != void"]
		;[stopse buf=0  cond="f.stopse_fadeout == 0"]
		;[stopse buf=1  cond="f.stopse_fadeout == 1"]
		;[stopse buf=2  cond="f.stopse_fadeout == 2"]
		;[stopse buf=3  cond="f.stopse_fadeout == 3"]
		[eval exp="f.stopse_fadeout = void"]
	[endif]

[endmacro]

;=============================================================
;CG�M�������[�A�T���l�x�[�X�N���A�p�̂܂���
;�T���l�x�[�X��pimage�ɕς������炱�̃}�N���Ӗ��Ȃ��Ƃ����������Ǐ����Ɩ߂莞��CG�Ɖ�z�̔w�i�o�Ȃ��Ȃ�
[macro name="cgthum_int"]
	[freeimage layer=0 page=back][freeimage layer=0 page=fore]
	[freeimage layer=1 page=back][freeimage layer=1 page=fore]
	[freeimage layer=2 page=back][freeimage layer=2 page=fore]
	[freeimage layer=3 page=back][freeimage layer=3 page=fore]
	[freeimage layer=4 page=back][freeimage layer=4 page=fore]
	[freeimage layer=5 page=back][freeimage layer=5 page=fore]
	[freeimage layer=6 page=back][freeimage layer=6 page=fore]
	[freeimage layer=7 page=back][freeimage layer=7 page=fore]
	[freeimage layer=8 page=back][freeimage layer=8 page=fore]
	[freeimage layer=9 page=back][freeimage layer=9 page=fore]
	[freeimage layer=10 page=back][freeimage layer=10 page=fore]
	[freeimage layer=11 page=back][freeimage layer=11 page=fore]
	[freeimage layer=12 page=back][freeimage layer=12 page=fore]
	[freeimage layer=13 page=back][freeimage layer=13 page=fore]
[endmacro]


;=============================================================
;�S�����}�N���Bcm����Ă邩�烁�b�Z�[�W���e��������̂ŁA�Q�[�����Ƃ��R���t�B�O�ɂ͂��߁B�I�}�P���[�h�p�Ɏg���B
;�Ȃ񂩏������ɊԂ��ł��ċC������������cgthum_int�ł�����B
;�g���������邩��������c���Ă������ǁB
[macro name="�S����"]
	[cm]
	[backlay]
	; *all_erase���T�u���[�`���R�[��
	[call storage=allint.ks target=*all_erase]
	[trans method=crossfade time=1]
	[wt]
[endmacro]

;=============================================================
;���r
;=============================================================
;�A���h������u���Ƃ��A���h���ɒu�����鎞�ɋL�q�����t�ł߂�ǂ���������}�N��������
;�g����
;[ruby_c t="����" r="����"]
;���܂܂ł̃e���v���Ƌt�ŁA�e�L�X�g�A���r�̏��ɂȂ�B

[macro name="ruby_c"]
	[ruby text=%r][ch text=%t]
[endmacro]

;=============================================================
;
; ���V�C
;
; ����
@macro name=clearweather
	[ch text="&$0x2600"]
@endmacro
; �܂�
@macro name=cloud
	[ch text="&$0x2601"]
@endmacro
; �J
@macro name=rain
	[ch text="&$0x2602"]
@endmacro
; ��
@macro name=snow
	[ch text="&$0x2603"]
@endmacro
;
; ���댯
;
; ��
@macro name=bone
	[ch text="&$0x2620"]
@endmacro
; ���˔\
@macro name=radioactive
	[ch text="&$0x2622"]
@endmacro
; �o�C�I�n�U�[�h
@macro name=biohazard
	[ch text="&$0x2623"]
@endmacro
;
; ���g�����v
;
; �X�y�[�h�i�������j
@macro name=spade1
	[ch text="&$0x2664"]
@endmacro
; �X�y�[�h�i�h��Ԃ��j
@macro name=spade2
	[ch text="&$0x2660"]
@endmacro
; �n�[�g�i�������j
@macro name=heart1
	[ch text="&$0x2661"]
@endmacro
; �n�[�g�i�h��Ԃ��j
@macro name=heart2
	[ch text="&$0x2665"]
@endmacro
; �_�C���i�������j
@macro name=dia1
	[ch text="&$0x2662"]
@endmacro
; �_�C���i�h��Ԃ��j
@macro name=dia2
	[ch text="&$0x2666"]
@endmacro
; �N���[�o�[�i�������j
@macro name=clover1
	[ch text="&$0x2667"]
@endmacro
; �N���[�o�[�i�h��Ԃ��j
@macro name=clover2
	[ch text="&$0x2663"]
@endmacro
;
; �����쌠�E���W
;
; �R�s�[���C�g
@macro name=maru_c
	[ch text="&$0x00a9"]
@endmacro
; �o�^���W
@macro name=maru_r
	[ch text="&$0x00ae"]
@endmacro
; ���W
@macro name=tm
	[ch text="&$0x2122"]
@endmacro
;
; �����̑�
;
; ����
@macro name=hotspring
	[ch text="&$0x2668"]
@endmacro

;�C�����C���摜 ; �n�[�g
[macro name="heart"][graph storage="�C�����C���摜_heart" alt="(�́`��)" key=0x000000][endmacro]


;�C�����C���摜 ; �n�[�g �s���N
;�O��ɔ��p�X�y�[�X�͏����Ȃ��悤�ɁI�I�I
;[macro name="heart_p"]
[macro name="�n�[�g"]
;���̔��p�X�y�[�X�͕K�v�Ȃ��̂ł��I�I�I
 
[font color=0xff9c9c]
[graph storage="�C�����C���摜_heart" alt="(�́`��)" key=0x000000]
;���̔��p�X�y�[�X�͕K�v�Ȃ��̂ł��I�I�I
 
[font color="&sf.kidoku_RGB" cond="f.�܂����ǂł͂Ȃ� == 0 || sf.allskip == 1"]
[font color="0xffffff" cond="f.�܂����ǂł͂Ȃ� == 1"]
[endmacro]

;=============================================================
[macro name=�Z�[�u�}�X�N�e�X�g�J�n]

	[eval exp="tf.�Z�[�u�}�X�N�e�X�g���s�� = 1"]

	[if    exp="sf.gameNo == 3"][eval exp="tf.�Z�[�u�}�X�N�e�X�g = 0"]
	[elsif exp="sf.gameNo == 4"][eval exp="tf.�Z�[�u�}�X�N�e�X�g = 100"]
	[endif]

[endmacro]

[macro name=�Z�[�u�}�X�N�e�X�g]


	[if exp="(tf.�Z�[�u�}�X�N�e�X�g == 100 && sf.gameNo == 3) || (tf.�Z�[�u�}�X�N�e�X�g == 200 && sf.gameNo == 4)"]
		;�V�X�e���{�^�����E�B���h�E�\��
		[sysbt_meswin]

		�Z�[�u�g�������ς��ɂȂ�܂����B
		;���݂̍��������R���\�[�����烁�����Ă��������B[p][cm]
		���[�h��ʂŃT���l���m�F���Ă��������B[r]
		���݂̍s��[emb exp="kag.conductor.curLine"] [emb exp="tf.�ŏI����"]�ł��B[r]
		�����͈͂�evcg�̓R�����g�A�E�g���āA�ēx�e�X�g���J�n���ĉ������B[p][cm]



		;�V�X�e���{�^�����E�B���h�E����
		[sysbt_meswin clear]
		;[sysbt_SIROKURO clear]
		[eval exp="tf.�Z�[�u�}�X�N�e�X�g���s�� = 0"]

		[jump storage="title.ks"]
	[endif]

[call storage="systembutton_sub.ks" target=*sys_save]

[endmacro]

;=============================================================
;=============================================================
[macro name=�f�o�b�O�p]

	[position layer=message1 page=ffore left=0 top=0 width=350 height=300 color=0x000000 frame="" opacity="&sf.graphicframe_opacity" marginl=10 margint=10 marginr="&sf.text_r" marginb=0 visible=true]
	[current layer=message1]

	tf.nowtitle [emb exp="tf.nowtitle"][r]
	                       now  01  02[r]
	saveload_now_page �b[emb exp="sf.saveload_now_page"] �b [emb exp="sf.saveload_now_page01"] �b [emb exp="sf.saveload_now_page02"][r]
	new_saveclick     �b[emb exp="sf.new_saveclick"] �b [emb exp="sf.new_saveclick01"]  �b [emb exp="sf.new_saveclick02"][r]
	new_savepage      �b[emb exp="sf.new_savepage"] �b [emb exp="sf.new_savepage01"] �b  [emb exp="sf.new_savepage02"][r]
	CG_page           �b[emb exp="sf.CG_page"] �b [emb exp="sf.CG_page01"] �b [emb exp="sf.CG_page02"][r]
	SR_page           �b[emb exp="sf.SR_page"] �b [emb exp="sf.SR_page01"] �b [emb exp="sf.SR_page02"][r]



[endmacro]

;=============================================================
[return]
