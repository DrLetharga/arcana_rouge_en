;//arcana076
*TOP
[eval exp="f.l_s076 = 1"][name_allreset]

; ��z�V�[���J���t���O
[eval exp="sf.SRP15 = 1"]
*scene_start
[if exp="tf.scene_mode == 1"]
	;��[scene_exp_init]
[endif]

;//���̃t�@�C���͓r���܂ŎO�l��

[bgm019]
[se buf=2 storage="seD026" loop]

;mm ����ev46�����\����

;//�C�x���g�摜�w��Fev46i
;mm 901�𓥂�ł���TV�d�l �������邵���Ȃ���
[evcg storage="ev46i" y=0 tvoff cond="f.l_s901 == 0"][evcg storage="ev46i" y=0 tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5448|
[fc]
�O�l�̖��@�����͐G��Ɏ����̐g�ƂȂ�A����ȖڂŒ��Ɏ����グ���Ă����B[pcms]

*5449|
[fc]
���̎���ɂ͒j�B������A�ޏ��B�̔ߒɂȎp��O�̂߂�ɋÎ����Ă���B[pcms]

;//���̃V�[���̘b�ҁF���̓��[�W����
*5450|
[fc]
[vo_aka s="akane_0450"]
[�y���z name=���[�W��]
�u���c�c�₟�A�����c�c�����c�c�v[pcms]

[sysbt_meswin clear]
[move layer=0 time=2000 accel=1 path="(0,-450,255)"][wm canskip=true]
[evcg storage="ev46i" y=-450 tvoff cond="f.l_s901 == 0"][evcg storage="ev46i" y=-450 tv cond="f.l_s901 == 1"][trans_c cross time=0]


;//���̃V�[���̘b�ҁF���̓��B�I����
*5451|
[fc]
[vo_aoi s="aoi_0419"]
[�y���z name=���B�I��]
�u�Ђ��A�͂��c�c�����A�����A�ꂵ���c�c�v[pcms]

[sysbt_meswin clear]
[move layer=0 time=2000 accel=1 path="(0,-750,255)"][wm canskip=true]
[evcg storage="ev46i" y=-750 tvoff cond="f.l_s901 == 0"][evcg storage="ev46i" y=-750 tv cond="f.l_s901 == 1"][trans_c cross time=0]


;//���̃V�[���̘b�ҁF�~�A�̓u������
*5452|
[fc]
[vo_mia s="mia_0539"]
[�y�~�A�z name=�u����]
�u�����āc�c�����₾���c�c���A�������c�c�v[pcms]

*5453|
[fc]
�ǂ�قǂ̐��t�𗁂т���ꂽ�̂��A�_���ɂ͐��t���]���Ƃ���Ȃ��Ԃ��܂����Ă���B[pcms]

*5454|
[fc]
�J�����ςȂ��ɂȂ��Ă����􂩂�����������ꗎ���A�ޏ��B�̔ߎS�Ȍ��󂪘I��ɂȂ��Ă����B[pcms]

*5455|
[fc]
[�y�~�Y�`�z]
�u�N�N�N�c�c������l�����Ȃ����̂��B���Ⴊ�A���͂��ꂩ�炶��v[pcms]

*5456|
[fc]
[vo_aka s="akane_0451"]
[�y���z name=���[�W��]
�u����ȁc�c������߁c�c�v[pcms]

*5457|
[fc]
������f���o���Ȃ���A�����܂Ȃ���ɍ��肷��B[pcms]

*5458|
[fc]
[�y�~�Y�`�z]
�u�����A�ҋ���B���̖��B�����Ď���Ƃ������Ƃ͎v��ʂ��H�@�~�]�𖞂��������Ǝv���҂́A�O�ɏo��v[pcms]

*5459|
[fc]
[ns]�j���`[nse]
�u�}�W���I�@���A���͍s�����I�v[pcms]

*5460|
[fc]
[ns]�j���a[nse]
�u�����䖝�o���˂��I�v[pcms]

*5461|
[fc]
����Ō��Ă����j�B�͉��ɂƕ��ݏo�āA���@�����B�̌��ɋl�߂�����B[pcms]

*5462|
[fc]
�ނ���}����悤�ɁA�G��͈��B�𓮂������B[pcms]

[stopse_fadeout buf=2 time=500]

;//�C�x���g�摜�w��Fev41a
[evcg storage="ev41a" cond="f.l_s901 == 0"][evcg storage="ev41a" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5463|
[fc]
[vo_mia s="mia_0540"]
[�y�~�A�z name=�u����]
�u���A�L���c�c����Ȃ̂ɁA��������Č����́H�v[pcms]

*5464|
[fc]
�j�B�̑O�ɕ��ׂ�ꂽ�~�A�B�́A�G��ɂ���Ęr�𓮂�����A�y�j�X�𖳗�����炳���B[pcms]

*5465|
[fc]
�M��тт����_�̊��G�͋C���������ȊO�̉����ł��Ȃ��A�O�l�͂������Ĕ����Ђ��߂��B[pcms]

*5466|
[fc]
[�y�~�Y�`�z]
�u�ނ�ɕ�d���Ă��A���@�����B�����܂ł��Ȃ����A�f��΁c�c�������Ă��邶��낤�H�v[pcms]

[se buf=0 storage="seD022"]

*5467|
[fc]
�~�Y�`�͐G�������点�A�j�B�̔w��Ɋ������������B[pcms]

*5468|
[fc]
�ނ�͎��o���Ă��Ȃ��悤�����A���B�Ɏ���Ă݂�Η~�]�𔍂��o���ɂ����l���Ȃ̂��B[pcms]

*5469|
[fc]
[vo_aka s="akane_0452"]
[�y���z name=���[�W��]
�u�Œ�c�c����Ȃ́A�f���킯�Ȃ�����Ȃ��v[pcms]

*5470|
[fc]
�ނ�̑ԓx�͑������ׂ����x���Ȃ̂ɁA�ނ�ׂ̈ɕ�d���Ȃ���΂Ȃ�Ȃ��B[pcms]

*5471|
[fc]
�������銴��Ԃ��肠���A�S���a�݂��グ��B[pcms]

*5472|
[fc]
[vo_aoi s="aoi_0420"]
[�y���z name=���B�I��]
�u��d����ȊO�A�I�����͂Ȃ���ł��ˁc�c����A�����v[pcms]

[se buf=1 storage="SE4140_2" loop]

*5473|
[fc]
���͊��ɐS���܂�Ă���̂��A�f���ɗ���Œ͂񂾃y�j�X���������Ȃ�[ruby_c t="��" r="����"]���n�߂�B[pcms]

*5474|
[fc]
���͉��������ɂ��Ȃ���A�~�A�͋����Ȃ��瓯���悤�ɓ��_��[ruby_c t="��" r="����"]���n�߂��B[pcms]

*5475|
[fc]
[vo_aka s="akane_0453"]
[�y���z name=���[�W��]
�u���c�c����Ȃ��Ƃ��āA�{���ɂ����Ǝv���Ă�́H�v[pcms]

*5476|
[fc]
[ns]�j���`[nse]
�u�����񂶂�Ȃ����H�@�_����������A���������Ƃ����̐̂Ɏ~�߂��Ă邳�v[pcms]

*5477|
[fc]
[vo_mia s="mia_0541"]
[�y�~�A�z name=�u����]
�u�����ƕ�d���邩��A�������Ƃ��Ȃ��Łc�c�v[pcms]

*5478|
[fc]
[ns]�j���a[nse]
�u�������Ȃ��A�N�������ƋC�����ǂ����Ă��ꂽ��l���Ă��������ȁB����c�c���������A���������v[pcms]

*5479|
[fc]
[vo_aoi s="aoi_0421"]
[�y���z name=���B�I��]
�u����A�����c�c�ʂ�ʂ邵�āA�C���������c�c����ɁA�����������c�c�v[pcms]

*5480|
[fc]
[ns]�j���b[nse]
�u�����A�����ˁB����ȉ����q�ɕ�d���Ă��������A�C���������Ɍ��܂��Ă邶��Ȃ����v[pcms]

