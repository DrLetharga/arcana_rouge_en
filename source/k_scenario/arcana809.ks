;//arcana809
*TOP
[eval exp="f.l_s809 = 1"][name_allreset]

;//暗転

;//指定があるまで話者：葵は？？？で
;mm 指定どこ

*10975|
[fc]
[vo_aoi s="aoi_0919"]
[【葵】 name=？？？ off]
「……い……せい……」[pcms]

*10976|
[fc]
[【主人公】]
「んっ、く……うぅぅ……」[pcms]

*10977|
[fc]
どこかで聞いたことのある声が聞こえてくる。[pcms]

*10978|
[fc]
でも、その声は遠くてよく聞き取れない。[pcms]

*10979|
[fc]
[vo_aoi s="aoi_0920"]
[【葵】 name=？？？ off]
「……せい、先生……！」[pcms]

*10980|
[fc]
次第にその声は大きくはっきり来来れるようになってきて、ふとした瞬間一気に真っ暗な視界が色づいた。[pcms]

;//背景：通学路・夜照明
[bg storage="bg011c"][trans_c cross time=1000]

*10981|
[fc]
[【主人公】]
「んっ、くぅっ……ここは一体……」[pcms]

[bgm007]

;//立ち絵：葵・制服
[std_aoi l se p1 f01 ce][trans_c cross time=300]

*10982|
[fc]
[vo_aoi s="aoi_0921"]
[【葵】 reset on]
「先生、目を覚ましたんですね。良かった……。何度声をかけても返事がないから、心配したんです」[pcms]

*10983|
[fc]
[【主人公】]
「葵……？　どうしてこんなところに？　それに、ここは……」[pcms]

*10984|
[fc]
辺りを見回すと、そこは見覚えのある通学路だ。[pcms]

*10985|
[fc]
だが、辺りには俺と葵以外誰もいない。[pcms]


*10986|
[fc]
[vo_aoi s="aoi_0922"]
[【葵】]
「結界が張られているから誰もいないんです。だから、急がなくても大丈夫ですよ」[pcms]

*10987|
[fc]
結界という聞き慣れない言葉に、一気に気を失うまでの記憶が甦ってきた。[pcms]

*10988|
[fc]
[【主人公】]
「俺は……すまん！」[pcms]

*10989|
[fc]
俺はすぐさま身体を起こして、道路に額を擦りつけて土下座していた。[pcms]

[std_aoi l se p1 f05 ce][trans_c cross time=300]

*10990|
[fc]
[vo_aoi s="aoi_0923"]
[【葵】]
「先生、顔を上げて下さい。そんなことされても私、困ります……」[pcms]

[std_aoi l se p1 f07 ce][trans_c cross time=300]

*10991|
[fc]
[【主人公】]
「う……そうだよな。土下座をしたところで許されないことをしたんだもんな」[pcms]

*10992|
[fc]
俺はゆっくり顔を上げ、葵の顔を見る。[pcms]

*10993|
[fc]
葵は困った顔をしてはいたものの、俺の手を取り大事そうに抱えた。[pcms]

[std_aoi l se p1 f11 ce][trans_c cross time=300]

*10994|
[fc]
[vo_aoi s="aoi_0924"]
[【葵】]
「先生が来てくれなかったら、私はあのまま冥魔に負けて、酷いことをされていたと思います。だから、先生は恩人なんです」[pcms]

;//条件分岐
;//『arcana810』を経過→arcana811へ
;//『arcana813』を経過→arcana811へ
;//『arcana810』と『arcana813』を経過→arcana811へ
;//上記以外→arcana810へ
;mm これ条件茜のarcana806.ksと同じになってるけど違うんじゃね？
;mm 『arcana810』を経過じゃなくて807じゃね？　フローもそうなってた。

;[ANTEN blk]
[if    exp="f.l_s807 == 1 && f.l_s813 == 0"][jump storage="arcana811.ks" target=*TOP]
[elsif exp="f.l_s807 == 0 && f.l_s813 == 1"][jump storage="arcana811.ks" target=*TOP]
[elsif exp="f.l_s807 == 1 && f.l_s813 == 1"][jump storage="arcana811.ks" target=*TOP]
[endif]
[jump storage="arcana810.ks" target=*TOP]
