;//arcana806
*TOP
[eval exp="f.l_s806 = 1"][name_allreset]

;//�Ó]

*10947|
[fc]
[�y��l���z]
�u����A�����c�c�v[pcms]

*10948|
[fc]
���ɓ����d���c�c����ɁA�̂��ǂ�����J���Ă��銴��������B[pcms]

*10949|
[fc]
�Ȃ̂ɁA�ǂ����u���������̂����Ɏc���Ă����B[pcms]

;//�w�i�F���X�X�E��Ɩ�
[bg storage="bg018c"][trans_c cross time=1000]

*10950|
[fc]
[�y��l���z]
�u�����́c�c�H�v[pcms]

;//�t�F�C�X�̂݁F���E����
;mm ���������疼�O���Z�b�g�ł����H

[std_aka m se p2 f08 ce off]

*10951|
[fc]
[vo_aka s="akane_0893"]
[�y���z]
�u���c�c�搶�A�N�����񂾁c�c�v[pcms]


[bgm007]

*10952|
[fc]
����グ��ƁA�߂��̃x���`�ɍ��荞��ł��鈩�̎p���������B[pcms]

[std_aka l se p2 f01 ce][trans_c cross time=300]

*10953|
[fc]
[vo_aka s="akane_0894"]
[�y���z]
�u���v����A�܂����E�������Ă��邩��A�N�ɂ������ĂȂ���v[pcms]

*10954|
[fc]
[�y��l���z]
�u���H�@���A�������c�c�v[pcms]

*10955|
[fc]
�ڂ���Ƃ������ŕӂ�����񂷂ƁA������̂����ɉ؊X���Ƃ����̂ɁA�l�ʂ肪�S���Ȃ������B[pcms]

*10956|
[fc]
���܂�̈ٗl�Ȍ��i�ɁA�}���ɋL�����t���b�V���o�b�N�����B[pcms]

*10957|
[fc]
[�y��l���z]
�u���A���͂Ȃ�Ă��Ƃ��c�c���܂Ȃ������I�v[pcms]

*10958|
[fc]
���͂������ܑ̂��N�����A�������Ēn�ʂɊz�������t���Ă����B[pcms]

[std_aka l se p2 f05 ce][trans_c cross time=300]

*10959|
[fc]
[vo_aka s="akane_0895"]
[�y���z]
�u���A�搶�I�H�@����A������Ɓc�c����Ȃ��Ƃ��Ȃ��Ă�������v[pcms]

*10960|
[fc]
�����Q�Ăċ삯������グ�����悤�Ƃ�����̂́A�������킹���ȂǂȂ��B[pcms]

;//��������
;//�warcana810�x���o�߁�arcana808��
;//�warcana813�x���o�߁�arcana808��
;//�warcana810�x�Ɓwarcana813�x���o�߁�arcana808��
;//��L�ȊO��arcana807��

;[ANTEN blk]
[if    exp="f.l_s810 == 1 && f.l_s813 == 0"][jump storage="arcana808.ks" target=*TOP]
[elsif exp="f.l_s810 == 0 && f.l_s813 == 1"][jump storage="arcana808.ks" target=*TOP]
[elsif exp="f.l_s810 == 1 && f.l_s813 == 1"][jump storage="arcana808.ks" target=*TOP]
[endif]
[jump storage="arcana807.ks" target=*TOP]
