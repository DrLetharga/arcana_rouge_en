;//arcana016（自動分岐判定用ファイル。シナリオなし）
*TOP

;//arcana017（だけを）経過している場合→			arcana022
;//arcana017とarcana022を経過している場合→			arcana029
;//arcana017とarcana022とarcana029を経過している場合→		arcana030
;//arcana017とarcana022とarcana029とarcana030を経過している場合→	arcana032

;mm ここループ構造なのか？ 3人に合わないと先に進めない？

;[ANTEN blk]
[if    exp="f.l_s017 == 1 && f.l_s022 == 0 && f.l_s029 == 0 && f.l_s030 == 0"][jump storage="arcana022.ks" target=*TOP]
[elsif exp="f.l_s017 == 1 && f.l_s022 == 1 && f.l_s029 == 0 && f.l_s030 == 0"][jump storage="arcana029.ks" target=*TOP]
[elsif exp="f.l_s017 == 1 && f.l_s022 == 1 && f.l_s029 == 1 && f.l_s030 == 0"][jump storage="arcana030.ks" target=*TOP]
[elsif exp="f.l_s017 == 1 && f.l_s022 == 1 && f.l_s029 == 1 && f.l_s030 == 1"][jump storage="arcana032.ks" target=*TOP]
[endif]

;デバッグ時に警告表示
[if exp="kag.debugMenu.visible == true"][jump target=*debug][endif]

[returntitle]


*1274|
[fc]
[cancelskip]
[cancelautomode]
条件分岐で意図しない事になったよ。[r]
（どの条件にも引っかからなかった）[r]
エラーになる手順を再確認して報告して下さい。[pcms]

[returntitle]


