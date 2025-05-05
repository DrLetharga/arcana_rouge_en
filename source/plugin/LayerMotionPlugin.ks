; ���ɒ�`�ς݂Ȃ炷���߂�
[return cond="typeof(global.layermotions_obj) != 'undefined'"]

; 2012/08/05 1.36	lmdary/lmary �� finalize()��invalidate����悤�ɕύX
; 2012/04/24 1.35	new �ō�����C���X�^���X�̂����A�����I��invalidate����
;			���Ȃ��������̂�invalidate����悤�ɏC��
; 2011/08/24 1.3	[motion_start]�ő��݂��Ȃ�name=���w�肷��ƕʂ�
;			���[�V���������삵�Ă����̂��C��
; 2011/08/12 1.25	[motion_jump]�����[motion_start_onetime]��ǉ�
;			[motion_start]�����[motion_quake]�ŁAdef:wait=false��
; 2011/06/04 1.21	[motion_quake]��page=%page���w�肳��ĂȂ������c
; 2011/06/03 1.20	[motion_wait]�Ŗ������[�v�Ɋׂ�\�����������̂��C��
; 2011/05/06 1.10	[iscript]���̍s���� * �����
; 2011/03/24 1.02	�T���v�����[�V�����u�Ă��Ă��v�����A�u�Ă��Ă��E�v
;			����сu�Ă��Ă����v�ǉ��B
; 2010/06/29 1.01	LayerMotions.finalize() �� invalidate timer ��ǉ��B
;			finalize()����timer���荞�݂�����(?)�ƃG���[�ɂȂ�̂�
;			�C��

; �O��N���XInterpolation.ks�̓ǂݍ���
[call storage="Interpolation.ks"]

[iscript]

// ���C�����[�V�����f�[�^�N���X�B��ԃN���X��X,Y�������B
// ���ۂ̃��C�����[�V�����ƕ������Ă���̂́A�㏑�����Ďg�����߁B
class LayerMotionDataElement
{
	var name;		// ���[�V����id
	var intp_x, intp_y;	// InterpolationX(��ԃf�[�^X), InterpolationY

	// �R���X�g���N�^
	function LayerMotionDataElement(name="", initx=0, inity=0, locatex=void, locatey=void, loopx=1, loopy=1)
	{
		var tick = System.getTickCount();
		this.name = name;
		intp_x = new Interpolation(initx, tick, locatex, loopx);
		intp_y = new Interpolation(inity, tick, locatey, loopy);
	}

	// �f�X�g���N�^
	function finalize()
	{
		invalidate intp_x;
		invalidate intp_y;
	}

	// X�����l���w�肷��
	function setInitValX(initx)
	{
		intp_x.setInitVal(initx);
	}
	// Y�����l���w�肷��
	function setInitValY(inity)
	{
		intp_y.setInitVal(inity);
	}

	// X���[�v��ݒ肷��
	function setLoopX(loopx)
	{
		intp_x.setLoop(loopx);
	}
	// Y���[�v��ݒ肷��
	function setLoopY(loopy)
	{
		intp_y.setLoop(loopy);
	}

	// �J�n���Ԃ�ݒ肷��
	function setInitTick(tick=System.getTickCount())
	{
		intp_x.setInitTick(tick);
		intp_y.setInitTick(tick);
	}

	// ���݂�X���W�𓾂�
	function getCurrentValueX(tick=System.getTickCount())
	{
		return intp_x.getCurrentValue(tick);
	}

	// ���݂�Y���W�𓾂�
	function getCurrentValueY(tick=System.getTickCount())
	{
		return intp_y.getCurrentValue(tick);
	}

	// �ŏI��X���W�𓾂�
	function getLastValueX()
	{
		return intp_x.getLastValue();
	}

	// �ŏI��Y���W�𓾂�
	function getLastValueY()
	{
		return intp_y.getLastValue();
	}

	// �ŏItick�𓾂�
	function getLastTick()
	{
		var retx = intp_x.getLastTick();
		var rety = intp_y.getLastTick();
		return(retx > rety ? retx : rety);
	}

	// ���C��������K�v�����ׂ�
	function isValidTick(tick)
	{
		return intp_x.isValidTick(tick) || intp_y.isValidTick(tick);
	}

	// �R�s�[����
	function assign(src)
	{
		name = src.name;
		intp_x.assign(src.intp_x);
		intp_y.assign(src.intp_y);
	}

	// �Z�[�u���ɏォ��Ă΂��
	function store(tick = System.getTickCount())
	{
		var dic = %[];
		dic.name	= name;
		dic.intp_x	= intp_x.store(tick);
		dic.intp_y	= intp_y.store(tick);
		return(dic);
	}

	// ���[�h���ɏォ��Ă΂��
	function restore(dic, tick = System.getTickCount())
	{
		if(dic === void)
			return;
		name = dic.name;
		intp_x.restore(dic.intp_x, tick);
		intp_y.restore(dic.intp_y, tick);
	}
}


class LayerMotionData extends LayerMotionDataElement
{
	var finished;		// �I���t���O
//	var finish_at_loopend;	// ���[�v�I�����܂ő҂��ďI�����邩

	// �R���X�g���N�^
	function LayerMotionData(name="", ix=0, iy=0, locx=void, locy=void, lpx=1, lpy=1)
	{
		super.LayerMotionDataElement(...);
		finished = false;
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize();
	}

	// �R�s�[����
	function assign(src)
	{
		super.assign(src);
		finished = src.finished;
	}

	// �Z�[�u���ɏォ��Ă΂��
	function store(tick = System.getTickCount())
	{
		var dic = super.store(tick);
		dic.finished = finished;
		return(dic);
	}

	// ���[�h���ɏォ��Ă΂��
	function restore(dic, tick = System.getTickCount())
	{
		if(dic === void)
			return;
		super.restore(dic, tick);
		finished = dic.finished;
	}
}


// ���C�����[�V����
class LayerMotion // extends LayerMotionData
{
	var layer;		// ���[�V������K�p���郌�C��(0�`������������)
	var page;		// ���[�V������K�p����y�[�W(fore/back)
	var finished;		// �S���[�V�����̏I���t���O
	var motions;		// ���[�V�����z��B�������[�V�����̕������\
	var initx, inity;	// �������W

	function LayerMotion(layer="0", page="fore", ix=void, iy=void)
	{
		this.layer  = layer;
		this.page   = page;
		this.finished = false;
		this.motions = [];

		initx = (ix !== void) ? ix : kag[page].layers[layer].left;
		inity = (iy !== void) ? iy : kag[page].layers[layer].top;
	}

	function setInitPos(x = void, y = void)
	{
		if(x !== void)
			initx = x;
		if(y !== void)
			inity = y;
	}

	// �Y�����C�����[�V�������Hlayer=void��page=void�̏ꍇ�͉��ł��}�b�`
	function isTheLayerMotion(layer, page)
	{
		return (layer === void || this.layer == layer) &&
		       (page === void || this.page == page || page == 'both');
	}

	// ���[�V������T��(name===void�őS�ĂɃ}�b�`)
	function findMotion(name, finishedonly = false)
	{
		for (var i = motions.count-1; i >= 0; i--)
			if (name === void || motions[i].name == name)
				if(!finishedonly ||
				   (finishedonly && motions[i].finished))
					return i;
		return -1;
	}

	// ���[�V������T��(name===void�őS�ĂɃ}�b�`)
	function getMotionAry(name, finishedonly = false)
	{
		var ary = [];
		for (var i = motions.count-1; i >= 0; i--)
			if (name === void || motions[i].name == name)
				if(!finishedonly ||
				   (finishedonly && motions[i].finished))
					ary.add(motions[i]);
		return (ary.count > 0) ? ary : void;
	}

	// ���̃��C�����[�V������Valid���H
	function isValidTick(tick = System.getTickCount())
	{
		for (var i = motions.count-1; i >= 0; i--)
			if (!motions[i].finished &&
			     motions[i].isValidTick(tick))
				return true;
		return false;
	}

	// ���[�V�����ǉ�
	function addLayerMotion(lmd, ix=void, iy=void, lpx=void, lpy=void, tick=System.getTickCount())
	{
		var newmtn = new LayerMotionData();
		(LayerMotionDataElement.assign incontextof newmtn)(lmd);
		if (ix !== void)
			newmtn.setInitValX(ix);
		if (iy !== void)
			newmtn.setInitValY(iy);
		if (lpx !== void)
			newmtn.setLoopX(lpx);
		if (lpy !== void)
			newmtn.setLoopY(lpy);
		newmtn.setInitTick(tick);
		motions.add(newmtn);
		finished = false;
	}

	// ���[�V�����폜
	function delLayerMotion(name, finishedonly=false, lastpos=true)
	{
		var erased = false;
		var i;
		while ((i = findMotion(name, finishedonly)) >= 0) {
			if(lastpos) {
				// �ŏI�ʒu�Ɉړ�
				initx += motions[i].getLastValueX();
				inity += motions[i].getLastValueY();
			}
			invalidate motions[i];
			motions.erase(i);
			erased = true;
		}
		// �Ō�ɍ��W���킹�ďI���
		if(lastpos)
			currentMove();
		return erased;
	}

	// �I��������[�V��������폜(�e�C���X�^���X����Ă΂��)
	function delFinishedLayerMotion(lastpos = true)
	{
		if (delLayerMotion(, true, lastpos))
			// ���郂�[�V�����̏I����KAG�֔��C
			kag.conductor.trigger('endALayerMotion'); 
	}

	// mname�ɑΉ����郂�[�V������finished�t���O�ݒ�(mname===void�őS��)
	function setFinishFlag(mname)
	{
		var finishflg = true;
		for (var i = motions.count-1; i >= 0; i--)
			if (mname === void || motions[i].name == mname)
				motions[i].finished = true;
			else
				finishflg = false;
		finished |= finishflg;
	}

	// ���C���𓮂���(�e��1/60 timerCallback���[�`������Ăяo�����)
	function currentMove(tick = System.getTickCount())
	{
		var x = initx, y = inity;

		if(tick == Infinity)	// �������[�v��������0�ɂ����Ⴄ
			tick = 0;
		for (var i = motions.count-1; i >= 0; i--) {
			var mot = motions[i];
			x += mot.getCurrentValueX(tick);
			y += mot.getCurrentValueY(tick);
			if (!mot.finished && !mot.isValidTick(tick)) {
				// �I�������[�V�����ɏI���}�[�N������
				mot.finished = true;
				// �폜�͐e�C���X�^���X����B�����ł͂��Ȃ�
			}
		}
		kag[page].layers[layer].setPos(x, y);
	}

	// �ŏItick�𓾂�
	function getLastTick()
	{
		var lasttick = 0;
		for (var i = motions.count-1; i >= 0; i--) {
			var tmptick = motions[i].getLastTick();
			if(lasttick < tmptick)
				lasttick = tmptick;
		}
		return lasttick;
	}

	// �R�s�[����
	function assign(src)
	{
		layer		= src.layer;
		page		= src.page;
		finished	= src.finished;
		for (var i = motions.count-1; i >= 0; i--)
			invalidate motions[i];
		motions		= [];
		for (var i = src.motions.count-1; i >= 0; i--) {
			motions[i] = new LayerMotionData();
			motions[i].assign(src.motions[i]);
		}
		initx		= src.initx;
		inity		= src.inity;
	}

	// �Z�[�u���ɏォ��Ă΂��
	function store(tick = System.getTickCount())
	{
		var dic = %[];
		dic.layer	= layer;
		dic.page	= page;
		dic.finished	= finished;
		dic.motions	= [];
		for (var i = motions.count-1; i >= 0; i--)
			dic.motions[i] = motions[i].store(tick);
		dic.initx	= initx;
		dic.inity	= inity;
		return dic;
	}

	// ���[�h���ɏォ��Ă΂��
	function restore(dic, tick = System.getTickCount())
	{
		if(dic === void)
			return;
		layer		= dic.layer;
		page		= dic.page;
		finished	= dic.finished;
		for (var i = motions.count-1; i >= 0; i--)
			invalidate motions[i];
		motions	= [];
		for (var i = dic.motions.count-1; i >= 0; i--) {
			motions[i] = new LayerMotionData();
			motions[i].restore(dic.motions[i], tick);
		}
		initx		= dic.initx;
		inity		= dic.inity;
	}
}


