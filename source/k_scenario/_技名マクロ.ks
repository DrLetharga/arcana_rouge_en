;_�Z���}�N��

;���r�T�C�Y�ύX
[macro name="rubysize_change"]
	[font rubysize=%rubysize|18]

[endmacro]

;���r�T�C�Y���ɖ߂�
[macro name="rubysize_reset"]
	[font rubysize=12]
[endmacro]

;��--------------------------------------

;�o�����オ��A�g�@�̉ԁp
[macro name="�Z_�G�����v�V�I���E�f�E�N���e�[��"]
	[rubysize_change]
	[ruby_c t="�G�����v�V�I���E�f�E�N���e�[��" r="�� �� �� �� ��A�g �@ �� ��"]
	[rubysize_reset]
[endmacro]

;�o�[�����ܔM�̒e�ہp
[macro name="�Z_�o���E�u�������g"]
	[rubysize_change rubysize=16]
	[ruby_c t="�o���E�u�������g" r="�[�����ܔM�̒e��"]
	[rubysize_reset]
[endmacro]

;�o������A�䂪��M�A�䂪���p
[macro name="�Z_�t�����E�f�E�G�N�X�v���[�W�I��"]
	[rubysize_change]
	[ruby_c t="�t�����E�f�E�G�N�X�v���[�W�I��" r="�� �� ��A�� �� �� �M�A�� �� ��"]
	[rubysize_reset]
[endmacro]


;�o���Ȃ鉊��A���ꂵ���𐴂ߋ����p
[macro name="�Z_�����F�[���E�A���F�E�f�E�t���[���E�T�N��"]
	[rubysize_change]
	[ruby_c t="�����F�[���E�A���F�E�f�E�t���[���E�T�N��" r="�� �� �� �� ��A�� �� �� �� �� �� �� �� ��"]
	[rubysize_reset]
[endmacro]

;��--------------------------------------

;�o��삯��c�o���ƂȂ�Ėz��p
[macro name="�Z_�A���V�X�g�E�C�N���e�B"]
	[rubysize_change]
	[ruby_c t="�A���V�X�g�E�C�N���e�B" r="�� �� �� �� �c �o �� �� �� �� �� �z ��"]
	[rubysize_reset]

[endmacro]

;�o���ƂȂ�ĉ����肽�܂��p
[macro name="�Z_�A���V�X�g�E�u�[�N���G"]
	[rubysize_change rubysize=16]
	[ruby_c t="�A���V�X�g�E�u�[�N���G" r="���ƂȂ�ĉ����肽�܂�"]
	[rubysize_reset]
[endmacro]


;�~�A--------------------------------------

;�o�����f���F�̑��p
[macro name="�Z_���E�W���W�������E�h�D�E�W��"]
	[rubysize_change]
	[ruby_c t="���E�W���W�������E�h�D�E�W��" r="�� �� �f �� �� �F �� ��"]
	[rubysize_reset]
[endmacro]

;�o��������߂����̐n�p
[macro name="�Z_���~�E�h�D�E�����~�G�[��"]
	[rubysize_change]
	[ruby_c t="���~�E�h�D�E�����~�G�[��" r="�� �� �� �� �� �� �� �� �n"]
	[rubysize_reset]
[endmacro]


;�o�~�蒍�����̉J�p
[macro name="�Z_�v�����E�o���A���g"]
	[rubysize_change]
	[ruby_c t="�v�����E�o���A���g" r="�~ �� �� �� �� �� �J"]
	[rubysize_reset]
[endmacro]

;��--------------------------------------

;�o�h��Ԃ��[����藈��Łp
;//�i�߂������񂩂��߂����񂰂��j�B���r�Ƃ͍����Ă��܂��񂪔����͂���ł��B
[macro name="�Z_�ŎE�ÊA���Ō�"]
	[rubysize_change rubysize=16]
	[ruby_c t="�ŎE�ÊA���Ō�" r="�h��Ԃ��[����藈���"]
	[rubysize_reset]
[endmacro]

;�o�i���̟B�������̈��J�p
;//�i�����������񂺂��񂪂��߂����イ�j�B���r�Ƃ͍����Ă��܂��񂪔����͂���ł��B
[macro name="�Z_��Βf��e�N���{"]
	[rubysize_change rubysize=16]
	[ruby_c t="��Βf��e�N���{" r="�i���̟B�������̈��J"]
	[rubysize_reset]
[endmacro]


;�o�݂��܂݂Ȃ�������傤�p
[macro name="�Z_��쐅����"]
	;�X�y�[�X����Ȃ��̂͂킴��
	[ruby_c t="��쐅����" r="�݂��܂݂Ȃ�������傤"]
[endmacro]

;�J�N�G��--------------------------------------

;�o�߂��܂����΂��Ӂp
[macro name="�Z_����������"]
	[ruby_c t="����������" r="�� �� �� �� �� �� �� ��"]
[endmacro]

;�o�߂��܂����ӂ�����p
[macro name="�Z_���������a"]
	[ruby_c t="���������a" r="�� �� �� �� �� �� �� �� ��"]
[endmacro]

;�o�߂��܂�������p
[macro name="�Z_�������S�w"]
	[ruby_c t="�������S�w" r="�� �� �� �� �� �� �� ��"]
[endmacro]

[return]


;-------------------------------------------------
*test
	[call storage="_�Z���}�N��.ks"]
*1|
[fc]�u[�Z_�A���V�X�g�E�C�N���e�B]�v[pcms]
*2|
[fc]�u[�Z_���~�E�h�D�E�����~�G�[��]�v[pcms]
*3|
[fc]�u[�Z_�G�����v�V�I���E�f�E�N���e�[��]�v[pcms]
*4|
[fc]�u[�Z_�������S�w]�v[pcms]
*5|
[fc]�u[�Z_����������]�v[pcms]
*6|
[fc]�u[�Z_���������a]�v[pcms]
*7|
[fc]�u[�Z_�o���E�u�������g]�v[pcms]
*8|
[fc]�u[�Z_�t�����E�f�E�G�N�X�v���[�W�I��]�v[pcms]
*9|
[fc]�u[�Z_���E�W���W�������E�h�D�E�W��]�v[pcms]
*10|
[fc]�u[�Z_�v�����E�o���A���g]�v[pcms]
*11|
[fc]�u[�Z_�A���V�X�g�E�u�[�N���G]�v[pcms]
*12|
[fc]�u[�Z_�����F�[���E�A���F�E�f�E�t���[���E�T�N��]�v[pcms]
*13|
[fc]�u[�Z_�ŎE�ÊA���Ō�]�v[pcms]
*14|
[fc]�u[�Z_��Βf��e�N���{]�v[pcms]
*16|
[fc]�u[�Z_��쐅����]�v[pcms]


[returntitle]

