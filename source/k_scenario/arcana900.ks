;//arcana900
*TOP
[eval exp="f.l_s900 = 1"][name_allreset]

;//�o�b�h�G���h�P

[ANTEN blk]

[se buf=1 storage="seA041" loop]

;//�w�i�F��E��
[bg storage="bg001c"][trans_c cross time=1000]

*11095|
[fc]
���͎���֋A��ׂ��铹������Ă����B[pcms]

;//�w�i�F�w�O�E��Ɩ�
[bg storage="bg012c"][trans_c cross time=1000]

*11096|
[fc]
[�y��l���z]
�u����قǕ��͌����Ă��Ȃ����y�������c�c�v[pcms]

*11097|
[fc]
�w�����ォ�玩���̏K�����g�ɕt���Ă��鉴�����A�Ȃ�ƂȂ�����͂��C�����Ȃ��B�R���r�j�Ōy�H�𔃂��čς܂��邱�Ƃɂ����B[pcms]

;mm �R���r�j�Ɋ���Ă�`�ʂ���������Ó]���Ԍo��

[ANTEN blk]

;[se buf=1 storage="seA041" loop]


;//�w�i�F�����E�����
[bg storage="bg017d"][trans_c cross time=1000]
[wait time=1000]
[bg storage="bg001c"][trans_c cross time=1000]

*11098|
[fc]
�����̘e��ʂ�߂��ďZ��X�ɓ���ƁA�A�p�[�g�Ƃ����ɂ͑����A���������ȊԎ��̉��̕����͂����������B[pcms]

;//�w�i�F��E��
[stopse buf=1]
;//�r�d�F�h�A���J���鉹
[se buf=0 storage="seA025"]

*11099|
[fc]
[�y��l���z]
�u�������܁[�v[pcms]

*11100|
[fc]
�N�Ɍ����Ƃł��Ȃ�����Ȍ��t�����ɂ��A�����͔�ꂽ�̂ő��߂ɐQ�悤�c�c�B[pcms]

[bg storage="bg023d"][trans_c lr]

*11101|
[fc]
����Ȃ��Ƃ��v���Ȃ���h�A���J�������́\�\[pcms]

;//�w�i�F��l���̕����E�����

[bg storage="effect_black"][trans_c bang time=300 vague=50]
[bg storage="bg023d"][trans_c bang time=500 vague=50]
[bgm017]

;mm ���֊J���Ė��������炿����Ɩʔ����Ȃ��Ă��܂��Ȃ�

*�e�L�X�g�ǉ�|
[fc]
���Â������ɓ��̂̒m��Ȃ��w�����x�̋C�z�������A�����Ƒ��ї��B[pcms]

;//�����G�F���������E���S
[std_zaA m le][trans_c wave time=1000]

;//�r�d�F�쌢��T�Ȃǂ��Њd���邤�Ȃ萺
[se buf=0 storage="seF006"]

;//�����G�F���������E�G��
[std_zaB m ri][trans_c wave time=1000]

;//�r�d�F�G�肪�����߂���
[se buf=1 storage="&sf.SE�G��L�т�"]
[se buf=2 storage="&sf.SE�G�胋�[�v" loop]



*11102|
[fc]
[�y��l���z]
�u�ȃb�H�v[pcms]

;//�r�d�F�h�A���o�^���ƕ܂鉹
[se buf=0 storage="seA014"]

*11103|
[fc]
�w������A���ւ̃h�A������ɕ܂鉹�����������B[pcms]

*11104|
[fc]
[�y��l���z]
�u���A����Ȃ����b�I�v[pcms]

*11105|
[fc]
�������͂����A���̎��_�ŁA�����������̐G��ɑS�g���S������A�g�̂̎��R��D���Ă����B[pcms]

[se buf=0 storage="seB037"]
;�w�i�F�����
[bg storage="effect_red"][trans_c blood1 time=500]

;//�r�d�F�쐶������������炤���ڂ��𚐉�

[se buf=1 storage="seB034"]


*11106|
[fc]
[�y��l���z]
�u���������������[�b�I�v[pcms]

*11107|
[fc]
�E����Ă��������Ō�ɒm�o�ł����̂́A���S�Ƃ��������悤���Ȃ��������r�Ɋ��ݕt���A���܂����ɍ����Ƌ�炤�𚐉��������B[pcms]



;�o�b�h�G���h�P�i�ėp���S�o�b�h�G���h�j
;mm �O�ׂ̈ɃG���h�̃O���[�o���ƃ��[�J���ϐ��I��
[eval exp="sf.g_end_bad01 = 1"]
[eval exp="f.l_end = 7"]


[ANTEN blk]
[jump storage="9999.ks" target=*TOP]