class LayerMotions extends KAGPlugin
{
	var lmdary = [];	// ���C�����[�V�����f�[�^(�ÓI)�z��
	var lmary  = [];	// ���C�����[�V����(���ێg�p���郂�[�V����)�z��
	var timer;		// 1/60�^�C�}
	var trig;		// ���[�V�����폜�Ƃ��̃g���K

	// �R���X�g���N�^
	function LayerMotions()
	{
		super.KAGPlugin(...);
		lmdary 		= [];
		lmary 		= [];
		timer 		= new Timer(timerCallback, '');
		timer.interval	= 16;	// (16msec = 1/60�b�ň��)
		trig = new AsyncTrigger(checkLM, '');
	}

	// �f�X�g���N�^
	function finalize()
	{
		invalidate timer;
		invalidate trig;	// ��ɎE���Ă����ׂ�
		for (var i = lmary.count-1; i >= 0; i--)
			invalidate lmary.pop();
		for (var i = lmdary.count-1; i >= 0; i--)
			invalidate lmdary.pop();
		super.finalize();
	}
		
	// �^�C�}�R�[���o�b�N
	function timerCallback()
	{
		for (var i = lmary.count-1; i >= 0; i--)
			lmary[i].currentMove();

		trig.trigger();	// checkLM��1/60���ƂɌĂԁB�d�����Ȃ��B
	}

