;//arcana078
*TOP
[eval exp="f.l_s078 = 1"][name_allreset]

;//���̃V�[���͎O�l��

[bgm012]

;//�w�i�F�w�O�E�[��
[bg storage="bg012b"]

;//�����G�F���E����
;//�����G�F���E����
;//�����G�F�~�A�E����

[std_aoi m se p1 f08 le]
[std_aka m se p2 f08 ce]
[std_mia m se p1 f03 ri][trans_c cross time=1000]

*5853|
[fc]
[vo_aka s="akane_0490"]
[�y���z]
�u�搶�c�c���v����ˁH�v[pcms]

*5854|
[fc]
[vo_aoi s="aoi_0457"]
[�y���z]
�u���@�Ŏ~���ł�������A�v���������͔�����ꂽ�Ǝv�����ǁc�c���̏o���ʂ͂�����Ɗ�Ȃ������v[pcms]

*5855|
[fc]
[vo_mia s="mia_0580"]
[�y�~�A�z]
�u���v�����āB�킽���B�̐搶�������ȒP�Ɏ��ʂ킯�Ȃ�����Ȃ��v[pcms]

[std_aoi m se p1 f07 le]
[std_aka m se p2 f07 ce][trans_c cross time=1000]

*5856|
[fc]
���C�Â���悤�Ɍ��������肾�������A���Ƃ������t�ɔ������ē�l�̊炪���߂�B[pcms]

[std_mia m se p1 f08 ri][trans_c cross time=300]

*5857|
[fc]
[vo_mia s="mia_0581"]
[�y�~�A�z]
�u���߂�A�I舂�������c�c�v[pcms]

*5858|
[fc]
�V���n���炱���܂ŁA�O�l�͌����J�����Ƃ��o���Ȃ������B[pcms]

*5859|
[fc]
�悤�₭�����J�����Ǝv�����炱�̗L�l�ł���B[pcms]

*5860|
[fc]
���Ɏ����ẮA�������̒����������Ă��Đ������o���Ă��Ȃ��B[pcms]

[std_aoi m se p1 f07 le][trans_c cross time=1000]

*5861|
[fc]
[vo_aoi s="aoi_0458"]
[�y���z]
�u�����c�c���@�����ɂȂ��Ă��񂾁B�Ȃ̂ɁA�ǂ����Ė����������Ȃ�āv[pcms]

*5862|
[fc]
[vo_aoi s="aoi_0459"]
[�y���z]
�u����ς�A���̎��������̎�𗣂��Ă��܂����̂��S�������񂾁c�c�v[pcms]

[std_aka m se p1 f01 ce][trans_c cross time=300]

*5863|
[fc]
[vo_aka s="akane_0491"]
[�y���z]
�u�ł��A������񂪐����Ă����Ă��Ƃ͎����Ȃ񂾂��A�����͊�񂾕���������v[pcms]

[std_mia m se p1 f07 ri][trans_c cross time=300]

*5864|
[fc]
[vo_mia s="mia_0582"]
[�y�~�A�z]
�u�ł��A�G�ɂȂ��Ă���Ă��Ƃ́A�ƂĂ���ׂ�󋵂���Ȃ����ǂˁv[pcms]

*5865|
[fc]
�ĂѐÎ₪�K���ƁA�������ĎO�l�ł��邱�Ǝ��̂��h�������Ă��܂��B[pcms]

*5866|
[fc]
���@�������O�l�����Ȃ���A�厖�Ȑl����邱�Ƃ��o���Ȃ������Ƃ��������́A�ޏ��B�̐S�ɏd���̂��������Ă����B[pcms]

*5867|
[fc]
�����ĒN����Ƃ��Ȃ��A���ꂼ��ʂ̕����Ɍ����ĕ����o���̂������B[pcms]

;//�������򔭐��i�l���j
;//�warcana052��ʉ߂��Ă���x��arcana082
;//�warcana060��ʉ߂��Ă���x��arcana085
;//�warcana068��ʉ߂��Ă���x��arcana088
;//�w����ȊO�̏ꍇ�x��arcana079

[ANTEN blk]

[if    exp="f.l_s052 == 1"][jump storage="arcana082.ks" target=*TOP]
[elsif exp="f.l_s060 == 1"][jump storage="arcana085.ks" target=*TOP]
[elsif exp="f.l_s068 == 1"][jump storage="arcana088.ks" target=*TOP]
[endif]
[jump storage="arcana079.ks" target=*TOP]
