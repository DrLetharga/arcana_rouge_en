@if exp="typeof(global.affine_object) == 'undefined'"
@iscript

/*
	�w�i/�O�i�摜�̊g��k�����ʂɂ��\�����s���v���O�C��ver.1.1
*/

class AffinePlugin extends KAGPlugin
{
	var pluginName = "affine";		// �v���O�C���̖��O

	var cx, cy;		// ��]���S

	var srot, smag, sx, sy;		// �����ʒu
	var drot, dmag, dx, dy;		// �ŏI�ʒu

	var time;		// �`�掞��
	var accel;		// �����x�I�ȓ������s���� ( �� : 0 : �� )

	var storage;		// �摜��
	var index;		// �d�ˍ��킹����
	var type;		// �`�惌�C���[�^�C�v
	var targetLayerName;		// �Ώۃ��C���[��
	var targetLayer;		// �Ώۃ��C���[
	var targetPage;		// �Ώۃy�[�W�i�\�^����ʁj
	var opa;		// �s�����x
	var flipud;		// �㉺���]
	var fliplr;		// ���E���]
	var blur;		// �u���[�������邩
	var blur_x, blur_y;		// �u���[�̋���

	var blur_inout;		// blur_inout���[�h
	var fade;		// fade���[�h

	var path;		// �ړ��ʒu

	var tempLayer;		// �e���|�������C��

	var actionFunc;		// �ړ��ʒu�v�Z�֐�

	var moving = false;		// ���쒆�t���O
	var nextstop;		// �����~�t���O

	var startTick;		// �J�n�e�B�b�N
	var processTime;		// affine�J�n����I���܂ł̎���
	var lastTick = 0;		// �O��n���h�����`��J�n��������

	function AffinePlugin(window)
	{
		super.KAGPlugin();
		this.window = window;
	}

	function finalize()
	{
		// finalize ���\�b�h
		// ���̃N���X�̊Ǘ����邷�ׂẴI�u�W�F�N�g�𖾎��I�ɔj��
		stop();

		invalidate tempLayer if tempLayer !== void;

		super.finalize(...);
	}