	// ���O����LayerMotionData��T���A�C���f�b�N�X��Ԃ�
	function findLayerMotionData(name)
	{
		for (var i = lmdary.count-1; i >= 0; i--)
			if (lmdary[i].name == name)
				return i;
		return -1;
	}

	// ���C�����烌�C�����[�V������T���A�C���f�b�N�X��Ԃ�
	// ������void�Ȃ�A���݂�����ŏ��Ɍ��������̂�Ԃ��B
	// startidx ���w�肳�ꂽ��A����ȏ�̂��̂�T��
	function findLayerMotions(layer, page, startidx=0)
	{
		for (var i = startidx; i < lmary.count; i++)
			if (lmary[i].isTheLayerMotion(layer, page))
				return i;
		return -1;
	}

	// ����̃��C�����[�V������T���āA�}�b�`�������X�g��Ԃ�
	function getLayerMotionAry(layer, page, name)
	{
		var ary, ret = [];
		for (var i = 0; i < lmary.count; i++)
			if (lmary[i].isTheLayerMotion(layer, page))
				if ((ary=lmary[i].getMotionAry(name)) !== void)
					for (var j = 0; j < ary.count; j++)
						ret.add(ary[j]);
		return (ret.count > 0) ? ret : void;
	}

	// ����̃��C�����[�V������T���ĕԂ��B������void�Ȃ�A���݂�����
	// �ŏ��Ɍ��������̂�Ԃ�
	function findLayerMotion(layer, page, name, finishedonly=false)
	{
		var idx, jdx;

		if ((idx = findLayerMotions(layer, page)) >= 0 &&
		    (jdx = lmary[idx].findMotion(name, finishedonly)) >= 0)
			return lmary[idx].motions[jdx];
		return void;
	}

/*	// �w�背�C�����[�V�������폜����
������Ǝ����ɖ�肪���邽�߁A�g��Ȃ����ƁB
findLayerMotions()��idx+1���E�����ǁAdelLayerMotion()��lmary[idx]��
�����ꂽ���Ɏ�肱�ڂ����Ƃ�����B�̂ŁA���ꂪ��������܂ł́B
	function delLayerMotion(layer, page, name, lastpos = true)
	{
		var idx = -1;
		while (1) {
			if ((idx = findLayerMotions(layer, page, idx+1)) < 0)
				break;
			if (!lmary[idx].delLayerMotion(name, false, lastpos))
				break;
		}
	}
 [iscript]���ł͓���*�������Ȃ����ƁI*/

