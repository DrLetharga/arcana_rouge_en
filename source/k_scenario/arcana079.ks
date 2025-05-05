;//arcana079
*TOP
[eval exp="f.l_s079 = 1"][name_allreset]

;//このシーンは三人称

[bgm003]

[se buf=0 storage="SE0117"]

;//背景：公園・夕方
[bg storage="bg017b"]

[std_mei m ma p2 f03 ce][trans_c cross time=1000]

;//立ち絵：冥・上着あり私服

*5868|
[fc]
[vo_mei s="mei_0408"]
[【冥】]
「なんで……なんであんな奴をかばうのよ……」[pcms]

[stopse_fadeout buf=0 time=500]
[movie_hensin_off mei]
[std_mei m ja p2 f03 ce][trans_c cross time=300]

*5869|
[fc]
失意のまま、冥は街を彷徨い歩いていた。[pcms]

*5870|
[fc]
本当は傷つけるつもりなどなかった。[pcms]

*5871|
[fc]
冥魔と魔法少女の戦いに巻き込まないよう、別の街に避難させようとしただけなのに。[pcms]

*5872|
[fc]
魔法少女達の協力者だったことがショックだった上に、葵が目の前に現れたことで、周りが見えなくなってしまっていた。[pcms]

*5873|
[fc]
冥にもう少し冷静さがあれば、刃を止めることも可能だったはずだ。[pcms]

[std_mei m ja p2 f12 ce][trans_c cross time=300]

*5874|
[fc]
[vo_mei s="mei_0409"]
[【冥】]
「お兄さん……ずっと一緒に遊んで欲しかっただけなのに。なんで、あんな奴を……」[pcms]

*5875|
[fc]
自らの手で手にかけてしまったことは予想以上に冥の心に響き、その手を震わせていた。[pcms]

*5876|
[fc]
公園では子供達が鬼ごっこをしているのか、楽しそうに遊んでいる。[pcms]

*5877|
[fc]
彼らの笑顔を見ていると、余計に胸が締め付けられた。[pcms]

*5878|
[fc]
[vo_mei s="mei_0410"]
[【冥】]
「……行こ」[pcms]

*5879|
[fc]
冥は再びあてもなく歩き始めた。[pcms]

;//暗転
[ANTEN blk wave]

;//背景：公園・夕方
[bg storage="bg017b" blur_x=5 blur_y=5]

[std_mei m ja p1 f06 ce][trans_c wave time=1000]

;//立ち絵：冥・上着あり私服

*5880|
[fc]
突然、肌にねっとり液体が纏わり付くような感覚に包まれる。[pcms]

*5881|
[fc]
冥は俯いていた顔を上げ、すぐさま辺りを見渡した。[pcms]

[bgm013]

[bg storage="bg017b"]

;//立ち絵：ミズチ・オーラなし
;//立ち絵：カクエン・オーラなし

;mm 中じゃやっぱデカすぎるかなぁ
[std_kak s rc]
[std_miz s lc][trans_c cross time=1000]

*5882|
[fc]
[【ミズチ】]
「ここにいましたか、ノワール」[pcms]

*5883|
[fc]
[【カクエン】]
「ったくよぉ、どこほっつき歩いてやがったんだよ」[pcms]

*5884|
[fc]
魔法少女の襲撃を予測していた冥は、二体の冥魔に警戒を解き、小さくため息をついた。[pcms]

[chara_int_all]
[std_kak s ri]
[std_miz s le]
[std_mei m ja p1 f06 ce][trans_c cross time=300]

*5885|
[fc]
[vo_mei s="mei_0411"]
[【冥】]
「なんだ、お前達か……」[pcms]

*5886|
[fc]
[【ミズチ】]
「控えよ、冥魔少女ノワール。冥王の前じゃぞ？」[pcms]

[std_mei m ja p1 f08 ce][trans_c cross time=300]

*5887|
[fc]
[vo_mei s="mei_0412"]
[【冥】]
「は……？　今なんて言ったの？　メ・イ・オ・ウって聞こえたんだけど」[pcms]

*5888|
[fc]
ミズチの言葉が一瞬理解出来ず、思わず聞き返す。[pcms]

*5889|
[fc]
[【ミズチ】]
「今日から、自分こそが新たな冥王になったのだ。頭が高い、跪け」[pcms]

*5890|
[fc]
[【カクエン】]
「ま、オレは副冥王ってとこだから、オレにも頭を垂れろよ、メスガキ」[pcms]

