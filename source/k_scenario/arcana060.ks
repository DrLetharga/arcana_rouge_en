;//arcana060
*TOP
[eval exp="f.l_s060 = 1"][name_allreset]

;//暗転

;//背景：通学路・夜照明
[bg storage="bg011c"][trans_c cross time=1000]
[bgm007]
[wait time=500]

;//立ち絵：葵・制服

[std_aoi m se p1 f01 ce][trans_c cross time=300]

*3981|
[fc]
あの後、俺は葵と共に帰路についていた。[pcms]

*3982|
[fc]
公園を出て車通りのあるところでまで来てタクシーを待っている。[pcms]

*3983|
[fc]
その間、何か話そうと思うものの、何も思い付かず静かな時間が続いた。[pcms]

;やめとこ[se buf=0 storage="SE0606"]

*3984|
[fc]
[【主人公】]
「お、きたきた。タクシー！」[pcms]


*3985|
[fc]
タクシーを止めて葵だけを乗せ、運転手に札を渡す。[pcms]

*3986|
[fc]
[【主人公】]
「この子を家まで送ってくれ」[pcms]

*3987|
[fc]
[ns]運転手[nse]
「分かりました」[pcms]

[std_aoi m se p1 f01 ce][trans_c cross time=300]

*3988|
[fc]
[vo_aoi s="aoi_0400"]
[【葵】]
「あの、先生……今日はありがとうございました」[pcms]

*3989|
[fc]
そう言いながら、俺に顔を近づけてくる。[pcms]

[std_aoi l se p1 f04 ho ce][trans_c cross time=300]

;//小声で
*3990|
[fc]
[vo_aoi s="aoi_0401"]
[【葵】]
「先生、とてもエッチでした。でも、嬉しかったです」[pcms]

*3991|
[fc]
[【主人公】]
「あ、あのな……。気をつけて帰れよ」[pcms]


*3992|
[fc]
そう言って離れると、タクシーは葵を乗せていった。[pcms]

*3993|
[fc]
タクシーが見えなくなってから、俺も帰路につくのだった。[pcms]

;//→arcana069
[ANTEN blk]
[jump storage="arcana069.ks" target=*TOP]