	// LayerMotionData��ǉ�
	//[motion_define] ����Ă΂��
	function addLMD(name, lx=void, iy=void, locatex="", locatey="", lpx=1, lpy=1)
	{
		delLMD(name);		// �d������̂͏���
		lmdary.add(new LayerMotionData(...));
	}

	// LayerMotionData���폜
	// [motion_undefine name=]
	function delLMD(name)
	{
		var idx = findLayerMotionData(name);
		if (idx >= 0) {
			invalidate lmdary[idx];
			lmdary.erase(idx);
		}
	}

	// ���C�����[�V�����ǉ��B���f�[�^���R�s�[����ix,iy,lp��������
	// [motion_start name= layer=0 page=fore left= top= lpx=1,lpy=1]
	function addLM(layer="0", page="fore", x=void, y=void, name, ix=void, iy=void, lpx=void, lpy=void, tick = System.getTickCount())
	{
		if (page == 'both') {
			addLM(layer, 'fore', x,y, name, ix,iy, lpx,lpy, tick);
			addLM(layer, 'back', x,y, name, ix,iy, lpx,lpy, tick);
			return;
		}

		var idx = findLayerMotions(layer, page);
		if (idx < 0) {
			lmary.add(new LayerMotion(layer, page, x, y));
			idx = lmary.count-1;
		}
		var lmdidx = findLayerMotionData(name);
		if (lmdidx < 0)
			return;	// ���݂��Ȃ���΃G���[�I��
		lmary[idx].addLayerMotion(lmdary[lmdidx],ix,iy,lpx,lpy,tick);
		timer.enabled = true;
	}

	// 1/60�^�C�}���ƂɌĂ΂�邪�A�^�C�}���łȂ��A�^�C�}����̔��C�ŃR�[��
	// �I���ς݃��C�����[�V�����̍폜�ƁA�K�v�ȃg���K�[�̔��C
	function checkLM(lastpos = true)
	{
		for (var i = lmary.count-1; i >= 0; i--) {
			// ���̒����Ńg���K�͈������
			lmary[i].delFinishedLayerMotion(lastpos);
			if (lmary[i].motions.count <= 0 || lmary[i].finished) {
				invalidate lmary[i];
				lmary.erase(i);
			}
		}
	}