[movie_hensin mei]
;//立ち絵：冥・魔法服・武器あり

[std_kak s ri]
[std_mei m maw p2 f06 ce]
[std_miz s le][trans_c cross time=300]

;//ここから話者：冥はノワールで

*5891|
[fc]
ただでさえ思考が混乱していたところへ火に油を注がれ、冥はすぐさま変身して武器を構えた。[pcms]

*5892|
[fc]
怒りの視線を二体の冥魔に向けるものの、彼らはまるで怖れる様子がない。[pcms]

[std_mei m maw p2 f02 ce][trans_c cross time=300]

*5893|
[fc]
[vo_mei s="mei_0413"]
[【冥】 name=ノワール]
「口の利き方に気をつけろ、愚か者共が。寝言は寝てから言え」[pcms]

*5894|
[fc]
[【ミズチ】]
「寝言……とは。オマエの方がよほど不敬じゃぞ？」[pcms]

*5895|
[fc]
ミズチが触手に掴んだ何かを前につき出す。[pcms]

*5896|
[fc]
それは、干からびたミイラの腕だった。[pcms]

[std_mei m maw p2 f05 ce][trans_c cross time=300]

*5897|
[fc]
[vo_mei s="mei_0414"]
[【冥】 name=ノワール]
「なっ、それはまさか……冥王さまの腕！？」[pcms]

*5898|
[fc]
[【ミズチ】]
「ワシらは待つのに疲れたのじゃ。それに、オマエのことも信用ならぬ。だから、こうさせてもう」[pcms]

*5899|
[fc]
ミズチがミイラを引きちぎり、カクエンへと放り投げる。[pcms]

*5900|
[fc]
冥が止める間もなく二体はミイラを口にほうり込み、咀嚼して喉を鳴らした。[pcms]

;//立ち絵：ミズチ・オーラあり
;//立ち絵：カクエン・オーラあり
[std_kak s ri o1]
[std_miz s le o1][trans_c cross time=300]

*5901|
[fc]
[【ミズチ】]
「ククク……これでワシは名実共に冥王を継いだ。オマエも見ていたであろう？」[pcms]

*5902|
[fc]
[【カクエン】]
「はっ、味は最低だが、効果は抜群らしいな。力が内側から湧いてきやがる！」[pcms]

[std_mei m maw p2 f02 ce][trans_c cross time=300]

*5903|
[fc]
[vo_mei s="mei_0415"]
[【冥】 name=ノワール]
「お前達、なんてことを！」[pcms]

*5904|
[fc]
[【カクエン】]
「これでお守りのてめぇも穀潰しに転落だな。がははははっ！」[pcms]

*5905|
[fc]
[【ミズチ】]
「そうじゃな。しばらくの間は性奴隷として飼ってやるとしよう」[pcms]

[std_mei m maw p1 f02 ce][trans_c cross time=300]

*5906|
[fc]
[vo_mei s="mei_0416"]
[【冥】 name=ノワール]
「ふざけるなぁぁぁぁぁぁぁぁぁぁっ！」[pcms]

;//ＳＥ：風を切る音
[se buf=0 storage="seB042"]

*5907|
[fc]
冥の怒りに任せた一撃は空を切り、二体の冥魔にかすり傷一つつけられない。[pcms]

*5908|
[fc]
すぐさま走り出し、ミズチに向かって斬りかかる。[pcms]

[std_mei m maw p2 f02 ce][trans_c cross time=300]
[move_chara ch=mei x=-200 y=25 time=100 accel=2 wm]

*5909|
[fc]
[【ミズチ】]
「おや、新冥王に逆らうというのじゃな？　良かろう、ならばお主は我ら冥魔の敵じゃ」[pcms]

*5910|
[fc]
[vo_mei s="mei_0417"]
[【冥】 name=ノワール]
「冥王さまを返せぇぇぇぇぇっ！」[pcms]

;//ＳＥ：弾く音
[se buf=0 storage="SE1090"]

*5911|
[fc]
振り下ろした冥の鎌が触手によって受け止められる。[pcms]

[std_mei m maw p2 f05 ce x=-200 y=25][trans_c cross time=300]

*5912|
[fc]
切り裂くことが出来ないだけでなく、受け止められた事実に驚きを隠しきれない。[pcms]

*5913|
[fc]
[【ミズチ】]
「すばらしい、これが冥王の力……！」[pcms]

