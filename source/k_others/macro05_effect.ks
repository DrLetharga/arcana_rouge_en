;���o�n�}�N���܂Ƃ�
;��i�ɂ���Ă͊Y���摜����Ė��������肷��̂Œ��ӁB

;=============================================================
;;;;;;;;;;;;;;;;Android�ڐA���₷���悤�Ƀ}�N���ǉ�
;�J�X�^��backlay
;=============================================================
[macro name=backlay_c]

	;backlay���s���t���O���I�t�Ȃ�backlay���ăt���O���I���ɂ���B
	[if exp="f.backlay_on == 0"]
		[eval exp="f.backlay_on = 1"]
		[backlay]
	[endif]

[endmacro]

;=============================================================
;�J�X�^��WT
;=============================================================
;�V�i���I���ł̃g�����X�͊�{�I��wt_c�ŋL�q����B�}�N���Ƃ��̏ꍇ�͓K�X�B

[macro name=wt_c]

	;�X�L�b�v���[�h�Ȃ�canskip=false���Ȃ�
	[if exp="kag.skipMode >= 3"]
		[wt]
	[else]
;�X�L�b�v��2016/10/24
		[wt canskip=true]
;		[wt]
	[endif]
	[eval exp="f.backlay_on = 0"]

	;����Ă݂邩
	;�����L�����}�N���ŃI���ɂ���̂߂�ǂ��������߂�
	;[freeimage layer=1  page=fore cond="f.layer1  == 0"][freeimage layer=1  page=back cond="f.layer1  == 0"]
	;[freeimage layer=2  page=fore cond="f.layer2  == 0"][freeimage layer=2  page=back cond="f.layer2  == 0"]
	;[freeimage layer=3  page=fore cond="f.layer3  == 0"][freeimage layer=3  page=back cond="f.layer3  == 0"]
	;[freeimage layer=4  page=fore cond="f.layer4  == 0"][freeimage layer=4  page=back cond="f.layer4  == 0"]
	;[freeimage layer=5  page=fore cond="f.layer5  == 0"][freeimage layer=5  page=back cond="f.layer5  == 0"]
	;[freeimage layer=6  page=fore cond="f.layer6  == 0"][freeimage layer=6  page=back cond="f.layer6  == 0"]
	;[freeimage layer=7  page=fore cond="f.layer7  == 0"][freeimage layer=7  page=back cond="f.layer7  == 0"]
	;[freeimage layer=8  page=fore cond="f.layer8  == 0"][freeimage layer=8  page=back cond="f.layer8  == 0"]
	;[freeimage layer=9  page=fore cond="f.layer9  == 0"][freeimage layer=9  page=back cond="f.layer9  == 0"]
	;[freeimage layer=10 page=fore cond="f.layer10 == 0"][freeimage layer=10 page=back cond="f.layer10 == 0"]
	;[freeimage layer=11 page=fore cond="f.layer11 == 0"][freeimage layer=11 page=back cond="f.layer11 == 0"]
	;[freeimage layer=12 page=fore cond="f.layer12 == 0"][freeimage layer=12 page=back cond="f.layer12 == 0"]
	;[freeimage layer="&sf.layerC"  page=fore cond="f.layerC  == 0"][freeimage layer="&sf.layerC"  page=back cond="f.layerC  == 0"]
	;[freeimage layer="&sf.layerL"  page=fore cond="f.layerL  == 0"][freeimage layer="&sf.layerL"  page=back cond="f.layerL  == 0"]
	;[freeimage layer="&sf.layerR"  page=fore cond="f.layerR  == 0"][freeimage layer="&sf.layerR"  page=back cond="f.layerR  == 0"]
	;[freeimage layer="&sf.layerLC" page=fore cond="f.layerLC == 0"][freeimage layer="&sf.layerLC" page=back cond="f.layerLC == 0"]
	;[freeimage layer="&sf.layerRC" page=fore cond="f.layerRC == 0"][freeimage layer="&sf.layerRC" page=back cond="f.layerRC == 0"]


[endmacro]

;;;;;;;;;;;;;;;;Android�ڐA���₷���悤�Ƀ}�N���ǉ�

;��������4�Ȃ̂��H

;=============================================================
;�J�X�^���E�F�C�g
;=============================================================
;���Ӗ��Ȃ̂Ńf�t�H��wait�ł��

