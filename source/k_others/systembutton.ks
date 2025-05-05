
;���̖��߂ŏ���݂̂̐ݒ�Ȃ̂��[�B��������܂����񂾂낤���B
@if exp="typeof(global.systembutton_object) == 'undefined'"

@iscript

var toggle_auto;//�I�[�g�X�L�b�v���s������p�̃t���O
var toggle_skip;//�I�[�g�X�L�b�v���s������p�̃t���O


class SystemButtonLayer extends ButtonLayer
	// �N���b�N���ꂽ�Ƃ��Ɏ��s����֐����w��ł���{�^�����C��
{
	var onClickFunction;

	function SystemButtonLayer(window, parent, func)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
		visible = true;
		onClickFunction = func;
	}

	function finalize()
	{
		super.finalize(...);
	}


	function loadImages(storage, key)
	{
		// �X�[�p�[�N���X(SystemButtonLayer�N���X)�� loadImages ���\�b�h���Ăяo���܂�
		super.loadImages(storage, key);

		// ���C���̕\�������{�^���摜�̂S���̂P�ɐݒ肵�܂�
		global.Layer.height = imageHeight \ 3;
	}

	function drawState(s)
	{
		// ��� s �ɑΉ�����摜��`��
		// s :  0 : ���ʂ̏��
		//      1 : �{�^���������ꂽ���
		//      2 : �{�^���̏�Ƀ}�E�X�J�[�\����������
		if(!enabled)
		{
			s = 0; // �������
		}

		if(Butt_imageLoaded)
		{
			// �{�^���̉摜��ݒ�i������(s+1)�Ԗڂ̉摜��\���j���܂�
			imageTop = -s * height;
		}
	}

	function onClick()
	{
		super.onClick(...);
	}

	function onMouseUp(x, y, button, shift)
	{
		if(enabled && button == mbLeft)
			onClickFunction(this);
		super.onMouseUp(...);
	}

}

class SystemButtonPlugin extends KAGPlugin
{
	//mine:�V�X�e���{�^���z�u�ݒ�
	var x = sf.sysbt_x; // ���� x �ʒu
	var y = sf.sysbt_y; // ���� y �ʒu
	var foreSeen = false; // �\��ʂ̃{�^��������
	var backSeen = false; // ����ʂ̃{�^��������

	var foreButtons = []; // �\��ʂ̃{�^���̔z��
	var backButtons = []; // ����ʂ̃{�^���̔z��

	// �ȉ��͒萔�Ƃ��Ĉ���
	//var IndexHistory = 0;	// LOG�{�^���̃C���f�b�N�X
	//var IndexSave = 3;		// SAVE�{�^���̃C���f�b�N�X
	//var IndexLoad = 4;		// LOAD�{�^���̃C���f�b�N�X

//�Ȃ񂩍��܂ł̕��т�����������ς���
//mm 2��̕��я��͍��̏c����H

	var IndexSave = 0;
	var IndexQsave = 1;
	var IndexSkip = 2;
	var IndexConfig = 3;
	var IndexTitle = 4;
	//////////////////
	var IndexLoad = 5;
	var IndexQload = 6;
	var IndexAuto = 7;
	var IndexHistory = 8;
	var IndexHide = 9;

//	var IndexVoice = 0;


	function SystemButtonPlugin()
	{
		// SystemButtonPlugin �R���X�g���N�^

		createButtons(kag.fore.base, foreButtons); // �\��ʂ̃{�^�����쐬
		createButtons(kag.back.base, backButtons); // ����ʂ̃{�^�����쐬

		realign(); // �Ĕz�u

		setObjProp(foreButtons, 'visible', foreSeen = false);
		setObjProp(backButtons, 'visible', backSeen = false);
			// ��\����

		onStableStateChanged(kag.inStable);		// �C�l�[�u���^�f�B�Z�[�u����Ԃ��X�V���Ă���
	}

	function finalize()
	{
		// �{�^���𖳌���
		for(var i = 0; i < foreButtons.count; i++)
			invalidate foreButtons[i];
		for(var i = 0; i < backButtons.count; i++)
			invalidate backButtons[i];

		super.finalize(...);
	}

	function setObjProp(array, member, value)
	{
		// array �̊e�����o�̃v���p�e�B�̐ݒ�
		for(var i = array.count - 1; i >= 0; i--) array[i][member] = value;
	}

