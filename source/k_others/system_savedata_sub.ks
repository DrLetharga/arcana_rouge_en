;�Z�[�u�f�[�^�̃��b�N�A�A�����b�N�A�폜�̓���̂܂Ƃ߁B

;-----------------------------------------------------------
*savedata_lock_button_chgimage
[unlocklink]
; �Z�[�u�f�[�^�̕ی�t���O��ύX�B���̋L�q�̓��b�N����ĂȂ���΃��b�N���ȁB
[eval exp="kag.setBookMarkProtectedState(tf.save_lock_num+sf.saveload_now_page*20, !kag.bookMarkProtectedStates[tf.save_lock_num+sf.saveload_now_page*20])"]

[if exp="kag.bookMarkProtectedStates[tf.save_lock_num+sf.saveload_now_page*20]"]
	;��
	;tf.save_lock_num�ɂ͎��ۂ̒l�������Ă邩�猩������̒l�i�{�^���̐��j�ɕύX����
	[eval exp="tf.save_lock_num += tf.sub"]
	;��
	; �^�Ȃ�`�F�b�N�}�[�N�t���̃`�F�b�N�{�b�N�X�ɒu������ 20�͂��łɐ�������Ă�T���l�̐��B5�͂��łɐ�������Ă�y�[�W�{�^���̐��B
	[button_chgimage graphic="save_lock.png" num="&tf.save_lock_num+20+5"]
[else]
	;��
	;tf.save_lock_num�ɂ͎��ۂ̒l�������Ă邩�猩������̒l�i�{�^���̐��j�ɕύX����
	[eval exp="tf.save_lock_num += tf.sub"]
	;��
	; �U�Ȃ�`�F�b�N�}�[�N�Ȃ��̃`�F�b�N�{�b�N�X�ɒu������
	[button_chgimage graphic="save_unlock.png" num="&tf.save_lock_num+20+5"]
[endif]
[return]

;-----------------------------------------------------------
*savedata_erase

[if exp="kag.bookMarkProtectedStates[tf.save_erase_num+sf.saveload_now_page*20]"]
	; �^�Ȃ�
	[jump target=*�ی삳��Ă܂�]
[else]
	; �U�Ȃ�
	[jump target=*�폜���܂�]
[endif]


*�ی삳��Ă܂�
[eval exp="tf.dialog_savedata_lock = 1"]

;//[if exp="sf.dialog_on == 1"]

	;�_�C�A���O�\��
	[jump storage="dialog.ks" target=*dialog_draw]

;//[else]
;//	[jump target=*�Z�[�u�f�[�^�폜���Ȃ�]
;//[endif]


*�폜���܂�

;�f�[�^�������ꍇ�̓��^�[������
[if exp="kag.getBookMarkDate(tf.save_erase_num+sf.saveload_now_page*20) == void"]
	[return]
[endif]
[eval exp="tf.dialog_savedata_erase = 1"]

;�_�C�A���O�I�t�Ȃ�\��������*�Z�[�u�f�[�^�폜�ֈڍs�B
[if exp="sf.dialog_on == 1 && kag.getBookMarkDate(tf.save_erase_num+sf.saveload_now_page*20)"]

	;�_�C�A���O�\��
	[jump storage="dialog.ks" target=*dialog_draw]

[endif]

*�Z�[�u�f�[�^�폜
;�_�C�A���O�I�t���ɂ��ꂪ�I�t���Ȃ��܂܂�����܂����H
[eval exp="tf.dialog_savedata_erase = 0"]

;New�}�[�N���t���Ă�f�[�^�Ȃ烌�C�����폜�B
[if exp="(sf.new_saveclick + sf.new_savepage*20) == (tf.save_erase_num+sf.saveload_now_page*20)"]
	;New�}�[�N�̃t���O��void�ɂ���B
	[eval exp="sf.new_saveclick = void"]
	[eval exp="sf.new_savepage = void"]
	[freeimage layer="&sf.toplayer" page=back][freeimage layer="&sf.toplayer" page=fore]
[endif]
;�폜�����ꏊ��0�Ȃ��p�̃t���O���I�t��B
[if exp="tf.save_erase_num == 0"]
	[eval exp="sf.save_slot0_on = 0"]
	;0�ԏ����Ă���0�ԃZ�[�u���I�t
	[eval exp="sf.save_slot0 = 0"]
[endif]
[erasebookmark place="&tf.save_erase_num+sf.saveload_now_page*20"]
*�Z�[�u�f�[�^�폜���Ȃ�
;�{�^���ƃ_�C�A���O�摜�N���A
[cm]
;�I�����}�N���V�����̂��Ƃ����őI�����x�[�X�������Ⴄ�B�x�[�X�����Ƃ��̔��肪f.selbase�������܂܂�����
;��Uf.selbase���I�t�ɂ����Ⴄ���@2048/06/06�ǉ�
[if exp="f.selnow == 1"]
	[eval exp="f.selbase = 0"]
[endif]
;CM����Ɩ߂������ɑI�����̃x�[�X�������Ⴄ�񂾂�B�ł��Z�[�u���邽�тɃ{�^�����d�ɂȂ��ĂȂ����H
;fc�}�N���ɂȂɂ��d���ނ����Ȃ����B�Ƃ肠�������d�͂܂�������cm���Ƃ�
[call storage="dialog.ks" target=*�_�C�A���O����]

;�J�����g���C����߂�
[current layer="&tf.save_message0" page=fore]


;�V���[�g�J�b�g�ŗ����ꍇreturn���Ⴞ�߂Ȃ񂾂Ȃ�
;return���ƃR�[���X�^�b�N������Ȃ��Ȃ�̂�jump��
[if    exp="tf.shortcut_use == 1 && tf.save"]
	[eval exp="tf.shortcut_use = 0"]
	[jump storage="system_save.ks" target=*�V���[�g�J�b�g�߂�]
[elsif exp="tf.shortcut_use == 1 && tf.load"]
	[eval exp="tf.shortcut_use = 0"]
	[jump storage="system_load.ks" target=*�V���[�g�J�b�g�߂�]
[endif]
[return]



;-----------------------------------------------------------
*�㏑��save
[save place="&tf.save_click_num+sf.saveload_now_page*20"]

;	;��
;	;���݂̃t�@�C������ۑ�
;	[eval exp="sf.save_text_st[tf.save_click_num+sf.saveload_now_page*20] = f.ksStorageSys"]
;	;���݂̃��x������ۑ�
;	[eval exp="sf.save_text_la[tf.save_click_num+sf.saveload_now_page*20] = f.ksLabelSys"]
;	;��

*�㏑��save���Ȃ�

;�V�K�ɕۑ�����Ă��Ǝv���郉�x�����ꎞ�I�ɕۑ�
[eval exp="tf.new_PageName = kag.getBookMarkPageName(tf.save_click_num+sf.saveload_now_page*20)"]
;�V�K�ɕۑ�����Ă��Ǝv���鎞�����ꎞ�I�ɕۑ�
[eval exp="tf.new_Date = kag.getBookMarkDate(tf.save_click_num+sf.saveload_now_page*20)"]

;�ꎞ�I�ɕۑ�����Ă郉�x���Ǝ������V�K�ɕۑ��������̂Ɠ����Ȃ�NO���������ƌ��Ȃ��āANew�}�[�N�̋L�^���ꎞ�I�ɕۑ��������̂ɏ����߂��B
[if exp="tf.PageName == tf.new_PageName && tf.Date == tf.new_Date"]
	;�ꎞ�I�ɕۑ������L�^�������߂�
	[eval exp="sf.new_saveclick = tf.new_saveclick_temp"]
	;�ꎞ�I�ɕۑ������L�^�������߂�
	[eval exp="sf.new_savepage = tf.new_savepage_temp"]
[else]
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
		;�������Ō��0�ԃX���b�g�ɃZ�[�u�������ǂ����t���O���I�t�̂܂܂ɂȂ��Ă�̂ŏC�� 2018/02/05
		;0�ԃZ�[�u�I�t
		[eval exp="sf.save_slot0 = 0"]
		;�������C�������܂�
	[endif]
[endif]




[jump storage="system_save.ks" target=*�_�C�A���O����߂�]

;-----------------------------------------------------------
*save
;�N���b�N�����ꏊ��0�Ԃ��f�[�^��void�ł����
[if exp="tf.save_click_num == 0 && kag.getBookMarkDate(tf.save_click_num+sf.saveload_now_page*20) == void"]
	;0�ԃZ�[�u�I��
	[eval exp="sf.save_slot0 = 1"]
[else]
	[eval exp="sf.save_slot0 = 0"]
[endif]
[save place="&tf.save_click_num+sf.saveload_now_page*20"]

*save���Ȃ�

;��YES��NO�������ꂽ�B

;�N���b�N�����ꏊ���L�^
[eval exp="sf.new_saveclick = tf.save_click_num"]
;�N���b�N�����y�[�W���L�^
[eval exp="sf.new_savepage = sf.saveload_now_page"]

;�f�[�^��void�Ȃ�Z�[�u�͂��ĂȂ��̂őO�̋L�^�ʒu�ɖ߂��B
[if exp="kag.getBookMarkDate(tf.save_click_num+sf.saveload_now_page*20) == void"]
	;�ꎞ�I�ɕۑ������L�^�������߂�
	[eval exp="sf.new_saveclick = tf.new_saveclick_temp"]
	;�ꎞ�I�ɕۑ������L�^�������߂�
	[eval exp="sf.new_savepage = tf.new_savepage_temp"]
[endif]

;�N���b�N�����ꏊ��0�Ȃ��p�̃t���O�𗧂Ă�B
;New�̃f�[�^�������Ă�ꍇ���̎��_��sf.new_saveclick��void�Ȃ̂�0�Ɣ��ʕt�����ɃI���ɂȂ��Ă��܂��Ă�B
;sf.save_slot0_on��0�Ԃ�New�f�[�^�}�[�N��\�邩�ǂ����̔���t���O������sf.save_slot0_newon�Ƃ���������������
;0�Ԃ��N���b�N����0�ԃZ�[�u�I���Ȃ�
[if exp="sf.new_saveclick == 0 && sf.save_slot0 == 1"]
	;0��New�f�[�^�I��
	[eval exp="sf.save_slot0_on = 1"]
[else]
	[eval exp="sf.save_slot0_on = 0"]
[endif]


; �ŐV�̏�ԂɂȂ�悤�Z�[�u��ʂ��ĕ`�悷��
[jump storage="system_save.ks" target=*�_�C�A���O����߂�02]

;-----------------------------------------------------------

