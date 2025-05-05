;//arcana804
*TOP
[eval exp="f.l_s804 = 1"][name_allreset]
;//このシーンの話者：ミアはブランで

;//背景：駅前繁華街・夜照明
;[bg storage="bg013c"][trans_c cross time=1000]

;//立ち絵：ミア・魔法服

[std_mia l ma p1 f03 ce][trans_c cross time=300]

*10935|
[fc]
[vo_mia s="mia_0976"]
[【ミア】 name=ブラン]
「せんせー？　まだ痛い？　もっとお手当しよっか？」[pcms]

*10936|
[fc]
[【主人公】]
「ミア……どうも何か妙だ……念の為に俺から離れろ」[pcms]

[std_mia l ma p1 f04 ce][trans_c cross time=300]

*10937|
[fc]
[vo_mia s="mia_0977"]
[【ミア】 name=ブラン]
「あーっ、もしかして照れてる？　遠慮しなくていいよ。わたしが、たっぷりサービスしてあげちゃう♪」[pcms]

*10938|
[fc]
からかいの言葉だと、理性ではわかっている。それなのに俺は……ミアに挑発され、誘惑されているという言い訳で頭が沸騰し――[pcms]

*10939|
[fc]
欲望の赴くまま彼女に襲いかかった。[pcms]

;//→arcana011
[ANTEN blk]
[jump storage="arcana011.ks" target=*TOP]