*5481|
[fc]
�j�B�̗������䖝�`�����A�ُL��˂����Ă���B[pcms]

*5482|
[fc]
�O���e�X�N�Ȍ����ڂɉ����ċC���������ԓx�Ƃ���ȓ����̎O�d����󂯁A�s�k���ɑł��Ђ������O�l�B[pcms]

*5483|
[fc]
�����ɂ܂݂�Ȃ����d����ޏ��B�̎p�ɁA��d���󂯂Ă��Ȃ��j�B�͋�����}������Ȃ��Ȃ��Ă����B[pcms]

*5484|
[fc]
[ns]�j���c[nse]
�u���������A�҂��Ă��˂��I�@���ɂ͌��ŕ�d���Ă��炤���I�v[pcms]

*5485|
[fc]
[ns]�j���d[nse]
�u���A�����I�@���ł����Ղ��r�߉񂵂Ă���v[pcms]

;[stopse_fadeout buf=1 time=500]

;//�C�x���g�摜�w��Fev41b
[evcg storage="ev41b" cond="f.l_s901 == 0"][evcg storage="ev41b" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5486|
[fc]
[vo_aka s="akane_0454"]
[�y���z name=���[�W��]
�u�ނ����A�������I�@���ق��A���ق��A��ނ��A����A����Ԃ���A���Ԃ�����I�v[pcms]

[bgv_aka fella01]

*5487|
[fc]
[vo_aoi s="aoi_0422"]
[�y���z name=���B�I��]
�u�񂮂������I�@�����A����Ԃ���A��Ԃ��A�����A������c�c�v[pcms]

[bgv_aoi fella01]

*5488|
[fc]
[vo_mia s="mia_0542"]
[�y�~�A�z name=�u����]
�u�񂮂��A��Ԃ��A�񂣂��������I�@�����A����Ԃ���A���Ԃ��A�����A����Ԃ�����I�v[pcms]

[bgv_mia fella01]

*5489|
[fc]
�����Ƀy�j�X���˂����܂�A�O�l�͂����������ߖ��グ��B[pcms]

*5490|
[fc]
��������̊ԁA�����Ƀy�j�X�����x����������A����Ȑ������������Ă�������B[pcms]

*5491|
[fc]
[ns]�j���c[nse]
�u�������A���̒��ō��I�@���`���N�`���C���������I�v[pcms]

*5492|
[fc]
[ns]�j���d[nse]
�u�Ȃ񂾂���A�z���s�����ꂻ�����I�v[pcms]

*5493|
[fc]
[ns]�j���e[nse]
�u�オ���݂��Ă���I�@�����A���ɂ��C�L�����I�v[pcms]

*5494|
[fc]
�j�B�͌������y�j�X��˂����ĂȂ���A�ޏ��B�̌����ւƉ䖝�`��h�肽�����Ă����B[pcms]