[macro name=wait_c]
	;�X�L�b�v���[�h�Ȃ�canskip=false���Ȃ�
	[if exp="kag.skipMode >= 3"]
		[wait time=%time]
	[else]
;�X�L�b�v��2016/10/24
		[wait time=%time canskip=true]
;		[wait time=%time]
	[endif]
[endmacro]

;=============================================================
;�J�X�^���E�F�C�g �G���f�B���O�p
;=============================================================
[macro name=wait_c2]
	;�X�L�b�v���[�h�Ȃ�canskip=false���Ȃ�
	[if exp="kag.skipMode >= 3"]
		[wait time=0]
	[else]
		[wait time=%time canskip=false]
;		[wait time=%time]
	[endif]
[endmacro]


;=============================================================
;�J�X�^��WM ����͂���Ȃ���
;=============================================================
[macro name=wm_c]
	;�X�L�b�v���[�h�Ȃ�canskip=false���Ȃ�
	[if exp="kag.skipMode >= 3"]
		[wm]
	[else]
;		[wm canskip=false]
		[wm]

	[endif]
[endmacro]




;=============================================================
; ���t��
;=============================================================
[macro name=���t��]
	; �G�t�F�N�g���I���Ȃ甒�t��
	[if exp="sf.efect"]
	;�V�X�e���{�^�����E�B���h�E����
	[sysbt_meswin clear]

		[backlay][image storage="effect_white" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
;[trans method=universal rule="wipe2" vague=300 time=100][wt_c]
[trans time=%time|100 method=crossfade][wt]
		[wait time=100]
		[backlay][image storage="chara_int" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans time=%time|300 method=crossfade][wt]
		[freeimage layer="&sf.effectlayer" page=back]
		[freeimage layer="&sf.effectlayer" page=fore]

	;���b�Z�[�W���V�X�e���{�^���\��
	;[sysbt_meswin]
	[endif]
[endmacro]

;=============================================================
; �ԃt��
;=============================================================
[macro name=�ԃt��]
	; �G�t�F�N�g���I���Ȃ�ԃt��
	[if exp="sf.efect"]
	;�V�X�e���{�^�����E�B���h�E����
	[sysbt_meswin clear]

		[backlay][image storage="effect_red" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		[wait time=100]
		[backlay][image storage="chara_int" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans time=%time|300 method=crossfade][wt]
		[freeimage layer="&sf.effectlayer" page=back]
		[freeimage layer="&sf.effectlayer" page=fore]

	;���b�Z�[�W���V�X�e���{�^���\��
	;[sysbt_meswin]
	[endif]
[endmacro]


;=============================================================
; ���t��
;=============================================================
[macro name=���t��]
	; �G�t�F�N�g���I���Ȃ獕�t��
	[if exp="sf.efect"]
	;�V�X�e���{�^�����E�B���h�E����
	[sysbt_meswin clear]

		[backlay][image storage="effect_black" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
;[trans time=%time|100 method=crossfade][wt]
[trans_c * time=%time|100]
;[trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		[wait time=100]
		[backlay][image storage="chara_int" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
;[trans time=%time|300 method=crossfade][wt]
[trans_c * time=%time|100]
		[freeimage layer="&sf.effectlayer" page=back]
		[freeimage layer="&sf.effectlayer" page=fore]

	;���b�Z�[�W���V�X�e���{�^���\��
	;[sysbt_meswin]
	[endif]
[endmacro]


;=============================================================
; ���t���@����80���炢�̉摜�Ȃ̂ŐF�X����
;=============================================================
; �V�X�e���{�^�����E�B���h�E�̃I���I�t�͕ʓr���߂�����B
;[macro name=���t��]
;	; �G�t�F�N�g���I���Ȃ痋�t��
;	[if exp="sf.efect"]
;		[wait time=100]
;		[backlay]
;		[image storage="thunder2" layer=10 page=back visible=true left=0 top=0]
;		[trans time=0 method=crossfade]
;		[wt]
;		[wait time=200]
;		[backlay]
;		[image storage="chara_int" layer=10 page=back visible=true left=0 top=0]
;		[trans time=500 method=crossfade]
;		[wt]
;		[freeimage layer=10 page=back][freeimage layer=10 page=fore]
;	[endif]
;[endmacro]


;=============================================================
;�ː��t��AB �g��Ȃ��B�ʓ|������B
;=============================================================
;			;
;			; syaseil�ː��t��
;			;
;			;�g����
;			;[�ː��t��A]
;			;[image storage="EVE001a" layer=base page=back visible=true]
;			;[�ː��t��B]
;			;
;			;�ː��t��A�p�[�c
;			[macro name=�ː��t��A]
;				; �G�t�F�N�g���I���Ȃ�ː��t��
;				[if exp="sf.efect == 1"]
;
;					;�V�X�e���{�^�����E�B���h�E����
;					[sysbt_meswin clear]
;					[backlay][image storage="effect_white" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
;
;					[wait time=50]
;					[backlay][image storage="chara_int" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans time=150 method=crossfade][wt]
;
;					[wait time=150]
;
;					[backlay][image storage="effect_white" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
;					[wait time=50]
;					[backlay][image storage="chara_int" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans time=150 method=crossfade][wt]
;				
;					[wait time=150]
;
;					[backlay][image storage="effect_white" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
;				[endif]
;			[endmacro]
;
;			;�ː��t��B�p�[�c
;			[macro name=�ː��t��B]
;				; �G�t�F�N�g���I���Ȃ�ː��t��
;				[if exp="sf.efect == 1"]
;					[backlay][image storage="chara_int" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255][trans time=500 method=crossfade][wt_c]
;				[endif]
;
;				;[trans time=500 method=crossfade]
;				;[wt]
;
;				[if exp="sf.efect == 1"]
;					[freeimage layer="&sf.effectlayer" page=back]
;					[freeimage layer="&sf.effectlayer" page=fore]
;					;���b�Z�[�W���V�X�e���{�^���\��
;					[sysbt_meswin]
;				[endif]
;			[endmacro]

;=============================================================


;;;;;;;;;;;;;;;;Android�ڐA���₷���悤�Ƀ}�N���ǉ�


;=============================================================
;evcg�ː��t��
;=============================================================
;����
;layer �L�q���Ȃ����base
;left  �L�q���Ȃ����0
;top   �L�q���Ȃ����0
[macro name=evcg�ː��t��]



	; �G�t�F�N�g���I���Ȃ�ː��t��
	[if exp="sf.efect == 1"]

		;�V�X�e���{�^�����E�B���h�E����
		[sysbt_meswin clear]
		;[sysbt_SIROKURO clear]

		;[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=0][wt_c]
		[wait time=150]
		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0][trans time=150 method=crossfade][wt_c]

		[wait time=150]

		;[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt]
		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=0][wt_c]
		[wait time=300]
		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0][trans time=300 method=crossfade][wt_c]
	
		[wait time=150]
	[endif]

	[if    exp="mp.seoff == void"]
		[stopse buf=1]
		[stopse buf=2]
		[stopse buf=3]
		[se buf=0 storage=%se|se_sex01a]
	[endif]

	;�ː�����                               sf.efect���I���Ȃ甒���\��
	;[evcg storage=%storage layer=%layer|0]
	[evcg * cond="mp.storage != void"]
	[evcg_cutin * storage=%cutin cond="mp.cutin != void"]

	[image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 cond="sf.efect"]

	[if exp="sf.efect == 1"]
		[trans time=0 method=crossfade][wt_c]
		[wait time=300]
		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0][trans time=800 method=crossfade][wt_c]

		[freeimage layer="&sf.effectlayerH" page=back]
		[freeimage layer="&sf.effectlayerH" page=fore]

		;���b�Z�[�W���V�X�e���{�^���\��
		;[sysbt_meswin]
	[else]
		[trans time=300 method=crossfade][wt_c]
	[endif]

[endmacro]

;;;;;;;;;;;;;;;;Android�ڐA���₷���悤�Ƀ}�N���ǉ�


;=============================================================
;���X�t��
;=============================================================
[macro name=���X�t��]
	; �G�t�F�N�g���I���Ȃ甒�t��
	[if exp="sf.efect"]
		;�V�X�e���{�^�����E�B���h�E����
		[sysbt_meswin clear]
		;[sysbt_SIROKURO clear]

		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		[wait time=50]
		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans time=150 method=crossfade][wt]


		[wait time=150]

		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		[wait time=50]
		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans time=300 method=crossfade][wt]


		[wait time=150]

		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		[wait time=50]
		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans time=%time|300 method=crossfade][wt]

		[freeimage layer="&sf.effectlayerH" page=back]
		[freeimage layer="&sf.effectlayerH" page=fore]


		;�V�X�e���{�^�����E�B���h�E�\��
		;[sysbt_meswin]
	[endif]
[endmacro]

;=============================================================
;bg���t��
;=============================================================
;backlay��trance�̓}�N�����ōs���̂ŋL�q�s�v�B�g�����͉��L�B
;��
;[bg�ԃt�� storage="EV23_02" layer=0 page=back visible=true left=0 top=0]
;
[macro name=bg���t��]
	; �G�t�F�N�g���I���Ȃ�ː��t��
	[if exp="sf.efect == 1"]
		;�V�X�e���{�^�����E�B���h�E����
		[sysbt_meswin clear]

		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans_c cross time=0]
		;�C�x���gCG
		;[bg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=0 method=crossfade][wt_c]
		[bg * cond="mp.storage != void"]
		[trans time=0 method=crossfade][wt_c]

		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans_c *]

		;�V�X�e���{�^�����E�B���h�E�\��
		;[sysbt_meswin]

	[else]
		;[bg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=%time|300 method=crossfade][wt_c]
		[bg * cond="mp.storage != void"]
		[trans time=%time|300 method=crossfade][wt_c]
	[endif]
[endmacro]



;=============================================================
;bg�ԃt��
;=============================================================
;backlay��trance�̓}�N�����ōs���̂ŋL�q�s�v�B�g�����͉��L�B
;��
;[bg�ԃt�� storage="EV23_02" layer=0 page=back visible=true left=0 top=0]
;
[macro name=bg�ԃt��]
	; �G�t�F�N�g���I���Ȃ�ː��t��
	[if exp="sf.efect == 1"]
		;�V�X�e���{�^�����E�B���h�E����
		[sysbt_meswin clear]

		[backlay][image storage="effect_red" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans_c cross time=0]
		;�C�x���gCG
		;[bg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=0 method=crossfade][wt_c]
		[bg * cond="mp.storage != void"]
		[trans time=0 method=crossfade][wt_c]

		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans_c *]

		;�V�X�e���{�^�����E�B���h�E�\��
		;[sysbt_meswin]

	[else]
		;[bg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=%time|300 method=crossfade][wt_c]
		[bg * cond="mp.storage != void"]
		[trans time=%time|300 method=crossfade][wt_c]
	[endif]
[endmacro]

;=============================================================



;=============================================================
;bg���t��
;=============================================================
;backlay��trance�̓}�N�����ōs���̂ŋL�q�s�v�B�g�����͉��L�B
;��
;[bg�ԃt�� storage="EV23_02" layer=0 page=back visible=true left=0 top=0]
;
[macro name=bg���t��]
	; �G�t�F�N�g���I���Ȃ�ː��t��
	[if exp="sf.efect == 1"]
		;�V�X�e���{�^�����E�B���h�E����
		[sysbt_meswin clear]

		[backlay][image storage="effect_black" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans_c cross time=0]
		;�C�x���gCG
		;[bg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=0 method=crossfade][wt_c]
		[bg * cond="mp.storage != void"]
		[trans time=0 method=crossfade][wt_c]

		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans_c *]

		;�V�X�e���{�^�����E�B���h�E�\��
		;[sysbt_meswin]

	[else]
		;[bg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=%time|300 method=crossfade][wt_c]
		[bg * cond="mp.storage != void"]
		[trans time=%time|300 method=crossfade][wt_c]
	[endif]
[endmacro]



;=============================================================
;evcg���t��
;=============================================================
;backlay��trance�̓}�N�����ōs���̂ŋL�q�s�v�B�g�����͉��L�B
;��
;[evcg�ԃt�� storage="EV23_02" layer=0 page=back visible=true left=0 top=0]
;
[macro name=evcg���t��]
	; �G�t�F�N�g���I���Ȃ�ː��t��
	[if exp="sf.efect == 1"]
		;�V�X�e���{�^�����E�B���h�E����
		[sysbt_meswin clear]

		[backlay][image storage="effect_white" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		;�C�x���gCG
		;[evcg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=0 method=crossfade][wt_c]
		[evcg * cond="mp.storage != void"]
		[evcg_cutin * storage=%cutin cond="mp.cutin != void"]
		[trans time=0 method=crossfade][wt_c]

		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans time=%time|500 method=crossfade][wt]

		;�V�X�e���{�^�����E�B���h�E�\��
		;[sysbt_meswin]

	[else]
		;[evcg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=%time|300 method=crossfade][wt_c]
		[evcg * cond="mp.storage != void"]
		[evcg_cutin * storage=%cutin cond="mp.cutin != void"]
		[trans time=%time|300 method=crossfade][wt_c]
	[endif]
[endmacro]



;=============================================================
;evcg�ԃt��
;=============================================================
;backlay��trance�̓}�N�����ōs���̂ŋL�q�s�v�B�g�����͉��L�B
;��
;[evcg�ԃt�� storage="EV23_02" layer=0 page=back visible=true left=0 top=0]
;
[macro name=evcg�ԃt��]
	; �G�t�F�N�g���I���Ȃ�ː��t��
	[if exp="sf.efect == 1"]
		;�V�X�e���{�^�����E�B���h�E����
		[sysbt_meswin clear]

		[backlay][image storage="effect_red" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans method=universal rule="wipe2" vague=300 time=100][wt_c]
		;�C�x���gCG
		;[evcg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=0 method=crossfade][wt_c]
		[evcg * cond="mp.storage != void"]
		[evcg_cutin * storage=%cutin cond="mp.cutin != void"]
		[trans time=0 method=crossfade][wt_c]

		[backlay][image storage="chara_int" layer="&sf.effectlayerH" page=back visible=true left=0 top=0 opacity=255][trans time=%time|500 method=crossfade][wt]

		;�V�X�e���{�^�����E�B���h�E�\��
		;[sysbt_meswin]

	[else]
		;[evcg storage=%storage layer=%layer|0 page=back visible=true  left=%x|0 top=%y|0][trans time=%time|300 method=crossfade][wt_c]
		[evcg * cond="mp.storage != void"]
		[evcg_cutin * storage=%cutin cond="mp.cutin != void"]
		[trans time=%time|300 method=crossfade][wt_c]
	[endif]
[endmacro]

;=============================================================


;freeimage�����ĂȂ�����

;�����}�N������
;	;�U�b�s���O�{�^���̏������Ó]�p�}�N���B
;	;trance�͊����p��random�ɂ��Ƃ��̂ŕʍ�i�Ŏg���Ȃ�K�X�C���B
;	;��������
;	[macro name=selbt_clear]
;
;
;	;�ڐA�p	;�L�����������x�[�X�Ó]����Ȃ��ď�ɍ�
;	;�ڐA�p	[backlay][image storage="effect_black" layer=9 page=back visible=true left=0 top=0]
;	;�ڐA�p	[trans method=universal rule="random" vague=10 time=1000][wt_c]
;	;�ڐA�p
;	;�ڐA�p	;�x�[�X������
;	;�ڐA�p	[image storage="effect_black" layer=base page=fore visible=true left=0 top=0]
;	;�ڐA�p	;�������ŃL��������
;	;�ڐA�p	[freeimage layer=0 page=fore][freeimage layer=0 page=back]
;	;�ڐA�p	[freeimage layer=1 page=fore][freeimage layer=1 page=back]
;	;�ڐA�p	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
;	;�ڐA�p	[freeimage layer=3 page=fore][freeimage layer=3 page=back]
;	;�ڐA�p	[freeimage layer=4 page=fore][freeimage layer=4 page=back]
;	;�ڐA�p	[freeimage layer=5 page=fore][freeimage layer=5 page=back]
;	;�ڐA�p	[freeimage layer=6 page=fore][freeimage layer=6 page=back]
;	;�ڐA�p	[freeimage layer=7 page=fore][freeimage layer=7 page=back]
;	;�ڐA�p	[freeimage layer=8 page=fore][freeimage layer=8 page=back]
;	;�ڐA�p	[freeimage layer=9 page=fore][freeimage layer=9 page=back]
;	;�ڐA�p
;	;�ڐA�p	[wait_c time=500]
;	;�ڐA�p
;	;�ڐA�p	;���C���J�E���g�߂�
;	;�ڐA�p	[laycount layers="&sf.maxlayers"]
;
;	[eval exp="f.selbt = 0"]
;	[cm]
;	[layopt layer="&sf.zap_message" page=fore visible=false]
;
;	;�J�����g���C����߂�
;	[current layer=message0]
;
;	; ���b�Z�[�W�����ւ̏o�͂��ĊJ�A�\���ɂ���
;	[history output=true enabled=true]
;
;	[endmacro]


;=============================================================
;�U�b�s���O�i���_�ύX�j�I����
;=============================================================

[macro name=zapend_random]

;�ڐA�p	;�V�X�e���{�^�����E�B���h�E����
;�ڐA�p	[sysbt_meswin_clear]
;�ڐA�p
;�ڐA�p	[stopse_all]
;�ڐA�p	;�L�����������x�[�X�Ó]����Ȃ��ď�ɍ�
;�ڐA�p	[backlay][image storage="effect_black" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
;�ڐA�p	[trans method=universal rule="random" vague=10 time=1000][wt_c]
;�ڐA�p	;�x�[�X������
;�ڐA�p	[image storage="effect_black" layer=base page=fore visible=true left=0 top=0]
;�ڐA�p	;�������ŃL��������
;�ڐA�p	[freeimage layer=0 page=fore][freeimage layer=0 page=back]
;�ڐA�p	[freeimage layer=1 page=fore][freeimage layer=1 page=back]
;�ڐA�p	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
;�ڐA�p	[freeimage layer=3 page=fore][freeimage layer=3 page=back]
;�ڐA�p	[freeimage layer="&sf.effectlayer" page=fore][freeimage layer="&sf.effectlayer" page=back]
;�ڐA�p
;�ڐA�p	[wait_c time=500]

;�V�X�e���{�^�����E�B���h�E����
[sysbt_meswin clear]
		;[sysbt_SIROKURO clear]

;BGM��~
[fadeoutbgm time=500]

[backlay][black_toplayer][trans method=universal rule="random" vague=10 time=1500][wt_c][hide_chara_int]

[stopse_all]
[wait_c time=1000]

[endmacro]

;=============================================================
;�U�b�s���O�i���_�ύX�j�I����
;=============================================================

;���łɍ��̏ꍇ�������B�����甒����
[macro name=zapend_random2]

;�ڐA�p	;�V�X�e���{�^�����E�B���h�E����
;�ڐA�p	[sysbt_meswin_clear]
;�ڐA�p
;�ڐA�p	[stopse_all]
;�ڐA�p	;�L�����������x�[�X�Ó]����Ȃ��ď�ɍ�
;�ڐA�p	[backlay][image storage="effect_white" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
;�ڐA�p	[trans method=universal rule="random" vague=10 time=500][wt_c]
;�ڐA�p	[backlay][image storage="effect_black" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
;�ڐA�p	[trans method=universal rule="random" vague=10 time=500][wt_c]
;�ڐA�p	
;�ڐA�p	;�x�[�X������
;�ڐA�p	[image storage="effect_black" layer=base page=fore visible=true left=0 top=0]
;�ڐA�p	;�������ŃL��������
;�ڐA�p	[freeimage layer=0 page=fore][freeimage layer=0 page=back]
;�ڐA�p	[freeimage layer=1 page=fore][freeimage layer=1 page=back]
;�ڐA�p	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
;�ڐA�p	[freeimage layer=3 page=fore][freeimage layer=3 page=back]
;�ڐA�p	[freeimage layer=4 page=fore][freeimage layer=4 page=back]
;�ڐA�p	
;�ڐA�p	[wait_c time=500]

;�V�X�e���{�^�����E�B���h�E����
[sysbt_meswin clear]
		;[sysbt_SIROKURO clear]

;BGM��~
[fadeoutbgm time=500]

[backlay][image storage="effect_white" layer="&sf.effectlayer" page=back visible=true left=0 top=0 opacity=255]
[trans method=universal rule="random" vague=10 time=500][wt_c]
[backlay][black_toplayer][trans method=universal rule="random" vague=10 time=1500][wt_c][hide_chara_int]

[stopse_all]

[wait_c time=1000]
[endmacro]



;=============================================================
;�J�X�^��trans
;=============================================================
;���ɂ��K�v�Ȃ�K�X�ǉ��B
;mp�ɑ啶���̓_���炵��
[macro name=trans_c]
	;�L�̔����ł��ւ��ĕ\���p�@�V�X�e������̖߂�Ȃ�0�b�ōĕ\��
;	[if    exp="tf.sys_return == 1"]
;		[trans method=crossfade time=0][wt_c]
	[if exp="mp.cross"][trans method=crossfade time=%time|1000][wt_c]
	[elsif exp="mp.blind_lr"][trans method=universal rule="blindX" vague=%vague|50 time=%time|1000][wt_c]
	[elsif exp="mp.blind2_lr"][trans method=universal rule="blindX2" vague=%vague|50 time=%time|1000][wt_c]
	[elsif exp="mp.blind_rl"][trans method=universal rule="blindXR" vague=%vague|50 time=%time|800][wt_c]
	[elsif exp="mp.blind_tb"][trans method=universal rule="blindY" vague=%vague|50 time=%time|1000][wt_c]
	[elsif exp="mp.blind_bt"][trans method=universal rule="blindYR" vague=%vague|50 time=%time|1000][wt_c]
	[elsif exp="mp.lr"][trans method=universal rule="LtoR" vague=%vague|100 time=%time|500][wt_c]
	[elsif exp="mp.rl"][trans method=universal rule="RtoL" vague=%vague|100 time=%time|500][wt_c]
	[elsif exp="mp.tb"][trans method=universal rule="TtoB" vague=%vague|300 time=%time|500][wt_c]
	[elsif exp="mp.bt"][trans method=universal rule="BtoT" vague=%vague|300 time=%time|500][wt_c]
	[elsif exp="mp.wipe"][trans method=universal rule="wipe" vague=%vague|300 time=%time|500][wt_c]
	[elsif exp="mp.wipe_r"][trans method=universal rule="wipe2" vague=%vague|300 time=%time|500][wt_c]
	[elsif exp="mp.circle"][trans method=universal rule="circle" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.circle_r"][trans method=universal rule="circleR" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.windmill"][trans method=universal rule="windmill" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.windmill_r"][trans method=universal rule="windmillR" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.bang"][trans method=universal rule="bang" vague=%vague|300 time=%time|500][wt_c]
	[elsif exp="mp.random"][trans method=universal rule="random" vague=%vague|300 time=%time|1000][wt_c]
	[elsif exp="mp.wave"][trans method=universal rule="wave" vague=%vague|300 time=%time|1000][wt_c]
	[elsif exp="mp.wave2"][trans method=universal rule="wave2" vague=%vague|50 time=%time|1000][wt_c]
	[elsif exp="mp.wave3"][trans method=universal rule="wave3" vague=%vague|50 time=%time|1000][wt_c]
	[elsif exp="mp.�E�Q����"][trans method=universal rule="�E�Q����" vague=%vague|300 time=%time|1000][wt_c]
	[elsif exp="mp.blood1"][trans method=universal rule="blood1" vague=%vague|50 time=%time|1500][wt_c]
	[elsif exp="mp.blood2"][trans method=universal rule="blood2" vague=%vague|50 time=%time|1500][wt_c]
	[elsif exp="mp.daimon"][trans method=universal rule="daimon" vague=%vague|100 time=%time|2000][wt_c]
	[elsif exp="mp.ce_side"][trans method=universal rule="center_side" vague=%vague|100 time=%time|500][wt_c]
	[elsif exp="mp.ce_side_r"][trans method=universal rule="center_sideR" vague=%vague|100 time=%time|500][wt_c]
	[elsif exp="mp.ce_tb"][trans method=universal rule="center_tb" vague=%vague|100 time=%time|500][wt_c]
	[elsif exp="mp.ce_tb_r"][trans method=universal rule="center_tbR" vague=%vague|100 time=%time|500][wt_c]
	[elsif exp="mp.pat_rt"][trans method=universal rule="pat_rt" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.pat_rb"][trans method=universal rule="pat_rb" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.pat_lt"][trans method=universal rule="pat_lt" vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.pat_lb"][trans method=universal rule="pat_lb" vague=%vague|100 time=%time|1000][wt_c]
;	[elsif exp="mp.heart"][trans method=universal rule="heart_mask" vague=%vague|300 time=%time|1000][wt_c]
;	[elsif exp="mp.zzz"][trans method=universal rule="zzz" vague=%vague|100 time=%time|1000][wt_c]
;	[elsif exp="mp.rauda"][trans method=universal rule="rauda" vague=%vague|0 time=%time|1000][wt_c]
	[elsif exp="mp.scroll"][trans method=scroll from=%from stay=%stay time=%time|1000][wt_c]
	[elsif exp="mp.ruf2_lr"][trans method=universal rule="rubX"  vague=%vague|50 time=%time|500][wt_c]
	[elsif exp="mp.ruf2_rl"][trans method=universal rule="rubXR"  vague=%vague|50 time=%time|500][wt_c]
;	[elsif exp="mp.�C���[�W�N���X����"][trans method=universal rule="�C���[�W�N���X��������"  vague=%vague|50 time=%time|500][wt_c]
;	[elsif exp="mp.�C���[�W�N���X���E"][trans method=universal rule="�C���[�W�N���X���E����"  vague=%vague|50 time=%time|500][wt_c]
	[elsif exp="mp.ruf_lr"][trans method=universal rule="�C���[�W�N���X��������"  vague=%vague|50 time=%time|300][wt_c]
	[elsif exp="mp.ruf_rl"][trans method=universal rule="�C���[�W�N���X���E����"  vague=%vague|50 time=%time|300][wt_c]
	[elsif exp="mp.ruf_tb"][trans method=universal rule="�C���[�W�N���X���ォ��"  vague=%vague|50 time=%time|300][wt_c]
	[elsif exp="mp.ruf_bt"][trans method=universal rule="�C���[�W�N���X��������"  vague=%vague|50 time=%time|300][wt_c]
	[elsif exp="mp.rt"][trans method=universal rule="rt"  vague=%vague|200 time=%time|500][wt_c]
	[elsif exp="mp.lb"][trans method=universal rule="lb"  vague=%vague|200 time=%time|500][wt_c]

	[elsif exp="mp.streamline_l"][trans method=universal rule="streamline_l"  vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.streamline_r"][trans method=universal rule="streamline_r"  vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.streamline_d"][trans method=universal rule="streamline_d"  vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.streamline_u"][trans method=universal rule="streamline_u"  vague=%vague|100 time=%time|1000][wt_c]

	[elsif exp="mp.wave00"][trans method=universal rule="wipe_wave00"  vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.wave01"][trans method=universal rule="wipe_wave01"  vague=%vague|100 time=%time|1000][wt_c]
	[elsif exp="mp.smoke"][trans method=universal rule="smoke"  vague=%vague|100 time=%time|1000][wt_c]


	[elsif exp="mp.����"][trans method=universal rule="���ォ��" vague=%vague|100 time=%time|1000][wt_c]
;	[elsif exp="mp.checker"][trans method=universal rule="checker" vague=200 time=%time|1000][wt_c]
;	[elsif exp="mp.pat_osu"][trans method=universal rule="pat_osu" vague=200 time=%time|1000][wt_c]
;	[elsif exp="mp.pat_mesu"][trans method=universal rule="pat_mesu" vague=200 time=%time|1000][wt_c]
;	[elsif exp="mp.pat_osumesu"][trans method=universal rule="pat_osumesu" vague=200 time=%time|1000][wt_c]
;	[elsif exp="mp.pat_osumesu_reverse"][trans method=universal rule="pat_osumesuR" vague=200 time=%time|1000][wt_c]
;	[elsif exp="mp.sc"]
;		[TENKAN]
;	[elsif exp="mp.�ׂ����Ђ��`(���ォ��E����)"]
;		[trans rule="�ׂ����Ђ��`(���ォ��E����)" vague=100 time=1000[&2]
;	[elsif exp="mp.�ׂ����Ђ��`(���ォ��E����)r"]
;		[trans rule="�ׂ����Ђ��`(���ォ��E����)R" vague=100 time=1000[&2]
	[else]
		;�t�F�C���Z�[�t 0�b�ɂ��Ă�����
		[trans method=crossfade time=%time|0][wt_c]
	[endif]

[endmacro]

;=============================================================
;����ȂɁH
;=============================================================
[macro name=trans_c2]
	[if    exp="mp.cross"]
	[trans method=crossfade time=%time|500 cond="sf.toplayer"]
	;[trans method=crossfade layer= "&sf.toplayer" time=%time|500 cond="!sf.toplayer"]
	[else]
	;�t�F�C���Z�[�t
	[trans method=crossfade time=%time|500][wt_c]
	[endif]

[endmacro]

;=============================================================
;�g���g�����W�V����
;=============================================================

;�g���g�����W�V�����v���O�C�� ( extrans.dll ) �p
[macro name=extrans_c]
	[if    exp="mp.wave"]
		[trans method=wave wavetype=%wavetype|0 maxh=%maxh|50 maxomega=%maxomega|0.2 bgcolor1=%bgcolor1 bgcolor2=%bgcolor2 time=%time|2000][wt_c]
	[elsif exp="mp.mosaic"]
		[trans method=mosaic maxsize=%maxsize|30 time=%time|2000][wt_c]
	[elsif exp="mp.turn"]
		[trans method=turn bgcolor=%bgcolor time=%time|2000][wt_c]
	[elsif exp="mp.rotatezoom"]
		[trans method=rotatezoom factor=%factor|1 accel=%accel|0 twist=%twist|2 twistaccel=%twistaccel|-2 time=%time|2000][wt_c]
	[elsif exp="mp.rotatevanish"]
		[trans method=rotatevanish accel=%accel|2 twist=%twist|2 twistaccel=%twistaccel|2 time=%time|2000][wt_c]
	[elsif exp="mp.rotateswap"]
		[trans method=rotateswap twist=%twist|1 bgcolor=%bgcolor time=%time|2000][wt_c]
	[elsif exp="mp.ripple"]
		[trans method=ripple centerx=%centerx centery=%centery rwidth=%rwidth|128 roundness=%roundness|1 speed=%speed|6 maxdrift=%maxdrift|24 time=%time|2000][wt_c]

	[else]
		;�t�F�C���Z�[�t
		[trans method=crossfade time=%time|500][wt_c]
	[endif]
[endmacro]


;=============================================================
;�Ó]�@BGMSE���X�~�߂�@�֗�
;=============================================================

[macro name=ANTEN]
	;�C�x���gCG��\��
	[stopse_fadeout buf=0 time=1000]
	[stopse_fadeout buf=1 time=1000]
	[stopse_fadeout buf=2 time=1000]
	[stopse_fadeout buf=3 time=1000]
	[bgvstop]
	
	;�������Ó]
	[if    exp="mp.blk"][top blk * winoff]
	[elsif exp="mp.wht"][top wht * winoff]
	[elsif exp="mp.red"][top red * winoff]
	[endif]

;	;�Ȃ�őS�������̏����Ă��񂾂�
;	[trans_c *  time=%time|1000]
;
;	[if    exp="mp.blk"][hide_chara_int]
;	[elsif exp="mp.wht"][hide_chara_int_w]
;	[elsif exp="mp.red"][hide_chara_int_r]
;	[endif]

	;SE��~
	[stopse_all]

	[if    exp="mp.bgmon == void"]
	;BGM��~
	[fadeoutbgm time=%bgmfade|1000][wb canskip=true]
	[endif]

	;�E�F�C�g
	[wait time=%wait|1000]
[endmacro]

;=============================================================
;�Ó]ex�@BGMSE���X�~�߂�@�֗�
;=============================================================
;�ꉞ����Ă�����

[macro name=ANTENex]
	;�C�x���gCG��\��
	
	;�������Ó]
	[if    exp="mp.blk"][top blk *]
	[elsif exp="mp.wht"][top wht *]
	[elsif exp="mp.red"][top red *]
	[endif]

	;�Ȃ�őS�������̏����Ă��񂾂�
	[extrans_c *  time=%time|1000]

;	[if    exp="mp.blk"][hide_chara_int]
;	[elsif exp="mp.wht"][hide_chara_int_w]
;	[elsif exp="mp.red"][hide_chara_int_r]
;	[endif]

	;SE��~
	[stopse_all]

	[if    exp="mp.bgmon == void"]
	;BGM��~
	[fadeoutbgm time=%bgmfade|1000][wb canskip=true]
	[endif]

	;�E�F�C�g
	[wait_c time=%wait|1000]
[endmacro]

;=============================================================
;�^�C�g���߂菈��
;=============================================================

;Android����̋t�ڐA���̃^�C�g���߂菈��
[macro name=returntitle]
	[stopbgm]
	;�V�X�e���{�^�����E�B���h�E����
	;[sysbt_meswin clear]
	[black_toplayer][trans_c cross time=500][hide_chara_int]
	[wait_c time=1000]
	[jump storage="title.ks"]
[endmacro]



;=============================================================
;���]�}�N��
;=============================================================
;�g����
;[flip_lr layer=1 page=fore]

[macro name=flip_lr]
	@eval exp="kag.getLayerFromElm(mp).flipLR()"]
[endmacro]

;=============================================================
;�^�C�g����ʂ���̈ړ������}�N��
;=============================================================
;�t���O�̃I���I�t�͂��̃}�N�����ł͂��Ȃ��B������Ȃ��Ȃ邩��B

[macro name=�^�C�g����ʂ���̈ړ�]

	;[freeimage layer=0 page=fore]

	;�����N���b�N���Ă����Ȃ��Ă����̂��Ȃ�
	[locklink]

	;�{�^���\��O�ɍ���message���C�������
	[backlay_c]
	[image storage="effect_black" layer="&sf.toplayer" page=back visible=true left=0 top=0 opacity=255 index=1004000]
	;trans�̕���͎׈��p�Ȃ̂ŕ��ʂ̂�trans_c cross�݂̂ŗǂ�
	;[if    exp="tf.title_trans == 1"][trans_c ruf_lr]
	;[elsif exp="tf.title_trans == 2"][trans_c ruf_rl]
	;[elsif exp="tf.title_trans == 3"][trans_c ruf_lr]
	;[elsif exp="tf.title_trans == 4"][trans_c ruf_rl]
	;[elsif exp="sf.gameNo == 1 && tf.return == 1"][trans_c ruf_lr]
	;[elsif exp="sf.gameNo == 2 && tf.return == 1"][trans_c ruf_rl]
	;[elsif exp="sf.gameNo == 3 && tf.return == 1"][trans_c ruf_lr]
	;[elsif exp="sf.gameNo == 4 && tf.return == 1"][trans_c ruf_rl]
	;[elsif exp="sf.gameNo == 5 && tf.return == 1 && sf.game_total >= sf.gameNo"][trans_c pat_lb]
	;[else]
	;���[��
	;[trans_c cross time=%time|1000]
	[trans_c wave3 time=1000]
	[endif]

	[freeimage layer=0 page=fore][freeimage layer=0 page=back]
	[freeimage layer=1 page=fore][freeimage layer=1 page=back]
	[freeimage layer=2 page=fore][freeimage layer=2 page=back]
	[freeimage layer=3 page=fore][freeimage layer=3 page=back]

	[eval exp="tf.title_trans = 0"]
	[eval exp="tf.return = 0"]
	[cm]
	;��ԏ�ɓ\�������������@�w�i�\�蒼��
	[backlay_c]
	[layopt layer="&sf.toplayer"  page=back visible=false]
	[image storage="effect_black" layer=base page=back visible=true]
	[trans_c cross time=0]

	;��ԏ�̃��C����index���Ƃɖ߂�
	[layopt layer="&sf.toplayer"  page=fore  index="&sf.toplayer * 1000 +1000"]
	[layopt layer="&sf.toplayer"  page=back  index="&sf.toplayer * 1000 +1000"]
	[layopt layer=0  page=fore  index=1000][layopt layer=0  page=back  index=1000]
	[layopt layer=1  page=fore  index=2000][layopt layer=1  page=back  index=2000]
	[layopt layer=2  page=fore  index=3000][layopt layer=1  page=back  index=3000]
	[layopt layer=3  page=fore  index=4000][layopt layer=1  page=back  index=4000]

	;[eval exp="tf.�N�� = 0"]
	;�V���[�g�J�b�g����p[eval exp="tf.title = 0"]

	[if exp="mp.bgmoff"]
		[fadeoutbgm time=500][wb]
		[wait_c time=500]
	[endif]

	[unlocklink]

[endmacro]


;=============================================================
;�V�[���`�F���W�i��ʓ]���j
;=============================================================
;�t�^�i�����p�����ʃt�@�C���ɕ�����قǂł��Ȃ��̂ł����ɋL�ځB
;��₱��������trans�}�N����mp.sc�̎��Ɏ��s�����Btrans�}�N�����ɏ����ƌ��Â炢�̂Ń}�N���������B
;�V�[���`���C�X�Ƃ͊֌W�͖����B

;�p�r��1���̒��ŏ�ʂ��ς�鎞�B
;�A�C�L���b�`�قǎ��Ԃ������Ȃ��B
;1���̎n�܂�i�܂���1���̏I���j�ɂ̓A�C�L���b�`���g���B

;�Ó]������"scene_change_bg"���o�āA���̃V�[���̔w�i�E�C�x���gCG�ɕς��B
;��ԏ�ɓ\���Ă�̂ŁA�����L�����̓����\�荞�݂������Ă����̂܂܎g�p�B

;[macro name=scene_change]
;[macro name=TENKAN]
;	;�Ƃ肠�����u���C���h�ɂ��Ă���
;
;	[backlay_c]
;	[image storage="scene_change_bg" layer="&sf.toplayer" page=back visible=true left=0 top=0 opacity=255]
;	;[trans_c pat_osumesu time=1000]
;	[trans_c blind2_lr time=1500]
;	[backlay_c]
;	[image storage="chara_int" layer="&sf.toplayer" page=back visible=true left=0 top=0 opacity=255]
;	;[trans_c pat_osumesu time=1000]
;	[trans_c blind2_lr time=1500]
;	[freeimage page=fore layer="&sf.toplayer"  ][freeimage page=back layer="&sf.toplayer"  ]
;
;[endmacro]


;=============================================================
;�摜���o�p�E�F�C�g
;=============================================================


[macro name=wev]
	;�I�[�g��3�b�҂��A�X�L�b�v���҂��Ȃ��A�ʏ펞�N���b�N�҂�
	[if    exp="kag.autoMode"][wait time=3000]
	[elsif exp="kag.skipMode"]
	[else][waitclick]
	[endif]
[endmacro]



[return]

