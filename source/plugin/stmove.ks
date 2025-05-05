@if exp="typeof(global.stmove_object) == 'undefined'"
@iscript

/*
	�w�i/�O�i�摜�̊g��k���ړ����ʂɂ��\�����s���v���O�C��ver.1.0
*/

class stmovePlugin extends KAGPlugin
{
	var pluginName = "stmove";		// �v���O�C���̖��O

	var cx, cy;		// ��]���S

	var time;		// �`�掞��
	var accel;		// �����x�I�ȓ������s���� ( �� : 0 : �� )

	var targetLayerName;		// �Ώۃ��C����
	var targetLayer;		// �Ώۃ��C��
	var targetPage;		// �Ώۃy�[�W�i�\�^����ʁj
	var type;		// �`�惌�C���[�^�C�v
	var storage;		// �摜��
	var opa;		// �s�����x
	var index;		// �d�ˍ��킹����
	var flipud;		// �㉺���]
	var fliplr;		// ���E���]
	var blur;		// �u���[�������邩
	var blur_x, blur_y;		// �u���[�̋���

	var tempLayer;		// �e���|�������C��

	var totalTime;		// �`�摍����
	var path_array = void;		// �ړ��ʒu�p�z��
	var pointCount;

	// �X�v���C�����
	var zx = [];		// �X�v���C�����[�N
	var zy = [];		// �X�v���C�����[�N
	var spline;		// �X�v���C����Ԃ��s����

	var actionFunc;		// �ړ��ʒu�v�Z�֐�

	var first = false;		// �n������t���O
	var moving = false;		// ���쒆�t���O
	var nextstop;		// �����~�t���O

	var startTick;		// �J�n�e�B�b�N
	var lasttick = 0;		// �O��n���h�����`��J�n��������
	var processTime;		// stmove�J�n����I���܂ł̎���

	function stmovePlugin(window)
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