	// ���C�����[�V������~�Blayer=void, page=void, name=void�Ȃ�S���~�߂�
	// [motion_stop layer= page= name= lastpos=]
	function stopLM(layer, page, name=void, lastpos=true)
	{
		var ary = getLayerMotionAry(layer, page, name);
		if (ary !== void)
			for (var i = ary.count-1; i >= 0; i--)
				ary[i].finished = true;
		checkLM(lastpos);
	}

	// ���݂̃��[�V�������S��X���W�𓾂�
	function getFixedCurrentPosX(layer="0", page="fore")
	{
		var idx = findLayerMotions(layer, page);
		if(idx < 0)
			return kag[page].layers[layer].left;
		return lmary[idx].initx;
	}
	// ���݂̃��[�V�������S��Y���W�𓾂�
	function getFixedCurrentPosY(layer="0", page="fore")
	{
		var idx = findLayerMotions(layer, page);
		if(idx < 0)
			return kag[page].layers[layer].top;
		return lmary[idx].inity;
	}

	// ���݂̃��[�V�������S��X���W�𓾂�
	function setFixedCurrentPos(layer="0", page="fore", x=void, y=void)
	{
		var idx = findLayerMotions(layer, page);
		if(idx < 0)
			return;
		lmary[idx].setInitPos(x,y);
	}

	// ���C���̕\�������̏��̃R�s�[
	// backlay �^�O��g�����W�V�����̏I�����ɌĂ΂��
	function onCopyLayer(toback)
	{
		// toback ? �\���� : �����\
		var page = toback ? 'back' : 'fore';
		for (var i = lmary.count-1; i >= 0; i--)
			if(lmary[i].page == page) {
				invalidate lmary[i];
				lmary.erase(i);
			}
		for (var i = lmary.count-1; i >= 0; i--) {
			var lm = new LayerMotion();
			lm.assign(lmary[i]);
			lm.page = page;
			lmary.add(lm);
		}
	}

	// ���ƕ\�̊Ǘ���������
	// backlay �^�O��g�����W�V�����̏I�����ɌĂ΂��
	function onExchangeForeBack()
	{
		// children = true �̃g�����W�V�����ł́A�g�����W�V�����I������
		// �\��ʂƗ���ʂ̃��C���\���������������ւ��̂ŁA
		// ����܂ŕ\��ʂ��Ǝv���Ă������̂�����ʂɁA����ʂ��Ǝv����
		// �������̂��\��ʂɂȂ��Ă��܂��B�����̃^�C�~���O�ł��̏���
		// ����ւ���΁A�����͐����Ȃ��B
		for (var i = lmary.count-1; i >= 0; i--)
			lmary[i].page = (lmary[i].page=='fore')?'back':'fore';
	}

	// �Z�[�u
	function onStore(f, elm)
	{
// �Z�[�u���ɂ̓��C�����W���Z�[�u�ł���ʒu�ɂ��Ă����K�v�����邩���B
		var dic = f.layermotionplugin = %[];
		dic.lmdary = [];
		dic.lmary = [];
		for (var i = lmdary.count-1; i >= 0; i--)
			dic.lmdary[i] = lmdary[i].store();
		var tick = System.getTickCount();
		for (var i = lmary.count-1; i >= 0; i--)
			dic.lmary[i] = lmary[i].store(tick);
		dic.timer_enabled = timer.enabled;
	}

	// ���[�h
	function onRestore(f, elm)
	{
		var dic = f.layermotionplugin;
		if(dic === void)
			return;
		// lmdary�̗v�f��S���폜
		for (var i = lmdary.count-1; i >= 0; i--)
			invalidate lmdary[i];
		lmdary = [];

		// lmary�̗v�f��S���폜
		for (var i = lmary.count-1; i >= 0; i--)
			invalidate lmary[i];
		lmary = [];

		for (var i = dic.lmdary.count-1; i >= 0; i--) {
			lmdary[i] = new LayerMotionData();
			lmdary[i].restore(dic.lmdary[i]);
		}
		var tick = System.getTickCount();
		for (var i = dic.lmary.count-1; i >= 0; i--) {
			lmary[i] = new LayerMotion();
			lmary[i].restore(dic.lmary[i], tick);
		}
		timer.enabled = dic.timer_enabled;
	}

	// ���΍��W���΍��W�ɕϊ�����֐��B����ȃR���������������̂��B
	function getRelPathFromAbsPathX(layer="0", page="fore", init=getFixedCurrentPosX(layer, page), relpath)
	{
		if(relpath === void)
			return void;
		var ret = "";
		var path = relpath.split(/[,()]/);
		for (var i = 0; i < path.count; i+=5) {
			if(i > 0)
				ret += ',';
			ret += "(" + (real(path[i+1])-init) + "," +
					path[i+2] + "," + path[i+3] + ")";
		}
		return ret;
	}