	function createButtons(parent, array)
	{
		// parent ��e���C���Ƃ��ă{�^�����쐬���Aarray �ɓo�^����B
		// �{�^���͕\��ʂƗ���ʂ̗����ɑ΂��č쐬�����̂Œ��ӁB

		// �{�^����ǉ�����ɂ́A������Q�l�ɂ��� ���낢��ǉ����Ă��������B

		var obj;

		//�V�[����z���ɕʂ̃{�^���摜�ǂݍ������Ǝv�������Ǐ�肭�����Ȃ��ł�߂�B
		//�{�^���摜�͏c��4�̂܂܁B�f�B�V�[�Ԃ钆�������ڂ͒ʏ�̃{�^�����Ă���

//�Ȃ񂩍��܂ł̕��т�����������ς���
//mm ���я��͂����̓ǂݍ��ݏ����H
		array.add(obj = new SystemButtonLayer(kag, parent, onSaveButtonClick));
		obj.loadImages('game_save.png'); // SAVE �{�^���p�摜��ǂݍ���
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "�Z�[�u����";

		array.add(obj = new SystemButtonLayer(kag, parent, onQuickSaveButtonClick));
		obj.loadImages('game_Qsave.png'); // �N�C�b�N�Z�[�u�p�摜��ǂݍ���
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "�N�C�b�N�Z�[�u";

		array.add(obj = new SystemButtonLayer(kag, parent, onSkipButtonClick));
		obj.loadImages('game_skip.png'); // SKIP �{�^���p�摜��ǂݍ���
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "���̑I����/���ǂ܂Ői��";

		array.add(obj = new SystemButtonLayer(kag, parent, onConfigButtonClick));
		obj.loadImages('game_config.png'); // CONFIG �{�^���p�摜��ǂݍ���
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "�Q�[���ݒ�";

		array.add(obj = new SystemButtonLayer(kag, parent, onTitleButtonClick));
		obj.loadImages('game_quit.png'); // TITLE �{�^���p�摜��ǂݍ���
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "�^�C�g���֖߂�";

//		array.add(obj = new SystemButtonLayer(kag, parent, onVoiceButtonClick));
//		obj.loadImages('game_voice.png'); // "; �{�C�X�Đ��{�^���p�摜��ǂݍ���
//		obj.hint = "�{�C�X�Đ�";

		array.add(obj = new SystemButtonLayer(kag, parent, onLoadButtonClick));
		obj.loadImages('game_load.png'); // LOAD �{�^���p�摜��ǂݍ���
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "���[�h����";

		array.add(obj = new SystemButtonLayer(kag, parent, onQuickLoadButtonClick));
		obj.loadImages('game_Qload.png'); // �N�C�b�N���[�h�p�摜��ǂݍ���
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "�N�C�b�N���[�h";

		array.add(obj = new SystemButtonLayer(kag, parent, onAutoButtonClick));
		obj.loadImages('game_auto.png'); // AUTO �{�^���p�摜��ǂݍ���
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "�����I�ɓǂݐi��";

		array.add(obj = new SystemButtonLayer(kag, parent, onLogButtonClick));
		obj.loadImages('game_log.png'); // LOG �{�^���p�摜��ǂݍ���
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "���b�Z�[�W�����̕\��";

		array.add(obj = new SystemButtonLayer(kag, parent, onCloseButtonClick));
		obj.loadImages('game_window_hide.png'); // CLOSE �{�^���p�摜��ǂݍ���
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "���b�Z�[�W������";

	}

	function realign()
	{
		// �{�^���̍Ĕz�u
		// ���̃��\�b�h�́A�{�^���� x y �ʒu���牡���ɔz�u����
		var fore, back, count, btn_x, btn_y;


		count = foreButtons.count;
		btn_x = 0;
//�{�^��2��p
			btn_y = 0;
			var btwidth = 81;
			var btheight = 72;
		for(var i = 0; i < count; i++)
		{


			var xpos = btn_x + x;
//�{�^��2��p
			var ypos = btn_y + y;
			var obj;



			obj = backButtons[i];
//�{�^��2��p
			obj.setPos(xpos, ypos);
//////////////			obj.setPos(xpos, y);
			obj.absolute = 2000000-3; // �d�ˍ��킹�����̓��b�Z�[�W����������

			obj = foreButtons[i];
//�{�^��2��p
			obj.setPos(xpos, ypos);
//////////////			obj.setPos(xpos, y);
			obj.absolute = 2000000-3;

			//mine:�V�X�e���{�^���z�u�ݒ�@���Ƃŗv����
//////////////			btn_x += obj.width+sf.sysbt_offset;		// �I�t�Z�b�g�B�{�^���Ԃ��󂯂鎞�͂��̍��ڂ�ύX
			btn_y += obj.height+sf.sysbt_offset;		// �I�t�Z�b�g�B�{�^���Ԃ��󂯂鎞�͂��̍��ڂ�ύX

//�{�^��2��p
			if(i == 4)
			{
			btn_x = 5 + obj.width;
			btn_y = 0;
			}
//�{�^��2��p

		}
	}