	function startstmove(elm)
	{
		// storage : �\���摜
		// layer : �Ώۃ��C��
		// page : �Ώۃy�[�W
		// opacity : �s�����x
		// path : �ړ��ʒu
		// cx, cy : ��]���S�ʒu�i�摜��j
		// time : �`����s���Ă��鎞��
		// accel : ���������邩�ǂ���
		// blur : �摜���ڂ�����
		// blur_x,blur_y : �u���[�̋���
		// spline : �X�v���C����Ԃ����邩

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
			if(tempLayer === void)
			{
				// ���摜�̐ݒ�
				this.storage = elm.storage;

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
					tempLayer.loadImages(storage, clNone);
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
			else
			{
				if(index == "")
					index = int(+targetLayerName * 1000 + 1000);
				else
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

			// �s�����x�̐ݒ�
			this.opa = (elm.opacity !== void) ? +elm.opacity : 255;
			if(targetLayerName != 'base')
			{
				targetLayer.opacity = +opa;
			}

		}

		// �I�u�W�F�N�g�Ƀp�����[�^��ݒ�
		{
			// �`�掞�Ԃ̐ݒ�Apath�̕���
			if(elm.time == "")
				this.time = 1000;
			else
				this.time = (int)elm.time;

			this.path = elm.path;
			path_array = [].split("(), ", path, , true);

			var a = path_array.count - 1;
			for(var i = a; i>=0; i--)
				path_array[i] = +path_array[i];

			pointCount = (path_array.count \ 3) - 1;

			totalTime = pointCount * time;

			// ��]���S
			if(elm.cx == "" || elm.cx == 'c')
				this.cx = tempLayer.imageWidth \ 2;
			else if(typeof +cx == 'Real')
				this.cx = tempLayer.imageWidth * +elm.cx;
			else
				this.cx = (int)elm.cx;

			if(elm.cy == "" || elm.cy == 'c') 
				this.cy = tempLayer.imageHeight \ 2;
			else if(typeof +elm.cy == 'Real')
				this.cy = tempLayer.imageHeight * +elm.cy;
			else
				this.cy = (int)elm.cy;

			// �����x�̐ݒ�
			if(elm.accel == "")
				this.accel = 0;
			else
				this.accel = (real)elm.accel;
		}

		// �X�v���C���ݒ�
		if(elm.spline == "")
			this.spline = false ;
		else
			this.spline = elm.spline;

		// �R���\�[����stmove�̏����o��
		dm('��stmove : layer = ' + targetLayerName + ' : spline = ' + spline+ ' : index = '+index);

		// �X�v���C����Ԃ��s�����H
		if(spline)
		{
			// �ړ��ʒu�v�Z�֐��̐ݒ�
			if(path_array.count < 9)
			{
				// 3 �_�ȉ� ( �w�肷��̂͂��̂�����2�_ ) �͕⊮�ł��Ȃ�
				throw new Exception("2 �_�ȏ���w�肵�Ă�������");
			}

			// �X�v���C����ԂɕK�v�ȃ��[�N���v�Z
			var points = path_array.count \ 3;
			var tmpx = [], tmpy = [];
			var tx = zx, ty = zy;
			tx[0] = 0;
			ty[0] = 0;
			tx[points-1] = 0;
			ty[points-1] = 0;

			for(var i = points-2, pi = path_array.count-6; i >= 0; i--, pi -= 3)
			{
				tmpx[i+1] = (path_array[pi + 3] - path_array[pi  ]);
				tmpy[i+1] = (path_array[pi + 4] - path_array[pi+1]);
			}

			tx[1] = tmpx[2] - tmpx[1] - tx[0];
			ty[1] = tmpy[2] - tmpy[1] - ty[0];

			tmpx[1] = 4;
			tmpy[1] = 4;

			var lim = points - 2;
			for(var i = 1, pi = 3; i < lim; i++, pi += 3)
			{
				var x = 1 / tmpx[i];
				var y = 1 / tmpy[i];
				tx[i+1] = tmpx[i+2] - tmpx[i+1] - tmpx[i] * x;
				ty[i+1] = tmpy[i+2] - tmpy[i+1] - tmpy[i] * y;
				tmpx[i+1] = 4 - x;
				tmpy[i+1] = 4 - y;
			}

			tx[points-2] -= tx[points-1];
			ty[points-2] -= ty[points-1];

			for(var i = points-2, pi = path_array.count-6; i>0; i--, pi -= 3)
			{
				tx[i] = (tx[i] - tx[i+1]) / tmpx[i];
				ty[i] = (ty[i] - ty[i+1]) / tmpy[i];
			}

			// �ړ��ʒu�v�Z�֐��̐ݒ�
			actionFunc = splineMover;

		}
		else
		{
			// �ړ��ʒu�v�Z�֐��̐ݒ�
			actionFunc = defaultMover;
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
			first = true;
			System.addContinuousHandler(continuousHandler);
			moving = true;
			nextstop = false;
		}
	}

	// �X�v���C����ԗp�A�ړ��ʒu�v�Z�֐�
	/*static*/ function splineMover(tick)
	{
		var inde;
		var pindex = (inde = tick \ time) * 3;
		var d = tick % time / time;

		var p = path_array;

		var l = (((zx[inde+1] - zx[inde])*d +
				zx[inde]*3)*d +
				((p[pindex + 3] - p[pindex]) -
				(zx[inde]*2 + zx[inde+1]))) * d +
				p[pindex];

		var t = (((zy[inde+1] - zy[inde])*d +
				zy[inde]*3)*d +
				((p[pindex + 4] - p[pindex+1]) -
				(zy[inde]*2 + zy[inde+1]))) * d +
				p[pindex+1];

		var sm = p[pindex+2];
		var em = p[pindex+5];

		var s = (em - sm) * d + sm;

		var m00, m01, mtx, mty;

		m00 = tempLayer.imageWidth * s;
		m01 = tempLayer.imageHeight * s;
		mtx = -(cx) * s + l;
		mty = -(cy) * s + t;

		// m00 m01 mtx mty �ʒu�Ɉړ�
		targetLayer.visible = true;

		// ���C������x�N���A����
		targetLayer.fillRect(0,0, targetLayer.imageWidth,targetLayer.imageHeight, 0);

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
	}

	// �ʏ�p�A�ړ��ʒu�v�Z�֐�
	/*static*/ function defaultMover(tick)
	{
		// �ʒu�v�Z

		var indexM = tick \ time * 3;
		var ratio = tick % time / time;
		var p = path_array;
		var sx = p[indexM];
		var sy = p[indexM+1];
		var sm = p[indexM+2];
		var ex = p[indexM+3];
		var ey = p[indexM+4];
		var em = p[indexM+5];

		var s = (em - sm) * ratio + sm;
		var x = (ex - sx) * ratio + sx;
		var y = (ey - sy) * ratio + sy;

		var m00, m01, mtx, mty;
		m00 = tempLayer.imageWidth * s;
		m01 = tempLayer.imageHeight * s;
		mtx = -(cx) * s + x;
		mty = -(cy) * s  +y;

		// m00 m01  mtx mty �ʒu�Ɉړ�

		targetLayer.visible = true;

		// ���C������x�N���A����
		targetLayer.fillRect(0,0, targetLayer.imageWidth,targetLayer.imageHeight, 0);

		// �g��k���]��
		if(targetLayer.type == ltOpaque)// ���C���[�^�C�v��ltOpaque�Ȃ�stFastLinear(���`���)
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
	}

	function continuousHandler(tick)
	{
		// �ړ����ɌĂ΂��
		if(nextstop) { finish();  return; }
		if(first) startTick = tick, first = false;
		tick -= startTick;
		if(tick >= totalTime)
		{
			nextstop = true;
			return;
		}

		var intervalTime = System.getTickCount() - lasttick;

		if(intervalTime > 15)// �n���h����15ms�ȓ��ɌĂ΂ꂽ��A�`�悵�Ȃ�
		{

			if(accel < 0)
			{
				// �㌷ ( �ŏ��������������A���X�ɒx���Ȃ� )
				tick = 1.0 - tick / totalTime;
				tick = Math.pow(tick, -accel);
				tick = int ( (1.0 - tick) * totalTime );
			}
			else if(accel > 0)
			{
				// ���� ( �ŏ��͓������x���A���X�ɑ����Ȃ� )
				tick = tick / totalTime;
				tick = Math.pow(tick, accel);
				tick = int (tick * totalTime);
			}

			lasttick = System.getTickCount();

			// �ړ�
			actionFunc(tick);
		}
	}

	function finish()
	{
		// �ŏI�ʒu�Ɉړ�
		var idx = int(pointCount * 3);
		var pz = path_array;

		var m00, m01, mtx, mty;
		m00 = tempLayer.imageWidth * pz[idx+2];
		m01 = tempLayer.imageHeight * pz[idx+2];
		mtx = -(cx) * pz[idx+2] + pz[idx];
		mty = -(cy) * pz[idx+2] + pz[idx+1];

		targetLayer.visible = true;

		// ���C������x�N���A����
		targetLayer.fillRect(0,0, targetLayer.imageWidth,targetLayer.imageHeight, 0);

		// �g��k���]��
		if(targetLayer.type == ltOpaque)// ���C���[�^�C�v��ltOpaque�Ȃ�stFastLinear(���`���)
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
			dm("��stmove���s���� :"+ (System.getTickCount() - processTime) +"ms��");
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
kag.addPlugin(global.stmove_object = new stmovePlugin(kag));

@endscript
@endif

; �}�N���o�^
@macro name="stmove"
;skipMode��2�ȏ�̂Ƃ��͕`�悵�Ȃ�
;@eval exp="mp.time = 0" cond="kag.skipMode >= 2"
@eval exp="mp.time = 0"
@eval exp="stmove_object.startstmove(mp)"
@endmacro
;
@macro name="wstmove"
@if exp="stmove_object.moving"
;@eval exp="stmove_object.finish()" cond="kag.skipMode >= 2"
@eval exp="stmove_object.finish()"
@waittrig * name="stmove" onskip="stmove_object.finish()" canskip=%canskip|true
@endif
@endmacro
;
@macro name=wsm
@wstmove *
@endmacro
;
@return