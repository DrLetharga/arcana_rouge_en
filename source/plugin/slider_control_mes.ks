;
; �ȈՂȃX���C�_�[�R���g���[��
;
;   �O�ς���W��ύX������x�̕ύX�Ȃ�Config_SliderControl.tjs�Őݒ�\
;
[iscript]
//
// �X���C�_�[�̃c�}�~����
//
class TabLayer02 extends Layer
{
	var mouseDown;		// �}�E�X�_�E�����Ȃ�^�A�����łȂ���΋U
	var mouseOn;		// �}�E�X���c�}�~�̏�ɂ���Ȃ�^�A�����łȂ���΋U
	var dragOriginX;	// �h���b�O�J�n���̃}�E�X�w���W�i���C���̕\�����W�n�j

	function TabLayer02(win, par)
	{
		super.Layer(win, par);
		focusable = false; // �t�H�[�J�X�𓾂Ȃ�
		hitType = htMask;
		hitThreshold = 0;

		mouseDown = false;
		mouseOn = false;
		dragOriginX = 0;
	}

	function finalize()
	{
		super.finalize();
	}

	function drawState(s)
	{
		// ��� s �ɑΉ�����摜��`��
		// s :  0 : ���ʂ̏��
		//      1 : �c�}�~�������ꂽ���
		//      2 : �c�}�~�̏�Ƀ}�E�X�J�[�\����������
		if(!enabled)
			s = 0; // �������

		// ��Ԃɉ����ăc�}�~�̃C���[�W��ύX
		imageLeft = -s * width;
	}

	function loadImages(storage, key)
	{
		// �摜��ǂݍ���
		super.loadImages(storage, key);
		super.width = imageWidth \ 3;
		super.height = imageHeight;
	}

	function draw()
	{
		if (mouseOn && !mouseDown)		// �c�}�~�̏�Ƀ}�E�X������
			drawState(1);
		else if (mouseOn && mouseDown)	// �}�E�X�_�E���`�h���b�O��
			drawState(2);
		else							// ����ȊO�i�}�E�X���c�}�~���痣�ꂽ�j
			drawState(0);
	}

	function onPaint()
	{
		super.onPaint(...);
		draw();
	}

	function onMouseDown(x, y, button, shift)
	{
		mouseOn = true;
		if (button == mbLeft) {
			mouseDown = true;
			dragOriginX = x;
		}
		update();
	}

	function onMouseEnter()
	{
		mouseOn = true;
		mouseDown = false;
		update();
	}

	function onMouseLeave()
	{
		mouseOn = false;
		mouseDown = false;
		update();
	}

	function onMouseMove(x, y, shift)
	{
		if (mouseOn && mouseDown) {		// �h���b�O���Ȃ�c
			with (parent) {
				var v = .cursorX - dragOriginX;
				if (v < .tabLeftMin)
					v = .tabLeftMin;
				if (.tabLeftMax < v)
					v = .tabLeftMax;
				.position02 = int Math.round((v-.tabLeftMin) * (.sliderMax02-.sliderMin02) / (.tabLeftMax-.tabLeftMin) + .sliderMin02);
			}
		}
		update();
	}

	function onMouseUp(x, y, button, shift)
	{
		mouseOn = true;
		if (button == mbLeft)
			mouseDown = false;
		update();
	}

	function onFocus()
	{
		// �t�H�[�J�X�𓾂�
		super.onFocus(...);
		update();
	}

	function onBlur()
	{
		// �t�H�[�J�X��������
		super.onBlur(...);
		update();
	}

	function onNodeDisabled()
	{
		// ���C���̃m�[�h���s�ɂȂ���
		super.onNodeDisabled(...);
		update();
	}

	function onNodeEnabled()
	{
		// ���C���̃m�[�h���L���ɂȂ���
		super.onNodeEnabled(...);
		update();
	}
}

//
// �X���C�_�[�R���g���[���i�y�䕔���j
//
class SliderControl extends Layer
{
	var tabLayer02;			// �c�}�~���C��
	var valueLayer02;			// ���ݒl�\���p���C��
	var mouseOn = false;	// �}�E�X���X���C�_�[�R���g���[����ɂ��邩�ۂ�

	var sliderMin02 = 0;			// �X���C�_�[�̍ŏ��l
	var sliderMax02 = 100;		// ���A�ő�l
	var sliderPosition02 = 0;		// ���A���ݒu
	var unitName02 = "";			// �P�ʖ�
	var onChangeFunction02 = void;	// �X���C�_�[�̒l���ς�����Ƃ��ɌĂяo�����֐�

	// �ȉ���Config_SliderControl.tjs�̊֐�SliderControl_config()�Őݒ�\�ȃp�����[�^
	var sliderControlImage = "config_slider_base3.png";	// �X���C�_�[�R���g���[���̉摜�t�@�C��
	var tabImage = "opt_slider_pin.png";	// �^�u�̉摜�t�@�C��
	var tabOffsetY = 0;						// �^�u�̂x���W�I�t�Z�b�g�i�s�N�Z���j
	var tabLeftMin = 0;						// �^�u���ړ��\�ȍŏ��w���W�i�s�N�Z���j
	var tabLeftMax = sf.srd_mes_tableftmax;					// ���A�x���W

//	var valueOffsetX = 230;					// ���ݒl�\���p���C���̂w���W�I�t�Z�b�g�i�s�N�Z���j
//	var valueOffsetY = 10;					// ���A�x���W�I�t�Z�b�g�i�s�N�Z���j
	var valueOffsetX = 1000;					// ���ݒl�\���p���C���̂w���W�I�t�Z�b�g�i�s�N�Z���j
	var valueOffsetY = 1000;					// ���A�x���W�I�t�Z�b�g�i�s�N�Z���j
	var valueFormat = "%4d%s";				// �����i�S���E�񂹁{�P�ʁj
	var valueFontFace = "�l�r �S�V�b�N";	// �t�H���g���i�����t�H���g�ł��邱�Ɓj
	var valueFontHeight = 16;				// �t�H���g�T�C�Y�i�s�N�Z���j
	var valueFontBold = true;				// �����ɂ���ꍇ��true
	var valueFontColor = 0xffffff;			// �����̐F�i0xRRGGBB�`��/�F�萔�j
	var valueShadowLevel = 512;				// �e�̕s�����x�i0:�e�Ȃ��j
	var valueShadowColor = 0x000000;		// �e�̐F�i0xRRGGBB�`��/�F�萔�j
	var valueShadowWidth = 1;				// �e�̕��i0:�V���[�v�`�ڂ���j
	var valueShadowOffsetX = 0;				// �e�̈ʒu�̂w���W�i0:�^���j
	var valueShadowOffsetY = 0;				// ���A�x���W�i0:�^���j

	function SliderControl(win, par, uni=void)
	{
		super.Layer(win, par);
		unitName02 = uni if uni !== void;

		focusable = false; // �t�H�[�J�X�𓾂Ȃ�
		hitType = htMask;
		hitThreshold = 0;

		tabLayer02 = new TabLayer02(win, this);
		valueLayer02 = new global.Layer(win, win.primaryLayer);

		if (typeof global.SliderControl_config != "undefined")
			(SliderControl_config incontextof this)();

		loadImages(sliderControlImage);
		with (tabLayer02) {
			.loadImages(tabImage);
			.setPos(tabLeftMin, tabOffsetY);
			.visible = true;
		}
		with (valueLayer02) {
			.focusable = false; // �t�H�[�J�X�𓾂Ȃ�
			.setPos(this.left+valueOffsetX, this.top+valueOffsetY);
			.font.face = valueFontFace;
			.font.height = valueFontHeight;
			.font.bold = valueFontBold;
			.visible = true;
		}
	}

	function finalize()
	{
		invalidate tabLayer02;
		invalidate valueLayer02;
		super.finalize(...);
	}

	function drawState(s)
	{
		// ��� s �ɑΉ�����摜��`��
		// s :  0 : �}�E�X���X���C�_�[���痣�ꂽ
		//      1 : �X���C�_�[�̏�Ƀ}�E�X������
		if(!enabled)
			s = 0; // �������

		// ��Ԃɉ����ăX���C�_�[�̃C���[�W��ύX
		imageLeft = -s * width;
	}

	function loadImages(storage, key)
	{
		// �摜��ǂݍ���
		super.loadImages(storage, key);
		super.width = imageWidth \ 2;
		super.height = imageHeight;
	}

	function draw()
	{
		if (mouseOn)		// �X���C�_�[�̏�Ƀ}�E�X������
			drawState(1);
		else				// ����ȊO�i�}�E�X���X���C�_�[���痣�ꂽ�j
			drawState(0);
	}

	function drawValue02()
	{
		// ���ݒl�\���p���C���Ɍ��݂̒l��`�悷��
		with (valueLayer02) {
			.fillRect(0, 0, .width, .height, 0x00000000);
			.drawText(0, 0, valueFormat.sprintf(sliderPosition02,unit), valueFontColor, 255, true,
				valueShadowLevel, valueShadowColor, valueShadowWidth, valueShadowOffsetX, valueShadowOffsetY);
		}
	}

	function onPaint()
	{
		// ���C���̓��e��`�悷��
		super.onPaint(...);
		draw();
	}

	function onMouseEnter()
	{
		// �}�E�X�����C���̈���ɓ�����
		mouseOn = true;
		update();
		super.onMouseEnter(...);
	}

	function onClick(x, y)
	{
		var twh = tabLayer02.width \ 2;
		position02 = int Math.round((x-twh-tabLeftMin) * (sliderMax02-sliderMin02) / (tabLeftMax-tabLeftMin) + sliderMin02);
	}

	function onMouseLeave()
	{
		// �}�E�X�����C���̈悩��o�Ă�����
		mouseOn = false;
		update();
		// Slider_dragging = false;
		super.onMouseLeave(...);
	}

	function onFocus()
	{
		// �t�H�[�J�X�𓾂�
		super.onFocus(...);
		update();
	}

	function onBlur()
	{
		// �t�H�[�J�X��������
		super.onBlur(...);
		update();
	}

	function onNodeDisabled()
	{
		// ���C���̃m�[�h���s�ɂȂ���
		super.onNodeDisabled(...);
		update();
	}

	function onNodeEnabled()
	{
		// ���C���̃m�[�h���L���ɂȂ���
		super.onNodeEnabled(...);
		update();
	}

	property width
	{
		setter(x)
		{
			super.width = x;
			imageWidth = x;
			update();
		}
		getter
		{
			return super.width;
		}
	}

	property height
	{
		setter(x)
		{
			super.height = x;
			imageHeight = x;
			update();
		}
		getter
		{
			return super.height;
		}
	}

	property visible
	{
		setter(x)
		{
			super.visible = valueLayer02.visible = x;
			update();
		}
		getter
		{
			return super.visible;
		}
	}

	property min02
	{
		setter(v)
		{
			sliderMin02 = int v;
			with (valueLayer02) {
				var s = valueFormat.sprintf(sliderMin02, unit);
				var w = .font.getTextWidth(s);
				var h = .font.getTextHeight(s);
				if (w > .width || h > .height)
					.setSize(w, h);
			}
			drawValue02();
			update();
		}
		getter
		{
			return sliderMin02;
		}
	}

	property max02
	{
		setter(v)
		{
			sliderMax02 = int v;
			with (valueLayer02) {
				var s = valueFormat.sprintf(sliderMax02, unit);
				var w = .font.getTextWidth(s);
				var h = .font.getTextHeight(s);
				if (w > .width || h > .height)
					.setSize(w, h);
			}
			drawValue02();
			update();
		}
		getter
		{
			return sliderMax02;
		}
	}

	property position02
	{
		setter(v)
		{
			if (v < sliderMax02)
				v = sliderMax02;

			if (sliderMin02 < v)
				v = sliderMin02;
			sliderPosition02 = int v;
			tabLayer02.left = int Math.round((sliderPosition02-sliderMin02) * (tabLeftMax-tabLeftMin) / (sliderMax02-sliderMin02) + tabLeftMin);
			drawValue02();
			update();
			onChange(sliderPosition02);
		}
		getter
		{
			return sliderPosition02;
		}
	}

	property unit
	{
		getter
		{
			return unitName02;
		}
	}

	function onChange(pos)
	{
		if (onChangeFunction02)
			onChangeFunction02(pos);
		window.action(%["target"=>this, "type"=>"onChange", "position02"=>pos]);
	}
}

//
// �����F
//
// �]�t�H�[�J�X���󂯎��Ȃ��悤�ɂ��Ă���BonKeyDown()�C�x���g�n���h�����I�[�o�[���C�h���Ă��Ȃ�
//   �i�^�u�Ńt�H�[�J�X���X���C�_�[�Ɉڂ�����A�J�[�\���L�[�ł̃c�}�~�ړ��c�Ȃǂɂ͑Ή����Ă��Ȃ��j
// �]���ݒl�\���p���C���̕��͍ő�l�^�ŏ��l����Z�o���Ă���֌W�ŁA�����t�H���g�łȂ��Ɛ��������삵�Ȃ�
// �]setPos()���\�b�h�Ȃǂ̓I�[�o�[���C�h���Ă��Ȃ��B�X���C�_�[�R���g���[�����ړ�������A���ݒl�\���p
//   ���C���̈ʒu�������i�O�̈ʒu����ړ����Ȃ��j�̂Œ���
//


// slider_create�}�N����`���Ŏg�p���Ă���T�u�֐�
function ___slider_create02(elm)
{
	var result02 = new SliderControl(kag, kag.getLayerFromElm(elm,"parent"), elm.unit);
	with (result02) {
		.onChangeFunction02 = Scripts.eval(elm.onchangefunc);
		.setPos(+elm.left, +elm.top);
		.visible = +elm.visible;
		.min02 = +elm.max;
		.max02 = +elm.min;

		.position02 = +elm.position;
		.valueLayer02.setPos(+elm.left+.valueOffsetX, +elm.top+.valueOffsetY);
	}
	return result02;
}

[endscript]


;
; �@�\�T�v�F
;   �ȈՂȃX���C�_�[�R���g���[�����쐬����
; �����F
;   name         �c �X���C�_�[���B�w��K�{
;   parentlayer  �c �X���C�_�[��z�u����e���C���ibase/0,1,2�c�j�B�w��K�{
;   parentpage   �c �\��ʂ�����ʂ����w�肷��ifore/back�j�B�ȗ���fore
;   left         �c �X���C�_�[�̍�����w���W�i�s�N�Z���j�B�w��K�{
;   top          �c ���A�x���W�B�w��K�{
;   min          �c �X���C�_�[�̍ŏ��l�B�w��K�{
;   max          �c �X���C�_�[�̍ő�l�B�w��K�{
;   position     �c �X���C�_�[�̏����l�B�w��K�{
;   onchangefunc �c �X���C�_�[�̃c�}�~���������ꂽ�Ƃ��ɌĂяo�����֐��i�����F�X���C�_�[�̐V�����l�A�߂�l�F�Ȃ��j���w�肷��B�w��K�{
;   unit         �c �X���C�_�[�ň����Ă���l�̒P��
; ���l�F
;   �]slider_�`�}�N���ňꎞ�ϐ�tf.___sliders���g�p���Ă���B�����̈ꎞ�ϐ����Əd�����Ȃ��悤�ɒ���
;   �]����is�Al�Ap�^�O�Œ�~�j��ԂŎg�p���邱�Ƃ�O��ɂ��Ă���B����ȊO�̏󋵉��Ŏg�p�ł��邩�͖�����
;   �]���l�ɁA�E�N���b�N�T�u���[�`�����ł̎g�p��O��Ƃ��Ă���B����ȊO�󋵉��Ŏg�p�ł��邩�͖�����
;
[macro name=slider_create02]
	[eval exp="tf.___sliders = new Dictionary()" cond="tf.___sliders === void"]
	[eval exp="tf.___sliders[mp.name] = ___slider_create02(mp)"]
[endmacro]


;
; �@�\�T�v�F
;   �X���C�_�[�̐ݒ��ύX����
; �����F
;   name     �c �X���C�_�[���B�w��K�{
;   position �c �X���C�_�[�̒l�B�w��K�{
; ���l�F
;   �]slider_�`�}�N���ňꎞ�ϐ�tf.___sliders���g�p���Ă���B�����̈ꎞ�ϐ����Əd�����Ȃ��悤�ɒ���
;   �]����is�Al�Ap�^�O�Œ�~�j��ԂŎg�p���邱�Ƃ�O��ɂ��Ă���B����ȊO�̏󋵉��Ŏg�p�ł��邩�͖�����
;   �]���l�ɁA�E�N���b�N�T�u���[�`�����ł̎g�p��O��Ƃ��Ă���B����ȊO�󋵉��Ŏg�p�ł��邩�͖�����
;   �]����A�ݒ�\�ȍ��ڂ̓X���C�_�[�̒l�̂݁B�K�v�ɉ����đ��̍��ڂ��ύX�ł���悤�����̂���
;
[macro name=slider_setopt02]
	[eval exp="tf.___sliders[mp.name].position02 = +mp.position"]
[endmacro]

;
; �@�\�T�v�F
;   �X���C�_�[���폜����
; �����F
;   name �c �X���C�_�[���B�w��K�{
; ���l�F
;   �]slider_�`�}�N���ňꎞ�ϐ�tf.___sliders���g�p���Ă���B�����̈ꎞ�ϐ����Əd�����Ȃ��悤�ɒ���
;   �]����is�Al�Ap�^�O�Œ�~�j��ԂŎg�p���邱�Ƃ�O��ɂ��Ă���B����ȊO�̏󋵉��Ŏg�p�ł��邩�͖�����
;   �]���l�ɁA�E�N���b�N�T�u���[�`�����ł̎g�p��O��Ƃ��Ă���B����ȊO�󋵉��Ŏg�p�ł��邩�͖�����
;
[macro name=slider_delete]
	[eval exp="tf.___sliders[mp.name].visible = false"]
	[eval exp="invalidate tf.___sliders[mp.name]"]
[endmacro]


[return]