	function onSaveButtonClick()
	{
		// SAVE �{�^���������ꂽ
		// ���݂̃t�@�C���ƃ��x����ۑ�
//		f.ksStorageSys = (kag.conductor.curStorage);
//		f.ksLabelSys = (kag.conductor.curLabel);
//�E�N���b�N�ŉ�ʑJ�ڂ����ꍇ�Ƀt���O��ۑ��ł��Ȃ��̂ŁA�ۑ�����pcms�}�N�����ł��B

		kag.callExtraConductor("systembutton_sub.ks", "*sys_save");
	}

	function onLoadButtonClick()
	{
		// LOAD �{�^���������ꂽ
		// ���݂̃t�@�C���ƃ��x����ۑ�
//		f.ksStorageSys = (kag.conductor.curStorage);
//		f.ksLabelSys = (kag.conductor.curLabel);
//�E�N���b�N�ŉ�ʑJ�ڂ����ꍇ�Ƀt���O��ۑ��ł��Ȃ��̂ŁA�ۑ�����pcms�}�N�����ł��B



		kag.callExtraConductor("systembutton_sub.ks", "*sys_load");
//������Ȃ񂾂����H
onStableStateChanged(kag.inStable);	}

	function onAutoButtonClick()
	{

		// AUTO �{�^���������ꂽ
		kag.enterAutoMode();
	}

	function onSkipButtonClick()
	{

		// SKIP �{�^���������ꂽ
		kag.skipToStop();

	}

	function onLogButtonClick()
	{
		// LOG �{�^���������ꂽ
	//	kag.callExtraConductor("systembutton_sub.ks", "*sys_log");
	//���[��Ƃ肠�����{�^���������Ƃ��͏��������Ǖ��A��������}�E�X�X�N���[���ɑΉ�����̖ʓ|���Ȃ�
		kag.onShowHistoryMenuItemClick(kag);
	}




	function onConfigButtonClick()
	{
		// ���݂̃t�@�C���ƃ��x����ۑ�
//		f.ksStorageSys = (kag.conductor.curStorage);
//		f.ksLabelSys = (kag.conductor.curLabel);
//�E�N���b�N�ŉ�ʑJ�ڂ����ꍇ�Ƀt���O��ۑ��ł��Ȃ��̂ŁA�ۑ�����pcms�}�N�����ł��B

		// CONFIG �{�^���������ꂽ
		kag.callExtraConductor("systembutton_sub.ks", "*sys_config");
	}

	//function onExitButtonClick()
	//{
		// EXIT �{�^���������ꂽ
	//	kag.callExtraConductor("systembutton_sub.ks", "*sys_exit");
	//}

	function onCloseButtonClick()
	{
		// CLOSE �{�^���������ꂽ
		//kag.onPrimaryRightClick();
		//m �E�N���b�N���Ăяo���ƃR���t�B�O�ŋ@�\��ς��Ă�ꍇ�ɁA
		//window���B�����ɃZ�[�u��ʂƂ���jump���Ă��܂��̂�MainWindow.tjs��
		//window���B���t�@���N�V�������Ăяo�����Ƃɂ���@2015/01/06
		//�I�������\�����łȂ��Ȃ���s
		if(f.selnow == 0)
		{
		kag.hideMessageLayerByUser();
		}
	}