	function startaffine(elm)
	{
		// storage : �\���摜
		// layer : �Ώۃ��C��
		// page : �Ώۃy�[�W
		// cx, cy : ��]���S�ʒu�i�摜��j
		// path : �ړ��ʒu
		// srot smag sx sy : �����p�x�A�����{���A�����ʒu
		// drot dmag dy dy : �ŏI�p�x�A�ŏI�{���A�ŏI�ʒu
		// time : �`����s���Ă��鎞��
		// accel : ���������邩�ǂ���
		// opacity : �s�����x
		// fade : fade���[�h(���X�ɉ摜�������Ă���or�����)
		// blur : �摜���ڂ�����
		// blur_inout : blur_inout���[�h(���X�ɉ摜���ڂ�����邩or�͂����邷�邩)
		// blur_x,blur_y : �u���[�̋���

		this.processTime = System.getTickCount();

		var base = window.fore.base;

		// �����̓�����~
		stop();

		// �Ώۃ��C���[�̐ݒ�
		this.targetLayerName = elm.layer;

		// �Ώۃy�[�W�̐ݒ�
		if(elm.page == "")
			this.targetPage = "fore";
		else
			this.targetPage = elm.page;

		// �u���[�̋����̐ݒ�
		this.blur_x = elm.blur_x;
		this.blur_y = elm.blur_y;

		// �e���|�������C�����m��
		{
			// ���摜�̐ݒ�
			this.storage = elm.storage;

			if(tempLayer === void)
			{
				tempLayer = new Layer(window, base);

				//storage���w�肳��Ă��Ȃ����́A�Ώۃ��C���[��page=fore�̉摜���g�p
				if(storage == "")
				{
					if(targetLayerName == 'base')
					{
							tempLayer.assignImages(window.fore.base);
					}
					else
					{
							tempLayer.assignImages(window.fore.layers[+targetLayerName]);
					}
				}
				else
				{
					tempLayer.loadImages(this.storage, clNone);
				}

				// �㉺���E���]�A�u���[�̐ݒ�
				if(elm.flipud == "")
					this.flipud = false;
				else
					this.flipud = elm.flipud;

				if(elm.fliplr == "")
					this.fliplr = false;
				else
					this.fliplr = elm.fliplr;

				if(elm.blur == "")
					this.blur = false;
				else
					this.blur = elm.blur;

				if(flipud)
					tempLayer.flipUD();

				if(fliplr)
					tempLayer.flipLR();

				if(blur)
					tempLayer.doBoxBlur(blur_x, blur_y);

			}

			tempLayer.setSizeToImageSize();

		}

		// �Ώۃ��C����ݒ�
		{
			// �d�Ȃ菇���̐ݒ�
			this.index = elm.index;

			if(targetLayerName == 'base')
			{
				index = 0;
			}
			else if(index == "")
			{
				index = int(+targetLayerName * 1000 + 1000);
			}
			else
			{
				index = int(index);
			}

			// �Ώۃ��C���[�E�y�[�W�A���C���[�v���p�e�B�̐ݒ�
			if(targetLayerName == 'base')
			{
				if(targetPage == 'back')
					this.targetLayer = window.back.base;
				else
					this.targetLayer = window.fore.base;

				targetLayer.type = ltOpaque;;
				targetLayer.face = dfOpaque;
				targetLayer.holdAlpha = false;

			}
			else
			{
				if(targetPage == 'back')
					this.targetLayer = window.back.layers[+targetLayerName];
				else
					this.targetLayer = window.fore.layers[+targetLayerName];

				this.type = (string)elm.type;

				switch(type)// Layer.type�𔻒�
				{
					case "ltOpaque":
						targetLayer.type = ltOpaque;
						break;

					case "ltAlpha":
						targetLayer.type = ltAlpha;
						break;

					case "ltAddAlpha":
						targetLayer.type = ltAddAlpha;
						break;

					case "ltAdditive":
						targetLayer.type = ltAdditive;
						break;

					case "ltSubtractive":
						targetLayer.type = ltSubtractive;
						break;

					case "ltMultiplicative":
						targetLayer.type = ltMultiplicative;
						break;

					case "ltDodge":
						targetLayer.type = ltDodge;
						break;

					case "ltDarken":
						targetLayer.type = ltDarken;
						break;

					case "ltLighten":
						targetLayer.type = ltLighten;
						break;

					case "ltScreen":
						targetLayer.type = ltScreen;
						break;

					case "ltPsNormal":
						targetLayer.type = ltPsNormal;
						break;

					case "ltPsAdditive":
						targetLayer.type = ltPsAdditive;
						break;

					case "ltPsSubtractive":
						targetLayer.type = ltPsSubtractive;
						break;

					case "ltPsMultiplicative":
						targetLayer.type = ltPsMultiplicative;
						break;

					case "ltPsScreen":
						targetLayer.type = ltPsScreen;
						break;

					case "ltPsOverlay":
						targetLayer.type = ltPsOverlay;
						break;

					case "ltPsHardLight":
						targetLayer.type = ltPsHardLight;
						break;

					case "ltPsSoftLight":
						targetLayer.type = ltPsSoftLight;
						break;

					case "ltPsColorDodge":
						targetLayer.type = ltPsColorDodge;
						break;

					case "ltPsColorDodge5":
						targetLayer.type = ltPsColorDodge5;
						break;

					case "ltPsColorBurn":
						targetLayer.type = ltPsColorBurn;
						break;

					case "ltPsLighten":
						targetLayer.type = ltPsLighten;
						break;

					case "ltPsDarken":
						targetLayer.type = ltPsDarken;
						break;

					case "ltPsDifference":
						targetLayer.type = ltPsDifference;
						break;

					case "ltPsDifference5":
						targetLayer.type = ltPsDifference5;
						break;

					case "ltPsExclusion":
						targetLayer.type = ltPsExclusion;
						break;

					default:
						targetLayer.type = ltAlpha;
				}

				// ���C���[type��ltOpaque�Ȃ�AstFastLinear�p�Ƀv���p�e�B��ݒ�
				if(targetLayer.type == ltOpaque)
				{
					targetLayer.face = dfOpaque;
					targetLayer.holdAlpha = false;
				}
				else
					targetLayer.face = dfAuto;

				targetLayer.setImageSize(base.imageWidth, base.imageHeight);
				targetLayer.setPos(0,0, base.imageWidth,base.imageHeight);
				targetLayer.absolute = index;
			}
		}

		{
			// �s�����x�̐ݒ�
			this.opa = (elm.opacity !== void) ? +elm.opacity : 255;
			if(targetLayerName != 'base')
			{
				targetLayer.opacity = +opa;
			}

			// fade���[�h�̐ݒ�
			if(elm.fade == "")
				this.fade = false;
			else
				this.fade = elm.fade;

			// �u���[�C���E�A�E�g���[�h�̐ݒ�
			if(elm.blur_inout == "")
				this.blur_inout = false;
			else
				this.blur_inout = elm.blur_inout;

			// path�𕪉�
			this.path = elm.path;
			var array = [].split("(), ", path, , true);
		
			this.sx = array[0];
			this.sy = array[1];
			this.dx = array[2];
			this.dy = array[3];

			// ��]���S�̐ݒ�
			if(elm.cx == "" || elm.cx == 'c')
				this.cx = tempLayer.imageWidth \ 2;
			else if( typeof +elm.cx == 'Real')
				this.cx = tempLayer.imageWidth * +elm.cx;
			else
				this.cx = (int)elm.cx;
			
			if(elm.cy == "" || elm.cy == 'c')
				this.cy = tempLayer.imageHeight \ 2;
			else if( typeof +elm.cy == 'Real')
				this.cy = tempLayer.imageHeight * +elm.cy;
			else
				this.cy = (int)elm.cy;
			
			// �����ʒu�̐ݒ�
			if(elm.srot == "")
				this.srot = (real)0;
			else if( typeof +elm.srot == 'Real')
				this.srot = Math.PI * +elm.srot;
			else
				this.srot = +elm.srot;

			if(elm.smag == "")
				this.smag = (int)1;
			else
				this.smag = (real)elm.smag;
			
			if(sx == "" || sx == 'c')
				sx = targetLayer.imageWidth / 2;
			else if( typeof +sx == 'Real')
				sx = targetLayer.imageWidth * +sx;
			else
				sx = (int)sx;
			
			if(sy == "" || sy == 'c')
				sy = targetLayer.imageHeight / 2;
			else if( typeof +sy == 'Real')
				sy = targetLayer.imageHeight * +sy;
			else
				sy = (int)sy;
			
			// �ŏI�ʒu�̐ݒ�
			if(elm.drot == "")
				this.drot = (real)0;
			else if( typeof +elm.drot == 'Real')
				this.drot = Math.PI * +elm.drot;
			else
				this.drot = +elm.drot;
			
			if(elm.dmag == "")
				this.dmag = (int)1;
			else
				this.dmag = (real)elm.dmag;
			
			if(dx == "")
				dx = sx;
			else if(dx == 'c')
				dx = targetLayer.imageWidth / 2;

			else if( typeof +dx == 'Real')
				dx = targetLayer.imageWidth * +dx;
			else
				dx = (int)dx;

			if(dy == "")
				dy = sy;
			else if(dy == 'c')
				dy = targetLayer.imageHeight / 2;
			else if( typeof +dy == 'Real')
				dy = targetLayer.imageHeight * +dy;
			else
				dy = (int)dy;

			// �`�掞�Ԃ̐ݒ�
			if(elm.time == "")
				this.time = 1000;
			else
				this.time = (int)elm.time;

			// �����x�̐ݒ�
			if(elm.accel == "")
				this.accel = 0;
			else
				this.accel = (real)elm.accel;
		}

		// �R���\�[����affine�̏����o��
		dm("��affine : layer = " + targetLayerName + "; page = " + targetPage + "; storage = " + storage + ";
 time = " + time + "; (cx,cy) = " + "("+cx+","+cy+")");

		// �ړ��ʒu�v�Z�֐��̐ݒ�
		if(srot == 0 && drot == 0)// ��]���Ȃ��Ȃ�operateStretch���g�p
		{
			actionFunc = stretchMover;
			dm("��operateStretch");
		}
		else
		{
			actionFunc = affineMover;
			dm("��operateAffine : srot = " + srot + "; drot =" + drot);
		}

		// �`��̊J�n
		if(time <= 0)// time��0�ȉ��Ȃ炷���ɏI��������
			targetLayer.visible = true,finish();
		else
		{
			// �����ʒu�ɕ\��
			actionFunc(0);
			targetLayer.visible = true;

			// �J�n
			startTick = System.getTickCount();
			System.addContinuousHandler(continuousHandler);
			moving = true;
			nextstop = false;
		}
	}

	// �ʏ�p�A�ړ��ʒu�v�Z�֐�
	/*static*/ function affineMover(tm)
	{
		// �ʒu�v�Z
		// tm �� 0.0(�J�n�_) �` 1.0(�I���_) �̊Ԃŕω�����ϐ��Ȃ̂ŁA
		// ��������ɂ��Ĉʒu���v�Z����
		var r = (drot - srot) * tm + srot;
		var s = (dmag - smag) * tm + smag;
		var tx = (dx - sx) * tm + sx;
		var ty = (dy - sy) * tm + sy;

		var rc = Math.cos((Math.PI/180) * r);
		var rs = Math.cos((Math.PI / 2) - (Math.PI/180) * r);

		var m00, m01, m10, m11, mtx, mty;  // �A�t�B���ϊ��s��p�����[�^
		m00 = s * rc;
		m01 = s * -rs;
		m10 = s * rs;
		m11 = s * rc;
		mtx = (m00*-cx) + (m10*-cy) + tx;
		mty = (m01*-cx) + (m11*-cy) + ty;

		// fade���[�h�p�s�����x�̌v�Z
		var opa2;

		if(fade == 'in')
		{
			opa2 = int(( 255 * tm));
		}
		else if(fade == 'out')
		{
			opa2 = int(255 - ( 255 * tm));
		}
		else
		{
			opa2 = 255;
		}

		// blur_inout���[�h�p�u���[�̋����̌v�Z
		var bx, by;

		if(blur_inout == 'in' || blur_inout == 'out')
		{
			if(blur_inout == 'in')
			{
				bx = int(blur_x - (blur_x * tm));
				by = int(blur_y - (blur_y * tm));
			}
			else
			{
				bx = int(blur_x * tm);
				by = int(blur_y * tm);
			}
		}

		// m00 m01 m10 m11 mtx mty �ʒu�Ɉړ�
		targetLayer.visible = true;

		// ���C���[����x�N���A����
		targetLayer.fillRect( 0,0, targetLayer.imageWidth,targetLayer.imageHeight, 0 );

		// �A�t�B���ϊ��]��
		if(targetLayer.type == ltOpaque)// ���C���[�^�C�v��ltOpaque�Ȃ�stFastLinear(���`���)
		{
			dm("stFastLinear");
			targetLayer.operateAffine(
					tempLayer, 0, 0, tempLayer.imageWidth, tempLayer.imageHeight, 'true',
					m00, m01, m10, m11, mtx, mty, omOpaque, opa2, stFastLinear);
		}
		else
		{
			targetLayer.operateAffine(
					tempLayer, 0, 0, tempLayer.imageWidth, tempLayer.imageHeight, 'true',
					m00, m01, m10, m11, mtx, mty, omAuto, opa2, stNearest);
		}

		// blur_inout���[�h�Ȃ�A�u���[�����s
		if(blur_inout == 'in' || blur_inout == 'out')
			targetLayer.doBoxBlur(bx, by);
	}

	// ����]�p�A�ړ��ʒu�v�Z�֐�
	/*static*/ function stretchMover(tm)
	{
		// �ʒu�v�Z
		// tm �� 0.0(�J�n�_) �` 1.0(�I���_) �̊Ԃŕω�����ϐ��Ȃ̂ŁA
		// ��������ɂ��Ĉʒu���v�Z����
		var s = (dmag - smag) * tm + smag;
		var tx = (dx - sx) * tm + sx;
		var ty = (dy - sy) * tm + sy;

		var m00, m01, mtx, mty;

		m00 = tempLayer.imageWidth * s;
		m01 = tempLayer.imageHeight * s;
		mtx = (-cx) * s + tx;
		mty = (-cy) * s + ty;

		// fade���[�h�p�s�����x�̌v�Z
		var opa2;

		if(fade == 'in')
		{
			opa2 = int(( 255 * tm));
		}
		else if(fade == 'out')
		{
			opa2 = int(255 - ( 255 * tm));
		}
		else
		{
			opa2 = 255;
		}

		// blur_inout���[�h�p�u���[�̋����̌v�Z
		var bx, by;

		if(blur_inout == 'in' || blur_inout == 'out')
		{
			if(blur_inout == 'in')
			{
				bx = int(blur_x - (blur_x * tm));
				by = int(blur_y - (blur_y * tm));
			}
			else
			{
				bx = int(blur_x * tm);
				by = int(blur_y * tm);
			}
		}

		// m00 m01 mtx mty �ʒu�Ɉړ�
		targetLayer.visible = true;

		// ���C���[����x�N���A����
		targetLayer.fillRect( 0,0, targetLayer.imageWidth,targetLayer.imageHeight, 0 );

		// �g��k���]��
		if(targetLayer.type == ltOpaque)
		{
			dm("stFastLinear");
			targetLayer.operateStretch(mtx, mty, m00, m01, 
tempLayer, 0, 0, tempLayer.imageWidth, tempLayer.imageHeight, omOpaque, 255, stFastLinear);
		}
		else
		{
			targetLayer.operateStretch(mtx, mty, m00, m01, 
tempLayer, 0, 0, tempLayer.imageWidth, tempLayer.imageHeight, omAuto, 255, stNearest);
		}

		// blur_inout���[�h�Ȃ�A�u���[�����s
		if(blur_inout == 'in' || blur_inout == 'out')
			targetLayer.doBoxBlur(bx, by);
	}

	function continuousHandler(tick)
	{
		// �n���h��
		if(nextstop)
		{
			// �I��
			finish();
			return;
		}

		// ���Ԃ𓾂�
		var tm = tick - startTick;
		tm /= time;
		if(tm >= 1)
		{
			// �`��I���t���OON
			nextstop = true;
			tm = 1;
			return;
		}
		else
		{
			var intervalTime = System.getTickCount() - lastTick;

			if(intervalTime > 15)// �n���h����15ms�ȓ��ɌĂ΂ꂽ��A�`�悵�Ȃ�
			{
				// �����v�Z
				if(accel < 0)
				{
					// �㌷ ( �ŏ��������������A���X�ɒx���Ȃ� )
					tm = 1.0 - tm;
					tm = Math.pow(tm, -accel);
					tm = 1.0 - tm;
				}
				else if(accel > 0)
				{
					// ���� ( �ŏ��͓������x���A���X�ɑ����Ȃ� )
					tm = Math.pow(tm, accel);
				}

				lastTick = System.getTickCount();

				// �ړ�
				actionFunc(tm);
			}
		}
	}

	function finish()
	{
		// �ŏI�ʒu�Ɉړ�
		actionFunc(1.0);

		// ��]�Y�[���̏I��
		stop(); // ��~
	}

	function stop()
	{
		// ��~
		if(moving)
		{
			window.trigger(pluginName);
			System.removeContinuousHandler(continuousHandler);
			moving = false;
			dm("��affine���s���� :"+ (System.getTickCount() - processTime) +"ms��");
		}

		invalidate tempLayer if tempLayer !== void;
		tempLayer = void;
		targetLayer = void;

	}

	function onStore(f, elm)
	{
	}

	function onRestore(f, clear, elm)
	{
		// �x��ǂݏo���Ƃ�
		stop(); // ������~
	}

	function onStableStateChanged(stable)
	{
	}

	function onMessageHiddenStateChanged(hidden)
	{
	}

	function onCopyLayer(toback)
	{
	}

	function onExchangeForeBack()
	{
	}
}

// �v���O�C���I�u�W�F�N�g���쐬���A�o�^����
kag.addPlugin(global.affine_object = new AffinePlugin(kag));

@endscript
@endif

; �}�N���o�^
@macro name="affine"
;skipMode��2�ȏ�̂Ƃ��͕`�悵�Ȃ�
@eval exp="mp.time = 0" cond="kag.skipMode >= 2"
@eval exp="affine_object.startaffine(mp)"
@endmacro
;
@macro name="waffine"
@if exp="affine_object.moving"
@eval exp="affine_object.finish()" cond="kag.skipMode >= 2"
@waittrig * name="affine" onskip="affine_object.finish()" canskip=%canskip|true
@endif
@endmacro
;
@macro name=waf
@waffine *
@endmacro
;
@return