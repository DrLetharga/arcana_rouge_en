;//arcana806
*TOP
[eval exp="f.l_s806 = 1"][name_allreset]

;//暗転

*10947|
[fc]
[【主人公】]
「んっ、んんっ……」[pcms]

*10948|
[fc]
妙に頭が重い……それに、体もどこか疲労している感じがある。[pcms]

*10949|
[fc]
なのに、どこか爽快感が胸のうちに残っていた。[pcms]

;//背景：商店街・夜照明
[bg storage="bg018c"][trans_c cross time=1000]

*10950|
[fc]
[【主人公】]
「ここは……？」[pcms]

;//フェイスのみ：茜・制服
;mm 制服だから名前リセットでおｋ？

[std_aka m se p2 f08 ce off]

*10951|
[fc]
[vo_aka s="akane_0893"]
[【茜】]
「あ……先生、起きたんだ……」[pcms]


[bgm007]

*10952|
[fc]
顔を上げると、近くのベンチに座り込んでいる茜の姿が見えた。[pcms]

[std_aka l se p2 f01 ce][trans_c cross time=300]

*10953|
[fc]
[vo_aka s="akane_0894"]
[【茜】]
「大丈夫だよ、まだ結界が張ってあるから、誰にも見られてないよ」[pcms]

*10954|
[fc]
[【主人公】]
「え？　あ、そうか……」[pcms]

*10955|
[fc]
ぼんやりとした頭で辺りを見回すと、明かりのついた繁華街だというのに、人通りが全くなかった。[pcms]

*10956|
[fc]
あまりの異様な光景に、急激に記憶がフラッシュバックした。[pcms]

*10957|
[fc]
[【主人公】]
「お、俺はなんてことを……すまなかった！」[pcms]

*10958|
[fc]
俺はすぐさま体を起こし、正座して地面に額を押し付けていた。[pcms]

[std_aka l se p2 f05 ce][trans_c cross time=300]

*10959|
[fc]
[vo_aka s="akane_0895"]
[【茜】]
「せ、先生！？　ちょ、ちょっと……そんなことしなくていいから」[pcms]

*10960|
[fc]
茜が慌てて駆け寄り顔を上げさせようとするものの、正直合わせる顔などない。[pcms]

;//条件分岐
;//『arcana810』を経過→arcana808へ
;//『arcana813』を経過→arcana808へ
;//『arcana810』と『arcana813』を経過→arcana808へ
;//上記以外→arcana807へ

;[ANTEN blk]
[if    exp="f.l_s810 == 1 && f.l_s813 == 0"][jump storage="arcana808.ks" target=*TOP]
[elsif exp="f.l_s810 == 0 && f.l_s813 == 1"][jump storage="arcana808.ks" target=*TOP]
[elsif exp="f.l_s810 == 1 && f.l_s813 == 1"][jump storage="arcana808.ks" target=*TOP]
[endif]
[jump storage="arcana807.ks" target=*TOP]