	function onTitleButtonClick()
	{
		// TITLE �{�^���������ꂽ
		//kag.callExtraConductor("systembutton_sub.ks", "*sys_title");

		//mm No�����������Ƀo�b�N���O���g���Ȃ��܂܂ɂȂ�̂�dialog.ks���o�R���Ȃ��Ń��j���[���Ăԁ@2018/05/06
		kag.onGoToStartMenuItemClick(kag);

//		// �_�C�A���O�I���Ȃ�_�C�A���O�T�u���[�`���ɔ�΂������ǉ��@�I�t�Ȃ璼��systembutton_sub��
//		if(sf.dialog_on == 1)
//		{
//			//���[�h���Ƃɕ��򂳂������ǁA�ŏI�I�Ȗ߂菈����title.ks�̓��ɂ��邩�瓯����ѐ�ł����̂ł́H
//			//	if(tf.scene_mode == 1)
//			//	{
//			//	tf.dialog_game_title = 1;
//			//	kag.callExtraConductor("dialog.ks");
//			//	//No���������炱���ɖ߂��ăQ�[����return
//			//	return;
//			//	}
//			//	else
//			//	{
//			tf.dialog_game_title = 1;
//			kag.callExtraConductor("dialog.ks");
//			//No���������炱���ɖ߂��ăQ�[����return
//			return;
//			//	}
//		}
//		else
//		{
//
//			//	if(tf.scene_mode == 1)
//			//	{
//			//	//kag.callExtraConductor("systembutton_sub.ks", "*sys_title");
//			//	kag.callExtraConductor("dialog.ks", "*�Q�[�����V�X�e���{�^���^�C�g��_�_�C�A���O�I�t");
//			//	}
//			//	else
//			//	{
//			//kag.callExtraConductor("systembutton_sub.ks", "*sys_title");
//			kag.callExtraConductor("dialog.ks", "*�Q�[�����V�X�e���{�^���^�C�g��_�_�C�A���O�I�t");
//			//	}
//		}
	}







//	function onSceneButtonClick()
//	{
//		// TITLE �{�^���������ꂽ
//		kag.callExtraConductor("systembutton_sub.ks", "*sys_scene");
//	}


	function onVoiceButtonClick()
	{
		// �{�C�X�{�^���������ꂽ
//		kag.se[f.lastbuf].play(%[storage:f.lastVoice]) if kag.se[0].status == 'play';
//	;	�����Ɠ��삵�Ȃ��̂Ł��ɏ�������
		if(f.lastVoice != '') kag.se[f.lastbuf].play(%[storage:f.lastVoice]); 
		return;

	}

	function setOptions(elm)
	{
		// �I�v�V������ݒ�
		setObjProp(foreButtons, 'visible', foreSeen = +elm.forevisible) if elm.forevisible !== void;
		setObjProp(backButtons, 'visible', backSeen = +elm.backvisible) if elm.backvisible !== void;
		var poschanged = false;
		(x = +elm.left, poschanged = true) if elm.left !== void;
		(y = +elm.top, poschanged = true) if elm.top !== void;
		if(poschanged) realign(); // �\���ʒu�̕ύX
	}

	function onStore(f, elm)
	{
		// �x��ۑ�����Ƃ�
		var dic = f.systemButtons = %[];
			// f.systemButtons �Ɏ����z����쐬
		dic.foreVisible = foreSeen;
		dic.backVisible = backSeen;
		dic.left = x;
		dic.top = y;
			// �e���������z��ɋL�^
	}

	function onRestore(f, clear, elm)
	{
		// �x��ǂݏo���Ƃ�
		var dic = f.systemButtons;
		if(dic === void)
		{
			// systemButtons �̏�񂪞x�ɕۑ�����Ă��Ȃ�
			setObjProp(foreButtons, 'visible', foreSeen = false);
			setObjProp(backButtons, 'visible', backSeen = false);
		}
		else
		{
			// systemButtons �̏�񂪞x�ɕۑ�����Ă���
			setOptions(%[ forevisible : dic.foreVisible, backvisible : dic.backVisible,
				left : dic.left, top : dic.top]);
				// �I�v�V������ݒ�
		}
	}

