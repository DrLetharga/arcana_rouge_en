;//arcana032
*TOP
[eval exp="f.l_s032 = 1"][name_allreset]

;//背景：空・夜
[bg storage="bg001c"][trans_c cross time=1000]

*1493|
[fc]
すっかり遅い時間になってしまったようだ。[pcms]

*1494|
[fc]
[【主人公】]
「帰ってメシを喰って風呂に入って……寝よう……」[pcms]

*1495|
[fc]
食欲・性欲・睡眠欲のうち、二つに脳と身体を支配された俺は足早に自宅アパートへ向かうのだった。[pcms]

;//条件分岐発生
;//arcana006とarcana009とarcana012を通過している（茜・葵・ミアの処女を主人公が奪っている）→arcana033
;//それ以外→arcana900（バッドエンド１）

[ANTEN blk]
[if    exp="f.l_s006 == 1 && f.l_s009 == 1 && f.l_s012 == 1"][jump storage="arcana033.ks" target=*TOP]
[endif]
[jump storage="arcana900.ks" target=*TOP]

