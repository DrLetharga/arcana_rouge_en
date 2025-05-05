;//arcana077
*TOP
[eval exp="f.l_s077 = 1"][name_allreset]

;[bgm003]継続中

;//立ち絵：茜・制服
;//立ち絵：葵・制服
;//立ち絵：ミア・制服

;//背景：通学路・日中
[bg storage="bg011b"]
[std_aoi m se p1 f01 le]
[std_aka m se p2 f03 ce]
[std_mia m se p1 f01 ri][trans_c cross time=1000]

*5725|
[fc]
冥には申し訳ないが、ミズチ達の脅威が去っていない以上、こちらを優先しないといけない。[pcms]

*5726|
[fc]
あいつらはどこで虎視眈々と機を狙っているか分からないからな……。[pcms]

*5727|
[fc]
[vo_aka s="akane_0481"]
[【茜】]
「先生、考えごとしてるみたいだけど、何か悩み事？」[pcms]

*5728|
[fc]
[【主人公】]
「ん？　ああ、ちょっとな。でも、冥魔の話じゃないから気にしないでくれ」[pcms]

*5729|
[fc]
[vo_mia s="mia_0572"]
[【ミア】]
「そう言われると気になっちゃうわよね」[pcms]

*5730|
[fc]
[vo_aoi s="aoi_0447"]
[【葵】]
「私も……気になります」[pcms]

*5731|
[fc]
[【主人公】]
「こらこら、人の事情になんでも首を突っ込むもんじゃないぞ？　テストの問題についてかもしれないし」[pcms]

[std_aka m se p2 f03 ce][trans_c cross time=300]

*5732|
[fc]
[vo_aka s="akane_0482"]
[【茜】]
「う……それは出来るだけ簡単な問題にしてほしいなぁ」[pcms]

*5733|
[fc]
茜のぼやきに、葵とミアが笑う。[pcms]

*5734|
[fc]
彼女達も、冥魔がいなければごく普通の女の子だな。[pcms]

;//ＳＥ：携帯の着信音
[se buf=0 storage="seC005"]

*5735|
[fc]
[【主人公】]
「おっと悪い。少し待っててくれ」[pcms]

*5736|
[fc]
スマホを取り出して着信を見ると、冥からだった。[pcms]

[chara_int_all][trans_c cross time=300]

*5737|
[fc]
俺は三人から少し離れて電話に出る。[pcms]

[stopse buf=0]
;[se buf=0 storage="seC002"]

*5738|
[fc]
[【主人公】]
「良かった、やっと話しする気になってくれたんだな。明日以降なら予定を空けられると思うんだが、それで手を打ってくれないか？」[pcms]

[chara_int_all]
[std_aoi s se p1 f03 lc]
[std_aka s se p1 f03 ce]
[std_mia s se p1 f04 rc][trans_c cross time=300]
;mm 電話の冥と区別つきにくいからｓ貼る
;[std_aka m se p2 f03 ce off]

*5739|
[fc]
[vo_aka s="akane_0483"]
[【茜】]
「え、予定を空ける？　もしかして先生、誰かと付き合ってるの！？」[pcms]

;[std_mia m se p1 f04 ri off]

*5740|
[fc]
[vo_mia s="mia_0573"]
[【ミア】]
「先生ならやりかねないもんね。もしかしたら、遠距離恋愛だったりして」[pcms]

;[std_aoi m se p1 f03 ri]

*5741|
[fc]
[vo_aoi s="aoi_0448"]
[【葵】]
「もしかしたら、妹さんかもしれないし……」[pcms]

[chara_int_all][trans_c cross time=300]

*5742|
[fc]
後ろで出歯亀している三人の声が聞こえてくるものの、聞こえないふりをして冥の言葉に集中する。[pcms]

*5743|
[fc]
だが、予想していたのとは違う言葉が返ってきた。[pcms]

;//ここから冥は電話越し　音声加工

[std_mei s ja p1 f07 ce off]

*5744|
[fc]
[vo_mei s="mei_0379"]
[【冥】 reset]
「お兄さん、引率してる教え子って単なる生徒なんだよね？　何か特別な秘密があるとか、深い関係じゃないよね？」[pcms]

*5745|
[fc]
[【主人公】]
「えっ？　急に一体何の話だ？」[pcms]

