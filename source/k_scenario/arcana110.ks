;//arcana110
*TOP
[eval exp="f.l_s110 = 1"][name_allreset]

; ��z�V�[���J���t���O
[eval exp="sf.SRP24 = 1"]
*scene_start
[if exp="tf.scene_mode == 1"]
	;��[scene_exp_init]
[endif]

[bgm019]

[se buf=1 storage="seD025" loop]
[se buf=2 storage="seD026" loop]

;�摜�T�C�Y2661�@�E�[���킹��X���W-1381
;���K�[�g���� ���̃C�x���g���E�ɃL�������z�u����ĉ�ʓ��ɓ���Ȃ��L����������ׂ�̂ŁA�t�F�C�X�E�B���h�E�\�����܂����@�Ӑ}�I�Ƀt�F�C�X�E�B���h�E�\�������Ă�C�x���g��EV48�����ł�
;//�C�x���g�摜�w��Fev48a

;�ŏ��ɑS�̑����n������
[evcg storage="ev48a" x=-1381][trans_c cross time=500]
[move layer=0 page=fore path="(0,0,255)" time=5000]
[wm canskip=true][evcg storage="ev48a" x=0][trans_c cross time=0]

*8847|
[fc]
[�y��l���z]
�i���V�c�c����I���ɂƂ��Ă͂��ꂱ��������ׂ��p���ȁj[pcms]

*8848|
[fc]
���ƃI�����h��g�̂������낤�Ƃ����~�Y�`�Ƃ��������B[pcms]

*8849|
[fc]
���X�A��Ԏ���Ă��܂������A�I���͂��̎c���v�O��U�蕥���A���炽�߂Č�����m���߂�B[pcms]

*8850|
[fc]
�~�Y�`�̍�͖}�S�̖���������Ȃ疭��ł͂��������낤�B�����A���͂Ƃ������I�����䂹�����ł����Ƃ́A�����Ȃ���B[pcms]

;���Ƀt�H�[�J�X
[evcg storage="ev48a" x=0][trans_c cross time=0]
[move layer=0 page=fore path="(-350,0,255)" time=2000]
[wm canskip=true][evcg storage="ev48a" x=-350][trans_c cross time=0]

[std_aka m mad p1 f13 ce ho off]

*8851|
[fc]
[vo_aka s="akane_0646"]
[�y���z name=���[�W�� on]
�u�����������c�c�搶���c�c�����c�c�������ɖ߂��Ă��I�v[pcms]

*8852|
[fc]
���A���A�~�A�A�����Ė��́A�I�����ω������G��̊C�ŔƂ���A�Ԃ��܂ɁA�������ꂵ��ł���B[pcms]

*8853|
[fc]
[�y��l���z]
�i�����A���ɖ߂����Ƃ��B���ꂪ�����Ƃ��ẴI�����戩�j[pcms]

*8854|
[fc]
�l�Ԃ̐g�̂���G��̌Q�́A���邢�͊C�Ƃł������ׂ��p�B����Ɍ`�Ԃ�ω����������̃I���́A���т��ۖ����L���Ă͂��Ȃ��B[pcms]

*8855|
[fc]
�����A�I���͖��͂���A���ׂĂ��c�c���͂ŋ������ԏ���������m�o���邱�Ƃ��o�����B[pcms]

[std_aka m mad p1 f08 ce ho off]

*8856|
[fc]
[vo_aka s="akane_0647"]
[�y���z name=���[�W�� on]
�u�����Ɛ搶�̓~�Y�`�Ɏ��߂���āc�c����ŁA���������Ȃ��Ă邾������ˁH�v[pcms]

*8857|
[fc]
[�y��l���z]
�i�����O�܂ł́A�m���Ƀ~�Y�`�̈ӎu���I���̒��ɂ��������B���������]�v�Ȃ��̂͂��ׂĎ̂ċ������B���̃I�����������Ȗ����j[pcms]

*8858|
[fc]
������[ruby_c t="�I" r="�E"][ruby_c t="��" r="�E"]�́A���̏��������Ƌ��ɐ���Ă����w[ruby_c t="��" r="�E"]�x�ł́A�Ȃ��Ȃ��Ă���̂��B[pcms]

*8859|
[fc]
�~�Y�`�̊��ɂ���ėU�����ꂽ�Ƃ͂����A����[ruby_c t="�I" r="�E"][ruby_c t="��" r="�E"]�́A���̐��E�ɖ��������ׂĂ̗~�]��̌����A���s���鑶�݂ƂȂ��Ă����B[pcms]

*8860|
[fc]
[�y��l���z]
�i������c�c��������j[pcms]

*8861|
[fc]
�I���͈����S����G��̂ЂƂŊт��A���̊��G���y���ށB[pcms]

[se storage="&sf.SE�}��_�G��"]
[���t��]

[std_aka m mad p1 f14 ce ho off]

*8862|
[fc]
[vo_aka s="akane_0648"]
[�y���z name=���[�W�� on]
�u�Ђ��ӂ����c�c�񂠂������c�c�����̒��ŐG�肪���I�v[pcms]

*8863|
[fc]
���āw[ruby_c t="��" r="�E"]�x�Ƃ����l�Ԃ̒j�Ƃ��ē����Ă��������q�������A�G��̏W���̂Ɖ�����[ruby_c t="�I" r="�E"][ruby_c t="��" r="�E"]�́A��e�͂Ȃ��Ƃ��Ă���B[pcms]

*8864|
[fc]
�������ɗǐS�Ƃł��ĂԂׂ����[ruby_c t="�I" r="�E"][ruby_c t="��" r="�E"]��ӂ߂Ă���C�����邪�A����̓I���̒��Ŗ���ɏA�����w[ruby_c t="��" r="�E"]�x�̈ӎ��̂Ȃ���Ȃ̂��낤�B[pcms]

*8865|
[fc]
�~�Y�`�ȂǂƂ����G���Ȃ�Ƃ������w[ruby_c t="��" r="�E"]�x��[ruby_c t="�I" r="�E"][ruby_c t="��" r="�E"]���B[pcms]

;�~�A�Ƀt�H�[�J�X
[evcg storage="ev48a" x=-350][trans_c cross time=0]
[move layer=0 page=fore path="(0,0,255)" time=2000]
[wm canskip=true][evcg storage="ev48a" x=0][trans_c cross time=0]

*8866|
[fc]
[vo_mia s="mia_0759"]
[�y�~�A�z name=�u���� on]
�u�������肵�Ĉ��I�@����ȐG��Ȃ񂩂ɕ������Ⴞ�߁I�v[pcms]

*8867|
[fc]
���ׂ̗ŁA��͂�I���̐G��ɔƂ���Ă���~�A������ŗ�܂��B�����Ƃ��ޏ��̕��������ł͂Ȃ��A�����l�A���t�܂݂ꂾ�����B[pcms]

[std_aka m mad p1 f13 ce ho off]

*8868|
[fc]
[vo_aka s="akane_0649"]
[�y���z name=���[�W�� on]
�u������c�c�搶���c�c���肢������c�c���ɖ߂��Ă��ꂽ��c�c�������Ȃ�ł����邩��A���肢���I�v[pcms]

[std_mia m mad p1 f02 ce ho off]

*8869|
[fc]
[vo_mia s="mia_0760"]
[�y�~�A�z name=�u���� on]
�u���������A�Ȃ�ł����Ă����邩����c�c�ǂ�ȃG�b�`�Ȃ��肢�����Ă��Ȃ��Ă����邩��A���񂹁[���I�v[pcms]

*8870|
[fc]
[�y��l���z]
�i�I���͂���Ȃ��̂ɂ͉��l�������o���Ă͂��Ȃ��B����Ȃ��̂��A���܂������Ƃ���ނ�Ă�����������[���j[pcms]

[std_aka m mad p1 f12 ce ho off]

*8871|
[fc]
[vo_aka s="akane_0650"]
[�y���z name=���[�W�� on]
�u�����������c�c���������c�c�G��ł������̂����������I�v[pcms]

[std_mia m mad p1 f12 ce ho off]

*8872|
[fc]
[vo_mia s="mia_0761"]
[�y�~�A�z name=�u���� on]
�u�������������c�c�킽���̂����ł��G�肪�\��Ă����H�v[pcms]

*8873|
[fc]
�S������N�������I���̐G��́A�ւ�E�i�M��A�z�����铮��ŁA���@���������̑̓���\��܂���Ă���B[pcms]

*8874|
[fc]
[�y��l���z]
�i�����~�A���c�c�������Ȑg�̂ň���ɔ������Ă���B�Ȃ�قǁA���ꂪ�w[ruby_c t="��" r="�E"]�x�̊����Ă��������Ɨ~�]���c�c�����Ȃ��j[pcms]

*8875|
[fc]
���𔭂����ƂȂ��S�̒��łԂ₫�Ȃ���A�I���͎�����]���āA���t�܂݂�ŐG��ɔƂ���Ă��鈨�Ɉӎ����W���������B[pcms]

;//�C�x���g�摜�w��Fev48b
[evcg storage="ev48c"][trans_c cross time=500]

[std_aoi m mad p1 f13 ce ho off]

*8876|
[fc]
[vo_aoi s="aoi_0710"]
[�y���z name=���B�I�� on]
�u�M���Ȃ��c�c����͂����ƃ~�Y�`�̖��@�Łc�c�ǂ����ɉB��Ă�~�Y�`��|���Ζ��@�������āA�搶�����Č��ɖ߂�͂��c�c�v[pcms]

*8877|
[fc]
�����܂��A�ڂ̑O�̌����Ǝ������ǂ������Ă��邩��[���ł����ɁA����Ȃ��Ƃ������Ă����B[pcms]

[std_aoi m mad p1 f02 ce ho off]

*8878|
[fc]
[vo_aoi s="aoi_0711"]
[�y���z name=���B�I�� on]
�u���������c�c����ȐG��Ȃ񂩂ɕ����Ȃ����c�c�K���A�搶�����ɖ߂��܂�������I�v[pcms]

*8879|
[fc]
[�y��l���z]
�i�I���͈��̐g�̂ɗ~��ĔƂ��Ă��邾���Ȃ񂾂��c�c�w���x���ߍ��Ȓj���ȁc�c�܂����͊y���܂��Ă��炨�����j[pcms]

*8880|
[fc]
����~�A�ɂ��Ă���悤�ɁA�G��̂ЂƂň����S�����т��B[pcms]

[std_aoi m mad p1 f12 ce ho off]

*8881|
[fc]
[vo_aoi s="aoi_0712"]
[�y���z name=���B�I�� on]
�u�Ђ��ӂ��c�c�������������c�c�����Ȃ����c�c����ȂɐG��Ȃ񂩂ɂ͐�΁I�v[pcms]

*8882|
[fc]
���y���́A��ɂ̕������|�I�ɋ����F�����Ă���͂��̈����������A�C��ɐU�镑���Ă���B[pcms]

[std_aoi m mad p1 f03 ce ho off]

*8883|
[fc]
[vo_aoi s="aoi_0713"]
[�y���z name=���B�I�� on]
�u�搶���c�c�K���搶�����ɂ��c�c���Ђ������c�c���������I�v[pcms]

*8884|
[fc]
�����΂��Ƃ������Ė\��鏭���̐g�̂��A�}�����Ă�����̂Ƃ͕ʂ̐G��ōS�����āA���̓����𕕂���B[pcms]

[std_aoi m mad p1 f12 ce ho off]

*8885|
[fc]
[vo_aoi s="aoi_0714"]
[�y���z name=���B�I�� on]
�u�搶���c�c���肢�ł����c�c�M���Ă܂��c�c�����ƌ��ɖ߂��Ă������āc�c�������������I�v[pcms]

*8886|
[fc]
�����ɂ������������߂Ă���w���x�̓I���̒��Ŗ���ɏA���Ă��邩��A���̊肢�͂��Ȃ�Ȃ��B[pcms]

*8887|
[fc]
�������Ɨ������ׂ����Ƃ����Ӗ��������܂߂āA�r�X�����G����S����ӂߗ��ĂĂ�����B[pcms]

;//�C�x���g�摜�w��Fev48c
;���ƈ��Ƀt�H�[�J�X�@���Α��ւ̈ړ��͒������璼�\���ł�����
;[evcg storage="ev48c" x=0][trans_c cross time=0]
;[move layer=0 page=fore path="(-1381,0,255)" time=3000]
;[wm canskip=true][evcg storage="ev48c" x=-1381][trans_c cross time=0]

[evcg storage="ev48b" x=-1381][trans_c cross time=500]

[std_mei m mad p1 f10 ce ho eki off magan]

*8888|
[fc]
[vo_mei s="mei_add001"]
[�y���z name=�m���[�� on]
;�u���o�������c�c�������肵�Ă��o�����I�v[pcms]
�u���o�������I�v[pcms]

*8889|
[fc]
�ׂŔƂ���Ă��閻������S�z���ċ��Ԃ��A�ޏ������łɐG��ɔƂ���Ă���قǗ]�T�͂Ȃ��͂����B[pcms]

*8890|
[fc]
[�y��l���z]
�i���͖����ȂԂ��Ċy���ނ��c�c�j[pcms]

[std_mia m mad p1 f08 ce ho off]

*8891|
[fc]
[vo_mia s="mia_0762"]
[�y�~�A�z name=�u���� on]
�u����������A�������ƌ��ɖ߂�Ȃ����w���^�C�G�����t���I�v[pcms]

*8892|
[fc]
���ׂ̗ŐG��ɔƂ���Ă���~�A������ł����B[pcms]

[std_mia m mad p1 f14 ce ho off]

*8893|
[fc]
[vo_mia s="mia_0763"]
[�y�~�A�z name=�u���� on]
�u���񂹁[�̂��Ƃ�����A�������������Ɋo���������炻�̗͂ŁA�G�b�`�Ȃ������炷����肪�\������������A�����ł���H�v[pcms]

[std_aka m mad p1 f07 ce ho off]

*8894|
[fc]
[vo_aka s="akane_0651"]
[�y���z name=���[�W�� on]
�u�~�A�����̌����ʂ�Ȃ�A�搶���肢�I�@�������ɁI�v[pcms]

*8895|
[fc]
�ׂɂ��鈩���~�A�̌��t�ɕ֏悵�ċ��ԁB[pcms]

[std_aka m mad p1 f13 ce ho off]

*8896|
[fc]
[vo_aka s="akane_0652"]
[�y���z name=���[�W�� on]
�u�G�b�`�Ȃ�������Ƃ��A���������̂��S���A�搶�Ȃ�A�������A�󂯓���邩�炠���I�v[pcms]

[std_mia m mad p1 f13 ce ho off]

*8897|
[fc]
[vo_mia s="mia_0764"]
[�y�~�A�z name=�u���� on]
�u��A�킽�������āI�v[pcms]

*8898|
[fc]
[�y��l���z]
�i�����c�c���ꂪ�c�c���̊�������A�y�����A�Ƃ������Ƃ��B���ɐV�N���c�c�w���x��ʂ��ĊԐړI�ɔF�����Ă������Ƃ͈Ⴄ�j[pcms]

*8899|
[fc]
�G�肪�����炷��ɂ��瓦��邽�߂ɁA���邢�́w���x�����߂����Ƃ��Ă��A�~�A�ƈ��͂Ȃ������ԁB[pcms]

*8900|
[fc]
�������I���̊֐S�͂��̎��_�ł́A�ʂȑ���Ɉڂ��Ă����B[pcms]

;//�C�x���g�摜�w��Fev48d
[evcg storage="ev48d" x=-1381][trans_c cross time=500]

[std_mei m mad p1 f12 ce ho eki off magan]

*8901|
[fc]
[vo_mei s="mei_0842"]
[�y���z name=�m���[�� on]
�u�����l����Ȃ��c�c����Ȃ̖����l�Ȃ񂩂���Ȃ��c�c���Z����ł��Ȃ��c�c�v[pcms]

*8902|
[fc]
���ׂ̗ŐG��ɔƂ���Ă��閻�����������C���ɂԂ₢�Ă���B�����c�O�Ȃ���I�����������������w���Z����x�{�l���B[pcms]

*8903|
[fc]
�����ɂ��A���̃I���͂��̐����ׂĂ̗~�]�c�c�肢��̌����邽�ߊ������Ă��邩��A���ɂƂ��Ă̗D�������Z����ł͂Ȃ����B[pcms]

*8904|
[fc]
�E���A�D���A�Ƃ��A���̎O�������A�S�l�ނ̊肢�̍����ł���A�W�񂳂ꂽ���ʂ��B�I���͂��̊肢�����s���Ă��邾���ɉ߂��Ȃ��B[pcms]

[std_mei m mad p1 f13 ce ho eki off magan]

*8905|
[fc]
[vo_mei s="mei_0843"]
[�y���z name=�m���[�� on]
�u�Ԃ��āI�@���̖����l�Ƃ��Z�����Ԃ��āI�v[pcms]

*8906|
[fc]
���ɂƂ��ẮA�G��ŐN������ɂ���J�����A�w�ޏ����~���������x�Ɓw���x�������������Ƃւ̓{�肪�����Ă���炵���B[pcms]

[std_aoi m mad p1 f08 ce ho off]

*8907|
[fc]
[vo_aoi s="aoi_0715"]
[�y���z name=���B�I�� on]
�u���c�c�搶�̂��Ƃ��c�c����ȂɍD���������̂ˁc�c�v[pcms]

*8908|
[fc]
�ׂŔƂ���Ă��鈨���v�킸�����Ԃ₭�قǂɁA���̓{��͏����Ō��C�ł���悤�Ɏv�����B[pcms]

*8909|
[fc]
�����炭�ޏ������́A�I����ے肵�w���x�̊o���Ƃ�����]�����������Ƃ����������낤�B[pcms]

*8910|
[fc]
�I���͔ޏ������ɐ�]�𖡂��킹�邽�߁A�W�񂳂ꂽ�h�X�����~�]�𔭎U���A�G�肽������ĂɊ������������B[pcms]

[se storage="&sf.SE�ː�_�O_�l�O_��"]
[���t��]

;//�C�x���g�摜�w��Fev48e
[evcg storage="ev48e" x=-1381][trans_c cross time=500]

[std_mei m mad p1 f10 ce ho eki off magan]

*8911|
[fc]
[vo_mei s="mei_0844"]
[�y���z name=�m���[�� on]
�u�Ђ��ӂ͂����������������H�v[pcms]

[evcg storage="ev48e" x=-1381][trans_c cross time=500]
[move layer=0 page=fore path="(-730,0,255)" time=2000]
[wm canskip=true][evcg storage="ev48e" x=-730][trans_c cross time=0]

[se storage="&sf.SE�ː�_�O_�l�O_�Z"]
[���t��]

[std_aoi m mad p1 f12 ce ho off]

*8912|
[fc]
[vo_aoi s="aoi_0716"]
[�y���z name=���B�I�� on]
�u�����Ђ������������������H�v[pcms]

[std_aka m mad p1 f10 ce ho off]

*8913|
[fc]
[vo_aka s="akane_0653"]
[�y���z name=���[�W�� on]
�u�������������������������H�v[pcms]


[evcg storage="ev48e" x=-730][trans_c cross time=500]
[move layer=0 page=fore path="(0,0,255)" time=2000]
[wm canskip=true][evcg storage="ev48e" x=0][trans_c cross time=0]

[se storage="&sf.SE�ː�_�O_�l�O_��"]
[���t��]

[std_mia m mad p1 f10 ce ho off]

*8914|
[fc]
[vo_mia s="mia_0765"]
[�y�~�A�z name=�u���� on]
�u���Ђ����������������������H�v[pcms]

*8915|
[fc]
�S���[���ɓ��荞��Ŗ\��܂��G�肪�ː����Ă����B���̕��ʂ͖��炩�ɏ�O���킵���c��Ȃ��̂������B[pcms]

*8916|
[fc]
���łɐ����؂�ʂق��S���ː�����Ă������@���������́A�ɗ�Ȃ��̈ꌂ�ɋ�サ�A�ߖ��グ��̂������B[pcms]

*8917|
[fc]
�����ā\�\[pcms]

;//��ʌ��ʁF�Ó]

[ANTEN blk bgmon]

[se storage="&sf.SE�n���{�e"]
[se buf=1 storage="seD025" loop]

;//�C�x���g�摜�w��Fev50a
[evcg storage="ev50a"][trans_c cross time=500]

*8918|
[fc]
[vo_aka s="akane_0654"]
[�y���z name=���[�W��]
�u�͂��������c�c���������c�c�Ȃ�ł���Ȃɂӂ����ł�́H�v[pcms]

*8919|
[fc]
[vo_aoi s="aoi_0717"]
[�y���z name=���B�I��]
�u�܁A�܂����c�c�G��́c�c�����̐��t�Łc�c����Ȃ͂��́v[pcms]

*8920|
[fc]
[vo_mia s="mia_0766"]
[�y�~�A�z name=�u����]
�u������Ɓc�c�ςȑz���͂�߂Ă�I�v[pcms]

*8921|
[fc]
[vo_mei s="mei_0845"]
[�y���z name=�m���[��]
�u���������c�c���A�z���Ȃ񂩂���Ȃ��c�c������Ă��Ԃ�c�c�����������̕c���Ɂc�c����Ă�c�c�v[pcms]

*8922|
[fc]
�����̐w�c�ɐg��u���Ă������炩�A�������́A�z���ł͂Ȃ������Ƃ��āA���������̕ω��𗝉����Ă���悤�������B[pcms]

*8923|
[fc]
[vo_aoi s="aoi_0718"]
[�y���z name=���B�I��]
�u�c�����āc�c���ꂶ��c�c�������̂����Ɂc�c�����̐Ԃ���񂪂���́H�v[pcms]

*8924|
[fc]
[vo_mei s="mei_0846"]
[�y���z name=�m���[��]
�u���A���Ԃ񂻂�����c�c�O�Ƀ~�Y�`���c�c�����������@�ŉ��������𑝂₵�����āc�c�������Ă��̕��������Ƃ��邵�v[pcms]

*8925|
[fc]
[vo_aoi s="aoi_0719"]
[�y���z name=���B�I��]
�u���₠�����c�c�����̐Ԃ����Ȃ�āI�@���c�c�搶�̐Ԃ����ȊO�͐�΂ɂ��₠���I�v[pcms]

*8926|
[fc]
[vo_aka s="akane_0655"]
[�y���z name=���[�W��]
�u�搶�I�@���肢������߂��āI�@�搶�I�I�v[pcms]

*8927|
[fc]
[vo_mia s="mia_0767"]
[�y�~�A�z name=�u����]
�u������I�@����Ȃ̂킽�����������������I�I�v[pcms]

*8928|
[fc]
[vo_mei s="mei_0847"]
[�y���z name=�m���[��]
�u���Z����̐Ԃ����ȊO�c�c����Ȃ��������I�v[pcms]

*8929|
[fc]
�I���Ɓw���x�̓��͓̂���Ȃ̂�����A����Ӗ��ł͔ޏ������̊肢�͂��Ȃ��͂��Ȃ̂����A�ǂ����F������v���Ă��Ȃ��炵���B[pcms]

*8930|
[fc]
���@�̗͂Ŏ�ق�����ꂽ�ޏ������B���̑ٓ��ŁA�}�����������������́A���łɎq�{��j�������A�a���̏u�Ԃ�҂��Ă���B[pcms]

*8931|
[fc]
[�y��l���z]
�i�����̉���������B����Ȃ鉳��������[ruby_c t="�b" r="��������"]�Ƃ��ĎY�܂ꗎ���邪�����A���̎�ł���I�����j������j[pcms]

;//�r�d�F�Ȃɂ��̎����Ƃ������Ö��̂悤�Ȃr�d
[���@�t���b�V��]

*8932|
[fc]
�������ʂ̖��@�͂Ǝv�O��ނ�Ɍ����ĕ��˂��Ă��B[nor]
����͐V���Ȑ������萁���V���ւ̏��Ȃł������B[pcms]

[se buf=2 storage="seD026" loop]

;//�C�x���g�摜�w��Fev50b
[evcg storage="ev50b"][trans_c cross time=500]

*8933|
[fc]
[vo_aka s="akane_0656"]
[�y���z name=���[�W��]
�u�Ђ��������c�c���͂����c�c�������c�c�������������I�v[pcms]

*8934|
[fc]
[vo_aoi s="aoi_0720"]
[�y���z name=���B�I��]
�u���������c�c���₠�����c�c�����Ȃ�ĎY�݂����Ȃ����I�v[pcms]

*8935|
[fc]
[vo_mia s="mia_0768"]
[�y�~�A�z name=�u����]
�u����Ȃ̂��蓾�Ȃ����c�c���񂹁[�A���񂹁[�����Ă���I�v[pcms]

*8936|
[fc]
[vo_mei s="mei_0848"]
[�y���z name=�m���[��]
�u�ɂ��ɂ��ɂ����I�@���o���Ⴀ����I�@���Z��������I�@�����Ă��������I�v[pcms]

*8937|
[fc]
����܂ł͕�̂�ی삷�邽�߂��A��ق����������g�����@�͂����ɕ��˂��邱�ƂŁA���������̋�ɂ��y�����Ă����B[pcms]

*8938|
[fc]
[vo_aka s="akane_0657"]
[�y���z name=���[�W��]
�u�͂����c�c�����c�c�Ȃ�ŋ}�Ɂc�c����Ȃ��I�v[pcms]

*8939|
[fc]
�����A�������Y����ʂ蔲���悤�Ƃ���i�K�ɓ��������ƂŁA���͂��̂�ی삷��K�v�͂Ȃ��Ȃ�A���ʁA��ɂ����������Ă���B[pcms]

*8940|
[fc]
[vo_aoi s="aoi_0721"]
[�y���z name=���B�I��]
�u�Ђ��������c�c�͂��������c�c���������������I�v[pcms]

*8941|
[fc]
[vo_mia s="mia_0769"]
[�y�~�A�z name=�u����]
�u�������������c�c�Ђ͂����������c�c���₠�[���I�v[pcms]

*8942|
[fc]
[vo_mei s="mei_0849"]
[�y���z name=�m���[��]
�u�Ԃ����₾�����c�c���Z����̂���Ȃ��̂ɂ����I�v[pcms]

*8943|
[fc]
���@���������͋�ɂɂ��߂��A���Ԃ��Ƃ����ł��Ȃ������B�₪�Ă��̉���������́\�\[pcms]

[se storage="SE3307"]
[se buf=3 storage="SE3210"]

;//�C�x���g�摜�w��Fev50c
[evcg�ԃt�� storage="ev50c"]

*8944|
[fc]
[ns]�����̉d���`[nse]
�u���Ђ�Ђ�ЂЂ�I�v[pcms]

*8945|
[fc]
[vo_aka s="akane_0658"]
[�y���z name=���[�W��]
�u���A�����c�c����Ȃ̂��c�c�������́c�c�Ԃ����H�v[pcms]

*8946|
[fc]
������͎q�S�̂悤�Ȗ��������܂ꗎ���Ă����B[pcms]

*8947|
[fc]
[ns]�����̉d���a[nse]
�u�L�V�������������[�I�v[pcms]

*8948|
[fc]
[vo_aoi s="aoi_0722"]
[�y���z name=���B�I��]
�u���J�f�̂������c�c����Ȃ̂��c�c���̐Ԃ����H�v[pcms]

*8949|
[fc]
���̑ٓ����甲���o�Ă����̂͋���ȃ��J�f��̖����������B[pcms]

*8950|
[fc]
[ns]�����̉d���b[nse]
�u�v�q���������[�I�v[pcms]

*8951|
[fc]
[vo_mia s="mia_0770"]
[�y�~�A�z name=�u����]
�u�F�߂Ȃ��c�c����Ȃ́A����Ȃ̂킽���̐Ԃ���񂶂�Ȃ��I�v[pcms]

*8952|
[fc]
�~�A����͈��̂���Ɠ��l�ɁA����ȃq����̖��������܂ꗎ���Ă����B[pcms]

*8953|
[fc]
[ns]�����̉d���c[nse]
�u�V���t�t�����������[�I�v[pcms]

*8954|
[fc]
[vo_mei s="mei_0850"]
[�y���z name=�m���[��]
�u�m��Ȃ��A����Ȃ̒m��Ȃ��A���̐Ԃ����Ȃ񂩂���Ȃ��I�v[pcms]

*8955|
[fc]
�����Ė�����͋����[ruby_c t="�C�l" r="�Ȃ܂�"]��̖������Y�ݗ��Ƃ���Ă����B[pcms]

*8956|
[fc]
[�y��l���z]
�i�Ȃ�قǁc�c���@������������́A�������������������܂�Ă���̂��c�c�ł���΁A���̎҂�����c���Ƃ��čĐ��Y�����邩�j[pcms]

*8957|
[fc]
�I���̎g���͂��ׂĂ̗~�]���m�肷�邱�Ƃ��B�󂵁A�E���A�Ƃ��Ƃ����O�̎g�����ʂ����g�k�Ƃ��Ė��������ɓ����Ă��炨���B[pcms]

[se storage="SE3303"]
[se buf=3 storage="SE3210"]

;//�C�x���g�摜�w��Fev50d
[evcg�ԃt�� storage="ev50d"]

;//�ӎ������낤�Ƃ��Ă��܂�
*8958|
[fc]
[vo_aka s="akane_0659"]
[�y���z name=���[�W��]
�u�������c�c�܂��Y�܂�Ă�イ�c�c�����������c�c�v[pcms]

;//�ӎ������낤�Ƃ��Ă��܂�
*8959|
[fc]
[vo_aoi s="aoi_0723"]
[�y���z name=���B�I��]
�u���������ł����c�c���͂����c�c�v[pcms]

;//�ӎ������낤�Ƃ��Ă��܂�
*8960|
[fc]
[vo_mia s="mia_0771"]
[�y�~�A�z name=�u����]
�u����Ȃ́c�c��΂Ɂc�c�G�̌��o�������Łc�c���������c�c�v[pcms]

;//�ӎ������낤�Ƃ��Ă��܂�
*8961|
[fc]
[vo_mei s="mei_0851"]
[�y���z name=�m���[��]
�u�������Ă��c�c���o�����c�c���Z����c�c�Ђ��������c�c�v[pcms]

*8962|
[fc]
���@���������̉������͌��ʂ�Ɉ�������ŁA���̑̌^�ɖ߂��Ă͂���B�����A�q�{���ꎩ�̂��̊O�Ɉ����o����Ă��܂��Ă���B[pcms]

*8963|
[fc]
[ns]�����̉d���`[nse]
�u���Ђ�Ђ�ЂЂ�I�v[pcms]

*8964|
[fc]
�����āA���������́A�₦�ԂȂ����@������������Y�ݗ��Ƃ���Ă��̎��͂ɌQ�̂��`�����������B[pcms]

*8965|
[fc]
[�y��l���z]
�i������͂��̖������������E��Ȋ����A�����鉘�ꂽ�~�]���m�肵�������Ă����c�c���̒����c�ׂ��I������Ȃ�΁c�c�j[pcms]

*8966|
[fc]
���̎������́A�I�����g�����I���Ĉ��炢�Ŗ���ɏA�����B�����āw���x�Ɍ㎖������A���@���������ƍĉ���Ă�낤�B[pcms]

*8967|
[fc]
�ʂ����Ă���͉������ォ���N�ォ�A���邢�͂����Ɛ悩�A���̑O�ɕc������ޏ������̐S�Ɛg�͕̂ۂ̂��B[pcms]

*8968|
[fc]
[vo_aka s="akane_0660"]
[�y���z name=���[�W��]
�u�搶�c�c�搶�c�c�����āc�c�v[pcms]

*8969|
[fc]
[vo_aoi s="aoi_0724"]
[�y���z name=���B�I��]
�u�搶�c�c���������ɗ��Ă��������c�c�v[pcms]

*8970|
[fc]
[vo_mia s="mia_0772"]
[�y�~�A�z name=�u����]
�u���񂹁[�c�c�킽���c�c�҂��Ă邩��c�c�v[pcms]

*8971|
[fc]
[vo_mei s="mei_0852"]
[�y���z name=�m���[��]
�u���Z����c�c�҂��Ă邩��c�c�����c�c�v[pcms]

*8972|
[fc]
�ӎ������N�O�Ƃ��Ă��閂�@���������̂Ԃ₫�����ɂ��Ȃ���A�I���͎��g�̐g�̂ł���G��ŐV���Ȗ����̐��Y�ɋ΂��ݑ������B[pcms]

; ��z���[�h���Ȃ�A��z���[�h��ʂɖ߂�
[scene_end]

;�G���f�B���O5�i�n�[�����o�b�h�G���h�j��
;mm �O�ׂ̈ɃG���h�̃O���[�o���ƃ��[�J���ϐ��I��
[eval exp="sf.g_end_harem_bad = 1"]
[eval exp="f.l_end = 5"]

;//���X�^�b�t���[����
[ANTEN blk]
[jump storage="9999.ks" target=*TOP]

