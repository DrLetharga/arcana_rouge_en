;cgmsk.ks

;------------------�V�V�Z�[�u�}�X�N------------------
[eval exp="sf.layer_msk_index = 4000"]

;��U�\���Ă鍷�����܂ߑ��
[eval exp="f.CGfilename_ch = f.mskon"]
;�}�X�N�s�v�����Ƃ�����ΓK�X���������ă��^�[��
;�Ȃ񂩂��������ȁB�����ƈႤ�B�|������L�������ɂ��Ƃɂ��邩
;_ev02_b01_up
;[jump target=*no_mask  cond="f.mskon.substring(0,8) == '_ev02' && f.mskon.substring(13,2) == 'up'"]

;�ϑ��̃}�X�N��`�Ȃ炱���ŏ��������Ē�`�I���ɔ�΂�
;[jump target=*��`�I���  cond="f.CGfilename_ch == ''"]

;0123456789
; BIT_ev01
[eval exp="f.CGfilename_ch = f.mskon.substring(0,4)"]


*��`�I���

;	;�����I�Ƀf�o�b�O�p�Ƃ�����������Ɨp�̔ėp�_�~�[�}�X�N��
;	[eval exp="f.CGfilename_ch = '�ėpDUMMY'"]





;���ڑ΍�
[image storage="&f.CGfilename_ch + '_msk'" layer="&sf.layer_msk" page=fore visible=false left="&f.msk_x" top="&f.msk_y" opacity=255 index="&sf.layer_msk_index"]



;�߂���
[return]
;------------------------------------------------------
*no_mask

[image storage="chara_int" layer="&sf.layer_msk" page=fore visible=false left=0 top=0 opacity=255 index="&sf.layer_msk_index"]

;�߂���
[return]

;------------------------------------------------------
;�J�b�g�C���}�X�N
*cutin_msk
[eval exp="f.layer_msk2       = sf.layer_msk2      "]
[eval exp="f.layer_msk2_index = sf.layer_msk2_index"]

;�}�X�N�s�v�����Ƃ�����ΓK�X���������ă��^�[��
;[return  cond="f.mskon2 == 'ev20_cut_d'"]
;_et04_a01
;[jump target=*no_mask2  cond="f.mskon2.substring(0,8) == 'BIT_et04'"]

[eval exp="f.CGmsk_name = f.mskon2.substring(0,8)"]
;[eval exp="f.CGmsk_name = 'BIT_ev00_cut'"  cond="f.mskon2.substring(0,12) == '_ev10_cut'"]
;_ev10_cut_a01
[if      exp="f.mskon2.substring(0,10) == '_ev18_g'"]
	[eval exp="f.add_msk = '_msk2'"]
[else]
	[eval exp="f.add_msk = '_msk'"]
[endif]




*�J�b�g�C���}�X�N��`�I���

;�Z�[�u�}�X�N�\����
[image storage="&f.CGmsk_name + f.add_msk" layer="&sf.layer_msk2" page=fore visible=false left=0 top=0 opacity=255 index="&sf.layer_msk2_index"]

;�߂���
[return]

;------------------------------------------------------
*no_mask2
[image storage="chara_int" layer="&sf.layer_msk2" page=fore visible=false left=0 top=0 opacity=255 index="&sf.layer_msk2_index"]

[return]

;------------------------------------------------------
*stdmsk_off



[return]

