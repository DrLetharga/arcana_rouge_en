

;�I�����A�X�N���v�g��̋L�q���ȗ���
;�X�N���v�g�ɋL�q����ۂ͉��L
;�����x���ƃ��x�����K�{
;�����x��������fc�}�N���K�{
;���Ō�̑I������end�K�{
;��target�̂݋L�q��
;���I�����ݒu�\�� 7
;���I���������� 29�����@�iselectimage.png�̉���800/�l�r �o�S�V�b�N/�t�H���g�T�C�Ysf.seltext_size 24/�ł̊��Z�j

;�I�������e�ɂ���ă��x����������������K�v������̂�
;if���Ȃǂ�p���ď����ɂ��I�����𑝂₵���肷��͕̂s�B���̏ꍇ�̓��x������2�p�^�[�����L�q�B
;
;*SEL01|�c�c����₵�܂��^��΂ɗ���₵�܂���I
;[fc]
;[sel02 text='�c�c����₵�܂�'       storage="FS_B01.ks" target=*B01_TOP]
;[sel04 text='��΂ɗ���₵�܂���I' storage="FS_C01.ks" target=*C01_TOP end]
;


;�I�����p��hisout�}�N������B���O�̃}�N��macro_name.ks�Ƃ͕ʁB
[macro name=sel_hisout]
	[eval exp="kag.historyLayer.store('�I�����w')" cond="kag.historyWriteEnabled"]
;	[eval exp="kag.historyLayer.store('�I����')" cond="kag.historyWriteEnabled"]
	[eval exp="kag.historyLayer.store(mp.txt)"     cond="kag.historyWriteEnabled"]
	[eval exp="kag.historyLayer.store('�x')"       cond="kag.historyWriteEnabled"]
[endmacro]

;�I�����@�I�����hisout�}�N������
[macro name=selrun_hisout]
	;���ǂ���[eval exp="kag.historyLayer.store('�I�����w')" cond="kag.historyWriteEnabled"]
	[eval exp="kag.historyLayer.store('�w')" cond="kag.historyWriteEnabled"]
	[eval exp="kag.historyLayer.store(f.seltext)"  cond="kag.historyWriteEnabled"]
	[eval exp="kag.historyLayer.store('�x��I��')" cond="kag.historyWriteEnabled"]
;	[eval exp="kag.historyLayer.store('��I��')" cond="kag.historyWriteEnabled"]
	[hr]
	[hr]
[endmacro]

;�I�����p��hisout�}�N������B���O�̃}�N��macro_name.ks�Ƃ͕ʁB
[macro name=zap_hisout]
	;[eval exp="kag.historyLayer.store('�U�b�s���O�I�����@')" cond="kag.historyWriteEnabled"]
	[eval exp="kag.historyLayer.store(mp.txt)" cond="kag.historyWriteEnabled"]
[endmacro]


