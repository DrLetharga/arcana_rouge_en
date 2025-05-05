; ��d�ǂݍ��݂�h�~
@return cond="typeof(global.windowresizable_obj) != 'undefined'"

; Window ���T�C�Y�v���O�C���c�Ƃ�����KAGPlugin�ł��Ȃ�ł��Ȃ����B
; �Q�[���E�B���h�E�g���}�E�X�Ńh���b�O���ăE�B���h�E�T�C�Y��C�ӃT�C�Y��
; �ς�����悤�ɂȂ�B
;
;
; ����:	�E�Q�[����ʂ��X�N���[�����傫�������ꍇ�ɁA��x�t���X�N���[����Ԃ�
;	�@�Ȃ�̂́AKAGWindow()�N���X�̃R���X�g���N�^�Ŏ��s����Ă���̂ŁA
;	�@�v���O�C���`�����Ɩh���Ȃ��B�Ή�����Ȃ�AMainWindow.tjs��KAGWindow��
;	�@�R���X�g���N�^���������āA�t���X�N���[���ɂ��邩�ǂ����̕�����
;	�@�X�L�b�v�����邵���Ȃ��c�Ǝv���B
;	�Emaximize���ƕ��A���ɉ�ʂ��^�����ɂȂ邱�Ƃ����� ... VMware�������H
;	�E�R���g���[������(X)�ŏI�������Ƃ��ɃG���[�ɂȂ�̂́AonResize()����
;	�@setZoom(innerWidth, scWidth);�������Ɖ���ł��邪�A���A�ǂ����āH
;	�@���R�킩��Ȃ��̂Ŗ��C���B���ʂɏI�����鎞�̓G���[�ɂȂ�Ȃ��B
;	
; 2012/08/05	0.71	�Efinalize()��win.*��non-valid���������ɏ������X�L�b�v
; 2012/08/03	0.7	�E�k���E�g��ŃE�C���h�E��i�̃��j���[�i�����ς�鎞
;			�@�ɂ�����Ƀ��T�C�Y�ł���悤�ɏC��
;			�E�Z�J���_�����j�^��ł̃E�B���h�E�ő剻���A�v���C�}��
;			�@���Ɉړ����Ă����̂��C��
;			�E�N�����ɃE�B���h�E���j���[���E�B���h�E��������ʊO
;			�@�������� (32,32) �Ɉړ�����
;			�E�s�v��delete win.onNormalSizeMenuItemClick_org ���폜
;			�EonNormalSizeMenuItemClick��replacefuncs�ɒǉ�
;			�Efinalize()��KAGWindow�̊֐���߂��Ă��Ȃ������̂��C��
; 2012/07/09	0.6	�EwindowEx.dll���x�[�X�ɁA�S�̓I�ɍč쐬

@iscript

{
	var ary = Plugins.getList();
	var i;
	for (i = ary.count-1; i >= 0; i--) {
		if (ary[i].toLowerCase() == "windowex.dll")
			break;
	}
	if (i < 0 || typeof(Window.maximize) == 'undefined' ||
		      typeof(Window.resetWindowIcon) == 'undefined')
		System.inform('WindowResizable.ks �����s���邽�߂ɕK�v�� windowEx.dll �v���O�C�����AOverride.tjs �Ȃǂœǂݍ��܂�Ă��܂���');
	// �ł����s���~�����肵�Ȃ��B�A�c���B
}

class WindowResizable {
	var win;
	var line, item;	// ���C���Ɓu�W���T�C�Y�ɖ߂��v���j���[�A�C�e��
	// �{�v���O�C�����u��������win.*�֐����X�g
	var replacefuncs = [
		"onResizing", "onMoveSizeBegin", "onMoveSizeEnd",
		"onResize", "onWindowedMenuItemClick",
		"onFullScreenMenuItemClick",
		"setInnerSize", "setPos", "onMaximize",
		"onNormalSizeMenuItemClick"
	];
	var savefuncs = [];

	// �R���X�g���N�^
	function WindowResizable(window)
	{
		win = window;

		// ���̃v���O�C���Ɋւ��ϐ���win(=kag)�ɓo�^
		win.windowResizableInfo = %[
			//m:�����ōŏ��l���肩�H�b��960�ɂ��Ă������B
			minwidth  : 800,
			orgfuncs  : %[],
			mrtemp    : void
		];
		var info = win.windowResizableInfo;
		// �I���W�i���֐���ۑ�(���݂��Ă��Ȃ����void�ŕۑ�
		for (var i = replacefuncs.count-1; i >= 0; i--) {
			var func = replacefuncs[i];
			if (typeof(win[func]) != 'undefined')
				info.orgfuncs[func] = win[func];
			else
				info.orgfuncs[func] = void;
			win[func] = this[func] incontextof win;
		}
		// ���j���[��.command���������ʈ���
		win.fullScreenMenuItem.command = win.onFullScreenMenuItemClick;
		win.windowedMenuItem.command   = win.onWindowedMenuItemClick;

		win.registerExEvent();	// �o�^�����֐���L���ɂ���

		var iw = win.innerWidth, ih = win.innerHeight;
		if (!win.fullScreened)
//m:�����R�����g�A�E�g�ŁA�Ƃ肠��������N�����̓E�B���h�E�E�߂Ȃ��Ȃ����B
//m:			win.borderStyle = bsSizeable;
		// borderStyle = bsSizeable ����Ə���(��dot)�E�B���h�E��
		// �������Ȃ�̂ŁA���Ƃœ��{�ɖ߂��K�v����

		// �u�W���T�C�Y�ɖ߂��v���j���[��ǉ�
		win.displayMenu.add(line = new MenuItem(this, "-"));
		item = new KAGMenuItem( win, "�W���T�C�Y�ɖ߂�(&N)", 0,
					win.onNormalSizeMenuItemClick, false);
		win.displayMenu.add(item);

		// �ȑO�̐ݒ�l���ۑ�����Ă��Ȃ���ΐݒ�
		if (sf.WindowResizable === void)
			sf.WindowResizable = %[];
		var sfwr = sf.WindowResizable;
		if (sfwr.top === void)
			sfwr.top = win.top;
		if (sfwr.left === void)
			sfwr.left = win.left;
		if (sfwr.innerWidth === void)
			sfwr.innerWidth = win.scWidth;
		if (sfwr.fullScreen === void)
			sfwr.fullScreen = win.fullScreen;
		if (sfwr.maximized === void)
			sfwr.maximized = win.maximized;
		var sfwr_w = sfwr.innerWidth + win.width-win.innerWidth;
		var sfwr_h = Math.round(sfwr.innerWidth*win.scHeight/win.scWidth) + win.height-win.innerHeight;
		if (!isOnMonitor(sfwr.left, sfwr.top, sfwr_w, sfwr_h)) {
			// ��ʊO�ɔz�u���ꂻ���Ȃ�A(32,32)�ɔz�u����
			sfwr.left = sfwr.top = 32;
		}

		// ���̉�ʃ��[�h���قȂ�Ȃ�A�ȑO�̂��̂ɍĐݒ肷��
		if (sfwr.fullScreen != win.fullScreen) {
			if (sfwr.fullScreen)
				win.onFullScreenMenuItemClick(win);
			else
				win.onWindowedMenuItemClick(win);
		}

		if (!win.fullScreened) {
			// �t���X�N���[���łȂ���Ό��̈ʒu�ɖ߂�
			win.setPos(sfwr.left, sfwr.top);
		}
		// maximized���Đݒ�(fullScreen�ݒ�̌�ɂ��Ȃ��Ƃ����Ȃ�)
		if (!win.fullScreened) {
			win.setInnerSize(sfwr.innerWidth,0,true);
			if (sfwr.maximized)
				win.maximize();
		}
	}

	// �f�X�g���N�^
	function finalize()
	{
		if (!isvalid(win))
			return;
		if (isvalid(win.displayMenu)) {
			if (item !== void)
				win.displayMenu.remove(item);
			if (line !== void)
				win.displayMenu.remove(line);
		}

		// �I���W�i���֐��ɖ߂�
		var ary = [];
		ary.assign(win.windowResizableInfo.orgfuncs);
		for (var i = ary.count-2; i >= 0; i-=2) {
			if (ary[i+1] === void)
				delete win[ary[i]];
			else
				win[ary[i]] = ary[i+1];
		}

		// ���j���[��.command���������ʈ���
		// valid�`�F�b�N���Ȃ��Ɓu�I�u�W�F�N�g�͊��ɖ����������
		// ���܂��v�ɂȂ邱�Ƃ�������...���R�s�������ǂނ�����
		if (isvalid(win.fullScreenMenuItem))
			win.fullScreenMenuItem.command = win.onFullScreenMenuItemClick;
		if (isvalid(win.fullScreenMenuItem))
			win.windowedMenuItem.command   = win.onWindowedMenuItemClick;
	}

	// �w����W����ʏ�ɂ��邩�ǂ���
	function isOnMonitor(x, y, w, h)
	{
		// ���S�ɉ�ʊO�Ȃ� false
// ��ԍŏ������̒����Ȃ̂ŁA���E�B���h�E�͒��ׂȂ�
//		if (System.getMonitorInfo(false, win) === void)
//			return false;
		// �E�C���h�E��g���A�E�B���h�E��������ʊO�Ȃ�false
		var g = System.getMonitorInfo;
dm('AAA(x,y,w,h) = ' + x + ',' + y + ',' + w + ',' + h);
		// g(f,x,y) �������ƁA�o�O�ł��܂������Ȃ��̂�1,1��ǉ�
		return (g(false, x+w/2, y+h/2, 1,1) !== void &&
			g(false, x, y, w, 16) !== void);
	}

	// ���T�C�Y���ɌĂ΂��
	function onResizing(rect)
	{
//dm('onResizing');
		// �I���W�i��������ΌĂ�
		if (windowResizableInfo.orgfuncs.onResizing !== void)
			windowResizableInfo.orgfuncs.onResizing(...);

		if (maximized)
			return false;	// �ő剻����Ă��鎞�͉������Ȃ�
		var cur = System.getCursorPos();
		if (cur === void)
			return false;	// �J�[�\�����擾�ł��Ȃ���ΏI��
		// curpos�́A�}�E�X�J�[�\�����E�B���h�E���S����ǂ̕����ɂ��邩
		// ��\���B0:���A1:��A2:�E�A3:��
		var curpos = 4;
		var curx = (cur.x-left)-width/2, cury = (cur.y-top)-height/2;
		if (curx < 0)	// ���S��荶�Ȃ�
			if (cury < 0)	// ���S����Ȃ�
				curpos = (cury/curx > height/width) ? 1 : 0;
			else		// ���S��艺�Ȃ�
				curpos = (cury/-curx > height/width) ? 3 : 0;
		else		// ���S���E�Ȃ�
			if (cury < 0)	// ���S����Ȃ�
				curpos = (-cury/curx > height/width) ? 1 : 2;
			else		// ���S��艺�Ȃ�
				curpos = (cury/curx > height/width) ? 3 : 2;

		onMoveSizeBegin();	// mrtemp��ݒ�
		var mrt = windowResizableInfo.mrtemp;
		var iw = innerWidth, dw = width-iw, dh = height-innerHeight;
		var miniw = windowResizableInfo.minwidth;
		var minih = Math.round(miniw*scHeight/scWidth);

		// �͂񂾈ʒu�ɂ���ċ�����ύX����B���܂��Z�߂��Ȃ������c
		if (rect.type == 1) {	// ���[��͂�ł���
			rect.w = Math.max(mrt.x+mrt.w-cur.x, miniw+dw);
			rect.x = mrt.x+mrt.w-rect.w;	// �E�[���Œ�
			rect.h = Math.round((rect.w-dw)*scHeight/scWidth+dh);
		} else
		if (rect.type == 2) {	// �E�[��͂�ł���
			rect.x = mrt.x;	// ���[���Œ�
			rect.w = Math.max(rect.w, miniw+dw);
			rect.h = Math.round((rect.w-dw)*scHeight/scWidth+dh);
		} else
		if (rect.type == 3) {	// ��[��͂�ł���
			rect.h = Math.max(mrt.y+mrt.h-cur.y, minih+dh);
			rect.y = mrt.y+mrt.h-rect.h;	// ���[���Œ�
			rect.w = Math.round((rect.h-dh)*scWidth/scHeight+dw);
			rect.x = mrt.x+mrt.w/2-rect.w/2;
		} else
		if (rect.type == 6) {	// ���[��͂�ł���
			rect.y = mrt.y;	// ��[���Œ�
			rect.h = Math.max(rect.h, minih+dh);
			rect.w = Math.round((rect.h-dh)*scWidth/scHeight+dw);
			rect.x = mrt.x+mrt.w/2-rect.w/2;
		} else
		if (rect.type == 4) {	// ����[��͂�ł��� = �E�����Œ�
			if (curpos == 0 || curpos == 3) { // ������͂�ł���
				rect.w = Math.max(mrt.x+mrt.w-cur.x, miniw+dw);
			} else { // (curpos == 1)// �㑤��͂�ł���
				rect.h = Math.max(mrt.y+mrt.h-cur.y, minih+dh);
				rect.w = Math.round((rect.h-dh)*scWidth/scHeight+dw);
				rect.w = Math.max(rect.w, miniw+dw);
			}
			rect.h = Math.round((rect.w-dw)*scHeight/scWidth+dh);
			rect.x = mrt.x+mrt.w-rect.w;
			rect.y = mrt.y+mrt.h-rect.h;
		} else
		if (rect.type == 5) {	// �E��[��͂�ł��� = �������Œ�
			rect.x = mrt.x;
			if (curpos == 2 || curpos == 3) { // �E����͂�ł���
				rect.w = Math.max(rect.w, miniw+dw);
			} else { // (curpos == 1)// �㑤��͂�ł���
				rect.h = Math.max(mrt.y+mrt.h-cur.y, minih+dh);
				rect.w = Math.round((rect.h-dh)*scWidth/scHeight+dw);
				rect.w = Math.max(rect.w, miniw+dw);
			}
			rect.h = Math.round((rect.w-dw)*scHeight/scWidth+dh);
			rect.y = mrt.y+mrt.h-rect.h;
		} else
		if (rect.type == 8) {	// �E���[��͂�ł��� = ������Œ�
			rect.x = mrt.x;
			rect.y = mrt.y;
			if (curpos == 2 || curpos == 1) { // �E����͂�ł���
				rect.w = Math.max(rect.w, miniw+dw);
			} else { // (curpos == 3)// ������͂�ł���
				rect.h = Math.max(cur.y-mrt.y, minih+dh);
				rect.w = Math.round((rect.h-dh)*scWidth/scHeight+dw);
				rect.w = Math.max(rect.w, miniw+dw);
			}
			rect.h = Math.round((rect.w-dw)*scHeight/scWidth+dh);
		} else
		if (rect.type == 7) { // �����[��͂�ł��� = �E����Œ�
			rect.y = mrt.y;
			if (curpos == 0 || curpos == 1) { // ������͂�ł���
				rect.w = Math.max(mrt.x+mrt.w-cur.x, miniw+dw);
			} else { // (curpos == 3)// ������͂�ł���
				rect.h = Math.max(cur.y-mrt.y, minih+dh);
				rect.w = Math.round((rect.h-dh)*scWidth/scHeight+dw);
				rect.w = Math.max(rect.w, miniw+dw);
			}
			rect.h = Math.round((rect.w-dw)*scHeight/scWidth+dh);
			rect.x = mrt.x+mrt.w-rect.w;
		}

		return true;
	}

	// �ړ��ƃ��T�C�Y�̊J�n���ɌĂ΂��
	function onMoveSizeBegin() {
//dm('onMoveSizeBegin');
		// �I���W�i��������ΌĂ�
		if (windowResizableInfo.orgfuncs.onMoveSizeBegin !== void)
			windowResizableInfo.orgfuncs.onMoveSizeBegin(...);

		if (windowResizableInfo.mrtemp !== void)
			return;
		// ���݂̃E�C���h�E����ۑ�����
		windowResizableInfo.mrtemp = %[
			x  : left,
			y  : top,
			w  : width,
			h  : height,
			iw : innerWidth,
			ih : innerHeight,
		];
	}

	// �ړ��ƃ��T�C�Y�̏I�����ɌĂ΂��
	function onMoveSizeEnd() {
//dm('onMoveSizeEnd');
		// fullScreen����onMoveSizeBegin/onMoveSizeEnd()���Ă΂�Ȃ�
		// �I���W�i��������ΌĂ�
		if (windowResizableInfo.orgfuncs.onMoveSizeEnd !== void)
			windowResizableInfo.orgfuncs.onMoveSizeEnd(...);

		windowResizableInfo.mrtemp = void;

		// ���̍��W��ۑ����Ă���
		sf.WindowResizable.left = left;
		sf.WindowResizable.top  = top;
	}

	// �ő剻���ꂽ���ɌĂ΂��
	function onMaximize()
	{
//dm('onMaximize()');
		// �ő剻���ꂽ���́A��ʂɓ��肫��œK�T�C�Y�ɂ���

		// maximized�t���O�t���� setInnerSize()����Ƃ܂�
		// onMaximize()���Ă΂��̂ŏd����e��
		// +4 �͂͂ݏo���h�b�g���BWindows��������邩�炳�[
		var moninfo = System.getMonitorInfo(true, this);
		if (moninfo.work.x != left+4 || moninfo.work.y != top+4)
			return;

		// �I���W�i��������ΌĂ�
		if (windowResizableInfo.orgfuncs.onMaximize !== void)
			windowResizableInfo.orgfuncs.onMaximize(...);
		var newiw = innerWidth, newih = innerHeight;
		// �͂ݏo��Windows�̎d�l���l������B�v�Z�ŋ��߁A���l�͏����Ȃ�
		newiw -= (moninfo.work.x - left)*2;
		newih -= (moninfo.work.y - top )*2;

		if (newiw/newih > scWidth/scHeight) {
			// ��ʂɑ΂����ɋ󔒂��ł���Ƃ�(16:9��ʂ�4:3���͂߂鎞�Ȃ�)
			newiw = Math.round(newih*scWidth/scHeight);
		} else if (newiw/newih < scWidth/scHeight) {
			// ��ʂɑ΂��c�ɋ󔒂��ł���Ƃ�
			newih = Math.round(newiw*scHeight/scWidth);
		}
		// �Z���^�����O�Ȃǂ�SetInnerSize()���Ŏ��{
		setInnerSize(newiw, newih, true);
	}

	// ���T�C�Y�������ɌĂ΂��
	function onResize()
	{
//dm('onResize');
		// �I���W�i��������ΌĂ�
		if (windowResizableInfo.orgfuncs.onResize !== void)
			windowResizableInfo.orgfuncs.onResize(...);

		// ����i���j���[�̒i�����ω��������ɂ����������T�C�Y���邽��
		setInnerSize(innerWidth, 0);
		setZoom(innerWidth, scWidth);	// �h���b�O���ɂ��Əd���c
		if (!fullScreened && !maximized)// �t���X�N���[���łȂ���Εۑ�
			sf.WindowResizable.innerWidth = innerWidth;
		if (!fullScreened)
			sf.WindowResizable.maximized = maximized;
	}

	// �Q�[����ʂ����T�C�Y����
	function setInnerSize(newiw, newih, move=false)
	{
//dm('setInnerSize(newiw='+newiw+', newih='+newih+', move='+move+')');
		if (fullScreened)
			return;
		// �Е��w�肳��ĂȂ�������v�Z�ŋ��߂�
		if (newiw == 0)
			newiw = Math.round(newih*scWidth/scHeight);
		if (newih == 0)
			newih = Math.round(newiw*scHeight/scWidth);
		if (newiw == innerWidth && newih == innerHeight)
			return;

		// ��ʂ��傫���T�C�Y�Ȃ�␳����
		var moninfo = System.getMonitorInfo(true, this);
		var newx = left, newy = top;
		// dh�̓��j���[����i�ȏゾ�ƈ�i���傫���Ȃ�̂Œ���
		var dw = width-innerWidth, dh = height-innerHeight;
		// �c���ǂ��炩�̃T�C�Y���傫�������ꍇ
		// ���ꂾ�ƃ��j���[��i�ȏ�{�Q�[����ʁ��X�N���[���̎��ɊԈႤ
		// �ꍇ�����邪�c�����������Ƃ͂܂��Ȃ�����܂��������c
		if (moninfo.work.w <= newiw+dw) {
			// ���̕�������
			newiw = moninfo.work.w - dw;
			newih = Math.round(newiw*scHeight/scWidth);
			newx = moninfo.work.x;
			newy = moninfo.work.y + (moninfo.work.h-newih-dh)/2;
		}
		if (moninfo.work.h <= newih+dh) {
			// �c�̕�������
			newih = moninfo.work.h - dh;
			newiw = Math.round(newih*scWidth/scHeight);
			newx = moninfo.work.x + (moninfo.work.w-newiw-dw)/2;
			newy = moninfo.work.y;
		}

		// �ŏ��T�C�Y��菬�����Ȃ�␳����
		if (newiw < windowResizableInfo.minwidth) {
			newiw = windowResizableInfo.minwidth;
			newih = Math.round(newiw*scHeight/scWidth);
		}

		// �\����ʂ��傫���Ȃ�A�\���\�ʒu�܂ňړ�����
		if (move && (newx != left || newy != top))
			setPos(newx, newy);

		// �I���W�i�����Ă�
		windowResizableInfo.orgfuncs.setInnerSize(newiw, newih);
	}

	// ���W��ݒ肷�� ... setPos()��u��������
	function setPos(x, y)
	{
//dm('setPos('+x+', '+y+')');
		var orgx = left, orgy = top;	// ���̈ʒu���擾

		// �I���W�i�����Ă�
		windowResizableInfo.orgfuncs.setPos(x, y);
		// ��ʊO�ɂȂ��ĂȂ���΂����
		if (System.getMonitorInfo(false, this) !== void)
			return;

		// ���̈ʒu�ɖ߂��Ă݂�
		windowResizableInfo.orgfuncs.setPos(orgx, orgy);
		// ��ʊO�ɂȂ��ĂȂ���΂����
		if (System.getMonitorInfo(false, this) !== void)
			return;

		// �ŏI��i��(0,0)�Ɉړ�
		windowResizableInfo.orgfuncs.setPos(0, 0);
	}

	// �t���X�N���[������E�C���h�E���[�h�ɕύX������
	function onWindowedMenuItemClick(sender) // incontextof win
	{
//dm('onWindowMenuItemClick()');
		if (!fullScreened) {
			// �������E�B���h�E���[�h����x�I�����ꂽ��A�T�C�Y��
			// 1�{�ɖ߂�
			setInnerSize(scWidth, 0, true);
			return;
		}
		var iw = sf.WindowResizable.innerWidth;

		// �I���W�i�����Ă�
		windowResizableInfo.orgfuncs.onWindowedMenuItemClick(...);

		if (!fullScreened) {
			resetWindowIcon(); // Vista�ŃA�C�R�����߂�Ȃ��΍�
//m:�����R�����g�A�E�g�ŁA�Ƃ肠��������N�����̓E�B���h�E�E�߂Ȃ��Ȃ����B
//m:			borderStyle = bsSizeable; // ��������ƒx���̂Œ���
			setInnerSize(iw, 0, true);
			setPos(sf.WindowResizable.left,sf.WindowResizable.top);
		}
		sf.WindowResizable.fullScreen = fullScreen;
	}

	// �E�B���h�E���[�h����t���X�N���[���ɕύX������
	function onFullScreenMenuItemClick(sender) // incontextof win
	{
//dm('onFullScreenMenuItemClick()');
		if (fullScreened)
			return;
		var iw = sf.WindowResizable.innerWidth;
		
		// �ȉ����Ȃ��ƁA�Q�[����ʂ�����ʂ�菬�����Ƃ���
		// fullscreen->window->fullscreen�ŕ\���͈͂����������Ȃ�B
		// �Ȃ����͂܂�����������Ȃ��c�B
		windowResizableInfo.orgfuncs.setInnerSize(scWidth, scHeight);

		// �I���W�i�����Ă�
		windowResizableInfo.orgfuncs.onFullScreenMenuItemClick(...);
		
		if (!fullScreened) {
//m:�����R�����g�A�E�g�ŁA�Ƃ肠��������N�����̓E�B���h�E�E�߂Ȃ��Ȃ����B
//m:			borderStyle = bsSizeable; // ��������ƒx���̂Œ���
			setInnerSize(iw, 0);		// ���s�Ȃ�Đݒ�
		}
		sf.WindowResizable.innerWidth = iw;	// �ۑ����Ƃ�
		sf.WindowResizable.fullScreen = fullScreen;
	}


	// �W���T�C�Y�ɖ߂�
	function onNormalSizeMenuItemClick(sender) // incontextof win
	{

//dm('onNormalSizeMenuItemClick()');
		if (fullScreened)
			onWindowedMenuItemClick(...);
		if (maximized)
			showRestore();

		setInnerSize(scWidth, 0, true);
		sf.WindowResizable.fullScreen = fullScreen;
	}
}

global.windowresizable_obj = new WindowResizable(kag);

@endscript
@return