*5495|
[fc]
���̓{���͌������z�����A���ɂ��������O�������B[pcms]

*5496|
[fc]
[vo_aka s="akane_0455"]
[�y���z name=���[�W��]
�u��Ԃ��A���Ԃ��A�����������I�@��߂ꂥ���A����Ԃ��A�������A���ギ���A��������I�v[pcms]

*5497|
[fc]
[vo_aoi s="aoi_0423"]
[�y���z name=���B�I��]
�u�����A�����A����Ԃ���c�c�����A�����A�����c�c���₟�c�c�v[pcms]

*5498|
[fc]
[vo_mia s="mia_0543"]
[�y�~�A�z name=�u����]
�u�������A��������A����Ԃ�����I�@��Ԃ����A�������A�������ꂥ�c�c�����A��������v[pcms]

*5499|
[fc]
[ns]�j���c[nse]
�u�����A���o�C�o����I�v[pcms]

*5500|
[fc]
[�y�~�Y�`�z]
�u�������邱�Ƃ͂Ȃ��B�����̊�ɗ~�]�𑶕��ɂԂ��܂��Ă�邪�����v[pcms]

*5501|
[fc]
�~�Y�`�̌��t�ɔw���������ꂽ�j�B�́A�䖝���邱�ƂȂ����̗~�]�𔚔��������B[pcms]

;//�C�x���g�摜�w��Fev41c
[evcg�ː��t�� storage="ev41c" cond="f.l_s901 == 0"][evcg�ː��t�� storage="ev41c" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[bgvstop_chara01]

*5502|
[fc]
[vo_aka s="akane_0456"]
[�y���z name=���[�W��]
�u���႟�������������I�@�M�����A���Ԃ��A�������������I�v[pcms]

[se buf=0 storage="se_sex01"]
[���t��]
[bgvstop_chara02]

*5503|
[fc]
[vo_aoi s="aoi_0424"]
[�y���z name=���B�I��]
�u�₟�����I�@��߂��A�������A�Ђ����A�񂟂��A�����������c�c�v[pcms]

[se buf=0 storage="se_sex01"]
[���t��]
[bgvstop_chara03]

*5504|
[fc]
[vo_mia s="mia_0544"]
[�y�~�A�z name=�u����]
�u���₟���������I�@��߂Ă��A��ɂ����Ȃ��ł����A�������������I�v[pcms]

*5505|
[fc]
���������ꂽ�y�j�X����O�Ŏː����A�ޏ��B�̊�𔒑��őłB[pcms]

*5506|
[fc]
��юU��M���S�t�Ɋ�������߂Ĕߖ��グ�閂�@�����B�ɁA����Ō��Ă���j�B������������Ă��܂��B[pcms]

*5507|
[fc]
����Ɏː��𗁂т������ł���ɗ͂�����A��R�L�����Ă���j�B�̃y�j�X�����肵�߂Ă��܂����B[pcms]

*5508|
[fc]
[ns]�j���`[nse]
�u�����A�����o����c�c�I�v[pcms]

[se buf=0 storage="se_sex01a"]
[���t��]

;//�C�x���g�摜�w��Fev41d
[evcg storage="ev41d" cond="f.l_s901 == 0"][evcg storage="ev41d" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5509|
[fc]
��R�L������Ă����j�B���ː����A�����܂݂�ɂȂ�����ɂ���Ȃ锒���܂�d�Ȃ��Ă����B[pcms]

*5510|
[fc]
[vo_aka s="akane_0457"]
[�y���z name=���[�W��]
�u�������������I�@�܂��������Ă��c�c��߂��A���₟�����������I�v[pcms]

*5511|
[fc]
[vo_mia s="mia_0545"]
[�y�~�A�z name=�u����]
�u����������A�����Ȃ��ł����I�@�������������������I�v[pcms]

*5512|
[fc]
�����̔ߖƒj�B�̎ː����ٗl�ȋ�C�������o�����ꂪ����Ɏ���ւƓ`�d���Ă����B[pcms]

*5513|
[fc]
�ނ�̎ː����I��鍠�ɂ́A�ӂ�ɂ����j�B�̎ː����~�蒍�����B[pcms]

[se buf=0 storage="se_sex01"]
[���t��]
;//�C�x���g�摜�w��Fev41e
[evcg storage="ev41e" cond="f.l_s901 == 0"][evcg storage="ev41e" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5514|
[fc]
[vo_aoi s="aoi_0425"]
[�y���z name=���B�I��]
�u���A�����������������I�@�܂����t���c�c�����������I�@���������������I�v[pcms]

*5515|
[fc]
[vo_aka s="akane_0458"]
[�y���z name=���[�W��]
�u��߂Ă��A������߂Ă����I�@�����������������I�v[pcms]

*5516|
[fc]
[vo_mia s="mia_0546"]
[�y�~�A�z name=�u����]
�u�M�����A���t�Ńh���h���ɂȂ����Ⴄ�����������������I�v[pcms]

*5517|
[fc]
�������j�B�̐��t�𗁂сA�ߖ��グ�����閂�@�����B�B[pcms]

*5518|
[fc]
�ߖ��グ��Ώグ��قǎ��肩��̎ː��͑����A������܂�Ƌ��Ɏː������܂��Ă������B[pcms]

;//�C�x���g�摜�w��Fev41f
[evcg storage="ev41f" cond="f.l_s901 == 0"][evcg storage="ev41f" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5519|
[fc]
[vo_aka s="akane_0459"]
[�y���z name=���[�W��]
�u���A�����c�c�������c�c���A���t�A�C���������c�c�v[pcms]

*5520|
[fc]
[vo_aoi s="aoi_0426"]
[�y���z name=���B�I��]
�u���������ĉ������c�c���t�́c�c���₟�c�c���v[pcms]

*5521|
[fc]
[vo_mia s="mia_0547"]
[�y�~�A�z name=�u����]
�u�L���c�c�����c�c������߂āc�c�������v[pcms]

*5522|
[fc]
�����ɂ܂݂�ĕ����鈩�B��j�B�͖��������Ɍ����낷�B[pcms]

*5523|
[fc]
�j�B�̏b�~��ޏ��B����g�Ɏ󂯎~�߂����Ƃɖ��������o���Ă���̂��A���̊�͖��@�����Ɛ����΂ɏΊ炾�����B[pcms]

*5524|
[fc]
[�y�J�N�G���z]
�u�����ƁA�x��ł�ɂ͂Ȃ����H�@�܂��Ă߂����Ƃ������z��͎R�قǂ���񂾂���ȁH�v[pcms]

*5525|
[fc]
�J�N�G���̌��t���ؖ����邩�̂悤�ɁA�ʂ̒j�B�����B�ɏP���������Ă����B[pcms]

[se storage="&sf.SE�}��_�l"]
[���t��]
;//�C�x���g�摜�w��Fev42a
[evcg storage="ev42a" cond="f.l_s901 == 0"][evcg storage="ev42a" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[se buf=1 storage="&sf.SE�s�X�g��_�l_��" loop]

*5526|
[fc]
[vo_aka s="akane_0460"]
[�y���z name=���[�W��]
�u�Ђ������������I�@�����Ȃ艜�܂Łc�c�������������I�v[pcms]

[bgv_aka toiki03]

*5527|
[fc]
[ns]�j���f[nse]
�u�������A���ꂪ���@�����̃}���R���A���̋z���t���悤�A���������I�v[pcms]

*5528|
[fc]
[vo_aoi s="aoi_0427"]
[�y���z name=���B�I��]
�u�񂟂��A�Ђ����������I�@���\�ɂ��Ȃ��Łc�c�񂟂��A�����A�������������I�v[pcms]

[bgv_aoi toiki03]

*5529|
[fc]
[ns]�j���g[nse]
�u���A����ȋC���������̂ɂ̂�т�Ȃ񂩂��Ă��邩�I�@���̂�����������Ԃ��Ă��I�v[pcms]

*5530|
[fc]
[vo_mia s="mia_0548"]
[�y�~�A�z name=�u����]
�u�񂟂��A�������A�Ђ����������I�@������A�Ƃ��Ȃ��ł��A�����Ă��������I�v[pcms]

[bgv_mia toiki03]

*5531|
[fc]
[ns]�j���h[nse]
�u�����˂��A���A���ɂ���Ȍ��t�������ꂽ��A�R���オ�����Ⴄ��ˁI�v[pcms]

*5532|
[fc]
�j�B�͌����鈩�B�̎p�ɋ������A�͔C���ɍ���U��B[pcms]

*5533|
[fc]
�����Ȃǂ܂�Ŋo���Ȃ����~�ɂ܂݂ꂽ���C�v�ɁA�敾�����ޏ��B�̐S�Ƒ̂��Ƃ���Ă����B[pcms]

*5534|
[fc]
[ns]�j���i[nse]
�u�����o����A�オ�����Ă�񂾂��H�v[pcms]

*5535|
[fc]
[ns]�j���f[nse]
�u�������Ă��B�������A�����o����I�v[pcms]

*5536|
[fc]
[vo_mia s="mia_0549"]
[�y�~�A�z name=�u����]
�u������A�o���Ȃ��ŁI�@���́c�c���͂��߂��������I�v[pcms]

*5537|
[fc]
[vo_aoi s="aoi_0428"]
[�y���z name=���B�I��]
�u���肢�ł����A�O�Ɂc�c���́A�������́c�c�񂟂��A�����������I�v[pcms]

*5538|
[fc]
[ns]�j���g[nse]
�u�m�邩�I�@���͒��o���������񂾁A�����璆�ɏo�����I�v[pcms]

*5539|
[fc]
[vo_aka s="akane_0461"]
[�y���z name=���[�W��]
�u������A���͂��₟���I�@��߂Ă��A�����Ă��A�����A�����A�����A�������������������I�v[pcms]

;//�C�x���g�摜�w��Fev42b
[evcg�ː��t�� storage="ev42b" cond="f.l_s901 == 0"][evcg�ː��t�� storage="ev42b" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[bgvstop_chara01]

*5540|
[fc]
[vo_aka s="akane_0462"]
[�y���z name=���[�W��]
�u�������������I�@���ɂ��A���ɏo�Ă那�����������I�v[pcms]

[bgvstop_chara02]

*5541|
[fc]
[vo_aoi s="aoi_0429"]
[�y���z name=���B�I��]
�u���₟�������I�@�����Ă��A�����Ă������������I�v[pcms]

[bgvstop_chara03]

*5542|
[fc]
[vo_mia s="mia_0550"]
[�y�~�A�z name=�u����]
�u���߂��A���߂����������I�@�o���Ȃ��ł��A���肢���A�₾�������������I�v[pcms]

*5543|
[fc]
���B�̊肢���������A�j�B�͗��\�Ƀy�j�X��˂����Đ��t�𗬂����ށB[pcms]

*5544|
[fc]
���̐����ɐg��k�킹����̂́A�����ɉ��y�͂Ȃ��B[pcms]

*5545|
[fc]
�p�J�Ƌ��|�ɋ����Ă��邾���ŁA���B�ɂƂ��ĐS�n�悢���̂Ȃǉ���Ȃ������B[pcms]

[se buf=0 storage="SE4140"]
[���t��]

;//�C�x���g�摜�w��Fev42c
[evcg storage="ev42c" cond="f.l_s901 == 0"][evcg storage="ev42c" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5546|
[fc]
[ns]�j���h[nse]
�u�͂����A�͂����c�c�ӂ��A�C�����ǂ������v[pcms]

*5547|
[fc]
[vo_aoi s="aoi_0430"]
[�y���z name=���B�I��]
�u���A�������c�c�����c�c�����̒��ɁA��������c�c�v[pcms]

*5548|
[fc]
�y�j�X�������������ƁA��􂩂琸�t���ǂ��ƈ��o���B[pcms]

*5549|
[fc]
�j�B�ɂ��K�������A���t�𐂂炷�ޏ��B�̎p�͎��ɐ��I�ŁA�҂��Ă���j�B�̓��~������ɂ������Ă�B[pcms]

*5550|
[fc]
���B���r�����𐮂���Ԃ��Ȃ��A���̒j�B�������Ŕޏ��B�̔����т����B[pcms]

[se storage="&sf.SE�}��_�l"]
[���t��]

;//�C�x���g�摜�w��Fev42d
[evcg storage="ev42d" cond="f.l_s901 == 0"][evcg storage="ev42d" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[se buf=1 storage="&sf.SE�s�X�g��_�l_��" loop]

*5551|
[fc]
[vo_mia s="mia_0551"]
[�y�~�A�z name=�u����]
�u�񂟂������������I�@����Ȃ��A�������o���ꂽ�΂���Ȃ̂ɂ��I�@�񂟂��A�����A�񂟂��A�������������I�v[pcms]

[bgv_mia toiki03]

*5552|
[fc]
[vo_aka s="akane_0463"]
[�y���z name=���[�W��]
�u�Ђ����A�������������I�@�����������I�@�₾���A���܂񂱁A��ꂿ�Ⴄ�������������I�v[pcms]

[bgv_aka toiki03]

*5553|
[fc]
[vo_aoi s="aoi_0431"]
[�y���z name=���B�I��]
�u��߂Ă����A���������ĉ��������A�����āc�c�񂟂����������I�v[pcms]

[bgv_aoi toiki03]

*5554|
[fc]
�~�A�B�̂��K��͂݁A����������ł��t����j�B�B[pcms]

*5555|
[fc]
���܂Œ��߂邱�Ƃ����o���Ȃ������j�B�́A����܂ł̗~�]����C�ɉ������Ƃ��Ƃ��邩�̂悤�Ɍ������~�A�B��Ƃ��B[pcms]

*5556|
[fc]
[vo_mia s="mia_0552"]
[�y�~�A�z name=�u����]
�u�������A�͂����A�������������I�@���\�ɂ��A���Ȃ��ł����A���肢���A�����������A�Ђ����������I�v[pcms]

*5557|
[fc]
[ns]�j���i[nse]
�u���B�ɂ��񂴂�G�����p�������Ă����āA�������Ă₪��I�v[pcms]

*5558|
[fc]
[ns]�j���j[nse]
�u�������������A�ӔC�͎���Ă��炤����ȁI�v[pcms]

*5559|
[fc]
�j�B�͏���ȗ����������A���\���S���������񂷁B[pcms]

*5560|
[fc]
�����͈�C�ɉ������A�~�A�B�ɍĂъ�@��������オ���Ă���B[pcms]

*5561|
[fc]
[vo_mia s="mia_0553"]
[�y�~�A�z name=�u����]
�u���A���₟���c�c�����o���Ȃ��ł����A�����A�p���p���ɂȂ����Ⴄ�c�c�񂟂��A�񂮂��A�����������I�v[pcms]

*5562|
[fc]
[vo_aka s="akane_0464"]
[�y���z name=���[�W��]
�u�ɂ����A���������I�@����ȗ��\�ɂ��Ȃ��ł����A������A�����Ă��A������߂Ă����I�v[pcms]

*5563|
[fc]
[ns]�j���k[nse]
�u�������A���낻��䖝�̌��E������ȁB�����Ղ蒆�ɏo�������߂Ă���I�v[pcms]

*5564|
[fc]
[vo_aoi s="aoi_0432"]
[�y���z name=���B�I��]
�u����Ȃ��I�H�@�������������ς��Ȃ̂Ɂc�c�񂟂��A�����A�������������I�v[pcms]

*5565|
[fc]
[vo_mia s="mia_0554"]
[�y�~�A�z name=�u����]
�u������A�₾���A�N�������Ă����I�@�񂟂��A�����A�Ђ����I�@�܂����ɓ����Ă��Ă��A���߂��A�������߂��A������A�����A�������������������I�v[pcms]

;//�C�x���g�摜�w��Fev42e
[evcg�ː��t�� storage="ev42e" cond="f.l_s901 == 0"][evcg�ː��t�� storage="ev42e" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5566|
[fc]
�~�A�̋��т��������A�j�B���S���Ɍ������ė~�]���������B[pcms]

*5567|
[fc]
�ٓ��Ŗ�������y�j�X�Ɖ����t���������܂�Ă������o�𖡂�킳��Ȃ���A�~�A�B�͍r�����ߑ������B[pcms]

[bgvstop_chara03]

*5568|
[fc]
[vo_mia s="mia_0555"]
[�y�~�A�z name=�u����]
�u�܂��c�c���Ɂc�c���₾���Č������̂ɁA�����c�c�v[pcms]

[bgvstop_chara01]

*5569|
[fc]
[vo_aka s="akane_0465"]
[�y���z name=���[�W��]
�u�񂟂��A�͂����A�͂����A�������c�c�������₟�c�c�����A�ꂵ���c�c���v[pcms]

[bgvstop_chara02]

*5570|
[fc]
[vo_aoi s="aoi_0433"]
[�y���z name=���B�I��]
�u�搶�ȊO�̐��t���܂������Ɂc�c�������A���߂�Ȃ����A���߂�Ȃ����c�c�v[pcms]

*5571|
[fc]
���͂��R����C�͂��Ȃ��A������Ȃ���ꂭ���@�����B�B[pcms]

*5572|
[fc]
�����A�~�]�𖞂����Ă��Ȃ��j�B�͂܂��c���Ă����B[pcms]

*5573|
[fc]
[ns]�j���l[nse]
�u�}���R�̒��A���̓z��̐��t�܂݂ꂶ��Ȃ����c�c��������A���̌��̕��������ȁv[pcms]

*5574|
[fc]
[ns]�j���m[nse]
�u�������ȁB���Ⴀ�A���͂������̏��̎q�ɂ���B���O�͂������̎q�ł�������v[pcms]

*5575|
[fc]
�w�ォ�畷�����Ă���j�B�̐��͂悭�������Ȃ��������̂́A���R�Ɣ������Đg�̂��k����B[pcms]

*5576|
[fc]
�����āA���̌��ȗ\���͔߂������ȓI�����Ă��܂����B[pcms]

[se storage="&sf.SE�}��_�l"]
[�ԃt�� cond="f.l_s901 == 0"]
[���t�� cond="f.l_s901 == 1"]

;//�C�x���g�摜�w��Fev42f
[evcg storage="ev42f" cond="f.l_s901 == 0"][evcg storage="ev42f" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[se buf=1 storage="&sf.SE�s�X�g��_�l_��" loop]

*5577|
[fc]
[vo_aka s="akane_0466"]
[�y���z name=���[�W��]
�u�Ђ��������������I�@���A�����������������I�@�ɂ����A���߂��A�����Ă����������I�v[pcms]

[bgv_aka toiki03]

*5578|
[fc]
[ns]�j���l[nse]
�u�����A����ς�A�i���̕��������ȁB���܂���L�c�C���A���̓z��ɉ�����ĂȂ����v[pcms]

*5579|
[fc]
��O�͓�x�ɂ킽�闽�J�̂����łς�����ƊJ���A����ɐ��t��낷�����̌��Ɖ����Ă����B[pcms]

*5580|
[fc]
[vo_aoi s="aoi_0434"]
[�y���z name=���B�I��]
�u�񂮂��A�񂟂��A�������������I�@�����́A�Ⴄ���c�c�����񂿂�A�����Ƃ��낶��Ȃ��c�c�����������I�v[pcms]

[bgv_aoi toiki03]

*5581|
[fc]
[ns]�j���m[nse]
�u�����񂾂�ʂɁB���B���C�����ǂ���΂���ł��I�v[pcms]

*5582|
[fc]
[vo_mia s="mia_0556"]
[�y�~�A�z name=�u����]
�u����ȁc�c�Ђ����A�������A�����������I�@���K���A�Ă��那���I�@�Ђ��A�Ђ���A�Ђ�����I�@�����߂Ȃ��ł����c�c�v[pcms]

[bgv_mia toiki03]

*5583|
[fc]
�����������Ă��܂������B���A�j�B�͗e�͂Ȃ�������˂����Đӂߗ��Ă�B[pcms]

*5584|
[fc]
�x�d�Ȃ钊���ō����U�X�U��ꂽ�����ŁA�����͂�����Ȃ��B[pcms]

*5585|
[fc]
�j�B�̎�ŗ��\�ɍ���O��ɗh�蓮������Ȃ��璼����Ƃ���A㵒p�S�Ƌ��J���A��������s�̒ɂ݂��₦�ԂȂ��]����@���B[pcms]

*5586|
[fc]
[ns]�j���n[nse]
�u�����A�����������I�@���̒��ߕt����΂����I�@�o�����A�o�������I�v[pcms]

*5587|
[fc]
[ns]�j���l[nse]
�u���������I�@���܂ŉ䖝�������������Ղ�A�i���ɂԂ�����ł��I�v[pcms]

*5588|
[fc]
[vo_aka s="akane_0467"]
[�y���z name=���[�W��]
�u��A��߂āc�c����ȂƂ���܂ŔƂ��Ȃ��Łc�c�񂟂��A�������A����A�񂮂��A���������������I�v[pcms]

*5589|
[fc]
[vo_aoi s="aoi_0435"]
[�y���z name=���B�I��]
�u�͂Ђ��A�Ђ��A�Ђ�����I�@�񂟂��A�����A�������������I�@�N���c�c�搶���c�c�����āc�c�񂟂��A���������������I�v[pcms]

*5590|
[fc]
[vo_mia s="mia_0557"]
[�y�~�A�z name=�u����]
�u������A�������₟���I�@�����Ă��A�Ƃ��Ȃ��ł����A�����ɂ��̂��M���̂����₟���I�@�����A�����A�����c�c�킟�������������I�v[pcms]

;//�C�x���g�摜�w��Fev42g
[evcg�ː��t�� storage="ev42g" cond="f.l_s901 == 0"][evcg�ː��t�� storage="ev42g" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5591|
[fc]
�O�l�������ɒ����ː����󂯁A��𔽂炵�ċ������ԁB[pcms]

*5592|
[fc]
���̗l�q�����Ă�������̒j�B������ː����󂯁A�g�̂̓��ƊO�����q����Ă����B[pcms]

[se buf=0 storage="se_sex01"]
[���t��]

*5593|
[fc]
[vo_aoi s="aoi_0436"]
[�y���z name=���B�I��]
�u���������������I�@���₟�������������I�@�������A�M�������A�Ђ����������������I�v[pcms]

*5594|
[fc]
[vo_mia s="mia_0558"]
[�y�~�A�z name=�u����]
�u������A���₟�����������I�@�M�����A�����Ȃ��ł����������������I�v[pcms]

*5595|
[fc]
[ns]�j���o[nse]
�u����ȃG�����i�D�ŉ��B��U�f����̂������񂾁B����ȓz��ɂ͂��������̊i�D�ɂ��Ă��I�v[pcms]

*5596|
[fc]
���x���ː����O�l�ɍ~�蒍���A�����̊C�ɒ���ł����B[pcms]

*5597|
[fc]
[vo_aka s="akane_0468"]
[�y���z name=���[�W��]
�u����c�c�݂�ȍ�������c�c��߂Ă�c�c���肢�c�c�������₟�����������������I�v[pcms]

[bgvstop_chara01]
[bgvstop_chara02]
[bgvstop_chara03]

[se buf=0 storage="SE4140"]
[���t��]

;//�C�x���g�摜�w��Fev42h
[evcg storage="ev42h" cond="f.l_s901 == 0"][evcg storage="ev42h" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5598|
[fc]
�悤�₭�ː����I���A���B�͒j�B�����������B[pcms]

*5599|
[fc]
�y�j�X�����������ꂽ�A�i���͑傫�������󂢂��܂܂ɂȂ�A��􂩂���o�������t�Ƌ��ɂ��ڂꗎ���Ă����B[pcms]

*5600|
[fc]
���܂�ɖ��c�ȗl���N���ޏ��B���A�j�B�͗~�]�ɖ������ڂŌ��߂Ă����B[pcms]

*5601|
[fc]
[�y�J�N�G���z]
�u�����i�D�ɂȂ�������˂����A���@�����B���ꂶ��A���낻��I�����d�グ�����Ă�邺�v[pcms]

*5602|
[fc]
[vo_aka s="akane_0469"]
[�y���z name=���[�W��]
�u���c�c���c�c�܂��A�Ƃ����́c�c�H�v[pcms]

*5603|
[fc]
[vo_mia s="mia_0559"]
[�y�~�A�z name=�u����]
�u����ȁc�c�₾�A�₾�悧�c�c�搶�A�����Ă��c�c���v[pcms]

*5604|
[fc]
�~�A�B�̍���ɁA��������L�ׂ�҂����Ȃ���΁A����������Ȃ��B[pcms]

*5605|
[fc]
�����āA�����߂ɃJ�N�G���̘r������͂񂾁B[pcms]


;

;mm ���ڍ��W����
;��   -615
;��   -1279
;�~�A 0
;���͕\���͈͂Ɍ��肪���邩��ϐ��̂ق��������񂶂�ˁH
[eval exp="f.ev_x_aka = -615"]
[eval exp="f.ev_x_aoi = -1279"]
[eval exp="f.ev_x_mia = 0"]

;//�C�x���g�摜�w��Fev45a
[evcg storage="ev45a" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45a" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[se buf=1 storage="&sf.SE�s�X�g��_�l�O" loop]

*5606|
[fc]
[vo_aka s="akane_0470"]
[�y���z name=���[�W��]
�u��c�c����c�c�����������������I�@�ӁA�������那�������I�v[pcms]

[bgv_aka to01]

*5607|
[fc]
[�y�J�N�G���z]
�u������O���B�I���l�̃`���|��l�ԕ���ƈꏏ�ɂ��񂶂�˂��v[pcms]

*5608|
[fc]
��납��J�N�G���ɕ����グ��ꂽ���ɁA�ɑ��y�j�X���[���˂��h����B[pcms]

*5609|
[fc]
�j�B�ɂ���Ăق����ꂽ�S���A�J�N�G���̃y�j�X��������ނɂ͂܂����肸�A�G�ꂽ�S���������ɉ����L�����Ēɂ݂�i�������Ă����B[pcms]

;�V�X�e���{�^�����E�B���h�E����
[sysbt_meswin clear]
[move layer=0 time=2000 accel=1 path="(-1279,0,255)"][wm canskip=true]
[evcg storage="ev45a" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45a" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=0]


*5610|
[fc]
[vo_aoi s="aoi_0437"]
[�y���z name=���B�I��]
�u�Ђ����������I�@�܂����܂񂱂ɂ����c�c�Ђ����A�Ђ����A�����������I�v[pcms]

[bgv_aoi to01]

*5611|
[fc]
[�y�����`�z name=��������]
�u�q�q�b�A���ꂪ�A���J�i���B�I���̃}���R���B�Ȃ��Ȃ��ǂ������˂����v[pcms]

[sysbt_meswin clear]
[move layer=0 time=2000 accel=1 path="(0,0,255)"][wm canskip=true]
[evcg storage="ev45a" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg storage="ev45a" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"][trans_c cross time=0]


*5612|
[fc]
[vo_mia s="mia_0560"]
[�y�~�A�z name=�u����]
�u�񂮂��A�����A�����������I�@�[�����ꂷ�����������c�c���₟���A�����A�����񂳂Ȃ��ł��c�c�v[pcms]

[bgv_mia to01]

*5613|
[fc]
[�y�����`�z name=��������]
�u�Q�q�q�b�A�u���������܂�˂��ȁB���ꂾ���Ƃ��ꂽ�̂ɁA�܂��L�c�����ߕt���Ă��₪��v[pcms]

*5614|
[fc]
���ƃ~�A�ɂ͉��������������グ�A�l���J�r�̌`�Ɏ����グ�ĔƂ����B[pcms]

*5615|
[fc]
�����症���R�̊i�D�ɂȂ��Ă���Ƃ͂����A��������l�X�Ɍ�������悤�Ȋi�D�ɂ�㵒p�S�������Ă��܂��B[pcms]

*5616|
[fc]
[ns]�j���p[nse]
�u�����A�肪�V��ł邼�B�������艴�B�̃`���|�ɂ���d�����v[pcms]

;�V�X�e���{�^�����E�B���h�E����
[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-1279,0,255)"][wm canskip=true]
[evcg storage="ev45a" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45a" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5617|
[fc]
[vo_aoi s="aoi_0438"]
[�y���z name=���B�I��]
�u���A�������c�c�́A���c�c�񂟂��A�����A�͂��A�͂���A����A������v[pcms]

*5618|
[fc]
���͂��͂��R����C�͂��Ȃ��A�����邪�܂ܒj�B�̃y�j�X�������ĕ�d���n�߂�B[pcms]

*5619|
[fc]
���ƃ~�A���A����Ƀy�j�X�����炳��A���₢���d���������Ă����B[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(0,0,255)"][wm canskip=true]
[evcg storage="ev45a" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg storage="ev45a" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5620|
[fc]
[vo_mia s="mia_0561"]
[�y�~�A�z name=�u����]
�u�͂����A�͂����c�c�����A��c�c�킽���̔��łȂɂ��c�c���A�������c�c�v[pcms]

*5621|
[fc]
[ns]�j���q[nse]
�u�ււ��A��x���R�L������Ă݂��������񂾂�ȁB���傤�ǂ�����������Ȃ����v[pcms]

*5622|
[fc]
[vo_mia s="mia_0562"]
[�y�~�A�z name=�u����]
�u��A��߂āc�c�킽���̔����q���Ȃ��Łc�c�񂟂��A�񂮂��A�񂟂��A�����A�����A������I�v[pcms]

*5623|
[fc]
[ns]�j���q[nse]
�u�������Ă�񂾁H�@���X����ĂȂ��Ƃ���Ȃ�ĂȂ�����H�@�������甯�R�L�������ĕς��Ȃ����Ắv[pcms]

*5624|
[fc]
�����A�S�g�����܂Ȃ������ɔƂ���Ă������̂́A��͂莩���̔����G���ړI�Ɏg����̂̓~�A�̐S���a��ł��܂��B[pcms]

*5625|
[fc]
[�y�J�N�G���z]
�u�����A�����Ƃ���Ă��B�������O��I�ɔƂ��ė~�]���Ԃ��܂���񂾂ȁv[pcms]

*5626|
[fc]
[ns]�j���r[nse]
�u�������I�@����ȉ����q������Ă�����킯���Ȃ��v[pcms]

*5627|
[fc]
���X�Ƃ��ē�����j�B�Ɋ��҂Ȃǂ��Ă͂��Ȃ����A��͂�S�����鉹�𕷂��Ă��܂��B[pcms]

*5628|
[fc]
�����B�����܂ł���Ă������Ƃ̌��ʂ����̂悤�Ȍ`�Œ��˕Ԃ��Ă��Ă��邱�ƂɁA�[�������Ă����B[pcms]

*5629|
[fc]
[�y�J�N�G���z]
�u�ǂ����H�@���O��̎���Ă����z�炪�ǂ�Ȃ��̂��A�悭������������H�v[pcms]

*5630|
[fc]
[vo_mia s="mia_0563"]
[�y�~�A�z name=�u����]
�u���A���c�c�������c�c���v[pcms]

*5631|
[fc]
�~�A�B�͂��͂⌾���Ԃ������̋C�͎͂c���Ă��Ȃ������B[pcms]

*5632|
[fc]
�����B�Ɍ�����ꂽ�g����Ȑ��~���A�l�X�����Ƃ����g���𕲁X�ɑł��ӂ��Ă����B[pcms]

*5633|
[fc]
[�y�J�N�G���z]
�u�c�c���������΁A�܂������ɂ��Ă񂶂�˂����B�����g����v[pcms]

*5634|
[fc]
[vo_mia s="mia_0564"]
[�y�~�A�z name=�u����]
�u���A����c�c����Ȃ��ƁA�o���Ȃ��c�c�Ђ��������I�v[pcms]

*5635|
[fc]
[�y�����`�z name=��������]
�u�o���Ȃ��A����˂��񂾂�B�J�N�G���l���������Ă�񂾂���A�r�߂�񂾂�I�v[pcms]

*5636|
[fc]
���_�����~�A�͖������S���������r�炳��A�܂ƈ��t����ꂳ����B[pcms]

*5637|
[fc]
�����āA���߂��悤�ɐ���o�����B[pcms]

*5638|
[fc]
���̗l�q���������B���A�키�悤�ɐ���o���ċ߂��̃y�j�X���r�ߎn�߂�B[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
;//�C�x���g�摜�w��Fev45b
[evcg storage="ev45b" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45b" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5639|
[fc]
[vo_mia s="mia_0565"]
[�y�~�A�z name=�u����]
�u����c�c�����A�����A����c�c�����A������v[pcms]

[bgv_mia fe01]

*5640|
[fc]
[ns]�j���q[nse]
�u�������A��������r�߂���̍ō����ȁI�v[pcms]

*5641|
[fc]
���̋߂��ɍ����o���ꂽ�T�����r�߂�ƁA�ڂ̑O�ŃO���e�X�N�ȓ��_���傫���k����B[pcms]

*5642|
[fc]
�䖝�`�𐂂炷�T�����r�߂������ŋ�݂����̒��ɍL����A�~�A�͋����Ȃ����������߂��B[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
[evcg storage="ev45b" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45b" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=0]


*5643|
[fc]
[vo_aka s="akane_0471"]
[�y���z name=���[�W��]
�u���c�c������A����Ղ��c�c�����A������A�����A������v[pcms]

[bgv_aka fe01]

*5644|
[fc]
[ns]�j���s[nse]
�u�����˂��A���[�W�������B�����Ɖ��̑��q�ɃL�X���Ă����v[pcms]

*5645|
[fc]
[vo_aka s="akane_0472"]
[�y���z name=���[�W��]
�u���A�������c�c�͂��c�c������A����A�����c�c����Ղ��A������A�����A�����A���ィ���v[pcms]

*5646|
[fc]
�����邱�Ƃ������߁A�����邪�܂܋T���Ɍ��Â������鈩�B[pcms]

*5647|
[fc]
�O�ɉ䖝�`�����̂��\�킸����J��Ԃ��A���ܐ���o���Ă̓J�������r�߂�B[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-1279,0,255)"][wm canskip=true]
[evcg storage="ev45b" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45b" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5648|
[fc]
[vo_aoi s="aoi_0439"]
[�y���z name=���B�I��]
�u�����A������A���c�c������A����A�������c�c����ނ��A�����c�c�͂ӁA���ӂ����v[pcms]

[bgv_aoi fe01]

*5649|
[fc]
[ns]�j���t[nse]
�u���B�I�������A�����Ɗ撣��Ȃ��ƁB��l�Ɣ�ׂđS�R�r�߂��ĂȂ�����Ȃ����v[pcms]

*5650|
[fc]
[vo_aoi s="aoi_0440"]
[�y���z name=���B�I��]
�u���߂�A�Ȃ����c�c�����A������A�����c�c�񂟂����I�@�������A�񂭂��A�����c�c������A�����A������v[pcms]

*5651|
[fc]
�̗͓I�ɂ��Ў�Ȉ��́A�����邪�܂ܕ�d����̂��܂܂Ȃ�Ȃ��B[pcms]

*5652|
[fc]
�Ȃ�Ƃ���d���悤�Ƃ͂�����̂́A���L�΂����Ƃ���Ɩ����̒����Őg�̂��h���Ԃ��Ĕߖ��グ�Ă��܂��B[pcms]

*5653|
[fc]
����ł��Ȃ�Ƃ����˂��o���A��d�𑱂����B[pcms]

*5654|
[fc]
[ns]�j���u[nse]
�u�͂��A�͂��c�c���̎q�B�A�Ȃ�ăG�����񂾁c�c�B�������A�X�}�z�X�}�z�v[pcms]

*5655|
[fc]
�~�]�ɐg��C���Ďː����Ă����j�B�́A�ӂƎv�������Ď��X�ɃX�}�z�����o���A���B�̉��p�����߂Ă����B[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
;//�C�x���g�摜�w��Fev45c
[evcg storage="ev45c" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45c" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=500]

*5656|
[fc]
[vo_aka s="akane_0473"]
[�y���z name=���[�W��]
�u����c�c��߂āc�c�B��Ȃ��ł��c�c�񂟂��A�������A�Ђ����A���₟�����c�c�v[pcms]

*5657|
[fc]
�������肷��ƁA�J�N�G���͌҂�����ɉ����L���A�ҊԂ��A�s�[������悤�ɑO�ɓ˂��o���B[pcms]

*5658|
[fc]
㵒p�S������ɐ�����Ɠ����ɑ}���p���ω����A���͂܂����߂������グ���B[pcms]

*5659|
[fc]
[�y�J�N�G���z]
�u�����A�B��B��B�i�v�ۑ��łɂ��Ă��񂾂ȁB�ق�A�����ƚb���ł���v[pcms]

*5660|
[fc]
[vo_aka s="akane_0474"]
[�y���z name=���[�W��]
�u�񂟂��A�����A�����������I�@�Ђ����A�������A�������I�@�͂Ђ��A�Ђ��A�����A����A�ӂ����c�c�v[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(0,0,255)"][wm canskip=true]
[evcg storage="ev45c" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg storage="ev45c" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5661|
[fc]
[vo_mia s="mia_0566"]
[�y�~�A�z name=�u����]
�u�񂟂��A����A�񂣂������I�@�h�炳�Ȃ��ł����A�񂟂��A�����A�����A�����A���������v[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-1279,0,255)"][wm canskip=true]
[evcg storage="ev45c" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45c" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5662|
[fc]
[vo_aoi s="aoi_0441"]
[�y���z name=���B�I��]
�u�͂��A�͂��A�������I�@�����āc�c�����ĉ������c�c����A����Ղ��A�͂ӂ��A�����A������I�v[pcms]

*5663|
[fc]
�������y�j�X��˂��グ���A���x�������I�Ɉ�������o����Ȃ���O�l���ɎN�����B[pcms]

*5664|
[fc]
�͂��Ȃ���c���Ă���㵒p�S���S�����k�����A�����B����΂���B[pcms]

*5665|
[fc]
[�y�J�N�G���z]
�u�N�N�b�A���̊��ɋy��ł܂����ߕt���Ă��₪��Ƃ͂ȁB���������ɑ�������˂����A�A���J�i���[�W���v[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
[evcg storage="ev45c" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45c" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5666|
[fc]
[vo_aka s="akane_0475"]
[�y���z name=���[�W��]
�u�������c�c�������́c�c�񂟂��A�����A������I�@�͂Ђ��A�Ђ��A�Ђ�����I�v[pcms]

*5667|
[fc]
�����ǂ������Ă������������炸�A����邪�܂܂ɔƂ���鈩�B�B[pcms]

*5668|
[fc]
�������Ă��������ɓ������悤�ɁA�X�}�z���\���Ă���j�B���Ăіu�N�����y�j�X��������B[pcms]

*5669|
[fc]
[ns]�j���u[nse]
�u�������I�@�܂��o����I�@���x�͂Ԃ�������Ƃ�����ʐ^�ɎB���Ă��I�v[pcms]

*5670|
[fc]
�j�B�̐錾�ɁA���͂┽������]�͂��Ȃ��B[pcms]

*5671|
[fc]
�����A�M���Ɠ����ɂ܂݂�Ď��������������Ȃ��Ă������Ƃɋ��|���o���Ă͂����B[pcms]

*5672|
[fc]
[�y�J�N�G���z]
�u����A�����Ղ�Ԃ��܂��Ă��ȁI�v[pcms]

*5673|
[fc]
[vo_aka s="akane_0476"]
[�y���z name=���[�W��]
�u�񂟂��A�����A�����������I�@�Ђ��A�Ђ�����A�񂟂��A�����A����A�񂣂��������������I�v[pcms]


[bgv_aka to02]
[bgv_aoi to02]
[bgv_mia to02]

;//�C�x���g�摜�w��Fev45d
;[evcg storage="ev45d" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45d" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=500]

[evcg�ː��t�� storage="ev45d" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg�ː��t�� storage="ev45d" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"]



*5674|
[fc]
�ĂсA���͂����ʂ̐��t���O�l�Ɍ����ĉ����������B[pcms]

*5675|
[fc]
�����Ă��S�t�ɐⒸ�̋L�����S��A�Ăѐg�̂��ΏƂ���V�Ԃ点�Ă����B[pcms]

[evcg�ː��t�� storage="ev45d" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg�ː��t�� storage="ev45d" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"]

*5676|
[fc]
[vo_mia s="mia_0567"]
[�y�~�A�z name=�u����]
�u�����������A���������������������I�v[pcms]

[evcg�ː��t�� storage="ev45d" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg�ː��t�� storage="ev45d" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"]

*5677|
[fc]
[vo_aoi s="aoi_0442"]
[�y���z name=���B�I��]
�u�₟�������c�c�܂��A���t���c�c�񂟂��A�����A���������I�v[pcms]

*5678|
[fc]
�ނ�������悤�ȓ������ǂ�ǂ�Z���Ȃ�A�k�o�������j�B�ɔƂ���Ă����B[pcms]

*5679|
[fc]
���w����]�͂��Ȃ��A�^���ʂ��琸�t���󂯎~�߂Ă����ޏ��B�ɁA���͂��R�̓񕶎��͑��݂��Ȃ��B[pcms]

*5680|
[fc]
[�y�J�N�G���z]
�u�Ă߂�������낻��C�L�������낤�H�@����Ȑl�Ԃ̃`���|���ᖞ���o���Ȃ��g�̂ɂȂ��Ă邾�낤����ȁA���O��́v[pcms]

*5681|
[fc]
[�y�����`�z name=��������]
�u�J�N�G���l�����鉴�B�����̃`���|����Ȃ��Ɩ����ɃC�P�Ȃ����Ƃ��A��������Ǝv���m��񂾂ȁv[pcms]

[se buf=1 storage="&sf.SE�s�X�g��_�l�O" loop]

*5682|
[fc]
�ː��𗁂тȂ��璊�����������A���������E�Ɍ������Ĉ�C�ɍ��܂��Ă����B[pcms]

*5683|
[fc]
[vo_aoi s="aoi_0443"]
[�y���z name=���B�I��]
�u�����A�����A�񂟂��A�ӂ����A�񂟂����������I�@�C�N���A�C�N���A�C�b���Ⴄ���A�����A���������������I�v[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
[evcg storage="ev45d" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45d" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5684|
[fc]
[vo_aka s="akane_0477"]
[�y���z name=���[�W��]
�u���A���߂����c�c�C�L�����Ȃ����c�c�搶�ȊO�ŁA�C�L�����c�c����A���A���������������I�v[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(0,0,255)"][wm canskip=true]
[evcg storage="ev45d" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg storage="ev45d" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5685|
[fc]
[vo_mia s="mia_0568"]
[�y�~�A�z name=�u����]
�u�搶�A�����Ă����A�����Ă��A������A������A�₟���A�ӂ������������������I�v[pcms]

;//�C�x���g�摜�w��Fev45e
[evcg�ː��t�� storage="ev45e" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg�ː��t�� storage="ev45e" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"]


;	*5686|
;	[fc]
;	[vo_aka s="akane_0478"]
;	[�y���z name=���[�W��]
;	�u�C�N�����������������������������I�v[pcms]
;
;	*5687|
;	[fc]
;	[vo_aoi s="aoi_0444"]
;	[�y���z name=���B�I��]
;	�u�C�N�����������������������������I�v[pcms]
;
;	*5688|
;	[fc]
;	[vo_mia s="mia_0569"]
;	[�y�~�A�z name=�u����]
;	�u�C�N�����������������������������I�v[pcms]

*5686|
[fc]
;[�y�O�l�z]
[vo_aka s="mix_0004"]
[ns]���[�W�������B�I�����u����[nse]
�u�u�u�C�N�����������������������������I�v�v�v

;//��L�̑䎌���������ĉ������B
[bgv_aka to03]
[bgv_aoi to03]
[bgv_mia to03]

[sysbt_meswin clear]
[move layer=0 time=2000 accel=1 path="(-1279,0,255)"][wm canskip=true]
;[evcg storage="ev45e" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=0]

;[sysbt_meswin clear]
[move layer=0 time=2000 accel=1 path="(0,0,255)"][wm canskip=true]
[evcg storage="ev45e" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg storage="ev45e" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"][trans_c cross time=0]


*5689|
[fc]
�����������ɑٓ��ւƎː����A���̃^�C�~���O�ŎO�l����ĂɌ��E�𒴂���B[pcms]

*5690|
[fc]
�S��������ɂ����J���A�S��������A����ł����肫��Ȃ��Ȃ��ċt�����A���̋͂��Ȍ��Ԃ����ʂ̔����������o���B[pcms]


*5691|
[fc]
[vo_mia s="mia_0570"]
[�y�~�A�z name=�u����]
�u�Ђ��A�����A�����������������������I�@�C�N���A�C�N�C�N�C�N�����������������I�v[pcms]

[���X�t��]
[bgv_mia to01]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
[evcg storage="ev45e" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45e" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5692|
[fc]
[vo_aka s="akane_0479"]
[�y���z name=���[�W��]
�u�搶���A�搶���A�₾���A���₟���A�܂��C�N�����������������I�v[pcms]


[���X�t��]
[bgv_aka to01]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-1279,0,255)"][wm canskip=true]
[evcg storage="ev45e" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45e" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=0]


*5693|
[fc]
[vo_aoi s="aoi_0445"]
[�y���z name=���B�I��]
�u�������A�܂��C�b���Ⴄ���I�@�搶�A���߂�A�Ȃ����c�c�C�N���������������������I�v[pcms]

[���X�t��]
[bgv_aoi to01]

;//�C�x���g�摜�w��Fev45f
[evcg storage="ev45f" x="&f.ev_x_aoi" cond="f.l_s901 == 0"][evcg storage="ev45f" x="&f.ev_x_aoi" tv cond="f.l_s901 == 1"][trans_c cross time=500]



*5694|
[fc]
���x�ڂ��̐Ⓒ�̌�Ƀy�j�X������������A�悤�₭�Ⓒ�̔g�����܂��Ă���B[pcms]

*5695|
[fc]
�O�l���S���͔Ƃ��ꂷ���������ł�������ɂ݁A�傫���L�����Ă���B[pcms]

*5696|
[fc]
�����B�ɏo���ꂽ���t����ꂽ�֌��̂悤�ɐ����悭���ꗎ�����B[pcms]

*5697|
[fc]
[vo_aoi s="aoi_0446"]
[�y���z name=���B�I��]
�u���c�c���A���₟�c�c�����c�c�C�L�����Ȃ��c�c�v[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(0,0,255)"][wm canskip=true]
[evcg storage="ev45f" x="&f.ev_x_mia" cond="f.l_s901 == 0"][evcg storage="ev45f" x="&f.ev_x_mia" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5698|
[fc]
[vo_mia s="mia_0571"]
[�y�~�A�z name=�u����]
�u�����āc�c�����c�c���肢�c�c�����āc�c�v[pcms]

[sysbt_meswin clear]
[move layer=0 time=1000 accel=1 path="(-615,0,255)"][wm canskip=true]
[evcg storage="ev45f" x="&f.ev_x_aka" cond="f.l_s901 == 0"][evcg storage="ev45f" x="&f.ev_x_aka" tv cond="f.l_s901 == 1"][trans_c cross time=0]

*5699|
[fc]
[vo_aka s="akane_0480"]
[�y���z name=���[�W��]
�u���c�c���A�����c�c����A�����c�c�������c�c�Ă��c�c�v[pcms]

*5700|
[fc]
�ޏ��B�̐��͂ǂ��ɂ��͂��Ȃ��B[pcms]

*5701|
[fc]
�����āA���̗��J�̘S��������A����邱�Ƃ͏o���Ȃ��̂������B[pcms]

[bgvstop_chara01]
[bgvstop_chara02]
[bgvstop_chara03]

;mm �����܂�TV?

;//�Ó]
[bg storage="effect_black" tvoff][trans_c cross time=1000]
;//���������l��

;//�C�x���g�摜�w��Fev39i
[evcg�ː��t�� storage="ev39i" tvoff]

;//���̃V�[���̘b�ҁF���̓m���[����

*5702|
[fc]
[vo_mei s="mei_0373"]
[�y���z name=�m���[��]
�u�ӂӂ��A���͂͂��I�@�܂��o��������ˁc�c�B�˂��A���Z����B�����ƃG�b�`���悤��v[pcms]

*5703|
[fc]
�c�c������A�������Ă����̂��낤�H[pcms]

*5704|
[fc]
�����āA���͉������Ă���񂾂낤�H[pcms]

*5705|
[fc]
�ڂ���Ǝv���o�����Ƃ��Ă݂���̂́A���̒��ɖ����������Ă��邩�̂悤�ɂ悭������Ȃ��B[pcms]

*5706|
[fc]
���̉��ɕ�����̂́A�ڂ̑O�ɖ������āA�C�����ǂ��Ȃ��Ă���Ƃ������Ƃ��B[pcms]

*5707|
[fc]
[vo_mei s="mei_0374"]
[�y���z name=�m���[��]
�u�ӂӂ��A�ǂ������́H�@�ڂ��肵�āB����ȂɎ��̒����ǂ������H�@������A�����Əo���āc�c�B��������o���Ă��Z����̐Ԃ�������낤��v[pcms]

*5708|
[fc]
[�y��l���z]
�u�����A�������ȁc�c�������悤�c�c�v[pcms]

*5709|
[fc]
���͌��t�̈Ӗ����������������Ă��Ȃ��������A���ƂȂ��m�肷��B[pcms]

*5710|
[fc]
�Ȃɂ��A�厖�Ȃ��Ƃ�Y��Ă���悤�ȋC�����邪�A�v���o���Ȃ��񂶂�d���Ȃ��B[pcms]

*5711|
[fc]
������A���͂��̋C�����������𖞋i���Ă������c�c�B[pcms]

*5712|
[fc]
[vo_mei s="mei_0375"]
[�y���z name=�m���[��]
�u�񂟂��A�����A������A��������I�@���Z����A���������c�c�ӂ��A���A�������c�c���I�v[pcms]

*5713|
[fc]
[vo_mei s="mei_0376"]
[�y���z name=�m���[��]
�u�ӂӂ��A������c�c�����ƌ��������āB���͂��Z���񂳂��ꏏ�ɂ��Ă��ꂽ��A����ł����񂾂���v[pcms]

*5714|
[fc]
[�y��l���z]
�u�������ȁc�c�ꏏ�ɁA�����ƈꏏ�ɂ��悤�c�c�v[pcms]

*5715|
[fc]
[vo_mei s="mei_0377"]
[�y���z name=�m���[��]
�u��������B���̂��ƂȂ�đS������Ȃ��B��������Ȃ��c�c���Z���񂾂�������΂����́v[pcms]

[se buf=1 storage="&sf.SE�s�X�g��_�l_�x" loop]

*5716|
[fc]
���͉��̏�ō���U��Ȃ�����������ɏ΂��B[pcms]

*5717|
[fc]
�S���L�c�����܂��āA�܂��ː��������ɂȂ�B[pcms]

*5718|
[fc]
�����A����ł�������Ȃ����c�c���͖�������Ďv�����܂܂ɒ��ɏo���āB[pcms]

*5719|
[fc]
����ȊO�A��������Ƃ����񂾁c�c�B[pcms]

*5720|
[fc]
���̕Ћ��ɉ����������������Ă���̂������Ȃ�����A���͂�������ڂ������A�ڂ̑O�̏�ɒ^��B[pcms]

*5721|
[fc]
[vo_mei s="mei_0378"]
[�y���z name=�m���[��]
�u�����A�����A������c�c���Z����A�������C�����������I�@�ō��ɍK���I�@���͂��A���͂͂��A���͂͂͂͂͂��I�v[pcms]

*5722|
[fc]
[�y��l���z]
�u�͂͂��A�͂͂͂��A�͂͂͂͂͂͂͂͂͂��I�v[pcms]

*5723|
[fc]
�����A���ɂ��ď΂������グ��B[pcms]

*5724|
[fc]
�����A���̏u�Ԃ������ƁA�i���ɑ����΂����\�\�B[pcms]

; ��z���[�h���Ȃ�A��z���[�h��ʂɖ߂�
[scene_end]

;�i�o�b�h�G���h�Q�j�i���o�b�h�G���h���j
;mm �O�ׂ̈ɃG���h�̃O���[�o���ƃ��[�J���ϐ��I��
[eval exp="sf.g_end_bad02 = 1"]
[eval exp="f.l_end = 8"]

;//end
[ANTEN blk]
[jump storage="9999.ks" target=*TOP]

