;
; �ȈՂȃX���C�_�[�R���g���[��
;
;   �O�ς���W��ύX������x�̕ύX�Ȃ�Config_SliderControl.tjs�Őݒ�\
;
[iscript]
//
// �X���C�_�[�̃c�}�~����
//
class TabLayer03 extends Layer
{
	var mouseDown;		// �}�E�X�_�E�����Ȃ�^�A�����łȂ���΋U
	var mouseOn;		// �}�E�X���c�}�~�̏�ɂ���Ȃ�^�A�����łȂ���΋U
	var dragOriginX;	// �h���b�O�J�n���̃}�E�X�w���W�i���C���̕\�����W�n�j

	function TabLayer03(win, par)
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
				.position03 = int Math.round((v-.tabLeftMin) * (.sliderMax03-.sliderMin03) / (.tabLeftMax-.tabLeftMin) + .sliderMin03);
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
	var tabLayer03;			// �c�}�~���C��
	var valueLayer03;			// ���ݒl�\���p���C��
	var mouseOn = false;	// �}�E�X���X���C�_�[�R���g���[����ɂ��邩�ۂ�

	var sliderMin03 = 0;			// �X���C�_�[�̍ŏ��l
	var sliderMax03 = 100;		// ���A�ő�l
	var sliderPosition03 = 0;		// ���A���ݒu
	var unitName03 = "";			// �P�ʖ�
	var onChangeFunction03 = void;	// �X���C�_�[�̒l���ς�����Ƃ��ɌĂяo�����֐�

	// �ȉ���Config_SliderControl.tjs�̊֐�SliderControl_config()�Őݒ�\�ȃp�����[�^
	var sliderControlImage = "config_slider_baseG.png";	// �X���C�_�[�R���g���[���̉摜�t�@�C��
	var tabImage = "opt_slider_pin.png";	// �^�u�̉摜�t�@�C��
	var tabOffsetY = 0;						// �^�u�̂x���W�I�t�Z�b�g�i�s�N�Z���j
	var tabLeftMin = 0;						// �^�u���ړ��\�ȍŏ��w���W�i�s�N�Z���j
	var tabLeftMax = sf.srd_win_tableftmax;					// ���A�x���W

//	var valueOffsetX = 280;					// ���ݒl�\���p���C���̂w���W�I�t�Z�b�g�i�s�N�Z���j
//	var valueOffsetY = 8;					// ���A�x���W�I�t�Z�b�g�i�s�N�Z���j
//���l�o���ƃ^�C�g���ɖ߂�_�C�A���O�o�����̏������ʓ|�����疳���ɂ���
	var valueOffsetX = 1000;					// ���ݒl�\���p���C���̂w���W�I�t�Z�b�g�i�s�N�Z���j
	var valueOffsetY = 1000;					// ���A�x���W�I�t�Z�b�g�i�s�N�Z���j
	var valueFormat = "%4d%s";				// �����i�S���E�񂹁{�P�ʁj
//�G�b�W�J���[�ǂ��ŕς���񂾂�H0xd872a7�ɂ������̂�
	var valueFontFace = "�l�r �S�V�b�N";	// �t�H���g���i�����t�H���g�ł��邱�Ɓj
	var valueFontHeight = 16;				// �t�H���g�T�C�Y�i�s�N�Z���j
	var valueFontBold = true;				// �����ɂ���ꍇ��true
	var valueFontColor = 0xffffff;			// �����̐F�i0xRRGGBB�`��/�F�萔�j
	var valueShadowLevel = 0;				// �e�̕s�����x�i0:�e�Ȃ��j
	var valueShadowColor = 0xd872a7;		// �e�̐F�i0xRRGGBB�`��/�F�萔�j
	var valueShadowWidth = 1;				// �e�̕��i0:�V���[�v�`�ڂ���j
	var valueShadowOffsetX = 0;				// �e�̈ʒu�̂w���W�i0:�^���j
	var valueShadowOffsetY = 0;				// ���A�x���W�i0:�^���j

	function SliderControl(win, par, uni=void)
	{
		super.Layer(win, par);
		unitName03 = uni if uni !== void;

		focusable = false; // �t�H�[�J�X�𓾂Ȃ�
		hitType = htMask;
		hitThreshold = 0;

		tabLayer03 = new TabLayer03(win, this);
		valueLayer03 = new global.Layer(win, win.primaryLayer);

		if (typeof global.SliderControl_config != "undefined")
			(SliderControl_config incontextof this)();

		loadImages(sliderControlImage);
		with (tabLayer03) {
			.loadImages(tabImage);
			.setPos(tabLeftMin, tabOffsetY);
			.visible = true;
		}
		with (valueLayer03) {
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
		invalidate tabLayer03;
		invalidate valueLayer03;
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

	function drawValue03()
	{
		// ���ݒl�\���p���C���Ɍ��݂̒l��`�悷��
		with (valueLayer03) {
			.fillRect(0, 0, .width, .height, 0x00000000);
			.drawText(0, 0, valueFormat.sprintf(sliderPosition03,unit), valueFontColor, 255, true,
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
		var twh = tabLayer03.width \ 2;
		position03 = int Math.round((x-twh-tabLeftMin) * (sliderMax03-sliderMin03) / (tabLeftMax-tabLeftMin) + sliderMin03);
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
			super.visible = valueLayer03.visible = x;
			update();
		}
		getter
		{
			return super.visible;
		}
	}

	property min03
	{
		setter(v)
		{
			sliderMin03 = int v;
			with (valueLayer03) {
				var s = valueFormat.sprintf(sliderMin03, unit);
				var w = .font.getTextWidth(s);
				var h = .font.getTextHeight(s);
				if (w > .width || h > .height)
					.setSize(w, h);
			}
			drawValue03();
			update();
		}
		getter
		{
			return sliderMin03;
		}
	}

	property max03
	{
		setter(v)
		{
			sliderMax03 = int v;
			with (valueLayer03) {
				var s = valueFormat.sprintf(sliderMax03, unit);
				var w = .font.getTextWidth(s);
				var h = .font.getTextHeight(s);
				if (w > .width || h > .height)
					.setSize(w, h);
			}
			drawValue03();
			update();
		}
		getter
		{
			return sliderMax03;
		}
	}

	property position03
	{
		setter(v)
		{
			if (v < sliderMin03)
				v = sliderMin03;

			if (sliderMax03 < v)
				v = sliderMax03;
			sliderPosition03 = int v;
			tabLayer03.left = int Math.round((sliderPosition03-sliderMin03) * (tabLeftMax-tabLeftMin) / (sliderMax03-sliderMin03) + tabLeftMin);
			drawValue03();
			update();
			onChange(sliderPosition03);
		}
		getter
		{
			return sliderPosition03;
		}
	}

	property unit
	{
		getter
		{
			return unitName03;
		}
	}

	function onChange(pos)
	{
		if (onChangeFunction03)
			onChangeFunction03(pos);
		window.action(%["target"=>this, "type"=>"onChange", "position03"=>pos]);
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
function ___slider_create03(elm)
{
	var result03 = new SliderControl(kag, kag.getLayerFromElm(elm,"parent"), elm.unit);
	with (result03) {
		.onChangeFunction03 = Scripts.eval(elm.onchangefunc);
		.setPos(+elm.left, +elm.top);
		.visible = +elm.visible;
		.min03 = +elm.min;
		.max03 = +elm.max;

		.position03 = +elm.position;
		.valueLayer03.setPos(+elm.left+.valueOffsetX, +elm.top+.valueOffsetY);
	}
	return result03;
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
[macro name=slider_create03]
	[eval exp="tf.___sliders = new Dictionary()" cond="tf.___sliders === void"]
	[eval exp="tf.___sliders[mp.name] = ___slider_create03(mp)"]
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
[macro name=slider_setopt03]
	[eval exp="tf.___sliders[mp.name].position03 = +mp.position"]
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
