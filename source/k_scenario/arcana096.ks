;//arcana093
*TOP
[eval exp="f.l_s096 = 1"][name_allreset]

;//�Ó]

;//���̃V�[���͎O�l��

;//�w�i�F�a���E����
[bg storage="bg008a"][trans_c rl time=300]

;//�r�d�F�����悭�����˂��J���鉹
[se buf=0 storage="seA004"]

;//�����G�F���E����
;//�����G�F���E����
;//�����G�F�~�A�E����

[std_aoi m se p1 f07 le]
[std_aka m se p1 f07 ce]
[std_mia m se p1 f08 ri][trans_c cross time=300]

*7514|
[fc]
[vo_aka s="akane_0595"]
[�y���z]
�u�͂����A�͂����c�c�搶�I�v[pcms]

*7515|
[fc]
[vo_aoi s="aoi_0535"]
[�y���z]
�u���Ȃ��c�c����ς�~�Y�`�Ɓc�c�v[pcms]

[std_mia m se p1 f06 ri][trans_c cross time=300]

*7516|
[fc]
[vo_mia s="mia_0706"]
[�y�~�A�z]
�u�������A�����邯�ǂ�����Ȃ�ł����f�������ł���I�v[pcms]

*7517|
[fc]
�ނ���̃��b�Z�[�W���󂯎�����O�l�́A����������Ԃ��ĕa���ւƖ߂��Ă����B[pcms]

*7518|
[fc]
�����A�ނ̎p�͂�����񖻖��̎p���Ȃ��A����̂̓��b�Z�[�W�𑗂����ł��낤�X�}�z��������Ƀx�b�h�̏�ɒu����Ă��邾�����B[pcms]

[std_aka m se p2 f03 ce][trans_c cross time=300]

*7519|
[fc]
[vo_aka s="akane_0596"]
[�y���z]
�u�~�Y�`����̌��������ŁA����������Ă��炦�邩��s���Ă�����āc�c㩂�������ǂ�����̂�A�������I�v[pcms]

[std_aoi m se p1 f03 le][trans_c cross time=300]

*7520|
[fc]
[vo_aoi s="aoi_0536"]
[�y���z]
�u�ł��A���������搶�Ɠ�������Ȃ�A�������Ƃ����Ă�Ǝv���c�c�v[pcms]

[std_mia m se p1 f02 ri][trans_c cross time=300]

*7521|
[fc]
[vo_mia s="mia_0707"]
[�y�~�A�z]
�u���ɂ�����āA�킽���B���A������ɂ���Ă���Ȃ�Ĕڋ�����Ȃ��I�v[pcms]

*7522|
[fc]
���B�ɑ����Ă������b�Z�[�W�́A���ɊȌ��Ȃ��̂������B[pcms]

*7523|
[fc]
�w����������ׂɃ~�Y�`�̌��������ɏ�����B��𗊂ށx[pcms]

[std_aka m se p2 f08 ce][trans_c cross time=300]

*7524|
[fc]
[vo_aka s="akane_0597"]
[�y���z]
�u��𗊂ނ��Č����Ă��A�ǂ�����΂����́H�v[pcms]

[std_mia m se p1 f08 ri][trans_c cross time=300]

*7525|
[fc]
[vo_mia s="mia_0708"]
[�y�~�A�z]
�u����́c�c�搶�̋��ꏊ��T���o���Ď��Ԃ������v[pcms]

[std_aoi m se p1 f08 le][trans_c cross time=300]

*7526|
[fc]
[vo_aoi s="aoi_0537"]
[�y���z]
�u���߂čs���悪������΁c�c�v[pcms]

*7527|
[fc]
�������ɎO�l�Ƃ��������肵�߂邪�A�������������������͈̂��������B[pcms]

[std_aka m se p1 f11 ce][trans_c cross time=300]

*7528|
[fc]
[vo_aka s="akane_0598"]
[�y���z]
�u���߂�������Ȃ����ǁA�ӂ��T���Ă݂悤��B�����̍��Ղ��ǂ����Ɏc���Ă邩������Ȃ��v[pcms]

[std_aoi m se p1 f01 le][trans_c cross time=300]

*7529|
[fc]
[vo_aoi s="aoi_0538"]
[�y���z]
�u�����ˁB�����ł����Ƃ��Ă��Ă������������Ȃ����v[pcms]

[std_mia m se p2 f11 ri][trans_c cross time=300]

*7530|
[fc]
[vo_mia s="mia_0709"]
[�y�~�A�z]
�u���ꂶ��A�蕪�����ĒT���܂���B������������A�����ɘA�����邱�ƁI�v[pcms]

*7531|
[fc]
�O�l�͑傫�������A�a�����삯�����Ă������B[pcms]

;//�������򔭐��i�l���j
;//�warcana049��ʉ߂��Ă���x��arcana120
;//�warcana057��ʉ߂��Ă���x��arcana123
;//�warcana065��ʉ߂��Ă���x��arcana126
;//�w����ȊO�̏ꍇ�x��arcana097

[ANTEN blk]

[if    exp="f.l_s049 == 1"][jump storage="arcana120.ks" target=*TOP]
[elsif exp="f.l_s057 == 1"][jump storage="arcana123.ks" target=*TOP]
[elsif exp="f.l_s065 == 1"][jump storage="arcana126.ks" target=*TOP]
[endif]
[jump storage="arcana097.ks" target=*TOP]