	function onStableStateChanged(stable)
	{
		// �u����v( s l p �̊e�^�O�Œ�~�� ) ���A
		// �u���s���v ( ����ȊO ) ���̏�Ԃ��ς�����Ƃ��ɌĂ΂��

		// ���s���͊e�{�^���𖳌��ɂ���
		setObjProp(foreButtons, 'enabled', stable);
		setObjProp(backButtons, 'enabled', stable);


		if (stable) {
			// ���肵�Ă��Ă��A�ȉ��̏�ԂɂȂ��Ă���ꍇ�A�Ή�����{�^�����f�B�Z�[�u���ɂ���
			// �]history�^�O�Ń��b�Z�[�W�������}�~
			// �]disablestore/store�^�O�ŃZ�[�u�^���[�h���}�~
			if (!kag.historyEnabled)
				foreButtons[IndexHistory].enabled = backButtons[IndexHistory].enabled = false;
			if (!kag.canStore())
				foreButtons[IndexSave].enabled = backButtons[IndexSave].enabled = false;
			if (!kag.canRestore())
				foreButtons[IndexLoad].enabled = backButtons[IndexLoad].enabled = false;
			// ��z�����}�~
			if (tf.scene_mode)
				foreButtons[IndexQsave].enabled = backButtons[IndexQsave].enabled = false;
			if (tf.scene_mode)
				foreButtons[IndexQload].enabled = backButtons[IndexQload].enabled = false;
			// �_�C�A���O�����}�~
//			if (tf.dialog_now)
//				foreButtons[IndexTitle].enabled = backButtons[IndexTitle].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexSkip].enabled = backButtons[IndexSkip].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexAuto].enabled = backButtons[IndexAuto].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexSave].enabled = backButtons[IndexSave].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexLoad].enabled = backButtons[IndexLoad].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexConfig].enabled = backButtons[IndexConfig].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexQsave].enabled = backButtons[IndexQsave].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexQload].enabled = backButtons[IndexQload].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexHistory].enabled = backButtons[IndexHistory].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexHide].enabled = backButtons[IndexHide].enabled = false;

			//if (!kag.enterAutoMode)
			//�����łȂ񂩏�肢���Ƃ����AUTO���s���Ƀ{�^���A���r���������ǁc�c�B
			//�������H
			//	foreButtons[IndexAuto].enabled = backButtons[IndexAuto].enabled = false;

		}
	}

	function onMessageHiddenStateChanged(hidden)
	{
		// ���b�Z�[�W���C�������[�U�̑���ɂ���ĉB�����Ƃ��A�����Ƃ���
		// �Ă΂��B���b�Z�[�W���C���ƂƂ��ɕ\��/��\����؂�ւ������Ƃ���
		// �����Őݒ肷��B
		if(hidden)
		{
			setObjProp(foreButtons, 'visible', false);
			setObjProp(backButtons, 'visible', false);
		}
		else
		{
			// foreSeen, backSeen �́A�{�^�����{���\�����ł��������ǂ������L�^���Ă���
			setObjProp(foreButtons, 'visible', foreSeen);
			setObjProp(backButtons, 'visible', backSeen);
		}
	}

	function onCopyLayer(toback)
	{
		// ���C���̕\�������̏��̃R�s�[

		// backlay �^�O��g�����W�V�����̏I�����ɌĂ΂��

		// �����Ń��C���Ɋւ��ăR�s�[���ׂ��Ȃ̂�
		// �\��/��\���̏�񂾂�

		if(toback)
		{
			// �\����
			setObjProp(backButtons, 'visible', foreButtons[0].visible);
			backSeen = foreSeen;
		}
		else
		{
			// �����\
			setObjProp(foreButtons, 'visible', backButtons[0].visible);
			foreSeen = backSeen;
		}
	}

	function onExchangeForeBack()
	{
		// ���ƕ\�̊Ǘ���������

		// children = true �̃g�����W�V�����ł́A�g�����W�V�����I������
		// �\��ʂƗ���ʂ̃��C���\���������������ւ��̂ŁA
		// ����܂� �\��ʂ��Ǝv���Ă������̂�����ʂɁA����ʂ��Ǝv����
		// �������̂��\��ʂɂȂ��Ă��܂��B�����̃^�C�~���O�ł��̏���
		// ����ւ���΁A�����͐����Ȃ��ōςށB

		// �����ŕ\��ʁA����ʂ̃��C���Ɋւ��ĊǗ����ׂ��Ȃ̂�
		// foreButtons �� backButton �AforeSeen �� backSeen �̕ϐ�����
		var tmp;

		tmp = backButtons;
		backButtons = foreButtons;
		foreButtons = tmp;

		tmp = backSeen;
		backSeen = foreSeen;
		foreSeen = tmp;
	}


	function onQuickSaveButtonClick()

//	{
//	//�N�C�b�N�Z�[�u�̃T���l�ɃZ�[�u�}�X�N�����Ȃ��̂ŃT�u���[�`���ɔ�΂��ăZ�[�u����
//	kag.callExtraConductor("systembutton_sub.ks", "*sys_Qsave");
//	}

