;//=============================================================================
;//
;//�@�@�@�@�@�@�@�@�A���J�i���[�W��
;//
;//�@�@�@�@�@�@�@�@�@Version 1.00
;//�@�@�@�@�@�@�@�@Build 2019/11
;//=============================================================================
;0000.ks

;�^�C�g����ʂ���K�����̃t�@�C���ɃW�����v������B
;main.txt�̂悤�Ȃ��́B

;sebuf�\��
;0 SE
;1 SE �ꉞ���[�v�̎��͂���
;2 SE �G�胋�[�v����������������
;3 SE �󂯂Ă�������{�g�p�s��
;4 
;5 
;6 
;7 
;8 
;9 
;10
;11
;12
;13
;14
;15
;16

;���C���\��
;message0�@�e�L�X�g�E�B���h�E
;message1�@�Z�[�u���[�h�A�e�L�X�g�t���[���i����g��Ȃ��j
;message2�@�Z�[�u���[�h�A�t�F�C�X�E�B���h�E�i����g��Ȃ��j
;message3�@�R���t�B�O�A���O���Z�[�u�f�[�^�ɕ\�������悤�ɂ��邽�߂�message3��\���Ŗ��O�����
;message4�@�l�[���`�b�v
;message5�@�I����
;message6�@�T���v���E�B���h�E�̃e�L�X�g
;message7�@�_�C�A���O�̃e�L�X�g
;message8
;message9
;message10

;���C���\��
;base�@��
;0�@�w�i�E�C�x���g
;1�@�L�����@�E
;2�@�L�����@��
;3�@�L�����@��
;4�@�L�����@�E 2�l�����p
;5�@�L�����@�� 2�l�����p
;6
;7
;8
;9�@���o�Ŏg����̂����܂�
;10�@�I�����̃e�L�X�g �Ó]
;11�@quick�Z�[�u���[�h�@�Z�[�u�}�X�N�@�R���t�B�O���b�Z�[�W�E�B���h�E�̃x�[�X�摜�i���̃��C���̔Z�x�����삳���j
;12�@�t���b�V���@�_�C�A���O
;13�@New�}�[�N

;����͎����܂�Ԃ�����B40�����֑�3�������炢�Őݒ�B

;===========================================================

;�E�B���h�E��\����
[eval exp="f.winon = 0"]
;�t�F�C�X�I��
[eval exp="f.face_win_on = 1"]

;;;;�ꉞ�f�o�b�O���Ă��烁�C���ɒ����
;[if exp="kag.debugMenu.visible == true"]
;	[jump target=*debug]
;[endif]
;
;;�v�����[�O�X�L�b�v���Ă�Ȃ�Y���t�@�C����
;[if exp="tf.pskip == 1"]
;	[eval exp="tf.pskip = 0"]
;	[jump storage="" target=*]
;[endif]

*main
;�V�X�e���{�^�����E�B���h�E����
[sysbt_meswin clear]

[jump storage="arcana001.ks" target=*TOP]
;[jump storage="�Z�[�u�}�X�N�e�X�g.ks"]
;-----------------------------------------------------------
*debug|
;
;
;	*SEL01|
;	[fc]
;	[sel01 text='�Z���@���r�e�X�g'             target=*�Z��]
;	[sel02 text='�����L���� �\���e�X�g'        target=*std]
;	[sel03 text='�t�F�C�X�E�B���h�E�e�X�g'     target=*f]
;	[sel04 text='�ϐg���[�r�['                 target=*m]
;	;[sel01 text='�T���v���V�i���I'             target=*sample]
;	[sel01 text='�����L���� �g�p�@'            storage="test_std.ks"]
;	;[sel03 text='�����L���� �h�炵�e�X�g'      target=*q]
;	;[sel04 text='�A�C�L���b�`�@�e�X�g'      target=*i]
;	;[sel04 text='bgv�@�e�X�g'      target=*bgv]
;	[sel07 text='�{��'                target=*main end]
;	[returntitle]
;
;	*umi
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="ms_b001.ks" target=*TOP]
;
;	*sac
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="ms_c001.ks" target=*TOP]
;
;	*kas
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="ms_d001.ks" target=*TOP]
;	;--------------------------------------
;
;	;	*sample
;	;	;�V�X�e���{�^�����E�B���h�E����
;	;	[sysbt_meswin clear]
;	;	[jump storage="ft_0001.ks" target=*TOP]
;	*�Z��
;	[jump storage="_�Z���}�N��.ks" target=*test]
;
;
;
;
;	*std|
;	[fc]
;	[sel01 text='�����L���� �\���e�X�g ��_�@��'      target=*std1]
;	[sel02 text='�����L���� �\���e�X�g �X��@��'      target=*std2]
;	[sel03 text='�����L���� �\���e�X�g ���R�@�~�A'    target=*std3]
;	[sel04 text='�����L���� �\���e�X�g �l���@��'      target=*std4]
;	[sel05 text='�G'      target=*mob]
;	[sel06 text='�߂�'                                target=*SEL01 end]
;
;	*mob|
;	[fc]
;	[sel01 text='��l��'                   target=*std5]
;	[sel02 text='�J�N�G��'                 target=*std6]
;	[sel03 text='�~�Y�`'                   target=*std7]
;	[sel04 text='�V���E�W���E'             target=*std8]
;	[sel05 text='���������`�i�q�S�^�C�v�j' target=*std9]
;	[sel06 text='���������a�i�G��^�C�v�j' target=*std10]
;	[sel07 text='�߂�'          target=*std end]
;
;	*std1
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch01.ks" target=*std1]
;
;	*std2
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch02.ks" target=*std2]
;
;	*std3
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch03.ks" target=*std3]
;
;	*std4
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch04.ks" target=*std4]
;
;	*std5
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch05.ks"]
;
;	*std6
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch06.ks"]
;
;	*std7
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch07.ks"]
;
;	*std8
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch08.ks"]
;
;	*std9
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch09.ks"]
;
;	*std10
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="test_std_ch10.ks"]
;
;
;	*f
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="test_face.ks"]
;
;	*m
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="test_hensin.ks"]
;
;
;
;	*q
;	;�V�X�e���{�^�����E�B���h�E����
;	[sysbt_meswin clear]
;	[jump storage="test_quake_chara.ks"]
;
;
;
;	*bgv
;	[sysbt_meswin clear]
;	[jump storage="test_bgv.ks"]
;
;
;
[returntitle]
