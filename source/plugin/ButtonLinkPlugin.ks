[iscript]

// �I�����p���C���iButtonLayer �N���X���p�����č쐬���܂��j
class ButtonLinkLayer extends ButtonLayer
{
	var textLayer; // �e�L�X�g��\�����邽�߂̃��C��
	var storage, target; // �N���b�N�������ɃW�����v����V�i���I�t�@�C�����ƃ��x����
	var exp; // �N���b�N���ꂽ���Ɏ��s���� TJS ��
	var onenter, onleave; // �}�E�X�J�[�\������������E�o�čs�������Ɏ��s���� TJS ��
	var countpage; // �W�����v���鎞�ɁA���̏ꏊ�̃��x����ǂ񂾂Ƃ݂Ȃ���
	var clickse, clicksebuf; // �N���b�N�������̌��ʉ��Ǝg�p����o�b�t�@�ԍ�
	var enterse, entersebuf; // �}�E�X�J�[�\������������̌��ʉ��Ǝg�p����o�b�t�@�ԍ�
	var leavese, leavesebuf; // �}�E�X�J�[�\�����o�čs�������̌��ʉ��Ǝg�p����o�b�t�@�ԍ�
	var text; // �\������e�L�X�g
	var textcolor = []; // �e�L�X�g�̐F[�ʏ펞, �N���b�N���Ă��鎞, �}�E�X�J�[�\��������Ă��鎞]
	var onClickFunction; // �N���b�N���ꂽ���ɌĂяo�����\�b�h�ւ̎Q��

	// �R���X�g���N�^
	function ButtonLinkLayer(win, par, func, elm)
	{
		// �X�[�p�[�N���X�̃R���X�g���N�^���Ăяo���܂�
		super.ButtonLayer(win, par);

		// �e�L�X�g��\�����邽�߂̃��C�����쐬���܂��i�T�C�Y�̓{�^���摜��\�����郌�C���Ɠ����ɂ��܂��j
		textLayer = new global.Layer(win, this);
		textLayer.hitThreshold = 256; // ���̃��C���̓}�E�X���b�Z�[�W���󂯎��K�v���Ȃ��̂� 256 (���ׂẴ}�E�X���b�Z�[�W���󂯎��Ȃ�)�ɐݒ肵�܂�
		textLayer.visible = true; // �\����Ԃɂ��܂�

		// �N���b�N���ꂽ���ɌĂяo�����\�b�h�ւ̎Q�Ƃ� onClickFunction �ɕۑ����Ă����܂�
		onClickFunction = func;

		// �e��ݒ���s���܂�
		setOptions(elm);

		// �d�ˍ��킹�����̓��b�Z�[�W�����������ɂ��܂�
		absolute = 2000000-10;
		// �\����Ԃɂ��܂�
		visible = true;
	}

	// �f�X�g���N�^
	function finalize()
	{
		invalidate textLayer; // �e�L�X�g�\���p���C���𖳌������܂�
		super.finalize(); // �X�[�p�[�N���X�̃f�X�g���N�^���Ăяo���܂�
	}

	// �e��ݒ���s�����\�b�h
	function setOptions(elm)
	{
		// �{�^���֌W�̐ݒ�
		loadImages(elm.graphic);
		left = +elm.left if elm.left !== void;
		top = +elm.top if elm.top !== void;
		hint = elm.hint if elm.hint !== void;
		storage = elm.storage;
		target = elm.target;
		exp = elm.exp;
		onenter = elm.onenter;
		onleave = elm.onleave;
		countpage = elm.countpage === void || +elm.countpage;
		clickse = elm.clickse;
		clicksebuf = elm.clicksebuf !== void ? +elm.clicksebuf : 0;
		enterse = elm.enterse;
		entersebuf = elm.entersebuf !== void ? +elm.entersebuf : 0;
		leavese = elm.leavese;
		leavesebuf = elm.leavesebuf !== void ? +elm.leavesebuf : 0;

		// �e�L�X�g�֌W�̐ݒ�
		text = elm.text;
		textLayer.setImageSize(width, height);
		textLayer.setSizeToImageSize();
		textLayer.font.face = elm.font !== void ? elm.font : window.fore.messages[0].userFace;
		textLayer.font.height = elm.fontsize !== void ? elm.fontsize : window.fore.messages[0].defaultFontSize;
		textcolor[0] = elm.color !== void ? +elm.color : 0xFFFFFF;
		textcolor[1] = elm.clickcolor !== void ? +elm.clickcolor : 0xFF0000;
		textcolor[2] = elm.oncolor !== void ? +elm.oncolor : 0x000000;
	}

