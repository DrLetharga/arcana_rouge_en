;=============================================================
;�L�����h�炵�}�N��
;=============================================================

; ���C���[���[�V�����v���O�C���g�p�����}�N��
;����̑債�ĕς��Ȃ����Ǒ��΍��W�w��Ȃ̂ł��������g��
;�Z�[�u���[�h�ɂ��Ή�
[macro name=quake_chara]

	;�O�ׂ̈�[move]�^�O��~
	[stopmove]

	;;�����L���������炱���͏�������ǉ���
	;���̂܂܃L�����������ƂȂ񂾂�������Ȃ��Ȃ肻�������瑮����mp.chara�ɓ���B�O�ׂ̈Q����������Ƃ���

	[if    exp="mp.ch == 'aka' || mp.ch == 'ak' || mp.ch == 'ch01'"][eval exp="f.layer_quake = f.layer_ch01"]
	[elsif exp="mp.ch == 'aoi' || mp.ch == 'ao' || mp.ch == 'ch02'"][eval exp="f.layer_quake = f.layer_ch02"]
	[elsif exp="mp.ch == 'mia' || mp.ch == 'mi' || mp.ch == 'ch03'"][eval exp="f.layer_quake = f.layer_ch03"]
	[elsif exp="mp.ch == 'mei' || mp.ch == 'me' || mp.ch == 'ch04'"][eval exp="f.layer_quake = f.layer_ch04"]
	[elsif exp="mp.ch == 'syu' || mp.ch == 'sy' || mp.ch == 'ch05'"][eval exp="f.layer_quake = f.layer_ch05"]
	[elsif exp="mp.ch == 'kak' || mp.ch == 'ka' || mp.ch == 'ch06'"][eval exp="f.layer_quake = f.layer_ch06"]
	[elsif exp="mp.ch == 'miz' || mp.ch == 'mi' || mp.ch == 'ch07'"][eval exp="f.layer_quake = f.layer_ch07"]
	[elsif exp="mp.ch == 'syo' || mp.ch == 'sy' || mp.ch == 'ch08'"][eval exp="f.layer_quake = f.layer_ch08"]
	[elsif exp="mp.ch == 'zaa' || mp.ch == 'za' || mp.ch == 'ch09'"][eval exp="f.layer_quake = f.layer_ch09"]
	[elsif exp="mp.ch == 'zab' || mp.ch == 'za' || mp.ch == 'ch10'"][eval exp="f.layer_quake = f.layer_ch10"]
	[elsif exp="mp.ch == 'ai'  || mp.ch == 'ai' || mp.ch == 'ch11'"][eval exp="f.layer_quake = f.layer_ch11"]
	[else][eval exp="f.layer_quake = mp.layer"]
	[endif]

	;	;mp��void�Ȃ�0���ꂽ������ϐ��ɓ����
	;	[eval exp="f.vmax = mp.vmax"]
	;	[eval exp="f.hmax = mp.hmax"]
	;
	;	;�ꉞ�w�薳��������0�����Ă���
	;	[eval exp="f.vmax = 0" cond="mp.vmax == void"]
	;	[eval exp="f.hmax = 0" cond="mp.hmax == void"]

	;time�����ĂȂ���������Ȃ��������ϕϐ��ɓ��꒼���Ȃ��Ƃ�
	[eval exp="f.qt = mp.time"]
	[eval exp="f.qt = 20" cond="mp.time == void"]

	;�A�N�Z��
	[eval exp="f.ac = mp.accel"]
	[eval exp="f.ac = 1" cond="mp.accel == void"]

	;loop�͐��l�@Android�ɂ��̂܂܎g����悤�ɑ�������count�ɂ��Ă���
	;locatex="(�Ώۃ��C���̌����W���瑊�΍��W,�ړ��ɂ����鎞��(ms),�����x)"
	;locatey="(�Ώۃ��C���̌����W���瑊�΍��W,�ړ��ɂ����鎞��(ms),�����x)"
	;loop=loop��|1(def) �f�t�H���g��1�B0�Ŗ������[�v����B
	;loopx=X����loop��|1(def) loop���㏑���\��X������loop�񐔁B
	;loopx=Y����loop��|1(def) loop���㏑���\��Y������loop�񐔁B
	;[motion_define]�͕ʃ}�N���ł���Ƃ��ׂ��Ȃ̂��Ȃ�

	;�A�N�Z�����ς���H-1�@1�Ƃ��ϑ��I�ɍ�����̂͒��ڏ����������������ǁB
	;���l�ł̏������́ALayerMotionPlugin.ks�ɂ�������̂ق������₷�������B�Ă����킹���ق��������ˁH �ł��悭�킩��񑮐����邩��Ƃ肠�������̂܂�

	;���ʂ̗h��ȊO�̓}�N���ɓ����Ƃ�₱�������Ȃ�
	;�������
	[if    exp="mp.swaying_x"]
		[eval exp="f.vmax = 50" cond="mp.vmax == void"]
		[eval exp="f.qt = 200" cond="mp.time == void"]
		[eval exp="f.ac = -3"  cond="mp.accel == void"]
		;[motion_define name="�������" locatex="(-50,200,-3),(0,200,1),(50,200,-3),(0,200,1)" loop=9]
		[motion_define name="�L�����h�炵" locatex='&@"(${&f.vmax * -1},${&f.qt},${&f.ac}),(0,${&f.qt},1),(${&f.vmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},1)"' loop=%count|5]

	;�W�����v�p�̃}�N��"motion_jump"�����邯�ǃC�}�C�`�C�ɓ���Ȃ����玩��
	;�T�C�Y�ł������p�̖��O�ǂ����悤�ȁAloup��sml���Bup���Ə�ɒ��˂Ă�Ӗ��Ɍ����邵�Asml���Ɨ�����lo�Ƃ�₱������
	[elsif exp="mp.jump_ls"]
		;����̓T�C�Y�ʂɌŒ肷�邵���Ȃ��񂶂�Ȃ����H
		;[eval exp="f.qt = 100" cond="mp.time == void"]	
		;[eval exp="f.ac = -3"  cond="mp.accel == void"]
		[motion_define name="�L�����h�炵" locatey="(40,80,1),(-80,80,2),(25,120,2),(0,25,-1)" loop=%count|1]

	[elsif exp="mp.jump_bs"]
		;����̓T�C�Y�ʂɌŒ肷�邵���Ȃ��񂶂�Ȃ����H
		;[eval exp="f.qt = 100" cond="mp.time == void"]	
		;[eval exp="f.ac = -3"  cond="mp.accel == void"]
		[motion_define name="�L�����h�炵" locatey="(50,100,1),(-100,100,2),(30,150,2),(0,50,-1)" loop=%count|1]

	[elsif exp="mp.jump_us"]
		;����̓T�C�Y�ʂɌŒ肷�邵���Ȃ��񂶂�Ȃ����H
		;[eval exp="f.qt = 100" cond="mp.time == void"]	
		;[eval exp="f.ac = -3"  cond="mp.accel == void"]
		[motion_define name="�L�����h�炵" locatey="(50,100,1),(-100,100,2),(30,150,2),(0,50,-1)" loop=%count|1]

	[elsif exp="mp.vmax && mp.hmax"]
		[motion_define name="�L�����h�炵" locatex='&@"(${&mp.vmax * -1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax * -1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' locatey='&@"(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]

	;�c�w�薳����Ή��h��
	[elsif exp="mp.vmax && mp.hmax == 0"]
		;[motion_define name="�L�����h�炵" locatex='&@"(${&mp.vmax * -1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax * -1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]
		[motion_define name="�L�����h�炵" locatex='&@"(${&mp.vmax * -1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]

	;���w�薳����Ώc�h��
	[elsif exp="mp.vmax == 0 && mp.hmax "]
		;[motion_define name="�L�����h�炵" locatey='&@"(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]
		[motion_define name="�L�����h�炵" locatey='&@"(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]
	;�׈��p
	[elsif exp="mp.motion == 'yes'||mp.yes||mp.����||mp.������||mp.�x�d�r"]
		[motion_define name="�L�����h�炵" locatey="(50,700,1),(0,750,-1)" loop=%count|1]
	[elsif exp="mp.motion == 'no'||mp.no||mp.����||mp.�m�n"]
		[motion_define name="�L�����h�炵" locatex="(-25,250,1),(0,250,2),(25,250,-2),(0,350,-1)" loop=%count|1]

	;���Q���̈�ӏ��̂ݗp�Ȃ̂ő��L�����ł͎g���Ȃ�
	[elsif exp="mp.motion == 'standup_rig'"]
		[motion_define name="�L�����h�炵" locatex="(10,300,1),(-10,300,-1),(10,250,1),(-10,250,-1),(0,250,-1)" locatey="(-100,300,1),(-200,300,-1),(-300,250,1),(-350,250,-1),(-400,250,-1)" loop=1]

	[endif]


	[motion_start layer="&f.layer_quake" page=fore name="�L�����h�炵" wait=%wait|false]
	;[motion_start layer=%layer page=fore name="�L�����h�炵" wait=%wait|false]

	;�o�^���Ă����폜����
	;motion_erase��������H
	;[motion_erase name=�L�����h�炵]
	;�}�N��������������ˁH�@�����Ŕj������"motion_start_onetime"���Ă̂�����݂���������
	;[motion_undefine name="�L�����h�炵"]

[endmacro]

;�T���v����������@
;��()���ƂɃJ���}���K�v 1��()�����������Ƃ͌��̈ʒu�ɖ߂����߂�(0.����,�A�N�Z��)�ɂ��Ȃ��Ƃǂ����ɂ����Ƃ�ł��B
;	[motion_define name="�L�����h�炵" locatex="(200,500,-2),(0,500,2),(-200,500,-2),(0,500,2)" loop=%count|5]

; �����^�C�����[�V����(��񓮂�������̂Ă郂�[�V����)�ł̃}�N���Q�l LayerMotionPlugin.ks
;	[macro name="motion_quake"]
;	[eval exp="mp.layer = '0'"     cond="mp.layer === void"]
;	[eval exp="mp.page   = 'fore'" cond="mp.page  === void"]
;	[eval exp="mp.time   = 300"    cond="mp.time  === void"]
;	[eval exp="mp.hmax   = 10"     cond="mp.hmax  === void"]
;	[eval exp="mp.vmax   = 10"     cond="mp.vmax  === void"]
;	[eval exp="mp.speed  = 50"     cond="mp.speed === void"]
;	[eval exp="mp.loop   = 1"      cond="mp.loop  === void"]
;	[eval exp="mp.locatex = make_quake_array(mp.time, mp.hmax, mp.speed)"]
;	[eval exp="mp.locatey = make_quake_array(mp.time, mp.vmax, mp.speed, 2)"]
;	[motion_start_onetime *]
;	[endmacro]





;�L�����h�炵��~
[macro name=stop_quake_chara]
	;;�����L���������炱���͏�������ǉ���
	[if    exp="mp.ch == 'aka' || mp.ch == 'ch01'"][eval exp="f.layer_quake = f.layer_ch01"]
	[elsif exp="mp.ch == 'aoi' || mp.ch == 'ch02'"][eval exp="f.layer_quake = f.layer_ch02"]
	[elsif exp="mp.ch == 'mia' || mp.ch == 'ch03'"][eval exp="f.layer_quake = f.layer_ch03"]
	[elsif exp="mp.ch == 'mei' || mp.ch == 'ch04'"][eval exp="f.layer_quake = f.layer_ch04"]
	[elsif exp="mp.ch == 'syu' || mp.ch == 'ch05'"][eval exp="f.layer_quake = f.layer_ch05"]
	[elsif exp="mp.ch == 'kak' || mp.ch == 'ch06'"][eval exp="f.layer_quake = f.layer_ch06"]
	[elsif exp="mp.ch == 'miz' || mp.ch == 'ch07'"][eval exp="f.layer_quake = f.layer_ch07"]
	[elsif exp="mp.ch == 'syo' || mp.ch == 'ch08'"][eval exp="f.layer_quake = f.layer_ch08"]
	[elsif exp="mp.ch == 'zaa' || mp.ch == 'ch09'"][eval exp="f.layer_quake = f.layer_ch09"]
	[elsif exp="mp.ch == 'zab' || mp.ch == 'ch10'"][eval exp="f.layer_quake = f.layer_ch10"]
	[elsif exp="mp.ch == 'ai'  || mp.ch == 'ch11'"][eval exp="f.layer_quake = f.layer_ch11"]
	[else][eval exp="f.layer_quake = mp.layer"]
	[endif]


	;����:	���쒆�̃��[�V�������~�߂�B
	;����:	layer=�Ώۃ��C���ԍ�(0�`)
	;		void�őS���C�����ΏۂɁB
	;	page=�Ώۃy�[�W(fore|back)
	;		���[�V������K�p����y�[�W���w�肷��Bvoid��fore|back���~�߂�B
	;	name=���[�V������
	;		void�ŊY��layer/page�ɑ�����S�Ẵ��[�V�������ΏۂɁB
	;	lastpos=true(def)|false
	;		���C�����ŏI�ʒu�Ɉړ������邩�ǂ����B�ŏI�ʒu�Ƃ́A
	;		���̃��[�V�������X�L�b�v�����I���������ɓ��B����ʒu�B
	;		false�Ȃ炱�̃^�O�����s���ꂽ���_�ł̈ʒu�Œ�~����B

	[motion_stop layer="&f.layer_quake" page=fore name="�L�����h�炵" lastpos=true]
[endmacro]

;�L�����h�炵�̏I����҂�
[macro name=wq_chara]
	;;�����L���������炱���͏�������ǉ���
	[if    exp="mp.ch == 'aka' || mp.ch == 'ch01'"][eval exp="f.layer_quake = f.layer_ch01"]
	[elsif exp="mp.ch == 'aoi' || mp.ch == 'ch02'"][eval exp="f.layer_quake = f.layer_ch02"]
	[elsif exp="mp.ch == 'mia' || mp.ch == 'ch03'"][eval exp="f.layer_quake = f.layer_ch03"]
	[elsif exp="mp.ch == 'mei' || mp.ch == 'ch04'"][eval exp="f.layer_quake = f.layer_ch04"]
	[elsif exp="mp.ch == 'syu' || mp.ch == 'ch05'"][eval exp="f.layer_quake = f.layer_ch05"]
	[elsif exp="mp.ch == 'kak' || mp.ch == 'ch06'"][eval exp="f.layer_quake = f.layer_ch06"]
	[elsif exp="mp.ch == 'miz' || mp.ch == 'ch07'"][eval exp="f.layer_quake = f.layer_ch07"]
	[elsif exp="mp.ch == 'syo' || mp.ch == 'ch08'"][eval exp="f.layer_quake = f.layer_ch08"]
	[elsif exp="mp.ch == 'zaa' || mp.ch == 'ch09'"][eval exp="f.layer_quake = f.layer_ch09"]
	[elsif exp="mp.ch == 'zab' || mp.ch == 'ch10'"][eval exp="f.layer_quake = f.layer_ch10"]
	[elsif exp="mp.ch == 'ai'  || mp.ch == 'ch11'"][eval exp="f.layer_quake = f.layer_ch11"]
	[else][eval exp="f.layer_quake = mp.layer"]
	[endif]

	[motion_wait layer="&f.layer_quake" page=fore name="�L�����h�炵"]

[endmacro]








;=============================================================
;�w�i�h�炵�}�N��
;=============================================================

;�w�i�h�炵�}�N��
[macro name=quake_bg]
	;�O�ׂ̈�[move]�^�O��~
	[stopmove]
	;�ꉞ�����������������̂��H
	;motion_erase��������H
	;[motion_erase name=�w�i�h�炵]
	[eval exp="f.layer_quake = mp.layer" cond="mp.layer != void"]
	[eval exp="f.layer_quake = 0"        cond="mp.layer == void"]

	;time�����ĂȂ���������Ȃ��������ϕϐ��ɓ��꒼���Ȃ��Ƃ�
	[eval exp="f.qt = mp.time"]
	[eval exp="f.qt = 20" cond="mp.time == void"]

	;�A�N�Z��
	[eval exp="f.ac = mp.accel"]
	[eval exp="f.ac = 1" cond="mp.accel == void"]

	;���w�薳����Ώc�h��
	[if    exp="mp.vmax == void && mp.motion == void"]
		[motion_define name="�w�i�h�炵" locatey='&@"(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]
	;�c�w�薳����Ή��h��
	[elsif exp="mp.hmax == void && mp.motion == void"]
		[motion_define name="�w�i�h�炵" locatex='&@"(${&mp.vmax * -1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax * -1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]
	[elsif exp="mp.motion == 'xyure1'"]
		[motion_define name="�w�i�h�炵" locatex="(20,300,1),(-20,300,-1),(10,250,1),(-10,250,-1),(0,250,-1)"  loop=1]
	[elsif exp="mp.motion == 'xyure2'"]
		[motion_define name="�w�i�h�炵" locatex="(40,200,1),(-40,200,-1),(20,150,1),(-20,150,-1),(0,150,-1)"  loop=1]
	[else]
		[motion_define name="�w�i�h�炵" locatex='&@"(${&mp.vmax * -1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax *  1},${&f.qt},${&f.ac}),(${&mp.vmax * -1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' locatey='&@"(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax * -1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(${&mp.hmax *  1},${&f.qt},${&f.ac}),(0,${&f.qt},${&f.ac})"' loop=%count|5]
	[endif]

	;�T���v����������@
	;��()���ƂɃJ���}���K�v 1��()�����������Ƃ͌��̈ʒu�ɖ߂����߂�(0.����,�A�N�Z��)�ɂ��Ȃ��Ƃǂ����ɂ����Ƃ�ł��B
	;[motion_define name="�L�����h�炵" locatex="(200,500,-2),(0,500,2),(-200,500,-2),(0,500,2)" loop=%count|5]

	[motion_start layer="&f.layer_quake" page=fore name="�w�i�h�炵" wait=%wait|false]

[endmacro]

;�L�����h�炵��~
[macro name=stop_quake_bg]

	;����:	���쒆�̃��[�V�������~�߂�B
	;����:	layer=�Ώۃ��C���ԍ�(0�`)
	;		void�őS���C�����ΏۂɁB
	;	page=�Ώۃy�[�W(fore|back)
	;		���[�V������K�p����y�[�W���w�肷��Bvoid��fore|back���~�߂�B
	;	name=���[�V������
	;		void�ŊY��layer/page�ɑ�����S�Ẵ��[�V�������ΏۂɁB
	;	lastpos=true(def)|false
	;		���C�����ŏI�ʒu�Ɉړ������邩�ǂ����B�ŏI�ʒu�Ƃ́A
	;		���̃��[�V�������X�L�b�v�����I���������ɓ��B����ʒu�B
	;		false�Ȃ炱�̃^�O�����s���ꂽ���_�ł̈ʒu�Œ�~����B

	[motion_stop layer="&f.layer_quake" name="�w�i�h�炵" lastpos=true]
[endmacro]

;�L�����h�炵�̏I����҂�
[macro name=wq_bg]
	[motion_wait layer="&f.layer_quake" page=fore name="�L�����h�炵"]
[endmacro]

;=============================================================
;�L�����ړ��}�N��
;=============================================================
;�ړ��p�̂��g���������������Ȃ�

[macro name=move_chara]

	;�O�ׂ̈�[move]�^�O��~
	[stopmove]

	;;�����L���������炱���͏�������ǉ���
	;���̂܂܃L�����������ƂȂ񂾂�������Ȃ��Ȃ肻�������瑮����mp.chara�ɓ���B�O�ׂ̈Q����������Ƃ���
	[if    exp="mp.ch == 'aka' || mp.ch == 'ch01'"][eval exp="f.chnum = '01', f.layer_movech = f.layer_ch01 , f.pos_movech_x = f.pos_ch01_x , f.pos_movech_y = f.pos_ch01_y"]
	[elsif exp="mp.ch == 'aoi' || mp.ch == 'ch02'"][eval exp="f.chnum = '02', f.layer_movech = f.layer_ch02 , f.pos_movech_x = f.pos_ch02_x , f.pos_movech_y = f.pos_ch02_y"]
	[elsif exp="mp.ch == 'mia' || mp.ch == 'ch03'"][eval exp="f.chnum = '03', f.layer_movech = f.layer_ch03 , f.pos_movech_x = f.pos_ch03_x , f.pos_movech_y = f.pos_ch03_y"]
	[elsif exp="mp.ch == 'mei' || mp.ch == 'ch04'"][eval exp="f.chnum = '04', f.layer_movech = f.layer_ch04 , f.pos_movech_x = f.pos_ch04_x , f.pos_movech_y = f.pos_ch04_y"]
	[elsif exp="mp.ch == 'syu' || mp.ch == 'ch05'"][eval exp="f.chnum = '05', f.layer_movech = f.layer_ch05 , f.pos_movech_x = f.pos_ch05_x , f.pos_movech_y = f.pos_ch05_y"]
	[elsif exp="mp.ch == 'kak' || mp.ch == 'ch06'"][eval exp="f.chnum = '06', f.layer_movech = f.layer_ch06 , f.pos_movech_x = f.pos_ch06_x , f.pos_movech_y = f.pos_ch06_y"]
	[elsif exp="mp.ch == 'miz' || mp.ch == 'ch07'"][eval exp="f.chnum = '07', f.layer_movech = f.layer_ch07 , f.pos_movech_x = f.pos_ch07_x , f.pos_movech_y = f.pos_ch07_y"]
	[elsif exp="mp.ch == 'syo' || mp.ch == 'ch08'"][eval exp="f.chnum = '08', f.layer_movech = f.layer_ch08 , f.pos_movech_x = f.pos_ch08_x , f.pos_movech_y = f.pos_ch08_y"]
	[elsif exp="mp.ch == 'zaa' || mp.ch == 'ch09'"][eval exp="f.chnum = '09', f.layer_movech = f.layer_ch09 , f.pos_movech_x = f.pos_ch09_x , f.pos_movech_y = f.pos_ch09_y"]
	[elsif exp="mp.ch == 'zab' || mp.ch == 'ch10'"][eval exp="f.chnum = '10', f.layer_movech = f.layer_ch10 , f.pos_movech_x = f.pos_ch10_x , f.pos_movech_y = f.pos_ch10_y"]
	[elsif exp="mp.ch == 'ai'  || mp.ch == 'ch11'"][eval exp="f.chnum = '11', f.layer_movech = f.layer_ch11 , f.pos_movech_x = f.pos_ch11_x , f.pos_movech_y = f.pos_ch11_y"]
	[else][eval exp="f.layer_movech = mp.layer"]
	[endif]

	;�ړ����W��` addsub�I�ɂ�����悤�Ɍ����W��mp�����Z����Bmp�̑O�̃v���X�͐������̂��߂ɂ��Ă��
	[eval exp="f.movech_x = f.pos_movech_x + (+mp.x)" cond="mp.x != void"]
	[eval exp="f.movech_y = f.pos_movech_y + (+mp.y)" cond="mp.y != void"]
	;mp�������ĂȂ���΂��̂܂܂̍��W������
	[eval exp="f.movech_x = f.pos_movech_x" cond="mp.x == void"]
	[eval exp="f.movech_y = f.pos_movech_y" cond="mp.y == void"]


	;��`����Ă�ʒu�܂œ����������� x���W�ɂ̂ݑΉ�
	[if exp="mp.pos != void && mp.x == void"]
		;f.stdsize_ch**�̒��g�ɂ���ăT�C�Y�̕�������`
		[if    exp="f['stdsize_ch' + f.chnum] == 's'"][eval exp="f.move_stdsize = '_sml'"]
		[elsif exp="f['stdsize_ch' + f.chnum] == 'm'"][eval exp="f.move_stdsize = '_mid'"]
		[elsif exp="f['stdsize_ch' + f.chnum] == 'l'"][eval exp="f.move_stdsize = '_lag'"]
		[endif]

		;f.pos_ch**�̒��g������
		;����͌��݂�pos�̍��W�擾������Ӗ��Ȃ�����
		;[eval exp="f.move_pos = f['pos_ch' + f.chnum]"]

		;sf.ch**_�T�C�Y_�|�W�V�����@�̕ϐ�������
		[eval exp="f.movech_x = sf['ch' + f.chnum + f.move_stdsize + '_' + mp.pos]"]
	[endif]

[eval exp="f.movech_opa = 255" cond="mp.out == void || mp.in"]
[eval exp="f.movech_opa = 0"   cond="mp.out != void"]

	[move * layer="&f.layer_movech" time=%time|500 accel=%accel|1 path='&@"(${&f.movech_x},${&f.movech_y},${&f.movech_opa})"']
	[wm cond="mp.wm"]


[endmacro]







[return]