[std_mei s ja p1 f11 ce off]

*5746|
[fc]
[vo_mei s="mei_0380"]
[【冥】]
「いいから答えて」[pcms]

*5747|
[fc]
冥の真剣な声に、俺も背筋を正してしまう。[pcms]

*5748|
[fc]
とはいえ、彼女達の秘密を明かすわけにはいかない。[pcms]

*5749|
[fc]
[【主人公】]
「もちろんだ。彼女達はただの教え子だよ。それがどうしたんだ？」[pcms]

*5750|
[fc]
[vo_mei s="mei_0381"]
[【冥】]
「だったら、今すぐその子達と別れて、この街にある遊園地のメリーゴーランドまで来て。急がないと大変なことになるんだから」[pcms]

*5751|
[fc]
[【主人公】]
「いや、しかし……今日は予定があるから無理だと言っただろう？」[pcms]

[std_mei s ja p1 f02 ce off]

*5752|
[fc]
[vo_mei s="mei_0382"]
[【冥】]
「だから、急がないと大変なことになるって言ってるでしょ！　そんなことより大事なんだって！」[pcms]

*5753|
[fc]
[【主人公】]
「……分かった、言う通りにしよう。じゃあ切るぞ」[pcms]

[se buf=0 storage="seC002"]

[std_aoi m se p1 f06 le]
[std_aka m se p2 f03 ce]
[std_mia m se p1 f09 ri][trans_c cross time=1000]

*5754|
[fc]
[vo_aka s="akane_0484"]
[【茜】]
「それで先生、さっきのは彼女なの？」[pcms]

*5755|
[fc]
[vo_mia s="mia_0574"]
[【ミア】]
「遠距離恋愛の彼女に泣きつかれたんじゃない？」[pcms]

*5756|
[fc]
[vo_aoi s="aoi_0449"]
[【葵】]
「それとも……妹さんですか？」[pcms]

*5757|
[fc]
[【主人公】]
「あのな……どれも違うから。でも、少し緊急っぽいからちょっと行ってくるよ。悪いが、今日のパトロールはなしにしてくれ」[pcms]

*5758|
[fc]
三人は食い下がってくるかと思ったものの、あっさり受け入れてくれた。[pcms]

*5759|
[fc]
[【主人公】]
「悪いな、それじゃ……」[pcms]

[chara_int_all][trans_c cross time=300]

*5760|
[fc]
俺は三人と別れ、すぐさま遊園地へと向かった。[pcms]

[fadeoutbgm time=500]

;//暗転
[bg storage="effect_black"][trans_c rl time=500]

[wait time=300]

;//背景：遊園地・夕方
[bg storage="bg021b"][trans_c rl time=1000]

;[se buf=0 storage="seG003"]

*5761|
[fc]
[【主人公】]
「思ったより人が多いな……」[pcms]

*5762|
[fc]
平日の夕方だというのに、遊園地はそれなりに賑わいを見せていた。[pcms]

*5763|
[fc]
とりあえず、入り口にある案内マップで回転木馬の位置を確認して、人混みをかき分けながら向かうことにした。[pcms]

;//暗転
[bgm012]

;//背景：回転木馬・夕方
[bg storage="bg022b"][trans_c cross time=1000]

*5764|
[fc]
[【主人公】]
「ここか……冥はどこだ？」[pcms]

*5765|
[fc]
メリーゴーランドの周りを見ていると、一人だけ回転木馬に背を向けている少女がいた。[pcms]

*5766|
[fc]
それに気づき、すぐさま駆け寄る。[pcms]

*5767|
[fc]
[【主人公】]
「冥！　良かった……無事だったんだな」[pcms]

*5768|
[fc]
冥がわがままを言って俺を呼び出す可能性がないわけじゃなかった。[pcms]

*5769|
[fc]
ただ、もし彼女の身に危険が迫っていて、俺を呼び出すことを強要されていたら……と考えると、さすがに無視は出来ない。[pcms]

;//立ち絵：冥・上着あり私服
[std_mei m ja p1 f03 ce][trans_c cross time=300]

*5770|
[fc]
[vo_mei s="mei_0383"]
[【冥】]
「無事もなにも、私はお兄さんの為に呼び出したんだからね？」[pcms]

*5771|
[fc]
[【主人公】]
「俺の……？」[pcms]

