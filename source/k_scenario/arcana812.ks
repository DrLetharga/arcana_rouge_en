;//arcana812
*TOP
[eval exp="f.l_s812 = 1"][name_allreset]

;//���̃V�[���̘b�ҁF�~�A�̓u������
;mm ���̂��Ɛ��������疼�O���Z�b�g����˂��̂��Ȃ�

;//�w�i�E���w�i

*11007|
[fc]
[vo_mia s="mia_0981"]
[�y�~�A�z]
�u�c�c�񂹁[�H�@���񂹁[�H�v[pcms]

*11008|
[fc]
[�y��l���z]
�u���c�c��c�c�v[pcms]

;//�t�F�[�h�C��
[bgm007]

;//�w�i�F�w�O�ɉ؊X�E��
[bg storage="bg013c"][trans_c cross time=1000]


*11009|
[fc]
[�y��l���z]
�u���c�c�����c�c�I�v[pcms]

*11010|
[fc]
�Ђǂ������d���B����A�ɂ��B�܂�ŁA�o�b�g�œ�������ꂽ�悤���B���܂������o���͂Ȃ��̂����c�c�B[pcms]


*11011|
[fc]
[vo_mia s="mia_0982"]
[�y�~�A�z name=�H�H�H off]
�u�ڂ��o�߂��A���񂹁[�H�v[pcms]

*11012|
[fc]
[�y��l���z]
�u�ށc�c�v[pcms]

*11013|
[fc]
�����o���̂��鐺���A���ɓ͂��B���͏d�������ǂ��ɂ������グ�āA����������ւƊ���������B[pcms]

;//�����G�F�~�A�E����

[std_mia l se p1 f01 ce][trans_c cross time=300]

*11014|
[fc]
[�y��l���z]
�u�~�A�c�c�H�v[pcms]

[std_mia l se p1 f06 ce][trans_c cross time=300]

*11015|
[fc]
[vo_mia s="mia_0983"]
[�y�~�A�z reset on]
�u�ӂ�v[pcms]

*11016|
[fc]
�C�̂������낤���B�~�A�̎������A�₯�ɗ₽���B[pcms]

;//��������
;//�warcana807�x���o�߁�arcana814
;//�warcana810�x���o�߁�arcana814
;//�warcana807�x�Ɓwarcana810�x���o�߁�arcana814

;[ANTEN blk]
[if    exp="f.l_s807 == 1 && f.l_s810 == 0"][jump storage="arcana814.ks" target=*TOP]
[elsif exp="f.l_s807 == 0 && f.l_s810 == 1"][jump storage="arcana814.ks" target=*TOP]
[elsif exp="f.l_s807 == 1 && f.l_s810 == 1"][jump storage="arcana814.ks" target=*TOP]
[endif]
;mm ��L�ȊO�̎w�肪�����񂾂�813���H
[jump storage="arcana813.ks" target=*TOP]

