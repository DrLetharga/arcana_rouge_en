;//arcana058
*TOP
[eval exp="f.l_s058 = 1"][name_allreset]

*3733|
[fc]
[【主人公】]
「分かった。葵が望むなら」[pcms]

[std_aoi l ma p1 f04 ce][trans_c cross time=300]

*3734|
[fc]
[vo_aoi s="aoi_0324"]
[【葵】 name=ヴィオレ]
「ありがとうございます、先生」[pcms]

[se buf=0 storage="SE3603"]
[bg storage="effect_white"][trans_c cross time=1000]

*3735|
[fc]
そう言って葵が胸に手を当てると、彼女の姿が淡く輝く。[pcms]

*3736|
[fc]
と同時に、世界が一変した。[pcms]


;//背景：学園教室・夕方
[bg storage="bg006b"][trans_c cross time=1000]

;//立ち絵：葵・制服


*3737|
[fc]
[【主人公】]
「これは一体……？」[pcms]

[std_aoi m se p1 f08 ce][trans_c cross time=300]

*3738|
[fc]
[vo_aoi s="aoi_0325"]
[【葵】 reset]
「私が無意識のうちに結界に干渉して、空間を再構築してしまったみたいです……」[pcms]

*3739|
[fc]
[【主人公】]
「そんなことがあるのか。それにしても、どうして教室に？」[pcms]

[std_aoi m se p1 f07 ho ce][trans_c cross time=300]

*3740|
[fc]
[vo_aoi s="aoi_0326"]
[【葵】]
「そ、それは……以前読んだ小説でそういうシーンがあって……」[pcms]

*3741|
[fc]
葵は顔を真っ赤にして俯いて黙り込んでしまった。[pcms]

*3742|
[fc]
つまり、夕方の教室で二人が結ばれるシーンを思いだして、それを結界に投影してしまったということか。[pcms]

[std_aoi m se p1 f05 ho ce][trans_c cross time=300]

*3743|
[fc]
[vo_aoi s="aoi_0327"]
[【葵】]
「あ、あの……一応、結界に干渉すれば元に戻すことも可能だと思うので……」[pcms]

*3744|
[fc]
[【主人公】]
「いや、このままでいい。ここで、君を抱きたい」[pcms]

*3745|
[fc]
そう言って、俺はそっと葵を抱きしめた。[pcms]

;//→arcana059
;[ANTEN blk]
[jump storage="arcana059.ks" target=*TOP]