	// ���΍��W���΍��W�ɕϊ�����֐��B����ȃR���������������̂��B
	function getRelPathFromAbsPathY(layer="0", page="fore", init=getFixedCurrentPosY(layer, page), relpath)
	{
		if(relpath === void)
			return void;
		var ret = "";
		var path = relpath.split(/[,()]/);
		for (var i = 0; i < path.count; i+=5) {
			if(i > 0)
				ret += ',';
			ret += "(" + (real(path[i+1])-init) + "," +
					path[i+2] + "," + path[i+3] + ")";
		}
		return ret;
	}
}


// �v���O�C���I�u�W�F�N�g���쐬���A�o�^����
kag.addPlugin(global.layermotions_obj = new LayerMotions());

[endscript]


; [motion_define name= left= top= locatex= locatey= loop= loopx= loopy=]
[macro name="motion_define"]
[eval exp="mp.left  = real(mp.left)"  cond="mp.left  !== void"]
[eval exp="mp.top   = real(mp.top )"  cond="mp.top   !== void"]
[eval exp="mp.loopx = mp.loopy = real(mp.loop)" cond="mp.loop !== void"]
[eval exp="mp.loopx = real(mp.loopx)" cond="mp.loopx !== void"]
[eval exp="mp.loopy = real(mp.loopy)" cond="mp.loopy !== void"]
[eval exp="layermotions_obj.addLMD(mp.name, mp.left, mp.top, mp.locatex, mp.locatey, mp.loopx, mp.loopy)"]
[endmacro]


; [motion_undefine name=]
[macro name="motion_undefine"]
[eval exp="layermotions_obj.delLMD(mp.name)"]
[endmacro]


; [motion_start layer= page= left= top= name= ix= iy= loopx= loopy= canskip= wait=]
[macro name="motion_start"]
[eval exp="mp.left  = real(mp.left)"  cond="mp.left  !== void"]
[eval exp="mp.top   = real(mp.top )"  cond="mp.top   !== void"]
[eval exp="mp.ix    = real(mp.left)"  cond="mp.ix    !== void"]
[eval exp="mp.iy    = real(mp.top )"  cond="mp.iy    !== void"]
[eval exp="mp.loopx = mp.loopy = real(mp.loop)" cond="mp.loop !== void"]
[eval exp="mp.loopx = real(mp.loopx)" cond="mp.loopx !== void"]
[eval exp="mp.loopy = real(mp.loopy)" cond="mp.loopy !== void"]
[eval exp="mp.wait  = false"          cond="mp.wait  === void"]
[eval exp="layermotions_obj.addLM(mp.layer, mp.page, mp.left, mp.top, mp.name,  mp.ix, mp.iy, mp.loopx, mp.loopy)"]
[motion_wait layer=%layer page=%page name=%name canskip=%canskip cond=mp.wait]
[endmacro]


; [motion_stop layer= page= name= lastpos=]
; layer === void, page === void�őS���I��������
[macro name="motion_stop"]
[eval exp="layermotions_obj.stopLM(mp.layer, mp.page, mp.name, mp.lastpos)"]
[endmacro]


; [motion_wait layer= page= name=]
; layer, page, name ��void�ł��悢
[macro name="motion_wait"]
[eval exp="mp.canskip=true" cond="mp.canskip === void"]
[call storage=LayerMotionPlugin.ks target=*motion_wait_sub]
[motion_stop *]
[endmacro]