;//ＳＥ：風を切る音
[se buf=1 storage="seB042"]

;//ＳＥ：殴る音
[se buf=0 storage="seB008"]

[top red cross time=50]
[wait time=100]
[bg storage="bg017b"]
[std_kak s ri o1]
[std_mei m maw p1 f12 ce x=-200 y=25]
[std_miz s le o1][trans_c cross time=300]

*5914|
[fc]
[vo_mei s="mei_0418"]
[【冥】 name=ノワール]
「がはっ、あぐっ、ぎぅっ！　は、速い……あぐぅぅぅっ！」[pcms]

*5915|
[fc]
前後左右、上から下からと無数に押し寄せる触手のスピードに追いつけず、冥は乱打を受けて宙を舞う。[pcms]

*5916|
[fc]
なんとか着地したものの、すぐさま背後の気配に振り向きながら防御姿勢を取った。[pcms]

*5917|
[fc]
[【カクエン】]
「なんだ、動きが止まって見えるぞ？」[pcms]

;//ＳＥ：蹴る音
[se buf=0 storage="seB008"]
[quake_chara ch=mei vmax=40 hmax=10 time=20 accel=1 count=2 wait=false]

*5918|
[fc]
[vo_mei s="mei_0419"]
[【冥】 name=ノワール]
「がはっ！？」[pcms]

*5919|
[fc]
腹を思い切り蹴りつけられ、冥の身体がくの字に曲がる。[pcms]

*5920|
[fc]
一瞬頭の中がまっ白になり、何も考えられなくなったところへ、回し蹴りが襲い掛かった。[pcms]

;//ＳＥ：蹴る音
[se buf=0 storage="seB008"]
[quake_chara ch=mei vmax=40 hmax=10 time=20 accel=1 count=2 wait=false]

[std_mei m madw p2 f10 ce x=-200 y=25][trans_c cross time=300]

*5921|
[fc]
[vo_mei s="mei_0420"]
[【冥】 name=ノワール]
「きゃぁぁぁぁぁぁぁぁぁっ！」[pcms]

;//ＳＥ：倒れる音
[se buf=0 storage="seB017"]
[chara_int_ce][trans_c cross time=300]

*5922|
[fc]
何度も身体が地面に叩きつけられ、痛みに顔が歪む。[pcms]

[std_mei m madw p2 f08 ce x=-200 y=135][trans_c cross time=300]

*5923|
[fc]
かろうじて武器を離さずに耐えることは出来たものの、なんとか立ち上がった冥は既に満身創痍だった。[pcms]

*5924|
[fc]
[【カクエン】]
「おいおい、もう終わりか？　これじゃサンドバッグを殴ってる方がまだマシだぜ」[pcms]

*5925|
[fc]
[【ミズチ】]
「まったく……この程度の小娘に頭を垂れていたなど、腹立たしいのう」[pcms]

[std_mei m madw p2 f13 ce x=-200 y=135][trans_c cross time=300]

*5926|
[fc]
[vo_mei s="mei_0421"]
[【冥】 name=ノワール]
（まずい、このままじゃやられる。ここは一旦引くしか……）[pcms]

;//心の声　音声加工

*5927|
[fc]
激昂してはいたものの、あまりに圧倒的な力の差を見せつけられて逆に冷静さを取り戻す。[pcms]

*5928|
[fc]
だが、その判断はあまりに遅すぎた。[pcms]

*5929|
[fc]
[【ミズチ】]
「ワシが逃がすと思うてか？」[pcms]

*5930|
[fc]
いつの間にか地面を這い伸びていた触手が急上昇し、鎌に絡みつく。[pcms]

*5931|
[fc]
鎌を取り上げようとする触手に抵抗しようとした瞬間、背後から何者かに掴まれた。[pcms]

;//立ち絵：冥・魔法服

[std_kak s ri o1 x=-300]
[std_mei m mad p2 f12 ce x=-50]
[trans_c cross time=300]

*5932|
[fc]
[【カクエン】]
「捕まえたぜ」[pcms]

*5933|
[fc]
[vo_mei s="mei_0422"]
[【冥】 name=ノワール]
「ぐっ、離せっ！　離せぇっ！」[pcms]

*5934|
[fc]
カクエンに羽交い締めされたせいで武器も取り上げられ、冥自身ももはや逃げる手段はなかった。[pcms]

;//→arcana080
[ANTEN blk]
[jump storage="arcana080.ks" target=*TOP]

