;//arcana809
*TOP
[eval exp="f.l_s809 = 1"][name_allreset]

;//�Ó]

;//�w�肪����܂Řb�ҁF���́H�H�H��
;mm �w��ǂ�

*10975|
[fc]
[vo_aoi s="aoi_0919"]
[�y���z name=�H�H�H off]
�u�c�c���c�c�����c�c�v[pcms]

*10976|
[fc]
[�y��l���z]
�u����A���c�c�������c�c�v[pcms]

*10977|
[fc]
�ǂ����ŕ��������Ƃ̂��鐺���������Ă���B[pcms]

*10978|
[fc]
�ł��A���̐��͉����Ă悭�������Ȃ��B[pcms]

*10979|
[fc]
[vo_aoi s="aoi_0920"]
[�y���z name=�H�H�H off]
�u�c�c�����A�搶�c�c�I�v[pcms]

*10980|
[fc]
����ɂ��̐��͑傫���͂����藈�����悤�ɂȂ��Ă��āA�ӂƂ����u�Ԉ�C�ɐ^���ÂȎ��E���F�Â����B[pcms]

;//�w�i�F�ʊw�H�E��Ɩ�
[bg storage="bg011c"][trans_c cross time=1000]

*10981|
[fc]
[�y��l���z]
�u����A�������c�c�����͈�́c�c�v[pcms]

[bgm007]

;//�����G�F���E����
[std_aoi l se p1 f01 ce][trans_c cross time=300]

*10982|
[fc]
[vo_aoi s="aoi_0921"]
[�y���z reset on]
�u�搶�A�ڂ��o�܂�����ł��ˁB�ǂ������c�c�B���x���������Ă��Ԏ����Ȃ�����A�S�z������ł��v[pcms]

*10983|
[fc]
[�y��l���z]
�u���c�c�H�@�ǂ����Ă���ȂƂ���ɁH�@����ɁA�����́c�c�v[pcms]

*10984|
[fc]
�ӂ�����񂷂ƁA�����͌��o���̂���ʊw�H���B[pcms]

*10985|
[fc]
�����A�ӂ�ɂ͉��ƈ��ȊO�N�����Ȃ��B[pcms]


*10986|
[fc]
[vo_aoi s="aoi_0922"]
[�y���z]
�u���E�������Ă��邩��N�����Ȃ���ł��B������A�}���Ȃ��Ă����v�ł���v[pcms]

*10987|
[fc]
���E�Ƃ�����������Ȃ����t�ɁA��C�ɋC�������܂ł̋L�����S���Ă����B[pcms]

*10988|
[fc]
[�y��l���z]
�u���́c�c���܂�I�v[pcms]

*10989|
[fc]
���͂������ܐg�̂��N�����āA���H�Ɋz���C����ēy�������Ă����B[pcms]

[std_aoi l se p1 f05 ce][trans_c cross time=300]

*10990|
[fc]
[vo_aoi s="aoi_0923"]
[�y���z]
�u�搶�A����グ�ĉ������B����Ȃ��Ƃ���Ă����A����܂��c�c�v[pcms]

[std_aoi l se p1 f07 ce][trans_c cross time=300]

*10991|
[fc]
[�y��l���z]
�u���c�c��������ȁB�y�����������Ƃ���ŋ�����Ȃ����Ƃ������񂾂���ȁv[pcms]

*10992|
[fc]
���͂���������グ�A���̊������B[pcms]

*10993|
[fc]
���͍�����������Ă͂������̂́A���̎�����厖�����ɕ������B[pcms]

[std_aoi l se p1 f11 ce][trans_c cross time=300]

*10994|
[fc]
[vo_aoi s="aoi_0924"]
[�y���z]
�u�搶�����Ă���Ȃ�������A���͂��̂܂ܖ����ɕ����āA�������Ƃ�����Ă����Ǝv���܂��B������A�搶�͉��l�Ȃ�ł��v[pcms]

;//��������
;//�warcana810�x���o�߁�arcana811��
;//�warcana813�x���o�߁�arcana811��
;//�warcana810�x�Ɓwarcana813�x���o�߁�arcana811��
;//��L�ȊO��arcana810��
;mm �����������arcana806.ks�Ɠ����ɂȂ��Ă邯�ǈႤ�񂶂�ˁH
;mm �warcana810�x���o�߂���Ȃ���807����ˁH�@�t���[�������Ȃ��Ă��B

;[ANTEN blk]
[if    exp="f.l_s807 == 1 && f.l_s813 == 0"][jump storage="arcana811.ks" target=*TOP]
[elsif exp="f.l_s807 == 0 && f.l_s813 == 1"][jump storage="arcana811.ks" target=*TOP]
[elsif exp="f.l_s807 == 1 && f.l_s813 == 1"][jump storage="arcana811.ks" target=*TOP]
[endif]
[jump storage="arcana810.ks" target=*TOP]