	// ButtonLayer �N���X�� drawState ���\�b�h���I�[�o�[���C�h���܂�
	function drawState(s)
	{
		// ��� s �ɑΉ�����摜�E�I�����̃e�L�X�g��`��
		// s :  0 : ���ʂ̏��
		//      1 : �{�^���������ꂽ���
		//      2 : �{�^���̏�Ƀ}�E�X�J�[�\����������

		// �{�^���̕\�����X�V���܂�
		super.drawState(s);

		// �e�L�X�g�̕\�����X�V���܂�
		with(textLayer)
		{
			// ���C�����N���A���܂�
			.fillRect(0, 0, .width, .height, 0x00000000);
			// �e�L�X�g�����C���̒����ɕ\�����܂�
			var textWidth = .font.getTextWidth(text);
			var textHeight = .font.getTextHeight(text);
			.drawText((.width - textWidth) \ 2, (.height - textHeight) \ 2, text, textcolor[s]);
		}
	}

	function onMouseUp(x, y, button, shift)
	{
		// �X�[�p�[�N���X�� onMouseUp ���\�b�h���Ăяo���܂�
		super.onMouseUp(...);

		if(enabled && button == mbLeft)
		{
			// clickse ���w�肳��Ă���Ό��ʉ����Đ����܂�
			if(clickse !== void)
				window.se[clicksebuf].play(%["storage" => clickse, "loop" => false]);

			// exp ���w�肳��Ă���� TJS ���Ƃ��Ď��s���܂�
			if(exp !== void)
				Scripts.eval(exp);

			// �N���b�N���ꂽ���Ɏ��s���郁�\�b�h�� this �������ɂ��ČĂяo���܂�
			onClickFunction(this);
		}
	}

	function onMouseEnter()
	{
		// enterse ���w�肳��Ă���Ό��ʉ����Đ����܂�
		if(enterse !== void)
			window.se[entersebuf].play(%["storage" => enterse, "loop" => false]);

		// onenter ���w�肳��Ă���� TJS ���Ƃ��Ď��s���܂�
		if(onenter !== void)
			Scripts.eval(onenter);

		// �X�[�p�[�N���X�� onMouseEnter ���\�b�h���Ăяo���܂�
		super.onMouseEnter(...);
	}

	function onMouseLeave()
	{
		// leavese ���w�肳��Ă���Ό��ʉ����Đ����܂�
		if(leavese !== void)
			window.se[leavesebuf].play(%["storage" => leavese, "loop" => false]);

		// onleave ���w�肳��Ă���� TJS ���Ƃ��Ď��s���܂�
		if(onleave !== void)
			Scripts.eval(onleave);

		// �X�[�p�[�N���X�� onMouseLeave ���\�b�h���Ăяo���܂�
		super.onMouseLeave(...);
	}
}

// �I�������Ǘ�����v���O�C��
class ButtonLinkPlugin extends KAGPlugin
{
	var links = []; // �I�����I�u�W�F�N�g(ButtonLinkLayer �N���X�̃I�u�W�F�N�g)�̔z��

	// �R���X�g���N�^
	function ButtonLinkPlugin()
	{
		// �X�[�p�[�N���X�̃R���X�g���N�^���Ăяo���܂�
		super.KAGPlugin();
	}

	// �f�X�g���N�^
	function finalize()
	{
		// ���ׂĂ̑I������j�����܂�
		clear();
		// �X�[�p�[�N���X�̃f�X�g���N�^���Ăяo���܂�
		super.finalize();
	}

	// �I�����̍��ڂ�ǉ����郁�\�b�h
	function addLink(elm)
	{
		// �V�����I�����I�u�W�F�N�g������� links �ɒǉ����܂�
		links.add(new ButtonLinkLayer(kag, kag.fore.base, onLinkClicked, elm));
	}

	// �I�������N���b�N���ꂽ���ɌĂяo����郁�\�b�h
	function onLinkClicked(link)
	{
		// �w��̃V�i���I�t�@�C���E���x���ɃW�����v���܂�
		kag.process(link.storage, link.target, link.countpage);

		// �I���������ׂĔj�����܂�
		clear();
	}

	// ���ׂĂ̑I������j�����郁�\�b�h
	function clear()
	{
		for(var i=links.count-1;i>=0;i--)
			invalidate links[i]; // �I�����I�u�W�F�N�g�𖳌������܂�
		links.clear(); // �z��̗v�f�����ׂď������܂�
	}