	{
	  if (kag.canStore())
	// �m�F�_�C�����O�L��ɂ���Ȃ�false������


//�ʏ�		if(sf.dialog_on)
//�ʏ�		{
//�ʏ�		kag.storeBookMark(kag.numBookMarks-1,false);  // �N�C�b�N�Z�[�u
//�ʏ�		}
//�ʏ�		else
//�ʏ�		{
//�ʏ�		kag.storeBookMark(kag.numBookMarks-1,false);  // �N�C�b�N�Z�[�u
//�ʏ�		}

		//�׈��p�͘g��ϐ��ɂ�������
		if(sf.dialog_on)
		{
		kag.storeBookMark(sf.QsaveNo,false);  // �N�C�b�N�Z�[�u
		}
		else
		{
		kag.storeBookMark(sf.QsaveNo,false);  // �N�C�b�N�Z�[�u
		}



		//�N�C�b�N�Z�[�u���o�����ɂ���
		kag.callExtraConductor("systembutton_sub.ks", "*sys_Qsave");
	}


	function onQuickLoadButtonClick()
	{
	  if (kag.canRestore())

		//�������ŃI���ɂ����Ⴄ�ƃf�[�^�������ɂ��t���O�I���̂܂܂ɂȂ��ă^�C�g�����Q�[���X�^�[�g�Ŗ\�����邩��
		//�f�[�^�����Ƃ��͗��ĂȂ�
		//�׈��p�͘g��ϐ��ɂ�������
//		if (kag.getBookMarkDate(kag.numBookMarks-1) != '')
		if (kag.getBookMarkDate(sf.QsaveNo) != '')
		{
			tf.QuickLoad = 1;
		}

		//���O���d�o�͂悯�̔���ׂ̈̃t���O�ۑ� ���[�h������������Ⴄ����sf��
		sf.ksStorageSys_tmp = (kag.conductor.curStorage);
		//kag.conductor.currentLabel���Ƃ��܂������Ȃ�
		sf.ksLabelSys_tmp = (kag.currentLabel);
		
//�ʏ�		// �m�F�_�C�����O�L��ɂ���Ȃ�false������
//�ʏ�		if(sf.dialog_on)
//�ʏ�		{
//�ʏ�		//���̃t���O���ĂĂ����Ȃ��ƉE�N���b�N���������ݒ肳��Ȃ���2015/04/28
//�ʏ�		sf.���[�h��E�N���b�N���ݒ� = 1;
//�ʏ�		kag.restoreBookMark(kag.numBookMarks-1,false);  // �N�C�b�N���[�h
//�ʏ�		}
//�ʏ�		else
//�ʏ�		{
//�ʏ�		//���̃t���O���ĂĂ����Ȃ��ƉE�N���b�N���������ݒ肳��Ȃ���2015/04/28
//�ʏ�		sf.���[�h��E�N���b�N���ݒ� = 1;
//�ʏ�		 kag.restoreBookMark(kag.numBookMarks-1,false);  // �N�C�b�N���[�h
//�ʏ�		}

		//�׈��p�͘g��ϐ��ɂ�������
		// �m�F�_�C�����O�L��ɂ���Ȃ�false������
		if(sf.dialog_on)
		{
		//���̃t���O���ĂĂ����Ȃ��ƉE�N���b�N���������ݒ肳��Ȃ���2015/04/28
		sf.���[�h��E�N���b�N���ݒ� = 1;
		kag.restoreBookMark(sf.QsaveNo,false);  // �N�C�b�N���[�h
		}
		else
		{
		//���̃t���O���ĂĂ����Ȃ��ƉE�N���b�N���������ݒ肳��Ȃ���2015/04/28
		sf.���[�h��E�N���b�N���ݒ� = 1;
		 kag.restoreBookMark(sf.QsaveNo,false);  // �N�C�b�N���[�h
		}



	}

}

kag.addPlugin(global.systembutton_object = new SystemButtonPlugin(kag));	// �v���O�C���I�u�W�F�N�g���쐬���A�o�^����

@endscript
@endif
;
; �}�N���̓o�^
@macro name="sysbtopt"
@eval exp="systembutton_object.setOptions(mp)"
; mp ���}�N���ɓn���ꂽ���������������z��I�u�W�F�N�g
@endmacro
@return