*5772|
[fc]
彼女の真剣な表情からは、いたずらの類で呼び出したわけではないことが伝わってくる。[pcms]

*5773|
[fc]
じゃあ、本当に俺の為に呼び出したということなのか？[pcms]

[std_mei m ja p1 f11 ce][trans_c cross time=300]

*5774|
[fc]
[vo_mei s="mei_0384"]
[【冥】]
「お兄さん、今すぐこの街から逃げて。あまり時間がないの」[pcms]

*5775|
[fc]
[【主人公】]
「どういうことだ？　ちゃんと説明してくれ。俺は最後まで聞くから」[pcms]

[std_mei m ja p1 f07 ce][trans_c cross time=300]

*5776|
[fc]
[vo_mei s="mei_0385"]
[【冥】]
「多分、言っても信じてもらえないから。でも、本当に危ないの！」[pcms]

*5777|
[fc]
[【主人公】]
「信じてもらえないって思ってるのなら、俺も冥の言葉を信じない。だから逃げない」[pcms]

[std_mei m ja p1 f02 ce][trans_c cross time=300]

*5778|
[fc]
[vo_mei s="mei_0386"]
[【冥】]
「ああもう！　そんなわがまま言ってる場合じゃないの！」[pcms]

*5779|
[fc]
[【主人公】]
「俺は冥を信じる。だから、冥も俺を信じて事情を話してくれないか？」[pcms]

[std_mei m ja p2 f11 ce][trans_c cross time=300]

*5780|
[fc]
[vo_mei s="mei_0387"]
[【冥】]
「……分かったわ。お兄さん、魔法少女って知ってる？」[pcms]

*5781|
[fc]
[【主人公】]
「えっ？」[pcms]

*5782|
[fc]
冥の口から紡がれた言葉に、思わず頷きそうになる。[pcms]

*5783|
[fc]
それを、俺が突拍子もないことを聞かされて不安に思っているように見えたのか、冥の顔が陰る。[pcms]

*5784|
[fc]
だが、それでも冥は話を続けてくれた。[pcms]

*5785|
[fc]
[vo_mei s="mei_0388"]
[【冥】]
「この世には魔法少女と冥魔ってのがいて、ずっと昔から戦ってたの。で、その冥魔ってのが力を取り戻して、これから魔法少女を倒しに来るのよ」[pcms]

*5786|
[fc]
[【主人公】]
「だから、ここが戦場になる……ということか」[pcms]

[std_mei m ja p1 f01 ce][trans_c cross time=300]

*5787|
[fc]
[vo_mei s="mei_0389"]
[【冥】]
「そういうことよ。……お兄さん、随分物わかりがいいじゃない？」[pcms]

*5788|
[fc]
[【主人公】]
「冥の言葉は信じるって言っただろ。話から察するに冥は正義の魔法少女ってことか。すごいな……」[pcms]

[std_mei m ja p1 f07 ce][trans_c cross time=300]

*5789|
[fc]
[vo_mei s="mei_0390"]
[【冥】]
「え、えっと……まぁ……」[pcms]

*5790|
[fc]
[【主人公】]
「ということは、ここで戦いがくり広げられるのか？　となると、俺以外の遊園地にいる人はどうなるんだ？」[pcms]

[trans_c cross time=300]

*5791|
[fc]
[vo_mei s="mei_0391"]
[【冥】]
「人払いの結界を張るから大丈夫よ」[pcms]

;レガート佐藤 魔法 結界作成

;[HAMON storage="bg022b"]
;mm 立ちいるから直打ちにする
[se buf=0 storage="seD027"]
[bg storage="bg022b" blur_x=30 blur_y=30]
[std_mei m ja p2 f01 ce]
[trans_c wave3 vague=10 time=1000]
[bg storage="bg022b"]
[std_mei m ja p2 f01 ce]
[trans_c wave3 vague=10]


*5792|
[fc]
冥の言葉と共に、身体が水の中に沈み込むあの感覚が肌に伝わってくる。[pcms]

*5793|
[fc]
[【主人公】]
「結界……本当だ」[pcms]

;//後半は小声で
*5794|
[fc]
[vo_mei s="mei_0392"]
[【冥】]
「これで遊園地からは人がいなくなるはずよ。まあ、お兄さん以外なんてどうでもいいけど」[pcms]

