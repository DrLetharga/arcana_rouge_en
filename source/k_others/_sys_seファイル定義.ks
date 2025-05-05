;se.ks
;タイトル画面行くとfは初期化されちゃうからsfじゃないとだめ
;[eval exp="f.フラグ名 = ''"]

;人外
;[eval exp="sf.SE触手挿入 = 'SE4101'"]
[eval exp="sf.SE触手ループ = 'seD024'"]
[eval exp="sf.SE挿入_触手 = 'seD017'"]

[eval exp="sf.SE触手伸びる = 'SE3301'"]

[eval exp="sf.SEピストン_人外 = 'se_sex03b'"]

[eval exp="sf.SE射精_中_人外_短 = 'SE4154'"]
[eval exp="sf.SE射精_中_人外_長 = 'SE4154_12'"]
[eval exp="sf.SE射精_外_人外_短 = 'SE4163'"]
[eval exp="sf.SE射精_外_人外_長 = 'SE4163_10'"]

;人
[eval exp="sf.SE挿入_人 = 'se_sex01'"]

[eval exp="sf.SEピストン_人_遅 = 'se_sex03a'"]
[eval exp="sf.SEピストン_人_速 = 'se_sex03'"]

;[eval exp="sf.SE射精_中_人_短 = 'SE4154_5'"]
[eval exp="sf.SE射精_中_人_短 = 'se_sex01b'"]
;[eval exp="sf.SE射精_中_人_長 = 'SE4153_2'"]
[eval exp="sf.SE射精_中_人_長 = 'se_sex01c'"]
[eval exp="sf.SE射精_外_人_短 = 'SE4160'"]
[eval exp="sf.SE射精_外_人_長 = 'SE4162_2'"]

;急速にハラボテになる時
[eval exp="sf.SEハラボテ = 'seD022'"]

[return]

;-----------------------------------------------------------
記述テンプレ

人外
[se buf=1 storage="&sf.SE触手ループ" loop]
[se buf=1 storage="&sf.SEピストン_人外" loop]

[se storage="&sf.SE挿入_触手"]

[se storage="&sf.SE触手伸びる"]

[se storage="&sf.SE射精_中_人外_短"]
[se storage="&sf.SE射精_中_人外_長"]
[se storage="&sf.SE射精_外_人外_短"]
[se storage="&sf.SE射精_外_人外_長"]


人
[se storage="&sf.SE挿入_人"]

[se buf=1 storage="&sf.SEピストン_人_遅" loop]
[se buf=1 storage="&sf.SEピストン_人_速" loop]

[se storage="&sf.SE射精_中_人_短"]
[se storage="&sf.SE射精_中_人_長"]
[se storage="&sf.SE射精_外_人_短"]
[se storage="&sf.SE射精_外_人_長"]

[se storage="&sf.SEハラボテ"]


[se000]で停止みたいだからループ系入れる時に注意

扉でっかくて重いの
[se storage=SE0214_3]
;背景・魔族軍城塞玉座の間・夜
[軍王 夜]

扉　ビアンカの部屋とか軽めだけど軽すぎない
[se storage=SE0214]
[フラッシュ射精 storage= time=500]