;================================================
;�f�o�b�O�p�J���{�^��
;================================================
;�e�L�X�g�ƃ{�^���ʒu���^�C�g�����Ƃɕς���̖ʓ|������}�N����

[macro name=�f�o�b�O�p�J���{�^��]

	[if exp="kag.debugMenu.visible == true"]
		[eval exp="tf.debugX1 = int + mp.x"]
		;�I���I�t�{�^���̕�
		[eval exp="tf.debugW = 122 + 8"]
		[eval exp="tf.debugX2 = tf.debugX1 + tf.debugW"]
		[eval exp="tf.debugX3 = tf.debugX1 + tf.debugW * 2"]
		[eval exp="tf.debugY1 = int + mp.y"]
		[eval exp="tf.debugY2 = tf.debugY1 + 7"]


		[locate   x="&tf.debugX1" y="&tf.debugY1"][button graphic="cnf_on.png"   target=*debug_on]
		[locate   x="&tf.debugX2" y="&tf.debugY1"][button graphic="cnf_off.png"  target=*debug_off]
		[nowait][ptext face="�l�r �o�S�V�b�N" layer=base page=fore x="&tf.debugX3" y="&tf.debugY2" size=20 text="������̓f�o�b�O�p��z�J���t���O�I���I�t�{�^���ł�"][endnowait]
	[endif]

[endmacro]

;================================================
;CGVIEW
;================================================

;CG�\���̕����}�N���ɂ��Ă���
[macro name=cgview]
		[layopt layer=message0 left=0 top=0 visible=false]
	[backlay_c]
	[image storage=%storage layer=1 page=back visible=true opacity=255 left=%x|0 top=%y|0]
	;�ǉ��ǂ݂ł���悤�ɂ��Ă���
	[pimage storage=%ch1 layer=%layer|1 page=back visible=true opacity=%ch1_opa|255 dx=%ch1_x|0 dy=%ch1_y|0 cond="mp.ch1 != void"]
	[trans time=%time|150 method=crossfade]
	[wt_c]
	[p]
[endmacro]

;�w�i���ʂ̓\��p
[macro name=cgview2]

	[backlay_c]
	[image storage=%bg      layer=0 page=back visible=true opacity=255 left=%bgx|0 top=%bgy|0]
	[image storage=%storage layer=1 page=back visible=true opacity=255 left=%x|0 top=%y|0]
	[trans time=%time|150 method=crossfade]
	[wt_c]
	[p]
[endmacro]
;�L�����ʕ\��؂�ւ��p
[macro name=cgview3]

	[if exp="mp.�f�o�b�O"]


		[position layer=0 page=fore left=0 top=0 width="&kag.scWidth" height="&kag.scHeight" frame="" color=0x000000 opacity=0 marginl=10 margint=10 marginr=0 marginb=0 draggable=false visible=true]

		[layopt layer=message0 left=0 top=0 visible=true]
		[current layer=message0]
		[er]
		;�f�o�b�O�����玩���ŕ��Ȃ����Ȃ��B[r]
		�������[�X���́mcgview3�n�}�N����mp�f�o�b�O���������ƁI��[r]
	�`�F�b�N���鐬���ϐ��@[emb exp="tf.base + tf.ch1 + tf.ch2 + tf.ch3 + tf.ch4 + tf.ch5"][r]
		�摜ch1�@[emb exp="tf.CGnum + '_face' + tf.state_ch1 + tf.ch1"][r]
		[if exp="tf.ch2 != void"]
		�摜ch2�@[emb exp="tf.CGnum + '_face' + tf.state_ch2 + tf.ch2"][r]
		[endif]
		[if exp="tf.ch3 != void"]
		�@�摜ch3�@[emb exp="tf.CGnum + '_face' + tf.state_ch3 + tf.ch3"][r]
		[endif]

	[endif]

	[backlay_c]
	[image storage="&tf.base" layer=1 page=back visible=true opacity=255 left=%x|0 top=%y|0]
		;�����������ł���������H
		[if exp="mp.���C����"]
		;���C�����ɂ���Ȃ炱��ňꉞ���Ԃ͍D���ɕς����邪�B�h�炵�Ƃ��ړ�����Ƃ��Ɋ炪�����c�����Ⴄ
;����͂���Ȃ����H
; mcolor="&f.evcg_mcolor" mopacity=%addopa|200 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr"
; mcolor="&f.evcg_mcolor" mopacity=%addopa|200 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr"
; mcolor="&f.evcg_mcolor" mopacity=%addopa|200 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr"
; mcolor="&f.evcg_mcolor" mopacity=%addopa|200 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr"
; mcolor="&f.evcg_mcolor" mopacity=%addopa|200 grayscale="&f.evcg_grayscale" rgamma="&f.evcg_rgamma" ggamma="&f.evcg_ggamma"  rfloor="&f.evcg_rfloor" gfloor="&f.evcg_gfloor" bfloor="&f.evcg_bfloor" rceil="&f.evcg_rceil" gceil="&f.evcg_gceil" bceil="&f.evcg_bceil" flipud="&f.evcg_flipud" fliplr="&f.evcg_fliplr"
		[image * storage="&tf.CGnum + '_face' + tf.state_ch1 + tf.ch1"  layer="&tf.ch1_layer" page=back visible=true opacity=%ch1_opa|255 left=%ch1_x|0 top=%ch1_y|0 cond="tf.ch1 != void"]
		[image * storage="&tf.CGnum + '_face' + tf.state_ch2 + tf.ch2"  layer="&tf.ch2_layer" page=back visible=true opacity=%ch2_opa|255 left=%ch2_x|0 top=%ch2_y|0 cond="tf.ch2 != void"]
		[image * storage="&tf.CGnum + '_face' + tf.state_ch3 + tf.ch3"  layer="&tf.ch3_layer" page=back visible=true opacity=%ch3_opa|255 left=%ch3_x|0 top=%ch3_y|0 cond="tf.ch3 != void"]
		[image * storage="&tf.CGnum + '_face' + tf.state_ch4 + tf.ch4"  layer="&tf.ch4_layer" page=back visible=true opacity=%ch4_opa|255 left=%ch4_x|0 top=%ch4_y|0 cond="tf.ch4 != void"]
		[image * storage="&tf.CGnum + '_face' + tf.state_ch5 + tf.ch5"  layer="&tf.ch5_layer" page=back visible=true opacity=%ch5_opa|255 left=%ch5_x|0 top=%ch5_y|0 cond="tf.ch5 != void"]
		[else]
		[pimage storage="&tf.CGnum + '_face' + tf.state_ch1 + tf.ch1"  layer=%layer|1 page=back visible=true opacity=%ch1_opa|255 dx=%ch1_x|0 dy=%ch1_y|0 cond="tf.ch1 != void"]
		[pimage storage="&tf.CGnum + '_face' + tf.state_ch2 + tf.ch2"  layer=%layer|1 page=back visible=true opacity=%ch2_opa|255 dx=%ch2_x|0 dy=%ch2_y|0 cond="tf.ch2 != void"]
		[pimage storage="&tf.CGnum + '_face' + tf.state_ch3 + tf.ch3"  layer=%layer|1 page=back visible=true opacity=%ch3_opa|255 dx=%ch3_x|0 dy=%ch3_y|0 cond="tf.ch3 != void"]
		[pimage storage="&tf.CGnum + '_face' + tf.state_ch4 + tf.ch4"  layer=%layer|1 page=back visible=true opacity=%ch4_opa|255 dx=%ch3_x|0 dy=%ch3_y|0 cond="tf.ch4 != void"]
		[pimage storage="&tf.CGnum + '_face' + tf.state_ch5 + tf.ch5"  layer=%layer|1 page=back visible=true opacity=%ch5_opa|255 dx=%ch3_x|0 dy=%ch3_y|0 cond="tf.ch5 != void"]
		[endif]

	[trans time=%time|150 method=crossfade]
	[wt_c]

	;�f�o�b�O�p�}�}�L�^�{�^���B�I���Ȃ�CG���S�������Z�ɂȂ�
	[if exp="sf.evcgoff == 1"]
		;[layopt layer=%layer|0  page=back mcolor=0x00000 mopacity=220]
		[pimage storage="effect_black" layer=%layer|0 page=back opacity=244 dx=0 dy=0]
	[endif]

	[p]

[endmacro]

;CG�\���f�J�C�̗p�@P����
[macro name=cgview_os]
	[backlay_c]

	[image storage=%storage layer=1 page=back visible=true opacity=255 left=%x|0 top=%y|0]
	[trans time=%time|150 method=crossfade]
	[wt_c]
[endmacro]

;================================================
;STDVIEW
;================================================

;�Ȃ񂩂�����ƊԔ��������ǖ������͂���
[macro name=std_bt]

	[eval exp=%f]

	;���݂��Ȃ��t�@�C���Ȃ�O���[�A�E�g�ŉ����Ȃ����Ȃ��Ƃ����Ȃ��@�ǂ����悤���Ȃ��ʃ}�N���ɂ����ق��������̂��H
	;�����Ō�else�ő��v�Htf.bt_check_ok���I���ň���������Ǝv���񂾂���
	[if exp="tf.bt_check_ok == 0"]
	;	[pimage dx=%x-200 dy=%y-200 storage=%graphic layer="&tf.layer_base" page=fore visible=true sx="&sf.std_clipleft" sy="&sf.std_cliptop" sw="&sf.std_clipwidth" sh="&sf.std_clipheight" mcolor=0x00000 mopacity=255 opacity=255]
	[elsif exp="tf[tf.set] == tf.con"]
		[locate x=%x y=%y][button graphic="b_std_bt" target=%target exp=%exp recthit=true clickse="se_sys011"]
		[image left=%x top=%y storage=%graphic layer=%layer page=fore visible=true clipleft="&sf.std_clipleft" cliptop="&sf.std_cliptop" clipwidth="&sf.std_clipwidth" clipheight="&sf.std_clipheight" opacity=255]
		[eval exp="tf.count += 1"]
		;�E�B���h�E�����p���W
		[eval exp="tf['onbt_x'+tf.count] = mp.x, tf['onbt_y'+tf.count] = mp.y"]
	[else]
		[locate x=%x y=%y][button graphic=%graphic   target=%target exp=%exp recthit=false clickse="se_sys011"]
	[endif]


	;���̃{�^���O�ɃI���ɂ��Ă���
	[eval exp="tf.bt_check_ok = 1"]

[endmacro]

;//==//==//==//==//==//==//==//==//==//==//==//==//==//==//==
;�Y���t�@�C���̗L���̃`�F�b�N�p�@�T�u���[�`�����Ŏg��
@iscript
function existentImage_bt_check(storage)
{
	if(storage=="")
		return false;
		
	var test;
	
	if(test = storage + ".tlg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".png", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".bmp", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".jpg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(test = storage + ".jpeg", Storages.isExistentStorage(test))
	{
		storage = test;
	}
	else if(Storages.isExistentStorage(storage))
	{
		dm("existentImage:"+"�C���[�W�t�@�C���Ɋg���q�����邱�Ƃ͐�������Ă��܂���B("+storage+")");
	}
	else
	{
		////m �����ŃR���\�[���Ƀ��b�Z�[�W�o�Ă邩�炱����info�����Ώo�邩
		//dm("existentImage:"+storage+"�͑��݂��܂���");
		//System.inform("�����@"+storage+"�@�͑��݂��܂���");
		tf.bt_check_ok = 0;
		return false;
	}
	return storage;
}
@endscript
;//==//==//==//==//==//==//==//==//==//==//==//==//==//==//==

[macro name=bt_check]
	@if exp="(existentImage_bt_check(mp.storage)!==false)"
	[image storage=%storage layer=base page=back visible=false left=0 top=0]
	[eval exp="tf.bt_check_ok = 1"]
	@endif
	[freeimage layer=base page=fore][freeimage layer=base page=back]
[endmacro]



;================================================
;�V�[���`���C�X
;================================================

;[macro name=play_choice_bt]
;	[eval exp=%f]
;	[if exp="tf[tf.set] == tf.con"]
;		[locate x=%x y=%y][button graphic="b_sr_choice" target=%target exp=%exp recthit=true clickse="se_sys011"]
;		[image left=%x top=%y storage=%graphic layer=%layer page=fore visible=true clipleft="&sf.play_clipleft" cliptop="&sf.play_cliptop" clipwidth="&sf.play_clipwidth" clipheight="&sf.play_clipheight" opacity=255]
;	[else]
;		[locate x=%x y=%y][button graphic=%graphic   target=%target exp=%exp recthit=false clickse="se_sys011"]
;	[endif]
;[endmacro]

;�{�^�����T���l���ړ��\��
;�{�^����������摜��storage����Ȃ���graphic�ɂ��Ă�����
;�\�����邩�ǂ����̏�������͂�₱�����Ȃ邩��}�N���ɂ͓��ꍞ�܂Ȃ�
[macro name=choice_bt]
[if exp="tf.sys_sub == 0"]

	;��ʊO�ɓ\�荞��
	;�x�[�X�摜 ���ʂ̔��x�[�X�ɂ���CG���d�˂�ꍇ
;	[image storage="b_sr_choice_base" layer=%layer page=fore visible=true left="&tf.choice_bt_x" top=%y opacity=255]
;	;�C�x���gCG��pimage�@clip�ʒu�̓J�b�g�ɂ���Ē���
;	;pimage����Ȃ���΃Z�s�A�Ƃ��ɏo����񂾂��ǂȂ��B��Ƀm�C�Y�d�˂邩��2���������Ⴄ��3���ړ������Ȃ��Ƃ����Ȃ����B���̂܂܂ł������B
;	[pimage storage=%gra layer=%layer page=fore visible=true dx="&tf.box_m_x" dy="&tf.box_m_y" sx=%sx sy=%sy sw="&tf.box_sw" sh="&tf.box_sh" opacity=255]

	;�ϐ��������t���O���Z
	[eval exp="tf.count += 1"]

	;�x�[�X�摜 CG��؂蔲���ăx�[�X�ɂ���ꍇ
	[if    exp="mp.onenter || tf['boxset0'+tf.count] == 1"]
		[image storage=%gra layer=%layer page=fore visible=true left="&tf.choice_bt_x" top=%y opacity=255 clipleft=%cl  cliptop=%ct   clipwidth="&tf.box_sw" clipheight="&tf.box_sh"]
	[elsif exp="mp.onenter == void"]
		[image storage=%gra layer=%layer page=fore visible=true left="&tf.choice_bt_x" top=%y opacity=255 clipleft=%cl  cliptop=%ct   clipwidth="&tf.box_sw" clipheight="&tf.box_sh" grayscale=true rgamma=1.3 ggamma=1.1]
	[endif]


	;�I���G���^�[�p�摜����Z60����pimage�@image�Ŕ��ɉ��Z�ł��������ǖʓ|������摜����
	[if    exp="mp.onenter"]
		;�X�N���[���̂������҂�����ɐ؂蔲���Ɖ摜�̒[�����Ƀm�C�Y�������Ⴄ����x�[�X�Ɠ����T�C�Y�̉摜�ɂ���B
		;clip�����摜�ɂ����pimag����Ƃ��́A�؂蔲���O�̈ʒu�ɓ\�荞�܂Ȃ��Ƃ����Ȃ��Bclipleft cliptop������dx dy���Ȃ��Ƃ����Ȃ��炵���B
		;[pimage storage="b_sr_choice_onenter" layer=%layer page=fore visible=true dx=0 dy=0   mode=screen opacity=90]
		[pimage storage="b_sr_choice_onenter" layer=%layer page=fore visible=true dx=%cl dy=%ct   mode=screen opacity=90]
	;tf.boxset0[n]���I���ł͂Ȃ��Ȃ�A�I�t�p�摜����Z60����pimage
	[elsif exp="tf['boxset0'+tf.count] == 0  && mp.onenter == void"]
;		[pimage storage="b_sr_choice_off" layer=%layer page=fore visible=true dx="&tf.box_m_x" dy="&tf.box_m_y" mode=mul opacity=153]
		[pimage storage="b_sr_choice_off" layer=%layer page=fore visible=true dx=%cl dy=%ct mode=mul opacity=153]
	;tf.boxset0[n]���I���Ȃ�c�cpimage�����ŕ\��
	[elsif exp="tf['boxset0'+tf.count] == 1"]
	[endif]

		;�J�o�[����ԏ�ɓ\�荞��
		;[pimage storage="b_sr_choice_cover" layer=%layer page=fore visible=true dx=0 dy=0 opacity=255]
		[pimage storage="b_sr_choice_cover" layer=%layer page=fore visible=true dx=%cl dy=%ct opacity=255]

	[if    exp="tf.btset == 1"]
		;����}�N���ɂ����ƃ_������[choice_bt]�œ\��Ȃ����ƃ{�^�����X�Ɛ������ꂿ�Ⴄ����
		;kag.process�ɕϐ��g������''�s�v�Ȃ̂�
		;[locate x="&tf.box_x[1]" y=%y][button graphic="b_sr_choice_bt.png"  target=%target onenter="kag.process(,tf['onentertarget0'+tf.count])" onleave="kag.process('','*onleave')" recthit=true]

		;box�̃i���o�[��\�荞�݂������ǂ�������I���J�[�\���̂��тɕς�����Ⴄ�Ȃ�
		[pimage storage="&'b_sr_choice_num0' + tf.count" layer=%layer page=fore visible=true dx=%cl dy=%ct opacity=255]

		;�ړ�
		[move layer=%layer time=%time|500 accel=-3 path='&@"(${&tf.box_x[1]},${&mp.y},255)"'][wm canskip=false]
	[endif]
[endif]
[endmacro]

;�V�[����z���[�ł̔���
	;�I��邾������Ȃ��Ĕ�΂��\��������񂾂Ȃǂ�����
	;box���ƂɍĐ��ςݓ����Α������킩��₷�����ǁA1�̃}�N������邾���ōς܂������B
	;�������璼�ڃW�����v�����Ⴄ���牉�o�����Ă���ǂ����悤�Ȃ�
	;*scene_start����Ȃ���boxend���x�������Ă����ɔ�΂����B����ł����̃t�@�C���ɔ�Ԃƌ���Ȃ��񂾂��
[macro name=scene_choice_jumpset]

	;�V�[�����Đ��ς݃t���O���Z
	[eval exp="tf.boxcount += 1"]

	;���̃V�[�����I���Ȃ���

	;�}�b�N�X��4������I�������̂�4�Ƃ͌����
	;�g�ݍ��킹�p�^�[��
	;1234
	;123
	;124
	;134
	;234
	;12
	;13
	;14
	;23
	;24
	;34
	[if    exp="tf.boxset01 == 1 && tf.boxset02 == 1 && tf.boxset03 == 1 && tf.boxset04"]
		[if    exp="tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box02 , tf.nextbox_label = tf.label_box02"][jump target=*boxend]
		[elsif exp="tf.boxcount == 2"][eval exp="tf.nextbox = tf.storage_box03 , tf.nextbox_label = tf.label_box03"][jump target=*boxend]
		[elsif exp="tf.boxcount == 3"][eval exp="tf.nextbox = tf.storage_box04 , tf.nextbox_label = tf.label_box04"][jump target=*boxend]
		[endif]
	[elsif exp="tf.boxset01 == 1 && tf.boxset02 == 1 && tf.boxset03 == 1"]
		[if    exp="tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box02 , tf.nextbox_label = tf.label_box02"][jump target=*boxend]
		[elsif exp="tf.boxcount == 2"][eval exp="tf.nextbox = tf.storage_box03 , tf.nextbox_label = tf.label_box03"][jump target=*boxend]
		[endif]
	[elsif exp="tf.boxset01 == 1 && tf.boxset02 == 1 && tf.boxset04 == 1"]
		[if    exp="tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box02 , tf.nextbox_label = tf.label_box02"][jump target=*boxend]
		[elsif exp="tf.boxcount == 2"][eval exp="tf.nextbox = tf.storage_box04 , tf.nextbox_label = tf.label_box04"][jump target=*boxend]
		[endif]
	[elsif exp="tf.boxset01 == 1 && tf.boxset03 == 1 && tf.boxset04 == 1"]
		[if    exp="tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box03 , tf.nextbox_label = tf.label_box03"][jump target=*boxend]
		[elsif exp="tf.boxcount == 2"][eval exp="tf.nextbox = tf.storage_box04 , tf.nextbox_label = tf.label_box04"][jump target=*boxend]
		[endif]
	[elsif exp="tf.boxset02 == 1 && tf.boxset03 == 1 && tf.boxset04 == 1"]
		[if    exp="tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box03 , tf.nextbox_label = tf.label_box03"][jump target=*boxend]
		[elsif exp="tf.boxcount == 2"][eval exp="tf.nextbox = tf.storage_box04 , tf.nextbox_label = tf.label_box04"][jump target=*boxend]
		[endif]
	[elsif exp="tf.boxset01 == 1 && tf.boxset02 == 1"]
		[if    exp="tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box02 , tf.nextbox_label = tf.label_box02"][jump target=*boxend]
		[endif]
	[elsif exp="tf.boxset01 == 1 && tf.boxset03 == 1"]
		[if    exp="tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box03 , tf.nextbox_label = tf.label_box03"][jump target=*boxend]
		[endif]
	[elsif exp="tf.boxset01 == 1 && tf.boxset04 == 1"]
		[if    exp="tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box04 , tf.nextbox_label = tf.label_box04"][jump target=*boxend]
		[endif]
	[elsif exp="tf.boxset02 == 1 && tf.boxset03 == 1"]
		[if    exp="tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box03 , tf.nextbox_label = tf.label_box03"][jump target=*boxend]
		[endif]
	[elsif exp="tf.boxset02 == 1 && tf.boxset04 == 1"]
		[if    exp="tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box04 , tf.nextbox_label = tf.label_box04"][jump target=*boxend]
		[endif]
	[elsif exp="tf.boxset03 == 1 && tf.boxset04 == 1"]
		[if    exp="tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box04 , tf.nextbox_label = tf.label_box04"][jump target=*boxend]
		[endif]
	[endif]

	;�����Đ�����̂�������@�߂�
	[jump storage="b_sceneV.ks" target=*back_from_SR]

;����̓_����
;	;�c��3��
;	[if    exp="tf.scenebox_max == 4 && tf.boxset_max == 4 && tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box02 , tf.nextbox_label = tf.label_box02"][jump target=*boxend]
;	[elsif exp="tf.scenebox_max == 4 && tf.boxset_max == 4 && tf.boxcount == 2"][eval exp="tf.nextbox = tf.storage_box03 , tf.nextbox_label = tf.label_box03"][jump target=*boxend]
;	[elsif exp="tf.scenebox_max == 4 && tf.boxset_max == 4 && tf.boxcount == 3"][eval exp="tf.nextbox = tf.storage_box04 , tf.nextbox_label = tf.label_box04"][jump target=*boxend]
;
;	[elsif exp="tf.scenebox_max == 4 && tf.boxset_max == 3"]
;			[if    exp="tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box02 , tf.nextbox_label = tf.label_box02"][jump target=*boxend]
;			[if    exp="tf.boxcount == 1"][eval exp="tf.nextbox = tf.storage_box02 , tf.nextbox_label = tf.label_box02"][jump target=*boxend]
;
;
;	[elsif exp="tf.scenebox_max == 4 && tf.boxset_max == 2"]
;			[if    exp="tf.boxcount == 2"][eval exp="tf.nextbox = tf.storage_box03 , tf.nextbox_label = tf.label_box03"][jump target=*boxend]
;
;
;
;
;	;�c��2�A
;	[elsif exp="tf.scenebox_max == 3 && tf.boxcount == 1"]
;		[if    exp="tf.boxset01 == 1  && tf.boxset02 == 1 && tf.boxset03 == 1 && tf.boxset04 == 0"][eval exp="tf.nextbox = tf.storage_box02 , tf.nextbox_label = tf.label_box02"][jump target=*boxend]
;		[elsif exp="tf.boxset01 == 1  && tf.boxset02 == 0 && tf.boxset03 == 1 && tf.boxset04 == 1"][eval exp="tf.nextbox = tf.storage_box03 , tf.nextbox_label = tf.label_box03"][jump target=*boxend]
;		[elsif exp="tf.boxset01 == 1  && tf.boxset02 == 1 && tf.boxset03 == 0 && tf.boxset04 == 1"][eval exp="tf.nextbox = tf.storage_box02 , tf.nextbox_label = tf.label_box02"][jump target=*boxend]
;		[elsif exp="tf.boxset01 == 0  && tf.boxset02 == 1 && tf.boxset03 == 1 && tf.boxset04 == 1"][eval exp="tf.nextbox = tf.storage_box03 , tf.nextbox_label = tf.label_box03"][jump target=*boxend]
;		[endif]
;	[elsif exp="tf.scenebox_max == 3 && tf.boxcount == 2"]
;		[if    exp="tf.boxset01 == 1  && tf.boxset02 == 1 && tf.boxset03 == 1 && tf.boxset04 == 0"][eval exp="tf.nextbox = tf.storage_box03 , tf.nextbox_label = tf.label_box03"][jump target=*boxend]
;		[elsif exp="tf.boxset01 == 1  && tf.boxset02 == 0 && tf.boxset03 == 1 && tf.boxset04 == 1"][eval exp="tf.nextbox = tf.storage_box03 , tf.nextbox_label = tf.label_box03"][jump target=*boxend]
;		[elsif exp="tf.boxset01 == 1  && tf.boxset02 == 1 && tf.boxset03 == 0 && tf.boxset04 == 1"][eval exp="tf.nextbox = tf.storage_box04 , tf.nextbox_label = tf.label_box04"][jump target=*boxend]
;		[elsif exp="tf.boxset01 == 0  && tf.boxset02 == 1 && tf.boxset03 == 1 && tf.boxset04 == 1"][eval exp="tf.nextbox = tf.storage_box04 , tf.nextbox_label = tf.label_box04"][jump target=*boxend]
;		[endif]
;
;	;�c��1�A�ő�4��3���炱���ɗ����猩�I����ĂĂ����s�����Ⴂ��������
;	[elsif exp="tf.scenebox_max == 2 &&  tf.boxcount == 1"]
;		[if    exp="tf.boxset02 == 1"][jump storage="&tf.storage_box02" target=*scene_start][eval exp="tf.nextbox = tf.storage_box02 , tf.nextbox_label = tf.label_box02"][jump target=*boxend]
;		[elsif exp="tf.boxset03 == 1"][jump storage="&tf.storage_box03" target=*scene_start][eval exp="tf.nextbox = tf.storage_box03 , tf.nextbox_label = tf.label_box03"][jump target=*boxend]
;		[elsif exp="tf.boxset04 == 1"][jump storage="&tf.storage_box04" target=*scene_start][eval exp="tf.nextbox = tf.storage_box04 , tf.nextbox_label = tf.label_box04"][jump target=*boxend]
;		[endif]
;	[endif]

[endmacro]

;================================================
;�V�[���r�����[�@�Z�[�u���[�h�ɑΉ����邽�߂̃{�^�����W��`
;================================================

;sf�ɂ���������ق��������̂��Ȃ�
[macro name="sceneV_set"]

	; �T���l�C���x�[�X��\��
	; �T���l�C����\��������W�̔z�� //sf.sr_thum_x03��ǉ�
	;�Q�^�C�g���ԂňႤ����������cond���ꂵ���Ⴞ�߂�
	[eval exp="sf.scene_thum_x = [sf.sr_thum_x01, sf.sr_thum_x02, sf.sr_thum_x03, sf.sr_thum_x04, sf.sr_thum_x05]"]
	[eval exp="sf.scene_thum_y = [sf.sr_thum_y01, sf.sr_thum_y02, sf.sr_thum_y03, sf.sr_thum_y04, sf.sr_thum_y05]"]

	; �y�[�W�p�{�^����\��������W�̔z�� [0]�͎g�p���Ȃ��B�y�[�W����[n]�������ɂȂ�悤�ɂ���
	[eval exp="sf.b_sv_pageX = [sf.b_page00_x, sf.b_page04_x, sf.b_page05_x, sf.b_page06_x, sf.b_page07_x, sf.b_page08_x, sf.b_page09_x, sf.b_page10_x]" cond="tf.b_sr_pageX === void"]
	[eval exp="sf.b_sv_pageY = [sf.b_page00_y, sf.b_page04_y, sf.b_page05_y, sf.b_page06_y, sf.b_page07_y, sf.b_page08_y, sf.b_page09_y, sf.b_page10_y]" cond="tf.b_sr_pageY === void"]

	;�L���v�V�����p���C���̒�` 1��2�̓y�[�W�{�^���ƈړ��{�^���Ŏg�p�ς�
	[eval exp="tf.layer_cap01 = 3"]
	[eval exp="tf.layer_cap02 = 4"]
	[eval exp="tf.layer_cap03 = 5"]
	[eval exp="tf.layer_cap04 = 6"]
	[eval exp="tf.layer_cap05 = 7"]
	[eval exp="tf.layer_cap06 = 8"]
	;����ȏ㑝�₷�ꍇ�̓��C�����̒������K�v
	;[eval exp="tf.layer_cap07 = "]
	;[eval exp="tf.layer_cap08 = "]
	;[eval exp="tf.layer_cap09 = "]
	;[eval exp="tf.layer_cap10 = "]
	;[eval exp="tf.layer_cap11 = "]
	;[eval exp="tf.layer_cap12 = "]
	;[eval exp="tf.layer_cap13 = "]
	;[eval exp="tf.layer_cap14 = "]
	;[eval exp="tf.layer_cap15 = "]
	;[eval exp="tf.layer_cap16 = "]
	;[eval exp="tf.layer_cap17 = "]
	;[eval exp="tf.layer_cap18 = "]
	;[eval exp="tf.layer_cap19 = "]
	;[eval exp="tf.layer_cap20 = "]

[endmacro]


;================================================
;BGM�{�^��
;================================================


;�ėp�̃}�N���ɂ��悤�Ǝv��������if�����ʓ|������ʂɂ��邩
;�{�^��bgm01
[macro name=bgm01_bt]
	[locate x="&sf.BGM01_x" y="&sf.BGM01_y"]
	[if exp="tf.bgm_num == 1"]
		[button graphic="bgm"         target=*bgm01 exp="tf.bgm_num = 1" recthit=true]
		[image left="&sf.BGM01_x" top="&sf.BGM01_y" storage="&sf.BGM01_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM01_bt"         target=*bgm01 exp="tf.bgm_num = 1" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm02
[macro name=bgm02_bt]
	[locate x="&sf.BGM02_x" y="&sf.BGM02_y"]
	[if exp="tf.bgm_num == 2"]
		[button graphic="bgm"         target=*bgm02 exp="tf.bgm_num = 2" recthit=true]
		[image left="&sf.BGM02_x" top="&sf.BGM02_y" storage="&sf.BGM02_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM02_bt"         target=*bgm02 exp="tf.bgm_num = 2" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm03
[macro name=bgm03_bt]
	[locate x="&sf.BGM03_x" y="&sf.BGM03_y"]
	[if exp="tf.bgm_num == 3"]
		[button graphic="bgm"         target=*bgm03 exp="tf.bgm_num = 3" recthit=true]
		[image left="&sf.BGM03_x" top="&sf.BGM03_y" storage="&sf.BGM03_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM03_bt"         target=*bgm03 exp="tf.bgm_num = 3" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm04
[macro name=bgm04_bt]
	[locate x="&sf.BGM04_x" y="&sf.BGM04_y"]
	[if exp="tf.bgm_num == 4"]
		[button graphic="bgm"         target=*bgm04 exp="tf.bgm_num = 4" recthit=true]
		[image left="&sf.BGM04_x" top="&sf.BGM04_y" storage="&sf.BGM04_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM04_bt"         target=*bgm04 exp="tf.bgm_num = 4" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm05
[macro name=bgm05_bt]
	[locate x="&sf.BGM05_x" y="&sf.BGM05_y"]
	[if exp="tf.bgm_num == 5"]
		[button graphic="bgm"         target=*bgm05 exp="tf.bgm_num = 5" recthit=true]
		[image left="&sf.BGM05_x" top="&sf.BGM05_y" storage="&sf.BGM05_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM05_bt"         target=*bgm05 exp="tf.bgm_num = 5" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm06
[macro name=bgm06_bt]
	[locate x="&sf.BGM06_x" y="&sf.BGM06_y"]
	[if exp="tf.bgm_num == 6"]
		[button graphic="bgm"         target=*bgm06 exp="tf.bgm_num = 6" recthit=true]
		[image left="&sf.BGM06_x" top="&sf.BGM06_y" storage="&sf.BGM06_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM06_bt"         target=*bgm06 exp="tf.bgm_num = 6" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm07
[macro name=bgm07_bt]
	[locate x="&sf.BGM07_x" y="&sf.BGM07_y"]
	[if exp="tf.bgm_num == 7"]
		[button graphic="bgm"         target=*bgm07 exp="tf.bgm_num = 7" recthit=true]
		[image left="&sf.BGM07_x" top="&sf.BGM07_y" storage="&sf.BGM07_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM07_bt"         target=*bgm07 exp="tf.bgm_num = 7" recthit=false]
	[endif]
[endmacro]


;�{�^��bgm08
[macro name=bgm08_bt]
	[locate x="&sf.BGM08_x" y="&sf.BGM08_y"]
	[if exp="tf.bgm_num == 8"]
		[button graphic="bgm"         target=*bgm08 exp="tf.bgm_num = 8" recthit=true]
		[image left="&sf.BGM08_x" top="&sf.BGM08_y" storage="&sf.BGM08_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM08_bt"         target=*bgm08 exp="tf.bgm_num = 8" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm09
[macro name=bgm09_bt]
	[locate x="&sf.BGM09_x" y="&sf.BGM09_y"]
	[if exp="tf.bgm_num == 9"]
		[button graphic="bgm"         target=*bgm09 exp="tf.bgm_num = 9" recthit=true]
		[image left="&sf.BGM09_x" top="&sf.BGM09_y" storage="&sf.BGM09_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM09_bt"         target=*bgm09 exp="tf.bgm_num = 9" recthit=false]
	[endif]
[endmacro]


;�{�^��bgm10
[macro name=bgm10_bt]
	[locate x="&sf.BGM10_x" y="&sf.BGM10_y"]
	[if exp="tf.bgm_num == 10"]
		[button graphic="bgm"         target=*bgm10 exp="tf.bgm_num = 10" recthit=true]
		[image left="&sf.BGM10_x" top="&sf.BGM10_y" storage="&sf.BGM10_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM10_bt"         target=*bgm10 exp="tf.bgm_num = 10" recthit=false]
	[endif]
[endmacro]


;�ėp�̃}�N���ɂ��悤�Ǝv��������if�����ʓ|������ʂɂ��邩
;�{�^��bgm11
[macro name=bgm11_bt]
	[locate x="&sf.BGM11_x" y="&sf.BGM11_y"]
	[if exp="tf.bgm_num == 11"]
		[button graphic="bgm"         target=*bgm11 exp="tf.bgm_num = 11" recthit=true]
		[image left="&sf.BGM11_x" top="&sf.BGM11_y" storage="&sf.BGM11_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM11_bt"         target=*bgm11 exp="tf.bgm_num = 11" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm12
[macro name=bgm12_bt]
	[locate x="&sf.BGM12_x" y="&sf.BGM12_y"]
	[if exp="tf.bgm_num == 12"]
		[button graphic="bgm"         target=*bgm12 exp="tf.bgm_num = 12" recthit=true]
		[image left="&sf.BGM12_x" top="&sf.BGM12_y" storage="&sf.BGM12_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM12_bt"         target=*bgm12 exp="tf.bgm_num = 12" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm13
[macro name=bgm13_bt]
	[locate x="&sf.BGM13_x" y="&sf.BGM13_y"]
	[if exp="tf.bgm_num == 13"]
		[button graphic="bgm"         target=*bgm13 exp="tf.bgm_num = 13" recthit=true]
		[image left="&sf.BGM13_x" top="&sf.BGM13_y" storage="&sf.BGM13_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM13_bt"         target=*bgm13 exp="tf.bgm_num = 13" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm14
[macro name=bgm14_bt]
	[locate x="&sf.BGM14_x" y="&sf.BGM14_y"]
	[if exp="tf.bgm_num == 14"]
		[button graphic="bgm"         target=*bgm14 exp="tf.bgm_num = 14" recthit=true]
		[image left="&sf.BGM14_x" top="&sf.BGM14_y" storage="&sf.BGM14_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM14_bt"         target=*bgm14 exp="tf.bgm_num = 14" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm15
[macro name=bgm15_bt]
	[locate x="&sf.BGM15_x" y="&sf.BGM15_y"]
	[if exp="tf.bgm_num == 15"]
		[button graphic="bgm"         target=*bgm15 exp="tf.bgm_num = 15" recthit=true]
		[image left="&sf.BGM15_x" top="&sf.BGM15_y" storage="&sf.BGM15_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM15_bt"         target=*bgm15 exp="tf.bgm_num = 15" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm16
[macro name=bgm16_bt]
	[locate x="&sf.BGM16_x" y="&sf.BGM16_y"]
	[if exp="tf.bgm_num == 16"]
		[button graphic="bgm"         target=*bgm16 exp="tf.bgm_num = 16" recthit=true]
		[image left="&sf.BGM16_x" top="&sf.BGM16_y" storage="&sf.BGM16_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM16_bt"         target=*bgm16 exp="tf.bgm_num = 16" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm17
[macro name=bgm17_bt]
	[locate x="&sf.BGM17_x" y="&sf.BGM17_y"]
	[if exp="tf.bgm_num == 17"]
		[button graphic="bgm"         target=*bgm17 exp="tf.bgm_num = 17" recthit=true]
		[image left="&sf.BGM17_x" top="&sf.BGM17_y" storage="&sf.BGM17_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM17_bt"         target=*bgm17 exp="tf.bgm_num = 17" recthit=false]
	[endif]
[endmacro]


;�{�^��bgm18
[macro name=bgm18_bt]
	[locate x="&sf.BGM18_x" y="&sf.BGM18_y"]
	[if exp="tf.bgm_num == 18"]
		[button graphic="bgm"         target=*bgm18 exp="tf.bgm_num = 18" recthit=true]
		[image left="&sf.BGM18_x" top="&sf.BGM18_y" storage="&sf.BGM18_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM18_bt"         target=*bgm18 exp="tf.bgm_num = 18" recthit=false]
	[endif]
[endmacro]

;�{�^��bgm19
[macro name=bgm19_bt]
	[locate x="&sf.BGM19_x" y="&sf.BGM19_y"]
	[if exp="tf.bgm_num == 19"]
		[button graphic="bgm"         target=*bgm19 exp="tf.bgm_num = 19" recthit=true]
		[image left="&sf.BGM19_x" top="&sf.BGM19_y" storage="&sf.BGM19_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM19_bt"         target=*bgm19 exp="tf.bgm_num = 19" recthit=false]
	[endif]
[endmacro]


;�{�^��bgm20
[macro name=bgm20_bt]
	[locate x="&sf.BGM20_x" y="&sf.BGM20_y"]
	[if exp="tf.bgm_num == 20"]
		[button graphic="bgm"         target=*bgm10 exp="tf.bgm_num = 20" recthit=true]
		[image left="&sf.BGM20_x" top="&sf.BGM20_y" storage="&sf.BGM20_bt" layer=3 page=fore visible=true clipleft="&sf.bgm_clipleft" cliptop="&sf.bgm_cliptop" clipwidth="&sf.bgm_clipwidth" clipheight="&sf.bgm_clipheight" opacity=255]
	[else]
		[button graphic="&sf.BGM20_bt"         target=*bgm20 exp="tf.bgm_num = 20" recthit=false]
	[endif]
[endmacro]













[return]
