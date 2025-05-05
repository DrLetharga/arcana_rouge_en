;//arcana045
*TOP
[eval exp="f.l_s053 = 1"][name_allreset]

*3372|
[fc]
[【主人公】]
「葵、悪いけど茜の勉強を見てもらえないか？」[pcms]



[std_aoi m se p1 f01 le][trans_c cross time=300]

*3373|
[fc]
[vo_aoi s="aoi_0232"]
[【葵】]
「はい、分かりました。先生、気をつけて下さいね」[pcms]

*3374|
[fc]
[【主人公】]
「ああ、もちろん。あと、辛い時や困った時は二人を頼るんだぞ」[pcms]

[std_aoi m se p1 f04 le][trans_c cross time=300]

*3375|
[fc]
[vo_aoi s="aoi_0233"]
[【葵】]
「はい……。茜ちゃんやミアさんにはいつも頼りっきりですから、大丈夫です」[pcms]

[std_mia m se p1 f04 ri][trans_c cross time=300]

*3376|
[fc]
[vo_mia s="mia_0244"]
[【ミア】]
「そうそう、危ない時は協力するのが醍醐味よね」[pcms]

[std_aka m se p1 f09 ce][trans_c cross time=300]

*3377|
[fc]
[vo_aka s="akane_0423"]
[【茜】]
「あたしだって葵ちゃんに頼ってるからおあいこだよ」[pcms]

*3378|
[fc]
二人の声に、葵は頷く。[pcms]

*3379|
[fc]
ただ、その顔は少し浮かなさそうだ。[pcms]

*3380|
[fc]
[【主人公】]
「葵、言ったそばから何か我慢してるみたいだけど、大丈夫か？」[pcms]

[chara_int_all]
[std_aoi l se p1 f01 ce][trans_c cross time=300]

;//後半は小声で
*3381|
[fc]
[vo_aoi s="aoi_0234"]
[【葵】]
「はい、大丈夫です。……先生と離れるのが寂しい、なんて言えないですし」[pcms]

*3382|
[fc]
葵の唇が動いたが、何を言っているのかは聞こえなかった。[pcms]

*3383|
[fc]
あまり長居しても彼女達の勉強時間が減ってしまうので、[nor]
俺は足早に資料室を後にした。[pcms]

;//→arcana054へ
[ANTEN blk]
[jump storage="arcana054.ks" target=*TOP]