;レガート佐藤 魔法 索敵

[std_mei l ja p1 f05 ce][trans_c cross time=300]

*5795|
[fc]
[vo_mei s="mei_0393"]
[【冥】]
「……！？　お兄さん、下がってて」[pcms]

*5796|
[fc]
冥は急顔を険しくすると、俺を押しのける。[pcms]

*5797|
[fc]
そして彼女の周りに黒い霧が現れると、あっという間に彼女の身体を包み込んだ。[pcms]

[movie_hensin mei]

;mm ムービーのあと大だとちょっと違和感あるから中にしとく
;//立ち絵：冥・魔法服・武器あり
[std_mei m maw p2 f01 ce][trans_c cross time=0]

*5798|
[fc]
[【主人公】]
「その姿は……！」[pcms]

;//ここから話者：冥はノワールで

[std_mei m maw p2 f07 ce][trans_c cross time=300]

*5799|
[fc]
[vo_mei s="mei_0394"]
[【冥】 name=ノワール]
「お兄さんは下がってて、結界内に異物がいるわ。……というか、お兄さんも結界が感知出来るんだ」[pcms]

*5800|
[fc]
[【主人公】]
「あ、ああ……」[pcms]

;//ＳＥ：走る音
;[se buf=0 storage="seA047"]
[se buf=0 storage="seA052"]

;//立ち絵：茜・制服
[std_aka m se p1 f01 ce][trans_c cross time=300]

*5801|
[fc]
[vo_aka s="akane_0485"]
[【茜】]
「あっ、いた！　先生！」[pcms]

;//立ち絵：ミア・制服
[chara_int_all]
[std_aka m se p1 f04 lc]
[std_mia m se p1 f04 rc][trans_c cross time=300]

*5802|
[fc]
[vo_mia s="mia_0575"]
[【ミア】]
「えっ、その子誰？　もしかして、新しい魔法少女なの？」[pcms]

*5803|
[fc]
[【主人公】]
「お前達！？　どうしてここに……」[pcms]

[std_aka m se p2 f07 lc][trans_c cross time=300]

*5804|
[fc]
[vo_aka s="akane_0486"]
[【茜】]
「それはもちろん、先生を尾行してきたんだよ。でも、遊園地に入ったところで見失っちゃって、みんなともはぐれて……」[pcms]

[std_mia m se p1 f11 rc][trans_c cross time=300]

*5805|
[fc]
[vo_mia s="mia_0576"]
[【ミア】]
「それで、結界が張られたからまた冥魔が現れたのかと思って慌てて探してたら見付けたんだけど」[pcms]

[chara_int_all]
[std_mei m maw p1 f11 ce][trans_c cross time=300]

*5806|
[fc]
[vo_mei s="mei_0395"]
[【冥】 name=ノワール]
「冥魔？　どういうこと……？」[pcms]

*5807|
[fc]
緊張感を持った冥の顔がさらに厳しさを増す。[pcms]

*5808|
[fc]
冥は茜達を釘付けにするように睨み付けていた。[pcms]

[std_aka m se p1 f07 le off]

*5809|
[fc]
[vo_aka s="akane_0487"]
[【茜】]
「えっと……あの子、あたし達を見て怒ってない？」[pcms]

[std_aka m se p1 f08 le off]

*5810|
[fc]
[vo_mia s="mia_0577"]
[【ミア】]
「うーん、そんな風に見えるね」[pcms]

;//ＳＥ：走る音
[se buf=0 storage="seA047"]

;//立ち絵：葵・制服
[std_mei m maw p1 f05 ce]
[std_aoi m se p1 f05 le][trans_c cross time=300]

*5811|
[fc]
[vo_aoi s="aoi_0450"]
[【葵】]
「先生、無事ですか！　えっ……」[pcms]

*5812|
[fc]
遅れてやってきた葵が俺の顔を見るなり固まってしまう。[pcms]

*5813|
[fc]
だが、その顔は涙混じりに破顔し、ふらつきながら駆け寄ってくる。[pcms]

[std_aoi m se p1 f09 le][trans_c cross time=300]

*5814|
[fc]
[vo_aoi s="aoi_0451"]
[【葵】]
「藍……藍でしょ？　藍よね！　良かった、生きててくれたんだ……！」[pcms]