	// array �̊e�����o�̃v���p�e�B��ݒ肷�郁�\�b�h
	function setObjProp(array, member, value)
	{
		for(var i = array.count - 1; i >= 0; i--) array[i][member] = value;
	}

	// onMessageHiddenStateChanged ���\�b�h���I�[�o�[���C�h���܂�
	function onMessageHiddenStateChanged(hidden)
	{
		// ���b�Z�[�W���C���̕\����Ԃɂ��킹�đI�����̕\����Ԃ�ݒ肵�܂�
		setObjProp(links, 'visible', !hidden);
	}

	// onRestore ���\�b�h���I�[�o�[���C�h���܂�
	function onRestore(f, clear, elm)
	{
		// �I�������\�����ꂽ��ԂŃf�[�^�����[�h���ꂽ���A
		// ���[�h��ɑI�������c��Ȃ��悤�ɂ����ŏ������Ă����܂�
		this.clear();
	}
}

// ButtonLinkPlugin �N���X�̃I�u�W�F�N�g���쐬���āA�v���O�C���Ƃ��ēo�^���܂�
kag.addPlugin(global.buttonlink_object = new ButtonLinkPlugin());

[endscript]

; blink �}�N���F�I�����̍��ڂ��쐬���܂�
;
; �i�w��ł��鑮���j
;    graphic : �w�i�ɕ\������摜(button �^�O�� graphic �����ɑ���)
;       left : ���[�ʒu(image �^�O�� left �����ɑ���)
;        top : ��[�ʒu(image �^�O�� top �����ɑ���)
;       text : �\������e�L�X�g
;    storage : �N���b�N�������W�����v����V�i���I�t�@�C����(button/link �^�O�� storage �����ɑ���)
;     target : �N���b�N�������W�����v���郉�x����(button/link �^�O�� target �����ɑ���)
;        exp : �N���b�N���������s���� TJS ��(button/link �^�O�� exp �����ɑ���)
;       hint : �}�E�X�J�[�\������������\������c�[���`�b�v�q���g(button/link �^�O�� hint �����ɑ���)
;    onenter : �}�E�X�J�[�\��������������s���� TJS ��(button/link �^�O�� onenter �����ɑ���)
;    onleave : �}�E�X�J�[�\�����o�čs���������s���� TJS ��(button/link �^�O�� onleave �����ɑ���)
;  countpage : �W�����v���鎞�ɂ��̏ꏊ�̃��x����ǂ񂾂Ƃ݂Ȃ���(button/link �^�O�� countpage �����ɑ���)
;    clickse : �N���b�N�������Đ�������ʉ�(button/link �^�O�� clickse �����ɑ���)
; clicksebuf : �N���b�N���������ʉ����Đ�����̂Ɏg�����ʉ��o�b�t�@(button/link �^�O�� clicksebuf �����ɑ���)
;    enterse : �}�E�X�J�[�\������������Đ�������ʉ�(button/link �^�O�� enterse �����ɑ���)
; entersebuf : �}�E�X�J�[�\�����o�čs���������ʉ����Đ�����̂Ɏg�����ʉ��o�b�t�@(button/link �^�O�� entersebuf �����ɑ���)
;    leavese : �}�E�X�J�[�\�����o�čs�������Đ�������ʉ�(button/link �^�O�� leavese �����ɑ���)
; leavesebuf : �}�E�X�J�[�\�����o�čs���������ʉ����Đ�����̂Ɏg�����ʉ��o�b�t�@(button/link �^�O�� leavesebuf �����ɑ���)
;       font : �e�L�X�g��\�����鎞�Ɏg�p����t�H���g��(�f�t�H���g�F���݃��[�U���I�����Ă���t�H���g)
;   fontsize : �e�L�X�g�̕����̑傫��(�f�t�H���g�F�f�t�H���g�̕����T�C�Y)
;      color : �ʏ펞�̃e�L�X�g�̐F(�f�t�H���g�F0x000000(��))
;    oncolor : �}�E�X�J�[�\��������Ă��鎞�̃e�L�X�g�̐F(�f�t�H���g�F0xFF0000(��))
; clickcolor : �N���b�N���Ă��鎞�̃e�L�X�g�̐F(�f�t�H���g�F0xFF0000(��))
[macro name=blink]
[eval exp="buttonlink_object.addLink(mp)"]
[endmacro]



[return]
