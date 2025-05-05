;//arcana900
*TOP
[eval exp="f.l_s900 = 1"][name_allreset]

;//バッドエンド１

[ANTEN blk]

[se buf=1 storage="seA041" loop]

;//背景：空・夜
[bg storage="bg001c"][trans_c cross time=1000]

*11095|
[fc]
俺は自宅へ帰るべく夜道を歩いていた。[pcms]

;//背景：駅前・夜照明
[bg storage="bg012c"][trans_c cross time=1000]

*11096|
[fc]
[【主人公】]
「それほど腹は減っていないが軽く何か……」[pcms]

*11097|
[fc]
学生時代から自炊の習慣が身に付いている俺だが、なんとなく今夜はやる気がしない。コンビニで軽食を買って済ませることにした。[pcms]

;mm コンビニに寄ってる描写が無いから暗転時間経過

[ANTEN blk]

;[se buf=1 storage="seA041" loop]


;//背景：公園・夜消灯
[bg storage="bg017d"][trans_c cross time=1000]
[wait time=1000]
[bg storage="bg001c"][trans_c cross time=1000]

*11098|
[fc]
公園の脇を通り過ぎて住宅街に入ると、アパートというには多少、ぜいたくな間取りの俺の部屋はすぐだった。[pcms]

;//背景：空・夜
[stopse buf=1]
;//ＳＥ：ドアを開ける音
[se buf=0 storage="seA025"]

*11099|
[fc]
[【主人公】]
「ただいまー」[pcms]

*11100|
[fc]
誰に言うとでもなくそんな言葉を口にしつつ、今日は疲れたので早めに寝よう……。[pcms]

[bg storage="bg023d"][trans_c lr]

*11101|
[fc]
そんなことを思いながらドアを開けた俺は――[pcms]

;//背景：主人公の部屋・夜消灯

[bg storage="effect_black"][trans_c bang time=300 vague=50]
[bg storage="bg023d"][trans_c bang time=500 vague=50]
[bgm017]

;mm 玄関開けて魔物いたらちょっと面白くなってしまうなぁ

*テキスト追加|
[fc]
薄暗い室内に得体の知れない『何か』の気配を感じ、ぞわりと総毛立つ。[pcms]

;//立ち絵：下級冥魔・悪鬼
[std_zaA m le][trans_c wave time=1000]

;//ＳＥ：野犬や狼などが威嚇するうなり声
[se buf=0 storage="seF006"]

;//立ち絵：下級冥魔・触手
[std_zaB m ri][trans_c wave time=1000]

;//ＳＥ：触手がうごめく音
[se buf=1 storage="&sf.SE触手伸びる"]
[se buf=2 storage="&sf.SE触手ループ" loop]



*11102|
[fc]
[【主人公】]
「なッ？」[pcms]

;//ＳＥ：ドアがバタンと閉まる音
[se buf=0 storage="seA014"]

*11103|
[fc]
背中から、玄関のドアが勝手に閉まる音が聞こえた。[pcms]

*11104|
[fc]
[【主人公】]
「く、来るなああッ！」[pcms]

*11105|
[fc]
だが俺はもう、その時点で、化け物たちの触手に全身を拘束され、身体の自由を奪われていた。[pcms]

[se buf=0 storage="seB037"]
;背景：黒画面
[bg storage="effect_red"][trans_c blood1 time=500]

;//ＳＥ：野生動物が肉を喰らうっぼい咀嚼音

[se buf=1 storage="seB034"]


*11106|
[fc]
[【主人公】]
「うぐあああああーッ！」[pcms]

*11107|
[fc]
殺されていく俺が最後に知覚できたのは、悪鬼としかいいようがないそいつが腕に噛み付き、うまそうに骨ごと喰らう咀嚼音だった。[pcms]



;バッドエンド１（汎用死亡バッドエンド）
;mm 念の為にエンドのグローバルとローカル変数オン
[eval exp="sf.g_end_bad01 = 1"]
[eval exp="f.l_end = 7"]


[ANTEN blk]
[jump storage="9999.ks" target=*TOP]