;�`�`�`�悭�킩��Ȃ��Ȃ��Ă����̂Ń}�N������Ȃ��Ē������ɂ���`�`�`
;	[macro name=�����o�͕��A]
;		;f.sys_sub�͖������ŃI�t��
;		[eval exp="tf.sys_sub = 0,f.sys_sub2 = 0"]
;		;[eval exp="tf.sys_sub = 0"]
;		;�������ŗ����ɕ������o��
;		[history output = true]
;		;�������
;		[eval exp="tf.QuickLoad = 0"]
;	[endmacro]
;
;
;	;�I�����\���}�N��
;	[macro name=selbase]
;
;		;�I�����ɓ��������U�X�L�b�v�ƃI�[�g�~�߂Ȃ��Ƃ����Ȃ��̂ł́H fc�͂܂�����łȂ�����f.now_skipauto�̒��g�͒��O�̏�Ԃ̂܂܁B
;		[cancelskip]
;		[cancelautomode]
;
;		;�Z�[�u���Ɍ��o�����g�����߂�true�ɕύX
;		[eval exp="f.noStoreCurrentMessage = true"]
;
;		;�\���t���O�I������񂾂����H
;		[eval exp="f.selnow = 1"]
;		;�Ȃ񂩃t���O���̂����Ŕ��肫���Ȃ����ۂ�����ς���
;		[eval exp="f.�I�����\�������� = 1"]
;
;		; �E�N���b�N���蓖�Ă��ꎞ�I�ɕύX����
;		[call storage="rclick_sub.ks"]
;
;		;���C�����ύX
;		[laycount layers="&kag.numCharacterLayers + 7"]
;
;		;�I�����{�^���x�[�X��\�����邽�߂̃��b�Z�[�W���C����p��
;		[position layer="&sf.message_selbase" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
;		[layopt layer="&sf.message_selbase" page=fore visible=true]
;		[current layer="&sf.message_selbase" page=fore]
;
;		;[eval exp="sf.layer_seltext = 19"]
;
;		;�I�����̃e�L�X�g�F�i�ʏ펞�j���w��
;		;[eval exp="tf.seltextcolor = '0xffffff'"]
;
;		;[image storage="chara_int" layer="&sf.layer_seltext" page=fore visible=true left=0 top=0 index=1006000]
;
;	[endmacro]
;�`�`�`�`�`�`�`�`�`�`�`�`


;�o�b�N���O�֌W�ƃx�[�X�\���}�N���B�ʂ̑I�����}�N�����ł��̃}�N�������s����
[macro name=selbase_and_log]
		;eval�t���ĂȂ������̂��ĒP�ɂ��Ƃ�eval�ŕϐ��O���b�v�ł��Ȃ�����g��Ȃ��悤�ɂ��Ă��񂾂����H
		;���̂܂܂��ƕ\�����������ŃI�����B�ʂ̑I�����{�^����exp�͂���������Ă邵
		;[eval *]

		;�I�����̃x�[�X���܂�����ĂȂ��Ȃ���s
		[if exp="f.selbase == 0"]
			;�}�N����fc���ꂿ�Ⴄ�ƃ��[�h���Ƀt���O�߂��Ȃ��Ȃ邩�炾�߂�
	;		[fc]
			[pcms_sel]
		[endif]

		;�o�b�N���O�̕\��
		[if exp="tf.sys_sub == 0 || tf.�I�������O�\�����Ă� == 1"]
			;�I�������e���o�b�N���O�ɕ\�L�B���s�R�[�h�K�{�B
			[sel_hisout txt="&mp.text"][hr]
		[endif]

		;mp.end��������Ă���I�������Ō�ł���ϐ����I���ɁBif���ł���������cond�ɂ��Ƃ����B
		;���N���A���Ă����Ȃ��ƃV�X�e����ʍs���Ė߂鎞�ɗ������ς�
		[eval exp="f.selset_end = 0"]
		[eval exp="f.selset_end = 1" cond="mp.end"]

		;�I�������Ō�Ȃ�o�b�N���O�̉��s�{���𕜋A
		[if exp="f.selset_end == 1"]
			[hr]
			;[�����o�͕��A]
			;�`�`�`�悭�킩��Ȃ��Ȃ��Ă����̂Ń}�N������Ȃ��Ē������ɂ���`�`�`
			;f.sys_sub�͖������ŃI�t��
			[eval exp="tf.sys_sub = 0,f.sys_sub2 = 0"]
			;[eval exp="tf.sys_sub = 0"]
			;�������ŗ����ɕ������o��
			[history output = true]
			;�������
			[eval exp="tf.QuickLoad = 0"]
			;�`�`�`�`�`�`
		[endif]

		;�I�����̃x�[�X���܂�����ĂȂ��Ȃ���s
		[if exp="f.selbase == 0"]
			;�I�����x�[�X
			;[selbase]
			;�`�`�`�悭�킩��Ȃ��Ȃ��Ă����̂Ń}�N������Ȃ��Ē������ɂ���`�`�`
			;�I�����ɓ��������U�X�L�b�v�ƃI�[�g�~�߂Ȃ��Ƃ����Ȃ��̂ł́H fc�͂܂�����łȂ�����f.now_skipauto�̒��g�͒��O�̏�Ԃ̂܂܁B
			[cancelskip]
			[cancelautomode]

			;�Z�[�u���Ɍ��o�����g�����߂�true�ɕύX
			[eval exp="f.noStoreCurrentMessage = true"]

			;�\���t���O�I������񂾂����H
			[eval exp="f.selnow = 1"]
			;�Ȃ񂩃t���O���̂����Ŕ��肫���Ȃ����ۂ�����ς���
			[eval exp="f.�I�����\�������� = 1"]

			; �E�N���b�N���蓖�Ă��ꎞ�I�ɕύX����
			[call storage="rclick_sub.ks"]

			;���C�����ύX
			;[laycount layers="&kag.numCharacterLayers + 7"]
			;sf.maxlayers�͘M���ĂȂ��������ǃV�X�e���ړ��ɍ��킹�Ē�`�ǉ�
			[eval exp="sf.maxlayers = kag.numCharacterLayers + 7"][laycount layers="&sf.maxlayers"]

			;�I�����{�^���x�[�X��\�����邽�߂̃��b�Z�[�W���C����p��
			[position layer="&sf.message_selbase" page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=0 margint=0 marginr=0 marginb=0 draggable=false visible=true]
			[layopt layer="&sf.message_selbase" page=fore visible=true]
			[current layer="&sf.message_selbase" page=fore]

			;[eval exp="sf.layer_seltext = 19"]

			;�I�����̃e�L�X�g�F�i�ʏ펞�j���w��
			;[eval exp="tf.seltextcolor = '0xffffff'"]

			;[image storage="chara_int" layer="&sf.layer_seltext" page=fore visible=true left=0 top=0 index=1006000]
			;�`�`�`�`�`�`

			[eval exp="f.selbase = 1"]
		[endif]

[endmacro]

;�������ɂ�鎩���Z���^�����O���u�@�}�N��
;�������ł�����
;����͍ő�29�������Z�B�ő啶���������iselectimage.png�̍��[�̏���̑傫���j����Ȃ�v�����B
[macro name=seltext_centering]
		;���Z�b�g
		[eval exp="f.seltext_num = 0"]
		;���X��������Ȃ����ǋ֑������͓��ɂ��ꂪ�傫���Ȃ����Ⴄ���炠����x�����Ȃ��Ƃ����Ȃ����B
		;���[�U�[�̃t�H���g�ɂ͍��킹���Ȃ����炠����߂邩�BMS�S�V�b�N��MSP�S�V�b�N�ł���Ⴄ���̂ȁBsf.userfont��MSP�S�V�b�N����Ȃ���΍��l�ɂ����Ⴄ�Ƃ�
		;��ɋ֑����ǂ����̔��肵�ĕϐ��ɓ���Ƃ��H�@�����ƊȒP�ɔ��ʂł���̂���
	;	[eval exp="f.nocoun = []"]
	;	[eval exp="f.nocoun[0]  = 1" cond="&mp.text.charAt(0)  == '�A' || mp.text.charAt(0)  == '�B' || mp.text.charAt(0)  == '�w' || mp.text.charAt(0)  == '�x' || mp.text.charAt(0)  == '�u' || mp.text.charAt(0)  == '�v' "]
	;	[eval exp="f.nocoun[1]  = 1" cond="&mp.text.charAt(1)  == '�A' || mp.text.charAt(1)  == '�B' || mp.text.charAt(1)  == '�w' || mp.text.charAt(1)  == '�x' || mp.text.charAt(1)  == '�u' || mp.text.charAt(1)  == '�v' "]
	;	[eval exp="f.nocoun[2]  = 1" cond="&mp.text.charAt(2)  == '�A' || mp.text.charAt(2)  == '�B' || mp.text.charAt(2)  == '�w' || mp.text.charAt(2)  == '�x' || mp.text.charAt(2)  == '�u' || mp.text.charAt(2)  == '�v' "]
	;	[eval exp="f.nocoun[3]  = 1" cond="&mp.text.charAt(3)  == '�A' || mp.text.charAt(3)  == '�B' || mp.text.charAt(3)  == '�w' || mp.text.charAt(3)  == '�x' || mp.text.charAt(3)  == '�u' || mp.text.charAt(3)  == '�v' "]
	;	[eval exp="f.nocoun[4]  = 1" cond="&mp.text.charAt(4)  == '�A' || mp.text.charAt(4)  == '�B' || mp.text.charAt(4)  == '�w' || mp.text.charAt(4)  == '�x' || mp.text.charAt(4)  == '�u' || mp.text.charAt(4)  == '�v' "]
	;	[eval exp="f.nocoun[5]  = 1" cond="&mp.text.charAt(5)  == '�A' || mp.text.charAt(5)  == '�B' || mp.text.charAt(5)  == '�w' || mp.text.charAt(5)  == '�x' || mp.text.charAt(5)  == '�u' || mp.text.charAt(5)  == '�v' "]
	;	[eval exp="f.nocoun[6]  = 1" cond="&mp.text.charAt(6)  == '�A' || mp.text.charAt(6)  == '�B' || mp.text.charAt(6)  == '�w' || mp.text.charAt(6)  == '�x' || mp.text.charAt(6)  == '�u' || mp.text.charAt(6)  == '�v' "]
	;	[eval exp="f.nocoun[7]  = 1" cond="&mp.text.charAt(7)  == '�A' || mp.text.charAt(7)  == '�B' || mp.text.charAt(7)  == '�w' || mp.text.charAt(7)  == '�x' || mp.text.charAt(7)  == '�u' || mp.text.charAt(7)  == '�v' "]
	;	[eval exp="f.nocoun[8]  = 1" cond="&mp.text.charAt(8)  == '�A' || mp.text.charAt(8)  == '�B' || mp.text.charAt(8)  == '�w' || mp.text.charAt(8)  == '�x' || mp.text.charAt(8)  == '�u' || mp.text.charAt(8)  == '�v' "]
	;	[eval exp="f.nocoun[9]  = 1" cond="&mp.text.charAt(9)  == '�A' || mp.text.charAt(9)  == '�B' || mp.text.charAt(9)  == '�w' || mp.text.charAt(9)  == '�x' || mp.text.charAt(9)  == '�u' || mp.text.charAt(9)  == '�v' "]
	;	[eval exp="f.nocoun[10] = 1" cond="&mp.text.charAt(10) == '�A' || mp.text.charAt(10) == '�B' || mp.text.charAt(10) == '�w' || mp.text.charAt(10) == '�x' || mp.text.charAt(10) == '�u' || mp.text.charAt(10) == '�v' "]
	;	[eval exp="f.nocoun[11] = 1" cond="&mp.text.charAt(11) == '�A' || mp.text.charAt(11) == '�B' || mp.text.charAt(11) == '�w' || mp.text.charAt(11) == '�x' || mp.text.charAt(11) == '�u' || mp.text.charAt(11) == '�v' "]
	;	[eval exp="f.nocoun[12] = 1" cond="&mp.text.charAt(12) == '�A' || mp.text.charAt(12) == '�B' || mp.text.charAt(12) == '�w' || mp.text.charAt(12) == '�x' || mp.text.charAt(12) == '�u' || mp.text.charAt(12) == '�v' "]
	;	[eval exp="f.nocoun[13] = 1" cond="&mp.text.charAt(13) == '�A' || mp.text.charAt(13) == '�B' || mp.text.charAt(13) == '�w' || mp.text.charAt(13) == '�x' || mp.text.charAt(13) == '�u' || mp.text.charAt(13) == '�v' "]
	;	[eval exp="f.nocoun[14] = 1" cond="&mp.text.charAt(14) == '�A' || mp.text.charAt(14) == '�B' || mp.text.charAt(14) == '�w' || mp.text.charAt(14) == '�x' || mp.text.charAt(14) == '�u' || mp.text.charAt(14) == '�v' "]
	;	[eval exp="f.nocoun[15] = 1" cond="&mp.text.charAt(15) == '�A' || mp.text.charAt(15) == '�B' || mp.text.charAt(15) == '�w' || mp.text.charAt(15) == '�x' || mp.text.charAt(15) == '�u' || mp.text.charAt(15) == '�v' "]
	;	[eval exp="f.nocoun[16] = 1" cond="&mp.text.charAt(16) == '�A' || mp.text.charAt(16) == '�B' || mp.text.charAt(16) == '�w' || mp.text.charAt(16) == '�x' || mp.text.charAt(16) == '�u' || mp.text.charAt(16) == '�v' "]
	;	[eval exp="f.nocoun[17] = 1" cond="&mp.text.charAt(17) == '�A' || mp.text.charAt(17) == '�B' || mp.text.charAt(17) == '�w' || mp.text.charAt(17) == '�x' || mp.text.charAt(17) == '�u' || mp.text.charAt(17) == '�v' "]
	;	[eval exp="f.nocoun[18] = 1" cond="&mp.text.charAt(18) == '�A' || mp.text.charAt(18) == '�B' || mp.text.charAt(18) == '�w' || mp.text.charAt(18) == '�x' || mp.text.charAt(18) == '�u' || mp.text.charAt(18) == '�v' "]
	;	[eval exp="f.nocoun[19] = 1" cond="&mp.text.charAt(19) == '�A' || mp.text.charAt(19) == '�B' || mp.text.charAt(19) == '�w' || mp.text.charAt(19) == '�x' || mp.text.charAt(19) == '�u' || mp.text.charAt(19) == '�v' "]
	;	[eval exp="f.nocoun[20] = 1" cond="&mp.text.charAt(20) == '�A' || mp.text.charAt(20) == '�B' || mp.text.charAt(20) == '�w' || mp.text.charAt(20) == '�x' || mp.text.charAt(20) == '�u' || mp.text.charAt(20) == '�v' "]
	;	[eval exp="f.nocoun[21] = 1" cond="&mp.text.charAt(21) == '�A' || mp.text.charAt(21) == '�B' || mp.text.charAt(21) == '�w' || mp.text.charAt(21) == '�x' || mp.text.charAt(21) == '�u' || mp.text.charAt(21) == '�v' "]
	;	[eval exp="f.nocoun[22] = 1" cond="&mp.text.charAt(22) == '�A' || mp.text.charAt(22) == '�B' || mp.text.charAt(22) == '�w' || mp.text.charAt(22) == '�x' || mp.text.charAt(22) == '�u' || mp.text.charAt(22) == '�v' "]
	;	[eval exp="f.nocoun[23] = 1" cond="&mp.text.charAt(23) == '�A' || mp.text.charAt(23) == '�B' || mp.text.charAt(23) == '�w' || mp.text.charAt(23) == '�x' || mp.text.charAt(23) == '�u' || mp.text.charAt(23) == '�v' "]
	;	[eval exp="f.nocoun[24] = 1" cond="&mp.text.charAt(24) == '�A' || mp.text.charAt(24) == '�B' || mp.text.charAt(24) == '�w' || mp.text.charAt(24) == '�x' || mp.text.charAt(24) == '�u' || mp.text.charAt(24) == '�v' "]
	;	[eval exp="f.nocoun[25] = 1" cond="&mp.text.charAt(25) == '�A' || mp.text.charAt(25) == '�B' || mp.text.charAt(25) == '�w' || mp.text.charAt(25) == '�x' || mp.text.charAt(25) == '�u' || mp.text.charAt(25) == '�v' "]
	;	[eval exp="f.nocoun[26] = 1" cond="&mp.text.charAt(26) == '�A' || mp.text.charAt(26) == '�B' || mp.text.charAt(26) == '�w' || mp.text.charAt(26) == '�x' || mp.text.charAt(26) == '�u' || mp.text.charAt(26) == '�v' "]
	;	[eval exp="f.nocoun[27] = 1" cond="&mp.text.charAt(27) == '�A' || mp.text.charAt(27) == '�B' || mp.text.charAt(27) == '�w' || mp.text.charAt(27) == '�x' || mp.text.charAt(27) == '�u' || mp.text.charAt(27) == '�v' "]
	;	[eval exp="f.nocoun[28] = 1" cond="&mp.text.charAt(28) == '�A' || mp.text.charAt(28) == '�B' || mp.text.charAt(28) == '�w' || mp.text.charAt(28) == '�x' || mp.text.charAt(28) == '�u' || mp.text.charAt(28) == '�v' "]
	;	[eval exp="f.nocoun[29] = 1" cond="&mp.text.charAt(29) == '�A' || mp.text.charAt(29) == '�B' || mp.text.charAt(29) == '�w' || mp.text.charAt(29) == '�x' || mp.text.charAt(29) == '�u' || mp.text.charAt(29) == '�v' "]
	;	[eval exp="f.nocoun[30] = 1" cond="&mp.text.charAt(30) == '�A' || mp.text.charAt(30) == '�B' || mp.text.charAt(30) == '�w' || mp.text.charAt(30) == '�x' || mp.text.charAt(30) == '�u' || mp.text.charAt(30) == '�v' "]
	;	[eval exp="f.nocoun[31] = 1" cond="&mp.text.charAt(31) == '�A' || mp.text.charAt(31) == '�B' || mp.text.charAt(31) == '�w' || mp.text.charAt(31) == '�x' || mp.text.charAt(31) == '�u' || mp.text.charAt(31) == '�v' "]



		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(0)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(1)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(2)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(3)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(4)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(5)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(6)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(7)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(8)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(9)  != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(10) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(11) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(12) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(13) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(14) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(15) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(16) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(17) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(18) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(19) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(20) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(21) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(22) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(23) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(24) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(25) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(26) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(27) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(28) != void"]
		[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(29) != void"]
	;	[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(30) != void"]
	;	[eval exp="f.seltext_num += 1" cond="&mp.text.charAt(31) != void"]

	;���l�߂Ȃ��L�͖������ĕϐ����꒼���@sf.userfont��MSP�S�V�b�N����Ȃ���΍��l�ɂ����Ⴄ�Ƃ�
	;�M���߂��邩��ꕶ�����E�ɂ��邽�߂�1�������炷
	;[eval exp="f.seltext_num = 28" cond="sf.seltext_align == 'left' || sf.userfont != '�l�r �o�S�V�b�N'"]
	[eval exp="f.seltext_num = 28" cond="sf.seltext_align == 'left'"]

	;�Z���^�����O�ʒu����
	;25���ĂȂ�̐��l�Ȃ񂾂땶���̃T�C�Y���H *sf.seltext_size�ɂ����炨�������Ȃ��� ���ۂ͏�����������
	[eval exp="sf.seltext_x = int + (kag.scWidth-(f.seltext_num*(sf.seltext_size-3)))/2"]
[endmacro]

;�I����1
[macro name=sel01]

	;mp.text������悤��*�t���Ƃ�
	;�o�b�N���O�֌W�ƃx�[�X�\��
	[selbase_and_log *]

	;�I������Ƀo�b�N���O�ɑI����e����邽�߂Ɍʂɕۑ�
	[eval exp="f.seltext01 = mp.text"]

	[eval exp="f.sel01 = 1"]
	[image storage="chara_int" layer="&sf.layer_seltext+1" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+1000]
	;�������ɂ�鎩���Z���^�����O���u��
	;�ꉞ���l�߂ł���悤�ɂ��Ă����� �������̓T�C�Y�傫���ς��Ȃ������32�̂܂܂ł����͂�
	;mp.text������悤��*�t���Ƃ�
	[seltext_centering *]

;	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+1" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[1] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext01"]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+1" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[1] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext01"]

	;���ۂ̔�ѐ��ۑ�
	[eval exp="f.sel_storage01 = mp.storage" cond="mp.storage != void"]
	; mp.storage��void�i���t�@�C�����̃��x���ɔ�ԁj�Ȃ猻�݂̃t�B����������
	[eval exp="f.sel_storage01 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target01  = mp.target"  cond="mp.target  != void"]
	;target�w���Ɏ��̑I������target���w��̏ꍇ�A�ŏ��Ɏw�肵��target���ۑ����ꂽ�܂܂Ȃ̂ŏ����B2018/10/10
	[eval exp="f.sel_target01  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[1]"]
	;�{�^���̔�ѐ�͋��ʂőI�����I������

;�N���b�N�ŕϐ�����ł���悤�ɁAexp��f[mp.flag] = mp.par�Ńe�X�g�������ǁA01�`07�܂ł킯�Ȃ��Ƃ��߂��ȁB����par��string�����ɂȂ�B�ǉ�����ۗ̕�
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 1 , f.seltext = f.seltext01" onenter="kag.fore.layers[sf.layer_seltext+1].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+1].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]

;�I����2
[macro name=sel02]

	;mp.text������悤��*�t���Ƃ�
	;�o�b�N���O�֌W�ƃx�[�X�\��
	[selbase_and_log *]

	;�I������Ƀo�b�N���O�ɑI����e����邽�߂Ɍʂɕۑ�
	[eval exp="f.seltext02 = mp.text"]

	[eval exp="f.sel02 = 1"]
	[image storage="chara_int" layer="&sf.layer_seltext+2" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+2000]
	;�������ɂ�鎩���Z���^�����O���u��
	[seltext_centering *]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+2" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[2] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext02"]

	;���ۂ̔�ѐ��ۑ�
	[eval exp="f.sel_storage02 = mp.storage" cond="mp.storage != void"]
	; mp.storage��void�i���t�@�C�����̃��x���ɔ�ԁj�Ȃ猻�݂̃t�B����������
	[eval exp="f.sel_storage02 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target02  = mp.target"  cond="mp.target  != void"]
	;target�w���Ɏ��̑I������target���w��̏ꍇ�A�ŏ��Ɏw�肵��target���ۑ����ꂽ�܂܂Ȃ̂ŏ����B2018/10/10
	[eval exp="f.sel_target02  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[2]"]
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 2 , f.seltext = f.seltext02" onenter="kag.fore.layers[sf.layer_seltext+2].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+2].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]

;�I����3
[macro name=sel03]
	;mp.text������悤��*�t���Ƃ�
	;�o�b�N���O�֌W�ƃx�[�X�\��
	[selbase_and_log *]

	;�I������Ƀo�b�N���O�ɑI����e����邽�߂Ɍʂɕۑ�
	[eval exp="f.seltext03 = mp.text"]

	[eval exp="f.sel03 = 1"]
	[image storage="chara_int" layer="&sf.layer_seltext+3" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+3000]
	;�������ɂ�鎩���Z���^�����O���u��
	[seltext_centering *]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+3" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[3] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext03"]

	;���ۂ̔�ѐ��ۑ�
	[eval exp="f.sel_storage03 = mp.storage" cond="mp.storage != void"]
	; mp.storage��void�i���t�@�C�����̃��x���ɔ�ԁj�Ȃ猻�݂̃t�B����������
	[eval exp="f.sel_storage03 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target03  = mp.target"  cond="mp.target  != void"]
	;target�w���Ɏ��̑I������target���w��̏ꍇ�A�ŏ��Ɏw�肵��target���ۑ����ꂽ�܂܂Ȃ̂ŏ����B2018/10/10
	[eval exp="f.sel_target03  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[3]"]
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 3 , f.seltext = f.seltext03" onenter="kag.fore.layers[sf.layer_seltext+3].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+3].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]


;�I����4
[macro name=sel04]
	;mp.text������悤��*�t���Ƃ�
	;�o�b�N���O�֌W�ƃx�[�X�\��
	[selbase_and_log *]

	;�I������Ƀo�b�N���O�ɑI����e����邽�߂Ɍʂɕۑ�
	[eval exp="f.seltext04 = mp.text"]

	[eval exp="f.sel04 = 1"]
	[image storage="chara_int" layer="&sf.layer_seltext+4" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+4000]
	;�������ɂ�鎩���Z���^�����O���u��
	[seltext_centering *]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+4" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[4] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext04"]

	;���ۂ̔�ѐ��ۑ�
	[eval exp="f.sel_storage04 = mp.storage" cond="mp.storage != void"]
	; mp.storage��void�i���t�@�C�����̃��x���ɔ�ԁj�Ȃ猻�݂̃t�B����������
	[eval exp="f.sel_storage04 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target04  = mp.target"  cond="mp.target  != void"]
	;target�w���Ɏ��̑I������target���w��̏ꍇ�A�ŏ��Ɏw�肵��target���ۑ����ꂽ�܂܂Ȃ̂ŏ����B2018/10/10
	[eval exp="f.sel_target04  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[4]"]
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 4 , f.seltext = f.seltext04" onenter="kag.fore.layers[sf.layer_seltext+4].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+4].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]

;�I����5
[macro name=sel05]
	;mp.text������悤��*�t���Ƃ�
	;�o�b�N���O�֌W�ƃx�[�X�\��
	[selbase_and_log *]

	;�I������Ƀo�b�N���O�ɑI����e����邽�߂Ɍʂɕۑ�
	[eval exp="f.seltext05 = mp.text"]

	[eval exp="f.sel05 = 1"]
	[image storage="chara_int" layer="&sf.layer_seltext+5" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+5000]
	;�������ɂ�鎩���Z���^�����O���u��
	[seltext_centering *]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+5" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[5] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext05"]

	;���ۂ̔�ѐ��ۑ�
	[eval exp="f.sel_storage05 = mp.storage" cond="mp.storage != void"]
	; mp.storage��void�i���t�@�C�����̃��x���ɔ�ԁj�Ȃ猻�݂̃t�B����������
	[eval exp="f.sel_storage05 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target05  = mp.target"  cond="mp.target  != void"]
	;target�w���Ɏ��̑I������target���w��̏ꍇ�A�ŏ��Ɏw�肵��target���ۑ����ꂽ�܂܂Ȃ̂ŏ����B2018/10/10
	[eval exp="f.sel_target05  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[5]"]
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 5 , f.seltext = f.seltext05" onenter="kag.fore.layers[sf.layer_seltext+5].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+5].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]

;�I����6
[macro name=sel06]
	;mp.text������悤��*�t���Ƃ�
	;�o�b�N���O�֌W�ƃx�[�X�\��
	[selbase_and_log *]

	;�I������Ƀo�b�N���O�ɑI����e����邽�߂Ɍʂɕۑ�
	[eval exp="f.seltext06 = mp.text"]

	[eval exp="f.sel06 = 1"]
	[image storage="chara_int" layer="&sf.layer_seltext+6" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+6000]
	;�������ɂ�鎩���Z���^�����O���u��
	[seltext_centering *]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+6" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[6] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext06"]

	;���ۂ̔�ѐ��ۑ�
	[eval exp="f.sel_storage06 = mp.storage" cond="mp.storage != void"]
	; mp.storage��void�i���t�@�C�����̃��x���ɔ�ԁj�Ȃ猻�݂̃t�B����������
	[eval exp="f.sel_storage06 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target06  = mp.target"  cond="mp.target  != void"]
	;target�w���Ɏ��̑I������target���w��̏ꍇ�A�ŏ��Ɏw�肵��target���ۑ����ꂽ�܂܂Ȃ̂ŏ����B2018/10/10
	[eval exp="f.sel_target06  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[6]"]
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 6 , f.seltext = f.seltext06" onenter="kag.fore.layers[sf.layer_seltext+6].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+6].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]

;�I����7
[macro name=sel07]
	;mp.text������悤��*�t���Ƃ�
	;�o�b�N���O�֌W�ƃx�[�X�\��
	[selbase_and_log *]

	;�I������Ƀo�b�N���O�ɑI����e����邽�߂Ɍʂɕۑ�
	[eval exp="f.seltext07 = mp.text"]

	[image storage="chara_int" layer="&sf.layer_seltext+7" page=fore visible=true left=0 top=0 opacity="&sf.seltextoff_opacity" index=1006000+7000]
	;�������ɂ�鎩���Z���^�����O���u��
	[seltext_centering *]
	[ptext face="&sf.userfont"  layer="&sf.layer_seltext+7" page=fore x="&sf.seltext_x" y="&sf.sel_bt_y[7] + sf.sel_text_mt" size="&sf.seltext_size" color="&sf.sel_text_color" shadow="&sf.sel_text_shadow" shadowcolor="&sf.sel_text_s_color" edge="&sf.sel_text_edge" edgecolor="&sf.sel_text_e_color" bold="&sf.sel_text_bold" text="&f.seltext07"]

	;���ۂ̔�ѐ��ۑ�
	[eval exp="f.sel_storage07 = mp.storage" cond="mp.storage != void"]
	; mp.storage��void�i���t�@�C�����̃��x���ɔ�ԁj�Ȃ猻�݂̃t�B����������
	[eval exp="f.sel_storage07 = (kag.conductor.curStorage)" cond="mp.storage == void"]
	[eval exp="f.sel_target07  = mp.target"  cond="mp.target  != void"]
	;target�w���Ɏ��̑I������target���w��̏ꍇ�A�ŏ��Ɏw�肵��target���ۑ����ꂽ�܂܂Ȃ̂ŏ����B2018/10/10
	[eval exp="f.sel_target07  = void"  cond="mp.target  == void"]

	[locate x="&sf.sel_bt_x[0]" y="&sf.sel_bt_y[7]"]
	[button graphic="&sf.addgameID + 'selectimage'" recthit=false storage="macro09_sel02.ks" target=*selend exp="f.selrun = 7 , f.seltext = f.seltext07" onenter="kag.fore.layers[sf.layer_seltext+7].opacity = 255" onleave="kag.fore.layers[sf.layer_seltext+7].opacity = sf.seltextoff_opacity" enterse="se_enter" clickse="se_click" entersebuf="&sf.SE_enter_buf" clicksebuf="&sf.SE_click_buf"]
	[s cond="mp.end"]
[endmacro]


;���C����index�߂����背�C�����߂�����
[macro name=sellayer_index_init]
	;�^�C�g����ʂɖ߂������Ƀ��C�������f�t�H�ɖ߂�������ǉ��������߁A�^�C�g����ʂ���I�������̃N�C�b�N���[�h����ƃ��C���������ē{����B
	;�^�C�g������̃N�C�b�N���[�h�������珈����΂����H
	;�I�������Z�[�u���N�C�b�N�Z�[�u���N�C�b�N���[�h�ł��o���
[if exp="tf.QuickLoad == 0 && tf.QuickLoad_title == 0"]
	[freeimage layer="&sf.layer_seltext+1" page=fore  cond="f.sel01"]
	[freeimage layer="&sf.layer_seltext+2" page=fore  cond="f.sel02"]
	[freeimage layer="&sf.layer_seltext+3" page=fore  cond="f.sel03"]
	[freeimage layer="&sf.layer_seltext+4" page=fore  cond="f.sel04"]
	[freeimage layer="&sf.layer_seltext+5" page=fore  cond="f.sel05"]
	[freeimage layer="&sf.layer_seltext+6" page=fore  cond="f.sel06"]
	[freeimage layer="&sf.layer_seltext+7" page=fore  cond="f.sel07"]
	;�I����base���\��
	[layopt layer="&sf.message_selbase" page=fore visible=false]
	[current layer=message0][layopt layer=message0 index=1001000]
	;�t�F�C�X�E�B���h�E�̏����ɂ���Ă̓J�����g�P
;	[current layer=message1]
	[layopt layer="&sf.layer_seltext+1" index="&sf.layer_seltext*1000+1000"  cond="f.sel01"]
	[layopt layer="&sf.layer_seltext+2" index="&sf.layer_seltext*2000+1000"  cond="f.sel02"]
	[layopt layer="&sf.layer_seltext+3" index="&sf.layer_seltext*3000+1000"  cond="f.sel03"]
	[layopt layer="&sf.layer_seltext+4" index="&sf.layer_seltext*4000+1000"  cond="f.sel04"]
	[layopt layer="&sf.layer_seltext+5" index="&sf.layer_seltext*5000+1000"  cond="f.sel05"]
	[layopt layer="&sf.layer_seltext+6" index="&sf.layer_seltext*6000+1000"  cond="f.sel06"]
	[layopt layer="&sf.layer_seltext+7" index="&sf.layer_seltext*7000+1000"  cond="f.sel07"]

	;���C�����ύX
	;[laycount layers="&sf.maxlayers"]
	;sf.maxlayers�͘M���ĂȂ��������ǃV�X�e���ړ��ɍ��킹�Ē�`�ǉ�
	[eval exp="sf.maxlayers = kag.numCharacterLayers - 7"][laycount layers="&sf.maxlayers"]

	;�\���t���O�I������񂾂����H
	[eval exp="f.selnow = 0"]
	[eval exp="f.selbt = 0"]
	;�Ȃ񂩃t���O���̂����Ŕ��肫���Ȃ����ۂ�����ς���
	[eval exp="f.�I�����\�������� = 0"]

	[eval exp="f.selset_end = 0"]
	[eval exp="f.selbase   = 0"]
	[eval exp="f.seltext01  = void"]
	[eval exp="f.seltext02  = void"]
	[eval exp="f.seltext03  = void"]
	[eval exp="f.seltext04  = void"]
	[eval exp="f.seltext05  = void"]
	[eval exp="f.seltext06  = void"]
	[eval exp="f.seltext07  = void"]
	

	[eval exp="f.sel01 = 0"]
	[eval exp="f.sel02 = 0"]
	[eval exp="f.sel03 = 0"]
	[eval exp="f.sel04 = 0"]
	[eval exp="f.sel05 = 0"]
	[eval exp="f.sel06 = 0"]
	[eval exp="f.sel07 = 0"]

	;������ƊԂ�
	[wait_c time=200 cond="f.graphic_bt_sel == 0"]
[endif]

;�^�C�g����ʂ̃N�C�b�N���[�h�������t���O�@�������ᓥ�߂Ȃ����炆����
;[eval exp="tf.QuickLoad_title = 0"]
[endmacro]

;�����fc���ŏ�������Ă邩��s�v�H�@���b�Z�[�W�����ւ̏o�͂��ĊJ�A�\�����������ɂȂ�C�����邯��
;�����ƂЂ傤������Ă�ȁB���������o�͒�~���ĂȂ�����ĊJ�͕s�v�Ȃ̂�
;	[macro name=selbt_clear]
;
;		[eval exp="f.selbt = 0"]
;
;		[cm]
;
;		;�J�����g���C����߂�
;		[current layer=message0]
;
;		; ���b�Z�[�W�����ւ̏o�͂��ĊJ�A�\���ɂ���
;		[history output=true enabled=true]
;
;		;�Z�[�u���Ɍ��o�����g��Ȃ��ɖ߂�
;		[eval exp="f.noStoreCurrentMessage = false"]
;
;		;f.selnow�g���ƒʏ�I�����Ƃ��Ԃ��Ėʓ|�Ȃ̂ł����Ōʂɍs��
;		;�I������X�L�b�v�p�����X�L�b�v���������Ȃ�X�L�b�v�J�n
;		[if exp="sf.sel_skip == 1 && f.now_skipauto == 2"]
;			[eval exp="kag.skipToStop()"]
;		;�I������I�[�g�p�����I�[�g���������Ȃ�X�L�b�v�J�n
;		[elsif exp="sf.sel_auto == 1 && f.now_skipauto == 1"]
;			[eval exp="kag.enterAutoMode()"]
;		[endif]
;
;
;	[endmacro]

[return]
;--------------------------------------------------------
;--------------------------------------------------------
;--------------------------------------------------------
;�I�����㋤�ʏ����̃T�u���[�`��
*selend
;[sellayer_index_init]
;�����񂾂��ǎ��ۂɂ�fc�}�N�����ŏ���

;�I�������e���o�b�N���O��
[selrun_hisout]
[fc]

;���ۂ̔�ѐ��
[if    exp="f.selrun == 1"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage01" target="&f.sel_target01"]
[elsif exp="f.selrun == 2"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage02" target="&f.sel_target02"]
[elsif exp="f.selrun == 3"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage03" target="&f.sel_target03"]
[elsif exp="f.selrun == 4"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage04" target="&f.sel_target04"]
[elsif exp="f.selrun == 5"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage05" target="&f.sel_target05"]
[elsif exp="f.selrun == 6"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage06" target="&f.sel_target06"]
[elsif exp="f.selrun == 7"][eval exp="f.selrun = 0"][jump storage="&f.sel_storage07" target="&f.sel_target07"]
[endif]

;�t�F�C���Z�[�t
[returntitle]

;--------------------------------------------------------
;--------------------------------------------------------
;--------------------------------------------------------
;�g��Ȃ��@�������ɂ�鎩���Z���^�����O���u�@�T�u���[�`��

*call01
[eval exp="f.seltext = f.seltext01"][jump target=*script]
*call02
[eval exp="f.seltext = f.seltext02"][jump target=*script]
*call03
[eval exp="f.seltext = f.seltext03"][jump target=*script]
*call04
[eval exp="f.seltext = f.seltext04"][jump target=*script]
*call05
[eval exp="f.seltext = f.seltext05"][jump target=*script]
*call06
[eval exp="f.seltext = f.seltext06"][jump target=*script]
*call07
[eval exp="f.seltext = f.seltext07"][jump target=*script]

*script
[iscript]
	var str = f.seltext;
	var ch01 = str.charAt(0);//
	var ch02 = str.charAt(1);//
	var ch03 = str.charAt(2);//
	var ch04 = str.charAt(3);//
	var ch05 = str.charAt(4);//
	var ch06 = str.charAt(5);//
	var ch07 = str.charAt(6);//
	var ch08 = str.charAt(7);//
	var ch09 = str.charAt(8);//
	var ch10 = str.charAt(9);//
	var ch11 = str.charAt(10);//
	var ch12 = str.charAt(11);//
	var ch13 = str.charAt(12);//
	var ch14 = str.charAt(13);//
	var ch15 = str.charAt(14);//
	var ch16 = str.charAt(15);//
	var ch17 = str.charAt(16);//
	var ch18 = str.charAt(17);//
	var ch19 = str.charAt(18);//
	var ch20 = str.charAt(19);//
	var ch21 = str.charAt(20);//
	var ch22 = str.charAt(21);//
	var ch23 = str.charAt(22);//
	var ch24 = str.charAt(23);//
	var ch25 = str.charAt(24);//
	var ch26 = str.charAt(25);//
	var ch27 = str.charAt(26);//
	var ch28 = str.charAt(27);//
	var ch29 = str.charAt(28);//
	var ch30 = str.charAt(29);//
	var ch31 = str.charAt(30);//
	var ch32 = str.charAt(31);//

[endscript]

;���Z�b�g
[eval exp="f.seltext_num = 0"]
;3�����������ăt���O������
[eval exp="f.seltext_num += 1" cond="ch01 != void"]
[eval exp="f.seltext_num += 1" cond="ch02 != void"]
[eval exp="f.seltext_num += 1" cond="ch03 != void"]
[eval exp="f.seltext_num += 1" cond="ch04 != void"]
[eval exp="f.seltext_num += 1" cond="ch05 != void"]
[eval exp="f.seltext_num += 1" cond="ch06 != void"]
[eval exp="f.seltext_num += 1" cond="ch07 != void"]
[eval exp="f.seltext_num += 1" cond="ch08 != void"]
[eval exp="f.seltext_num += 1" cond="ch09 != void"]
[eval exp="f.seltext_num += 1" cond="ch10 != void"]
[eval exp="f.seltext_num += 1" cond="ch11 != void"]
[eval exp="f.seltext_num += 1" cond="ch12 != void"]
[eval exp="f.seltext_num += 1" cond="ch13 != void"]
[eval exp="f.seltext_num += 1" cond="ch14 != void"]
[eval exp="f.seltext_num += 1" cond="ch15 != void"]
[eval exp="f.seltext_num += 1" cond="ch16 != void"]
[eval exp="f.seltext_num += 1" cond="ch17 != void"]
[eval exp="f.seltext_num += 1" cond="ch18 != void"]
[eval exp="f.seltext_num += 1" cond="ch19 != void"]
[eval exp="f.seltext_num += 1" cond="ch20 != void"]
[eval exp="f.seltext_num += 1" cond="ch21 != void"]
[eval exp="f.seltext_num += 1" cond="ch22 != void"]
[eval exp="f.seltext_num += 1" cond="ch23 != void"]
[eval exp="f.seltext_num += 1" cond="ch24 != void"]
[eval exp="f.seltext_num += 1" cond="ch25 != void"]
[eval exp="f.seltext_num += 1" cond="ch26 != void"]
[eval exp="f.seltext_num += 1" cond="ch27 != void"]
[eval exp="f.seltext_num += 1" cond="ch28 != void"]
[eval exp="f.seltext_num += 1" cond="ch29 != void"]
[eval exp="f.seltext_num += 1" cond="ch30 != void"]
[eval exp="f.seltext_num += 1" cond="ch31 != void"]
[eval exp="f.seltext_num += 1" cond="ch32 != void"]

[return]

