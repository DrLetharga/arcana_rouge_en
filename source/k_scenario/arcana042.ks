;//arcana042
*TOP
[eval exp="f.l_s042 = 1"][name_allreset]

;//背景：冥の隠れ家・夜照明
[bg storage="bg026a"]
;//立ち絵：冥・私服
[std_mei l si p1 f07 ho ce][trans_c cross time=1000]
[bgm016]


*2597|
[fc]
[vo_mei s="mei_0210"]
[【冥】]
「どうしよう……お兄さんと……しちっゃた……お兄さんにはじめてを……本当はあの方に捧げるはずだったのに……」[pcms]

*2598|
[fc]
下半身にはまだ擦れたような熱い感触が残っていた。[pcms]

*2599|
[fc]
いまだに動悸が収まらない。鼓動のたびにその感覚に鈍い痛みが伴い、あれは現実だったと認識させられる。[pcms]

*2600|
[fc]
ちょっとした仕返しのつもりだったのに……思わぬ結果を招いてしまったことを冥は少しだけ後悔した。[pcms]

[std_mei l si p1 f08 ce][trans_c cross time=300]

*2601|
[fc]
[vo_mei s="mei_0211"]
[【冥】]
「お兄さんのことは嫌いじゃないけれど……でも[ruby_c t="あ" r="・"][ruby_c t="の" r="・"][ruby_c t="方" r="・"]にあげようって……復活したらその時はって……決めてたのに……」[pcms]

*2602|
[fc]
その身体相応に未成熟な冥の精神は、尊敬しているある人物と、ほのかな恋心を[ruby_c t="抱" r="いだ"]き始めた人間との狭間で葛藤していた。[pcms]

[std_mei l si p1 f03 ce][trans_c cross time=300]

*2603|
[fc]
[vo_mei s="mei_0212"]
[【冥】]
「どうしよう……どうすればいい……様……お兄さん……」[pcms]

[fadeoutbgm time=500]

[std_mei l si p1 f11 ce][trans_c cross time=300]

*2604|
[fc]
揺れ動く思いに悩む冥だったが、わずかな気配を察し、同時に表情を硬化させた。[pcms]

;//ＳＥ：鳥の羽ばたき音。飛行中。ばっさばっさと大きめで。
[se buf=0 storage="seF004"]

;//背景：冥の隠れ家・夜消灯
;mm 消灯ない
[bg storage="bg026a" mcolor=0x00000 mopacity=150]
[std_mei l si p1 f11 ce][trans_c ruf_tb]

[bgm006]

*2605|
[fc]
周囲の気温が数度下がる感覚とともに、部屋が薄暗くなる。[pcms]

;//ＳＥ：鳥の羽ばたき音。着地。
[se buf=0 storage="seF004"]

;//少し間をおいて
;//ＳＥ：カラスの鳴き声
[se buf=0 storage="SE3111_2"]

*2606|
[fc]
[ns]カラス[nse]
「ガァーーー」[pcms]

[stopse buf=0]

[std_mei l si p1 f11 ce][trans_c cross time=300]

;//演技指導：ここからシリアスな感じで。

*2607|
[fc]
[vo_mei s="mei_0213"]
[【冥】]
「誰の使い？」[pcms]

*2608|
[fc]
閉め切った窓を透過し侵入してきたのは、何者かが放った、カラスによく似た使い魔だった。[pcms]

;//ＳＥ：カラスの鳴き声
[se buf=0 storage="SE3111_2"]

*2609|
[fc]
[ns]カラス[nse]
「ガアァァァッ！」[pcms]

[stopse buf=0]

[std_mei l si p1 f06 ce][trans_c cross time=300]

*2610|
[fc]
[vo_mei s="mei_0214"]
[【冥】]
「水晶玉を……そう、私への連絡というわけなのね。いいわ、少し待っていなさい」[pcms]

*2611|
[fc]
純潔を捧げた相手への戸惑いと恋心の狭間で揺れる少女の顔は、闇の世界に身を置く者に変化していた。[pcms]

;//→arcana043　へ
[ANTEN blk]
[jump storage="arcana043.ks" target=*TOP]