; [motion_move layer= page= left= top= pathx= pathy= wait=]
; locatex��locatey�͎w�莞�͐�΍��W�ɂȂ��Ă���̂ŁA���΍��W�ɕϊ�����B
; ����͋g���g����[move]��replace���邽�߂ɓ��ʂɍ�����B
[macro name="motion_krkrmove"]
[eval exp="mp.layer = '0'"    cond="mp.layer === void"]
[eval exp="mp.page  = 'fore'" cond="mp.page  === void"]
[eval exp="mp.locatex = layermotions_obj.getRelPathFromAbsPathX(mp.layer, mp.page, mp.left, mp.pathx)"]
[eval exp="mp.locatey = layermotions_obj.getRelPathFromAbsPathY(mp.layer, mp.page, mp.top,  mp.pathy)"]
; ���O�͌Œ�
[eval exp="mp.mname = 'krkrmove_' + mp.layer"]
; �O�̓������~�߂�
[motion_stop layer=%layer page=%page name=%mname]
[motion_define name=%mname locatex=%locatex locatey=%locatey]
[motion_start layer=%layer page=%page name=%mname wait=%wait]
; ��������łȂ��Ă��A�o�^�f�[�^�͍폜�����
[motion_undefine name=%mname]
[endmacro]


; [motion_krkrmove_wait layer= page=]
; [motion_krkrmove]�p�҂�
; �������Alayer�͎w�肵�Ȃ��ƃ_��
[macro name="motion_krkrmove_wait"]
[eval exp="mp.mname = 'krkrmove_' + mp.layer"]
[motion_wait layer=%layer page=%page name=%mname]
[motion_undefine name=%mname]
[endmacro]


; [motion_krkrmove_stop layer= page=]
; [motion_krkrmove]���~�߂�
[macro name="motion_krkrmove_stop"]
[eval exp="mp.mname = 'krkrmove_' + mp.layer"]
[motion_stop layer=%layer page=%page name=%mname]
[endmacro]


[iscript]

function make_quake_array(time, max, speed, signcnt=1)
{
	var ret = "";

	time = int(time);
	max = int(max);
	speed = int(speed);
	signcnt = int(signcnt); // ����������Ɉ�񔽓]���邩

	// time�b���ɉ���Ăяo�����ɂ���ă��[�v�񐔂��ς��
	var cnt = 0, sign = 1;
	for (var tick = 0; tick < time; tick += speed, cnt++) {
		var rand = int(Math.random()*sign*max);
		// �A���I�ɓ������ƂȂ񂩊Ԕ����������̂ŁA�킴�Ɨ��U�I�ɓ�����
		ret += '(' + rand + ',' + '1,0),';
		ret += '(' + rand + ',' + (speed-1) + ',0),';
		// �A���I�ɓ����������Ȃ炱��Ȃ񁫈�s��O.K.�B
		// ret += '(' + rand + ',' + speed + ',0),';
		if(cnt%signcnt == 0)
			sign *= -1; // �������]����
	}
	ret += '(0,1,0)';	// �Ō�Ɍ��̈ʒu�ɖ߂�
	return ret;
}

[endscript]


; �����^�C�����[�V����(��񓮂�������̂Ă郂�[�V����)�𓮍삳����
; [motion_start_onetime layer= page= wait= locatex= locatey= loop= loopx= loopy=]
[macro name="motion_start_onetime"]
[eval exp="mp.name = 'onetime_' + System.createUUID()" cond="mp.name === void"]
[motion_define *]
[motion_start *]
;�o�^���Ă����폜����
[motion_undefine name=%name]
[endmacro]


; ���C���[��quake�̂��߂̃}�N��
; [motion_quake name= layer=0 page=fore time=300 hmax=10 vmax=10 speed=50 wait=false loop=1]
[macro name="motion_quake"]
[eval exp="mp.layer = '0'"     cond="mp.layer === void"]
[eval exp="mp.page   = 'fore'" cond="mp.page  === void"]
[eval exp="mp.time   = 300"    cond="mp.time  === void"]
[eval exp="mp.hmax   = 10"     cond="mp.hmax  === void"]
[eval exp="mp.vmax   = 10"     cond="mp.vmax  === void"]
[eval exp="mp.speed  = 50"     cond="mp.speed === void"]
[eval exp="mp.loop   = 1"      cond="mp.loop  === void"]
[eval exp="mp.locatex = make_quake_array(mp.time, mp.hmax, mp.speed)"]
[eval exp="mp.locatey = make_quake_array(mp.time, mp.vmax, mp.speed, 2)"]
[motion_start_onetime *]
[endmacro]


; �W�����v���[�V����(height�𕉂̒l�ɂ���Ƃ������₽�ߑ��ɂ��g����)
; [motion_jump name= layer=0 page=fore height=30 accel=2 time=300 staccel= edaccel= sttime= edtime= wait= movex= accelx= loop=1]
[macro name="motion_jump"]
[eval exp="mp.layer   = 0"          cond="mp.layer   === void"]
[eval exp="mp.page    = 'fore'"     cond="mp.page    === void"]
[eval exp="mp.height  = 30"         cond="mp.height  === void"]
[eval exp="mp.accel   = 2"          cond="mp.accel   === void"]
[eval exp="mp.time    = 300"        cond="mp.time    === void"]
[eval exp="mp.staccel = -mp.accel"  cond="mp.staccel === void"]
[eval exp="mp.edaccel = +mp.accel"  cond="mp.edaccel === void"]
[eval exp="mp.sttime  = +mp.time/2" cond="mp.sttime  === void"]
[eval exp="mp.edtime  = +mp.time/2" cond="mp.edtime  === void"]
[eval exp="mp.movex   = 0"          cond="mp.movex   === void"]
[eval exp="mp.accelx  = 0"          cond="mp.accelx  === void"]
[eval exp="mp.loop    = 1"          cond="mp.loop    === void"]
[eval exp="mp.locatey = '('+ -mp.height + ',' + mp.sttime + ',' + mp.staccel + '),(0,' + mp.edtime + ',' + mp.edaccel + ')'"]
[eval exp="mp.locatex = '('+mp.movex+','+mp.time+','+mp.accelx+')'"]
[motion_start_onetime *]
[endmacro]


; �T���v�����[�V����
[motion_define name="�Ă��Ă�" locatey="(-15,370,-2),(0,320,2),(3,150,-2),(0,200,2)" loop=0]
[motion_define name="�Ă��Ă��E" locatey="(-15,370,-2),(0,320,2),(3,150,-2),(0,200,2)" locatex="(5,370,2),(10,320,-2),(5,200,1),(0,150,-1)" loop=0]
[motion_define name="�Ă��Ă���" locatey="(-15,370,-2),(0,320,2),(3,150,-2),(0,200,2)" locatex="(-5,370,2),(-10,320,-2),(-5,200,1),(0,150,-1)" loop=0]
[motion_define name="�ǂ��ǂ�" locatey="(-30,200,-2),(0,200,2)" loop=0]
[motion_define name="������"   locatey="(20,200,-2),(0,200,2)"]
[motion_define name="�W�����v" locatey="(-25,150,-2),(0,150,2)"]
[motion_define name="�ӂ�ӂ�" locatex="(-20,2000,-2),(0,2000,2),(20,2000,-2),(0,2000,2)" locatey="(-5,1200,-2),(0,1200,2),(5,1200,-2),(0,1200,2)" loop=0]
[motion_define name="���ߑ�"   locatey="(-4,300,-2),(12,900,-2),(0,300,-2)"]


[return]

; �ȉ��A�T���v���B���s�͂���Ȃ��B
[layopt layer=0 page=fore left=100 top=100 visible=true]
[layopt layer=0 page=back visible=true]
[layopt layer=message page=fore visible=true]
[layopt layer=message page=back visible=true]
[image layer=0 page=fore storage="�K���ȉ摜"]

�Ă��Ă����܂��B[l][r]
[motion_start layer=0 page=fore name="�Ă��Ă�" wait=false]
[l][r]
��т̂��܂��B[l][r]
[motion_start layer=0 page=fore name="��т̂�"]
[l][r]
�ړ����܂��B[l][r]
[motion_krkrmove pathx="(100,2000,-2)" pathy="(100,2000,-2)" wait=false]
[motion_krkrmove_wait]
�ӂ�ӂ킵�܂��B[l][r]
[motion_start layer=0 page=fore name="�ӂ�ӂ�" wait=false]
[l][r]

�ӂ�ӂ풆�ɏ����܂��B�܂� backlay[l][r]
[backlay]
����motion_stop�������H[l][r]
[motion_stop layer=0 page=back]
[motion_stop layer=0 page=fore]
layopt[l][r]
[layopt layer=0 page=back visible=0]
trans�������H[l][r]
[trans method=crossfade time=2000]
[wt]
�����܂��B
[s]

[return]


;������:
; �����x�ύX

; Known BUG
; �����g�����W�V�������ɃZ�[�u�����f�[�^�����[�h����ƁALayerMotion
; ���Ă���Ȃ��B����͂����������̂Ȃ̂��B[wt]�̌�ɃZ�[�u����Α��v�������B

*motion_wait_sub
*motion_wait_sub_loop
; �X�L�b�v���͂����ɖ߂�
[return cond="kag.skipMode > 1"]
; �Y�����[�V���������s���łȂ���΂����Ԃ�B���s���������牺�ւ����A
; �Ȃ�ł����������̃��C�����[�V�������I������̂�҂B
; �N���e�B�J���Z�b�V�����Ȃ̂ŁA�ԂōŌ�̃��[�V�������I��ƃ^�C�w������
; �h�����@��������Ȃ��c
[return cond="!layermotions_obj.findLayerMotion(mp.layer,mp.page,mp.name)"]
[eval exp="mp.endALayerMotionSkip = false"]
[waittrig name=endALayerMotion canskip=%canskip onskip="mp.endALayerMotionSkip = true" cond="layermotions_obj.findLayerMotion(mp.layer, mp.page, mp.name)"]
; kag.clickCount ��[waittrig]����skip����Ă��X�V����Ȃ��炵���̂�
[if exp="mp.endALayerMotionSkip"]
	; �N���b�N�������ꂽ�ꍇ�A�S�Ă��~�����A�폜����
	[motion_stop layer=%layer page=%page name=%name lastpos=true]
[endif]
; �ȍ~�J��Ԃ�
[jump target=*motion_wait_sub_loop]
