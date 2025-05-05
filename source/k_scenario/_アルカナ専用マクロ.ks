;macro16_MagicBattle


;=============================================================
;
;=============================================================

;�C�x���g�A�����B
;����
;����x    �摜���S�̏���x���W�@�f�t�H�ł�640
;����y    �摜���S�̏���y���W�@�f�t�H�ł�360
;�I�_x    �摜���S�̏I�_x���W�@�f�t�H�ł�640
;�I�_y    �摜���S�̏I�_y���W�@�f�t�H�ł�360
;time
;accel
;smag    �����{��
;dmag    �I�_�{��
;srot    �����p�x
;drot    �����p�x�@�傫���قǂ��邮����
;]

[macro name=msgoff]
	;�V�X�e���{�^�����E�B���h�E����
	[sysbt_meswin clear]
[endmacro]


[macro name=���@]
	
;mm �R���t�B�O�ݒ�p����
[if exp="sf.efect"]
	[msgoff]

	;��]���S���摜�̒��S�ɂ��Ă���̂ŁA���W�ݒ���摜�̒��S���ǂ��ɂ��邩�A�ɂȂ�܂��B

	[eval exp="f.�摜���S����x = mp.����x" cond="&mp.����x != void"]
	[eval exp="f.�摜���S����y = mp.����y" cond="&mp.����y != void"]
	[eval exp="f.�摜���S�I�_x = mp.�I�_x" cond="&mp.�I�_x != void"]
	[eval exp="f.�摜���S�I�_y = mp.�I�_y" cond="&mp.�I�_y != void"]

	[eval exp="f.�摜���S����x = 640" cond="&mp.����x == void"]
	[eval exp="f.�摜���S����y = 360" cond="&mp.����y == void"]
	[eval exp="f.�摜���S�I�_x = 640" cond="&mp.�I�_x == void"]
	[eval exp="f.�摜���S�I�_y = 360" cond="&mp.�I�_y == void"]

	;���̂ق����p�x�������H
	[eval exp="f.���@���� = '����'" cond="&mp.�� != void"]
	[eval exp="f.���@���� = '����'" cond="&mp.�� != void ||( &mp.�� == void && &mp.�� == void )"]

	;�����Ȃ��Ȃ�܂ŏk��
	[affine layer=%layer|12  page=fore storage="&f.���@����" time=%time|2000  accel=%accel|1 cx=c cy=c sx="&f.�摜���S����x" sy="&f.�摜���S����y" smag=%smag|1 dmag=%dmag|0  srot=%srot|0  drot=%drot|1040 path='&@"(${&f.�摜���S�I�_x},${&f.�摜���S�I�_y})"']
	[waffine]

	[freeimage layer=%layer|12 page=fore cond="&mp.�����Ȃ� == void"]
	[freeimage layer=%layer|12 page=back cond="&mp.�����Ȃ� == void"]
[endif]

[endmacro]


;=============================================================
;
;=============================================================
;�C�x���g�\�荞�ݒ��݂̂Ɏg�p�B�����ł͕s�B��������
;
[macro name=���@�t���b�V��]
;mm �R���t�B�O�ݒ�p����
[if exp="sf.efect"]

	[msgoff]

	;���t���b�V��
	[backlay_c]
	[image storage="effect_black" layer=12 page=back visible=true]
	;�{�\�荞�ݒ��̃C�x���g���l�K�|�W�Ń��C��11�ɓ\��Bstorage�̎擾�ɖ�肠��ΏC���B
;	[image storage="&kag.back.layers['9'].Anim_loadParams.storage" layer=11 page=back visible=true left=0 top=0 rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0]
	[image storage="&kag.back.layers['0'].Anim_loadParams.storage" layer=11 page=back visible=true left=0 top=0 rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0]
;;;;	[endtrans_x time=50]
	[trans_c cross time=50]
	;[trans method=crossfade time=1][wt]

	;������
	[backlay_c]
	[layopt layer=12 page=back visible=false]
;;;;	[endtrans_x time=100]
	[trans_c cross time=100]

	[wait time=100]

	;�l�K�|�W�̂܂܃C�x���g�ɖ߂��i�l�K�|�W�摜�������j�Ɠr���ŃO���[�ɂȂ��Ă��܂��̂ŁA������x���t��
	[backlay_c]
	[image storage="effect_black" layer=12 page=back visible=true]
	;�{�\�荞�ݒ��̃l�K�|�W�C�x���g������
	[layopt layer=11 page=back visible=false]
;;;;	[endtrans_x time=50]
	[trans_c cross time=50]

	;������
	[backlay_c]
	[layopt layer=12 page=back visible=false]
;;;;	[endtrans_x time=500]
	[trans_c cross time=500]

	;[trans method=crossfade time=100][wt]
	[freeimage layer=12 page=fore][freeimage layer=12 page=back]
	[freeimage layer=11 page=fore][freeimage layer=11 page=back]
[endif]

[endmacro]

;=============================================================
;�ړ��n���o
;=============================================================
;������ƈ����ă_�b�V���Ƃ�
;
[macro name=dash]
	[if    exp="mp.ch == 'aka' || mp.ch == 'ak' || mp.ch == 'ch01'"][eval exp="f.chnum = '01', f.layer_dashch = f.layer_ch01 , f.pos_dashch_x = f.pos_ch01_x , f.pos_dashch_y = f.pos_ch01_y"]
	[elsif exp="mp.ch == 'aoi' || mp.ch == 'ao' || mp.ch == 'ch02'"][eval exp="f.chnum = '02', f.layer_dashch = f.layer_ch02 , f.pos_dashch_x = f.pos_ch02_x , f.pos_dashch_y = f.pos_ch02_y"]
	[elsif exp="mp.ch == 'mia' || mp.ch == 'mi' || mp.ch == 'ch03'"][eval exp="f.chnum = '03', f.layer_dashch = f.layer_ch03 , f.pos_dashch_x = f.pos_ch03_x , f.pos_dashch_y = f.pos_ch03_y"]
	[elsif exp="mp.ch == 'mei' || mp.ch == 'me' || mp.ch == 'ch04'"][eval exp="f.chnum = '04', f.layer_dashch = f.layer_ch04 , f.pos_dashch_x = f.pos_ch04_x , f.pos_dashch_y = f.pos_ch04_y"]
	[elsif exp="mp.ch == 'syu' || mp.ch == 'sy' || mp.ch == 'ch05'"][eval exp="f.chnum = '05', f.layer_dashch = f.layer_ch05 , f.pos_dashch_x = f.pos_ch05_x , f.pos_dashch_y = f.pos_ch05_y"]
	[elsif exp="mp.ch == 'kak' || mp.ch == 'ka' || mp.ch == 'ch06'"][eval exp="f.chnum = '06', f.layer_dashch = f.layer_ch06 , f.pos_dashch_x = f.pos_ch06_x , f.pos_dashch_y = f.pos_ch06_y"]
	[elsif exp="mp.ch == 'miz' || mp.ch == 'mi' || mp.ch == 'ch07'"][eval exp="f.chnum = '07', f.layer_dashch = f.layer_ch07 , f.pos_dashch_x = f.pos_ch07_x , f.pos_dashch_y = f.pos_ch07_y"]
	[elsif exp="mp.ch == 'syo' || mp.ch == 'sy' || mp.ch == 'ch08'"][eval exp="f.chnum = '08', f.layer_dashch = f.layer_ch08 , f.pos_dashch_x = f.pos_ch08_x , f.pos_dashch_y = f.pos_ch08_y"]
	[elsif exp="mp.ch == 'zaa' || mp.ch == 'za' || mp.ch == 'ch09'"][eval exp="f.chnum = '09', f.layer_dashch = f.layer_ch09 , f.pos_dashch_x = f.pos_ch09_x , f.pos_dashch_y = f.pos_ch09_y"]
	[elsif exp="mp.ch == 'zab' || mp.ch == 'za' || mp.ch == 'ch10'"][eval exp="f.chnum = '10', f.layer_dashch = f.layer_ch10 , f.pos_dashch_x = f.pos_ch10_x , f.pos_dashch_y = f.pos_ch10_y"]
	[elsif exp="mp.ch == 'ai'  || mp.ch == 'ai' || mp.ch == 'ch11'"][eval exp="f.chnum = '11', f.layer_dashch = f.layer_ch11 , f.pos_dashch_x = f.pos_ch11_x , f.pos_dashch_y = f.pos_ch11_y"]
	[else][eval exp="f.layer_dashch = mp.layer"]
	[endif]

	;�ړ����W��` addsub�I�ɂ�����悤�Ɍ����W��mp�����Z����Bmp�̑O�̃v���X�͐������̂��߂ɂ��Ă��
	[eval exp="f.dashch_x = f.pos_dashch_x"]
	[eval exp="f.dashch_y = f.pos_dashch_y"]
;	;mp�������ĂȂ���΂��̂܂܂̍��W������
;	[eval exp="f.dashch_x = f.pos_dashch_x" cond="mp.x == void"]
;	[eval exp="f.dashch_y = f.pos_dashch_y" cond="mp.y == void"]

;		;[stmdash layer="f.layer_dash"  page=fore  time=200  accel=5 cx=0 cy=0 path=(,,1)(,,1) opacity=255 blur=true blur_x=50 blur_y=0  cond=sf.efect]
;		[stmove layer="&f.layer_dashch"  page=fore  time=%time|0  accel=%accel|1 cx=0 cy=0 path='&@"(${&f.dashch_x},${&f.dashch_y},1)"' opacity=255 blur=true blur_x=50 blur_y=0  cond=sf.efect]
;		[wstmove]
[blur layer="&f.layer_dashch" page=fore blur_x=50 blur_y=0]
;����L�����ɒ��ڃu���[�����邾���ł����񂶂��

		[move_chara *]

[endmacro]

;=============================================================
;�ϐg�@���[�r�[�����ǂ��̃t�@�C���ɂ܂Ƃ߂�
;=============================================================

;���[�r�[�t�@�C����
;�ϐg �P�c��2�����͕ϐg�O�̕���
;hensin_aka_ha
;hensin_aka_se
;hensin_aoi_ha
;hensin_aoi_se
;hensin_mia_ha
;hensin_mia_se
;hensin_mei_ha
;hensin_mei_se

;�ϐg���� �P�c��2�����͕ϐg�O�̕���
;hensin_off_aka
;hensin_off_aoi
;hensin_off_mia
;hensin_off_mei

;�����̃G���h���[�r�[�p���ƃX�L�b�v��~�Ƃ������Ⴄ����ʂɌ��}�N������
[macro name=movie_hensin0]
	;�V�X�e���{�^�����E�B���h�E����
	[sysbt_meswin clear]
;	[stopbgm]
	[stopse_all cond="mp.stopse != void"]
	;�X�L�b�v���Ă���Ƃ񂶂Ⴄ����X�L�b�v�̉���
;	[cancelskip]
	; �r�f�I�̑�����ݒ�
	[video visible=true left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" mode=overlay loop=false]
	[openvideo storage=%storage]
	; �r�f�I�̍Đ�
	[playvideo]
	;���[�r�[�̉��ʕύX
	[if exp="sf.bgmplay == 1"]
		;[video volume="&kag.bgm.currentBuffer.volume2"]
		;[video volume=60]
		;�����bgm�Ɠ����ɂȂ邩�ȁH
		;����A�R���t�B�O��ʂɈ�x������Ȃ��Ń��[�r�[�ɂȂ�����sf.dummy_bgmopt��void�̂܂܂ŉ���0����c�c
		;void�Ȃ�R���t�B�O�̂Ɠ������������Ă���
		[eval exp="sf.dummy_bgmopt = kag.bgm.currentBuffer.volume2" cond="sf.dummy_bgmopt == void"]
		[video volume="&(sf.dummy_bgmopt/1000)"]
	[elsif exp="sf.bgmplay == 0"]
		[video volume=0]
	[endif]
	;�X�L�b�v�\
	[wv canskip=true]
	;mode�g�����Ƃ��͂����ƒ�~���߂Ȃ��Ǝ���movie���Đ��ł��Ȃ��݂���
	[stopvideo]

[endmacro]





;�ϐg
;�ǂ̕�������ϐg���́A�����}�N�����Œ�`���������������őł�������̂ŁA�L��������mp�Ŏw��
[macro name=movie_hensin]

	;�����S�������Ƃ����ق���������
	[chara_int_all][trans_c cross time=0]

	[if    exp="mp.aka && f.ch01_cos == 'ha'"][movie_hensin0 * stopse storage="hensin_aka_ha.mpg"][eval exp="sf.movie14= 1"]
	[elsif exp="mp.aka && f.ch01_cos == 'se'"][movie_hensin0 * stopse storage="hensin_aka_se.mpg"][eval exp="sf.movie15= 1"]
	[elsif exp="mp.aoi && f.ch02_cos == 'ha'"][movie_hensin0 * stopse storage="hensin_aoi_ha.mpg"][eval exp="sf.movie16= 1"]
	[elsif exp="mp.aoi && f.ch02_cos == 'se'"][movie_hensin0 * stopse storage="hensin_aoi_se.mpg"][eval exp="sf.movie17= 1"]
	[elsif exp="mp.mia && f.ch03_cos == 'ha'"][movie_hensin0 * stopse storage="hensin_mia_ha.mpg"][eval exp="sf.movie18= 1"]
	[elsif exp="mp.mia && f.ch03_cos == 'se'"][movie_hensin0 * stopse storage="hensin_mia_se.mpg"][eval exp="sf.movie19= 1"]
	;���̃��[�r�[�t�@�C�����A���������Ǒ����킹��se�\�L�Ȃ̂Œ���
	[elsif exp="mp.mei && f.ch04_cos == 'ha'"][movie_hensin0 * stopse storage="hensin_mei_ha.mpg"][eval exp="sf.movie20= 1"]
	[elsif exp="mp.mei && f.ch04_cos == 'ja'"][movie_hensin0 * stopse storage="hensin_mei_se.mpg"][eval exp="sf.movie21= 1"]
	[endif]
[endmacro]


;�ϐg����
[macro name=movie_hensin_off]
	;�����S�������Ƃ����ق���������
	[chara_int_all][trans_c cross time=0]
	[if    exp="mp.aka"][movie_hensin0 * storage="hensin_off_aka.mpg"][eval exp="sf.movie22= 1"]
	[elsif exp="mp.aoi"][movie_hensin0 * storage="hensin_off_aoi.mpg"][eval exp="sf.movie23= 1"]
	[elsif exp="mp.mia"][movie_hensin0 * storage="hensin_off_mia.mpg"][eval exp="sf.movie24= 1"]
	[elsif exp="mp.mei"][movie_hensin0 * storage="hensin_off_mei.mpg"][eval exp="sf.movie25= 1"]
	[elsif exp="mp.trio"][movie_hensin0 * storage="hensin_off_3character.mpg"][eval exp="sf.movie26= 1"]
	[endif]
[endmacro]

;=============================================================
;���@�U���@���[�r�[�����ǂ��̃t�@�C���ɂ܂Ƃ߂�
;=============================================================
;mm ���[�r�[���������p
[macro name=movie_Magic_�G�����v�V�I��]		[eval exp="sf.movie01= 1"][se buf=0 storage="seB057"][movie_hensin0 * storage="�o���E�u�������g.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_�G�N�X�v���[�W�I��]	[eval exp="sf.movie02= 1"][movie_hensin0 * storage="�G�N�X�v���[�W�I��.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_�o���E�u�������g]	[eval exp="sf.movie03= 1"][se buf=0 storage="seJ008"][movie_hensin0 * storage="�o���E�u�������g.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_�C�N���e�B]		[eval exp="sf.movie04= 1"][movie_hensin0 * storage="�C�N���e�B.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_�u�[�N���G]		[eval exp="sf.movie05= 1"][movie_hensin0 * storage="�u�[�N���G.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_�W���W������]		[eval exp="sf.movie06= 1"][movie_hensin0 * storage="�W���W������.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_�\���C��]		[eval exp="sf.movie07= 1"][movie_hensin0 * storage="�\���C��.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_�o���A���g]		[eval exp="sf.movie08= 1"][movie_hensin0 * storage="�o���A���g.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_�t���[���E�T�N��]	[eval exp="sf.movie09= 1"][movie_hensin0 * storage="�t���[���E�T�N��.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_�����~�G�[��]		[eval exp="sf.movie10= 1"][movie_hensin0 * storage="�����~�G�[��.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_��쐅����]		[eval exp="sf.movie11= 1"][movie_hensin0 * storage="��쐅����.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_��Βf��e�N���{]	[eval exp="sf.movie12= 1"][movie_hensin0 * storage="��Βf��e�N���{.mpg"][wait time=300][endmacro]
[macro name=movie_Magic_�ŎE�ÊA���Ō�]		[eval exp="sf.movie13= 1"][movie_hensin0 * storage="�ŎE�ÊA���Ō�.mpg"][wait time=300][endmacro]

;=============================================================
;���@�U���@���[�r�[����Ȃ����
;=============================================================

[macro name=Magic_�J�N�G���~�Y�`]
	[se buf=0 storage=%se]
;	[img_c storage="xig03_cut008_06_2" layer=%layer|10 x=0 y=0]

	[img_c storage=%image layer=%layer|10 x=0 y=0]
	[trans_c wipe  time=300  cond="mp.hit == void"]
	[trans_c wipe_r time=300 cond="mp.hit != void"]

	[chara_int layer=%layer|10]
	[trans_c wipe  time=300  cond="mp.hit == void"]
	[trans_c wipe_r time=300 cond="mp.hit != void"]

[endmacro]



[macro name=Magic_�������S�w]
;	[Magic_�J�N�G���~�Y�` * se="SE1279" image="xig03_cut007_04"]
;�V�X�e���{�^�����E�B���h�E����
[sysbt_meswin clear]

	[se buf=0 storage="SE1279"]

	[img_c storage="xig03_cut007_04" layer=%layer|10 x=0 y=0]
	[trans_c wipe  time=300  cond="mp.hit == void"]
	[trans_c wipe_r time=300 cond="mp.hit != void"]

	[chara_int layer=%layer|10]
	[trans_c wipe  time=300  cond="mp.hit == void"]
	[trans_c wipe_r time=300 cond="mp.hit != void"]


[endmacro]

[macro name=Magic_����������]
	;SE���@SE1272
;	[Magic_�J�N�G���~�Y�` * se="SE1509" image="xig03_cut001_03"]


	;�V�X�e���{�^�����E�B���h�E����
	[sysbt_meswin clear]

	[se buf=0 storage="SE1509"]
;	[white_toplayer][trans_c bang time=300 vague=30]
;	[chara_int_top]
	[img_c storage="xig03_cut001_03" layer=%layer|10 x=0 y=0]
	[trans_c bang  time=300 vague=50]
	[wait time=300]
	[chara_int layer=%layer|10]
	[trans_c bang  time=300 vague=50]

	[quake_bg vmax=0 hmax=40 time=20 accel=1 count=1 wait=true cond="mp.nohit == void"]
	[quake_bg vmax=0 hmax=20 time=20 accel=1 count=1 wait=true cond="mp.nohit == void"]
	[quake_bg vmax=0 hmax=10 time=20 accel=1 count=1 wait=true cond="mp.nohit == void"]

[endmacro]
;=============================================================
;���@����
;=============================================================
;�S�g������悤�ɒ��T�C�Y�Œ�
[macro name=���@����]
	[se buf=0 storage="SE3603"]
	[���t��]

	[if    exp="mp.aka_p1"][pimage storage="ch01_m_base_d0_p1wht" layer="&f.layer_ch01" page=back dx=0 dy=0 visible=true]
	[elsif exp="mp.aka_p2"][pimage storage="ch01_m_base_d0_p2wht" layer="&f.layer_ch01" page=back dx=0 dy=0 visible=true]
	[elsif exp="mp.aoi_p1"][pimage storage="ch02_m_base_d0_p1wht" layer="&f.layer_ch02" page=back dx=0 dy=0 visible=true]
	[elsif exp="mp.aoi_p2"][pimage storage="ch02_m_base_d0_p2wht" layer="&f.layer_ch02" page=back dx=0 dy=0 visible=true]
	[elsif exp="mp.aoi_p3"][pimage storage="ch02_m_base_d0_p2wht" layer="&f.layer_ch02" page=back dx=0 dy=0 visible=true]
	[elsif exp="mp.mia_p1"][pimage storage="ch03_m_base_d0_p1wht" layer="&f.layer_ch03" page=back dx=0 dy=0 visible=true]
	[elsif exp="mp.mia_p2"][pimage storage="ch03_m_base_d0_p2wht" layer="&f.layer_ch03" page=back dx=0 dy=0 visible=true]
	[endif]
	[trans_c bt time=1000]
	;�C����̓X�N���v�g��ɓ\��
	;[std_aka m ma p1 f05 ce][trans_c bt time=1000]
[endmacro]






;=============================================================
;�g�䉉�o
;=============================================================

[macro name=HAMON]

;	[eval exp="f.�摜���S�I�_x = 640"]
;	[eval exp="f.�摜���S�I�_y = 360"]

	;//�r�d�F���H�����ʂɗ����鉹
	[se buf=0 storage="seD027"]
;	[bg storage="effect_white"]
;	[bg storage="effect_black"]
;	[trans_c wave3 vague=10 time=500]


	[bg storage=%storage blur_x=30 blur_y=30]
	;[extrans_c wave]
	[trans_c wave3 vague=10 time=1000]
;	[trans_c bang vague=10]


;[layopt layer=1  page=fore opacity=200 index=2000]
;;�w�i�u���[
;[blur layer=1 page=fore blur_x=30 blur_y=30]
;[affine layer=%layer|1  page=fore storage=%storage time=%time|300  accel=%accel|1 cx=c cy=c sx="&f.�摜���S����x" sy="&f.�摜���S����y" smag=%smag|1 dmag=%dmag|1.1  srot=%srot|0  drot=%drot|0 path='&@"(${&f.�摜���S�I�_x},${&f.�摜���S�I�_y})"']
;[waffine]
;[affine layer=%layer|1  page=fore storage=%storage time=%time|300  accel=%accel|-5 cx=c cy=c sx="&f.�摜���S����x" sy="&f.�摜���S����y" smag=%smag|1.1 dmag=%dmag|1  srot=%srot|0  drot=%drot|0 path='&@"(${&f.�摜���S�I�_x},${&f.�摜���S�I�_y})"']
;[waffine]

	[bg storage=%storage]
	;[extrans_c wave]
	[trans_c wave3 vague=10]


[endmacro]

;=============================================================

[return]