[chara_int_all]
[std_aoi m se p1 f09 lc]
[std_mei m maw p1 f06 rc][trans_c cross time=300]

*5815|
[fc]
俺の前で変身した冥に向かって、葵が駆け寄っていく。[pcms]

*5816|
[fc]
冥が……葵の妹？[pcms]

*5817|
[fc]
どういうことだ、訳が分からない。[pcms]

[std_mei m maw p1 f02 rc][trans_c cross time=300]

*5818|
[fc]
[vo_mei s="mei_0396"]
[【冥】 name=ノワール]
「近付くな、裏切り者！」[pcms]

[quake_bg vmax=20 hmax=10 time=20 accel=1 count=2 wait=false]
;//ＳＥ：風を切る音
[se buf=0 storage="seB042"]

[std_aoi m se p1 f12 lc][trans_c cross time=100]

*5819|
[fc]
[vo_aoi s="aoi_0452"]
[【葵】]
「きゃぁっ！？」[pcms]

[se buf=0 storage="SE320_2"]
[chara_int_lc][trans_c cross time=300]

*5820|
[fc]
冥の振るった鎌の風圧に煽られ、葵が転倒してしまう。[pcms]

*5821|
[fc]
駆け寄ろうとするものの、冥が遮ってきた。[pcms]

[chara_int_all]
[std_mei m maw p1 f02 ce][trans_c cross time=300]

*5822|
[fc]
[vo_mei s="mei_0397"]
[【冥】 name=ノワール]
「その名前で私を呼ぶな。私の名は四堂冥、そして冥魔の神である冥王さま直属の戦士、冥魔少女ノワールだ！」[pcms]

*5823|
[fc]
[【主人公】]
「なに……？」[pcms]

[chara_int_all]
[std_aoi m se p1 f03 le]
[std_aka m se p1 f07 ce]
[std_mia m se p1 f08 ri][trans_c cross time=300]

*5824|
[fc]
[vo_aka s="akane_0488"]
[【茜】]
「冥魔の神の戦士……？」[pcms]

*5825|
[fc]
[vo_mia s="mia_0578"]
[【ミア】]
「冥魔少女……魔法少女じゃないの！？」[pcms]

*5826|
[fc]
突然の告白に、頭の理解が追いつかない。[pcms]

*5827|
[fc]
[vo_aoi s="aoi_0453"]
[【葵】]
「なに……言ってるの、藍。藍は私の妹だもの。それは何があっても変わらないわ」[pcms]

[chara_int_all]
[std_mei m maw p1 f02 ce][trans_c cross time=300]

*5828|
[fc]
[vo_mei s="mei_0398"]
[【冥】 name=ノワール]
「うるさい！　自分が助かる為に妹の手を離した卑怯者のくせに、姉のふりをするな！」[pcms]

[std_mei m maw p1 f12 ce][trans_c cross time=300]

*5829|
[fc]
[vo_mei s="mei_0399"]
[【冥】 name=ノワール]
「私はもうお前を姉だとは思っていないし、じわじわなぶり殺しにしてやるんだから」[pcms]

*5830|
[fc]
[【主人公】]
「ま、待て冥。葵だってずっと後悔してるんだ。まずは落ち着いて事情を話してくれないか？」[pcms]

[std_mei m maw p1 f06 ce][trans_c cross time=300]

*5831|
[fc]
[vo_mei s="mei_0400"]
[【冥】 name=ノワール]
「何言ってるの？　裏切り者なのはお兄さんもでしょ？　お兄さん、あいつらとは何の関係もない、ただの教え子って言ったじゃない」[pcms]

[std_mei m maw p1 f14 ce][trans_c cross time=300]

*5832|
[fc]
[vo_mei s="mei_0401"]
[【冥】 name=ノワール]
「なのに、あいつらが結界の中にいるのに何も驚かないなんて。私に嘘をついてたんだよね？」[pcms]

*5833|
[fc]
[【主人公】]
「……それについてはすまない。実は偶然魔法少女の存在を知ってから、彼女達の協力者になっていたんだ」[pcms]

[std_mei m maw p1 f02 ce][trans_c cross time=300]

*5834|
[fc]
[vo_mei s="mei_0402"]
[【冥】 name=ノワール]
「お兄さんの嘘つき！　あいつらの仲間じゃないなら助けてあげようと思ったのに！」[pcms]

*5835|
[fc]
[vo_mei s="mei_0403"]
[【冥】 name=ノワール]
「みんな、みんな嫌い……みんな私の敵よ！」[pcms]

*5836|
[fc]
[vo_aoi s="aoi_0454"]
[【葵】]
「藍……そんなこと言わないで。あの後、一体何があったの？　それを教えてくれたら、私はどんな罰でも受けるから……」[pcms]

[std_mei m maw p1 f12 ce][trans_c cross time=300]

*5837|
[fc]
[vo_mei s="mei_0404"]
[【冥】 name=ノワール]
「うるさい、お姉ちゃん面するな！　お前に教えることなんてなにひとつない！」[pcms]

[std_mei l maw p2 f12 ce][trans_c cross time=300]

*5838|
[fc]
冥が鎌を振り上げ、呆然とする葵に向かって駆けだしていく。[pcms]

*5839|
[fc]
[【主人公】]
「やめろぉぉぉぉぉっ！」[pcms]

[fadeoutbgm time=50]

;//ＳＥ：斬撃音
;[se buf=0 storage="seB027"]
;//ＳＥ：血飛沫の音
[se buf=1 storage="seB034"]

[top red blood2 time=1000]
[wait time=100]

;[bg storage="bg022b"][trans_c cross time=1000]

[std_mei m maw p1 f13 ce off]

*5840|
[fc]
[vo_mei s="mei_0405"]
[【冥】 name=ノワール]
「え……？」[pcms]

*5841|
[fc]
[vo_aoi s="aoi_0455"]
[【葵】]
「あ……」[pcms]

;//ＳＥ：倒れる音
[se buf=0 storage="seB017"]
;//背景：空・夕
[bg storage="bg001b"][trans_c wave time=2000]

*5842|
[fc]
身体が傾いて、視界が夕焼けに染まる。[pcms]

;//フェイスのみ：葵・制服
[std_aoi m se p1 f10 le off]

*5843|
[fc]
[vo_aoi s="aoi_0456"]
[【葵】]
「いやぁぁぁぁっ！　先生、先生っ！」[pcms]

;//フェイスのみ：茜・制服

*5844|
[fc]
[vo_aka s="akane_0489"]
[【茜】]
「だめっ、血がたくさん出てる！」[pcms]

;//フェイスのみ：ミア・制服

*5845|
[fc]
[vo_mia s="mia_0579"]
[【ミア】]
「早く回復魔法をかけて！　先生、死なないでよ！」[pcms]

*5846|
[fc]
ああ、俺は葵をかばって斬られたのか……みんなの声で、なんとなくそれを理解した。[pcms]

*5847|
[fc]
そう言えば、確かに胸の辺りがずきずきするな……。[pcms]

;//フェイスのみ：冥・魔法服・武器あり
[std_mei m maw p1 f08 ce off]

*5848|
[fc]
[vo_mei s="mei_0406"]
[【冥】 name=ノワール]
「あ……うぁ……お兄さんが悪いんだよ？　お姉ちゃんをかばうなんて、馬鹿なことするなんて思ってなかったし」[pcms]

;//フェイスのみ：冥・魔法服・武器あり
[std_mei m maw p1 f13 ce off]

*5849|
[fc]
[vo_mei s="mei_0407"]
[【冥】 name=ノワール]
「それに、私は敵だって教えてあげたのに、なんでそんな……」[pcms]

;//ＳＥ：走り去る音
[se buf=0 storage="seA050"]

;//暗転
;[bg storage="effect_black"][trans_c ce_tb_r time=1000]

[img_c storage="薄目" layer=6 x=0 y=0 opa=204][trans_c wipe_r time=1000]

*5850|
[fc]
冥が遠ざかっていく足音と共に、目蓋が重くなっていく。[pcms]

[bg storage="effect_black"][trans_c ce_tb_r time=1000]

*5851|
[fc]
葵達の声も遠くなっていき、何を言っているのか分からない。[pcms]

*5852|
[fc]
俺の意識はそのまま、深い闇の底へと沈んでいった。[pcms]

;//→arcana078
[ANTEN blk]
[jump storage="arcana078.ks" target=*TOP]

