
*CGとサムネ設定00

;カット数が多いときはここじゃなくて、結局ページごとにやらないと重いかも？

;CGの登録順をここで決める。配列の中身は、
;[0] CG開放フラグ
;[1] サムネ名
;[2] b_cgmode_init_sub.ksとb_cgmode_view.ksでの飛び先ラベル target="&'*' + sf.BGM001[1]"で書けば定義要らないか
;b_cgmode_init_sub.ksに行く前に開放フラグ決めちゃだめじゃね？
;						仕方ないからここで開放チェックして			もう1回配列[0]に定義しなおす。
;じゃあ初回定義の0は書かなくてもいいんじゃ？　イマイチ手順が間抜けだな。そんなに書き換えの手間が変わってないような？
; target="&'*' + sf.BGM001[1]"で書けば飛び先ラベル定義要らないか。変則的な処理が必要なら追加してね。そのときはb_cgmode_view.ksの飛び先処理も要確認。

;evcgマクロ中で開放フラグオンになるのでb_cgmode_init_sub.ksは処理不要 2018/05/03
;最初から配列[0]に開放判定用フラグを入れる
;------------------------------------------------

;サムネやファイル名・フラグは変数で省略しないで実際ので書く

;------------------------------------------------

;ほんとはタイトル別にintファイル作らないといけないけど、面倒なのでここで条件分岐いれるか
;                          ↓ボタン  ↓ogg

;[if    exp="sf.gameNo == 1"]
	[eval exp="sf.BGM001 = [1,'bgm001','BGM01',sf.bgm_x1-300 ,sf.bgm_y01]"]
	[eval exp="sf.BGM002 = [1,'bgm002','BGM02',sf.bgm_x1+300 ,sf.bgm_y01]"]
	[eval exp="sf.BGM003 = [1,'bgm003','BGM03',sf.bgm_x1-300 ,sf.bgm_y02]"]
	[eval exp="sf.BGM004 = [1,'bgm004','BGM04',sf.bgm_x1+300 ,sf.bgm_y02]"]
	[eval exp="sf.BGM005 = [1,'bgm005','BGM05',sf.bgm_x1-300 ,sf.bgm_y03]"]
	[eval exp="sf.BGM006 = [1,'bgm006','BGM06',sf.bgm_x1+300 ,sf.bgm_y03]"]
	[eval exp="sf.BGM007 = [1,'bgm007','BGM07',sf.bgm_x1-300 ,sf.bgm_y04]"]
	[eval exp="sf.BGM008 = [1,'bgm008','BGM08',sf.bgm_x1+300 ,sf.bgm_y04]"]
	[eval exp="sf.BGM009 = [1,'bgm009','BGM09',sf.bgm_x1-300 ,sf.bgm_y05]"]
	[eval exp="sf.BGM010 = [1,'bgm010','BGM10',sf.bgm_x1+300 ,sf.bgm_y05]"]
	[eval exp="sf.BGM011 = [1,'bgm011','BGM11',sf.bgm_x1-300 ,sf.bgm_y06]"]
	[eval exp="sf.BGM012 = [1,'bgm012','BGM12',sf.bgm_x1+300 ,sf.bgm_y06]"]
	[eval exp="sf.BGM013 = [1,'bgm013','BGM13',sf.bgm_x1-300 ,sf.bgm_y07]"]
	[eval exp="sf.BGM014 = [1,'bgm014','BGM14',sf.bgm_x1+300 ,sf.bgm_y07]"]
	[eval exp="sf.BGM015 = [1,'bgm015','BGM15',sf.bgm_x1-300 ,sf.bgm_y08]"]
	[eval exp="sf.BGM016 = [1,'bgm016','BGM16',sf.bgm_x1+300 ,sf.bgm_y08]"]
	[eval exp="sf.BGM017 = [1,'bgm017','BGM17',sf.bgm_x1-300 ,sf.bgm_y09]"]
	[eval exp="sf.BGM018 = [1,'bgm018','BGM18',sf.bgm_x1+300 ,sf.bgm_y09]"]
	[eval exp="sf.BGM019 = [1,'bgm019','BGM19',sf.bgm_x1-300 ,sf.bgm_y10]"]
	[eval exp="sf.BGM020 = [1,'bgm020','BGM20',sf.bgm_x1+300 ,sf.bgm_y10]"]
;[elsif exp="sf.gameNo == 2"]
;	[eval exp="sf.BGM001 = [1,'GUE_bgm001','mus01',sf.bgm_x1-300 ,sf.bgm_y01]"]
;	[eval exp="sf.BGM002 = [1,'GUE_bgm002','mus02',sf.bgm_x1+300 ,sf.bgm_y01]"]
;	[eval exp="sf.BGM003 = [1,'GUE_bgm003','mus03',sf.bgm_x1-300 ,sf.bgm_y02]"]
;	[eval exp="sf.BGM004 = [1,'GUE_bgm004','mus04',sf.bgm_x1+300 ,sf.bgm_y02]"]
;	[eval exp="sf.BGM005 = [1,'GUE_bgm005','mus05',sf.bgm_x1-300 ,sf.bgm_y03]"]
;	[eval exp="sf.BGM006 = [1,'GUE_bgm006','mus06',sf.bgm_x1+300 ,sf.bgm_y03]"]
;	[eval exp="sf.BGM007 = [1,'GUE_bgm007','mus07',sf.bgm_x1-300 ,sf.bgm_y04]"]
;	[eval exp="sf.BGM008 = [1,'GUE_bgm008','mus08',sf.bgm_x1+300 ,sf.bgm_y04]"]
;	[eval exp="sf.BGM009 = [1,'GUE_bgm009','mus09',sf.bgm_x1-300 ,sf.bgm_y05]"]
;	[eval exp="sf.BGM010 = [1,'GUE_bgm010','mus10',sf.bgm_x1+300 ,sf.bgm_y05]"]
;	[eval exp="sf.BGM011 = [1,'GUE_bgm011','Survival_Rate_Short'         ,sf.bgm_x1-300 ,sf.bgm_y06]"]
;	[eval exp="sf.BGM012 = [1,'GUE_bgm012','Survival_Rate_Short_OffVocal',sf.bgm_x1+300 ,sf.bgm_y06]"]
;[endif]

[eval exp="sf.BGM021 = []"]
[eval exp="sf.BGM022 = []"]
[eval exp="sf.BGM023 = []"]
[eval exp="sf.BGM024 = []"]
[eval exp="sf.BGM025 = []"]
[eval exp="sf.BGM026 = []"]
[eval exp="sf.BGM027 = []"]
[eval exp="sf.BGM028 = []"]
[eval exp="sf.BGM029 = []"]
[eval exp="sf.BGM030 = []"]
[eval exp="sf.BGM031 = []"]
[eval exp="sf.BGM032 = []"]
[eval exp="sf.BGM033 = []"]
[eval exp="sf.BGM034 = []"]
[eval exp="sf.BGM035 = []"]
[eval exp="sf.BGM036 = []"]
[eval exp="sf.BGM037 = []"]
[eval exp="sf.BGM038 = []"]
[eval exp="sf.BGM039 = []"]
[eval exp="sf.BGM040 = []"]
[eval exp="sf.BGM041 = []"]
[eval exp="sf.BGM042 = []"]
[eval exp="sf.BGM043 = []"]
[eval exp="sf.BGM044 = []"]
[eval exp="sf.BGM045 = []"]
[eval exp="sf.BGM046 = []"]
[eval exp="sf.BGM047 = []"]
[eval exp="sf.BGM048 = []"]
[eval exp="sf.BGM049 = []"]
[eval exp="sf.BGM050 = []"]
[eval exp="sf.BGM051 = []"]
[eval exp="sf.BGM052 = []"]
[eval exp="sf.BGM053 = []"]
[eval exp="sf.BGM054 = []"]
[eval exp="sf.BGM055 = []"]
[eval exp="sf.BGM056 = []"]
[eval exp="sf.BGM057 = []"]
[eval exp="sf.BGM058 = []"]
[eval exp="sf.BGM059 = []"]
[eval exp="sf.BGM060 = []"]
;[eval exp="sf.BGM061 = []"]
;[eval exp="sf.BGM062 = []"]
;[eval exp="sf.BGM063 = []"]
;[eval exp="sf.BGM064 = []"]
;[eval exp="sf.BGM065 = []"]
;[eval exp="sf.BGM066 = []"]
;[eval exp="sf.BGM067 = []"]
;[eval exp="sf.BGM068 = []"]
;[eval exp="sf.BGM069 = []"]
;[eval exp="sf.BGM070 = []"]


[return]

;---------------------------------------------
;これでここからしたの各ページの項目は今後書き換えなくていい。ページ増えたら要追加。
;---------------------------------------------
*BGMとボタン設定01

;ページの各項目にサムネを設定
[eval exp="sf.BGM_slot01 = sf.BGM001[0] , sf.BGM01_bt = sf.BGM001[1] , sf.BGM01_ogg = sf.BGM001[2] , sf.BGM01_x = sf.BGM001[3] , sf.BGM01_y = sf.BGM001[4]"]
[eval exp="sf.BGM_slot02 = sf.BGM002[0] , sf.BGM02_bt = sf.BGM002[1] , sf.BGM02_ogg = sf.BGM002[2] , sf.BGM02_x = sf.BGM002[3] , sf.BGM02_y = sf.BGM002[4]"]
[eval exp="sf.BGM_slot03 = sf.BGM003[0] , sf.BGM03_bt = sf.BGM003[1] , sf.BGM03_ogg = sf.BGM003[2] , sf.BGM03_x = sf.BGM003[3] , sf.BGM03_y = sf.BGM003[4]"]
[eval exp="sf.BGM_slot04 = sf.BGM004[0] , sf.BGM04_bt = sf.BGM004[1] , sf.BGM04_ogg = sf.BGM004[2] , sf.BGM04_x = sf.BGM004[3] , sf.BGM04_y = sf.BGM004[4]"]
[eval exp="sf.BGM_slot05 = sf.BGM005[0] , sf.BGM05_bt = sf.BGM005[1] , sf.BGM05_ogg = sf.BGM005[2] , sf.BGM05_x = sf.BGM005[3] , sf.BGM05_y = sf.BGM005[4]"]
[eval exp="sf.BGM_slot06 = sf.BGM006[0] , sf.BGM06_bt = sf.BGM006[1] , sf.BGM06_ogg = sf.BGM006[2] , sf.BGM06_x = sf.BGM006[3] , sf.BGM06_y = sf.BGM006[4]"]
[eval exp="sf.BGM_slot07 = sf.BGM007[0] , sf.BGM07_bt = sf.BGM007[1] , sf.BGM07_ogg = sf.BGM007[2] , sf.BGM07_x = sf.BGM007[3] , sf.BGM07_y = sf.BGM007[4]"]
[eval exp="sf.BGM_slot08 = sf.BGM008[0] , sf.BGM08_bt = sf.BGM008[1] , sf.BGM08_ogg = sf.BGM008[2] , sf.BGM08_x = sf.BGM008[3] , sf.BGM08_y = sf.BGM008[4]"]
[eval exp="sf.BGM_slot09 = sf.BGM009[0] , sf.BGM09_bt = sf.BGM009[1] , sf.BGM09_ogg = sf.BGM009[2] , sf.BGM09_x = sf.BGM009[3] , sf.BGM09_y = sf.BGM009[4]"]
[eval exp="sf.BGM_slot10 = sf.BGM010[0] , sf.BGM10_bt = sf.BGM010[1] , sf.BGM10_ogg = sf.BGM010[2] , sf.BGM10_x = sf.BGM010[3] , sf.BGM10_y = sf.BGM010[4]"]
[eval exp="sf.BGM_slot11 = sf.BGM011[0] , sf.BGM11_bt = sf.BGM011[1] , sf.BGM11_ogg = sf.BGM011[2] , sf.BGM11_x = sf.BGM011[3] , sf.BGM11_y = sf.BGM011[4]"]
[eval exp="sf.BGM_slot12 = sf.BGM012[0] , sf.BGM12_bt = sf.BGM012[1] , sf.BGM12_ogg = sf.BGM012[2] , sf.BGM12_x = sf.BGM012[3] , sf.BGM12_y = sf.BGM012[4]"]
[eval exp="sf.BGM_slot13 = sf.BGM013[0] , sf.BGM13_bt = sf.BGM013[1] , sf.BGM13_ogg = sf.BGM013[2] , sf.BGM13_x = sf.BGM013[3] , sf.BGM13_y = sf.BGM013[4]"]
[eval exp="sf.BGM_slot14 = sf.BGM014[0] , sf.BGM14_bt = sf.BGM014[1] , sf.BGM14_ogg = sf.BGM014[2] , sf.BGM14_x = sf.BGM014[3] , sf.BGM14_y = sf.BGM014[4]"]
[eval exp="sf.BGM_slot15 = sf.BGM015[0] , sf.BGM15_bt = sf.BGM015[1] , sf.BGM15_ogg = sf.BGM015[2] , sf.BGM15_x = sf.BGM015[3] , sf.BGM15_y = sf.BGM015[4]"]
[eval exp="sf.BGM_slot16 = sf.BGM016[0] , sf.BGM16_bt = sf.BGM016[1] , sf.BGM16_ogg = sf.BGM016[2] , sf.BGM16_x = sf.BGM016[3] , sf.BGM16_y = sf.BGM016[4]"]
[eval exp="sf.BGM_slot17 = sf.BGM017[0] , sf.BGM17_bt = sf.BGM017[1] , sf.BGM17_ogg = sf.BGM017[2] , sf.BGM17_x = sf.BGM017[3] , sf.BGM17_y = sf.BGM017[4]"]
[eval exp="sf.BGM_slot18 = sf.BGM018[0] , sf.BGM18_bt = sf.BGM018[1] , sf.BGM18_ogg = sf.BGM018[2] , sf.BGM18_x = sf.BGM018[3] , sf.BGM18_y = sf.BGM018[4]"]
[eval exp="sf.BGM_slot19 = sf.BGM019[0] , sf.BGM19_bt = sf.BGM019[1] , sf.BGM19_ogg = sf.BGM019[2] , sf.BGM19_x = sf.BGM019[3] , sf.BGM19_y = sf.BGM019[4]"]
[eval exp="sf.BGM_slot20 = sf.BGM020[0] , sf.BGM20_bt = sf.BGM020[1] , sf.BGM20_ogg = sf.BGM020[2] , sf.BGM20_x = sf.BGM020[3] , sf.BGM20_y = sf.BGM020[4]"]
[return]
;---------------------------------------------
;---------------------------------------------
*BGMとボタン設定02
[eval exp="sf.BGM_slot01 = sf.BGM021[0] , sf.BGM01_bt = sf.BGM021[1] , sf.BGM01_ogg = sf.BGM021[2] , sf.BGM01_x = sf.BGM021[3] , sf.BGM01_y = sf.BGM021[4]"]
[eval exp="sf.BGM_slot02 = sf.BGM022[0] , sf.BGM02_bt = sf.BGM022[1] , sf.BGM02_ogg = sf.BGM022[2] , sf.BGM02_x = sf.BGM022[3] , sf.BGM02_y = sf.BGM022[4]"]
[eval exp="sf.BGM_slot03 = sf.BGM023[0] , sf.BGM03_bt = sf.BGM023[1] , sf.BGM03_ogg = sf.BGM023[2] , sf.BGM03_x = sf.BGM023[3] , sf.BGM03_y = sf.BGM023[4]"]
[eval exp="sf.BGM_slot04 = sf.BGM024[0] , sf.BGM04_bt = sf.BGM024[1] , sf.BGM04_ogg = sf.BGM024[2] , sf.BGM04_x = sf.BGM024[3] , sf.BGM04_y = sf.BGM024[4]"]
[eval exp="sf.BGM_slot05 = sf.BGM025[0] , sf.BGM05_bt = sf.BGM025[1] , sf.BGM05_ogg = sf.BGM025[2] , sf.BGM05_x = sf.BGM025[3] , sf.BGM05_y = sf.BGM025[4]"]
[eval exp="sf.BGM_slot06 = sf.BGM026[0] , sf.BGM06_bt = sf.BGM026[1] , sf.BGM06_ogg = sf.BGM026[2] , sf.BGM06_x = sf.BGM026[3] , sf.BGM06_y = sf.BGM026[4]"]
[eval exp="sf.BGM_slot07 = sf.BGM027[0] , sf.BGM07_bt = sf.BGM027[1] , sf.BGM07_ogg = sf.BGM027[2] , sf.BGM07_x = sf.BGM027[3] , sf.BGM07_y = sf.BGM027[4]"]
[eval exp="sf.BGM_slot08 = sf.BGM028[0] , sf.BGM08_bt = sf.BGM028[1] , sf.BGM08_ogg = sf.BGM028[2] , sf.BGM08_x = sf.BGM028[3] , sf.BGM08_y = sf.BGM028[4]"]
[eval exp="sf.BGM_slot09 = sf.BGM029[0] , sf.BGM09_bt = sf.BGM029[1] , sf.BGM09_ogg = sf.BGM029[2] , sf.BGM09_x = sf.BGM029[3] , sf.BGM09_y = sf.BGM029[4]"]
[eval exp="sf.BGM_slot10 = sf.BGM030[0] , sf.BGM10_bt = sf.BGM030[1] , sf.BGM10_ogg = sf.BGM030[2] , sf.BGM10_x = sf.BGM030[3] , sf.BGM10_y = sf.BGM030[4]"]
[eval exp="sf.BGM_slot11 = sf.BGM031[0] , sf.BGM11_bt = sf.BGM031[1] , sf.BGM11_ogg = sf.BGM031[2] , sf.BGM11_x = sf.BGM031[3] , sf.BGM11_y = sf.BGM031[4]"]
[eval exp="sf.BGM_slot12 = sf.BGM032[0] , sf.BGM12_bt = sf.BGM032[1] , sf.BGM12_ogg = sf.BGM032[2] , sf.BGM12_x = sf.BGM032[3] , sf.BGM12_y = sf.BGM032[4]"]
[eval exp="sf.BGM_slot13 = sf.BGM033[0] , sf.BGM13_bt = sf.BGM033[1] , sf.BGM13_ogg = sf.BGM033[2] , sf.BGM13_x = sf.BGM033[3] , sf.BGM13_y = sf.BGM033[4]"]
[eval exp="sf.BGM_slot14 = sf.BGM034[0] , sf.BGM14_bt = sf.BGM034[1] , sf.BGM14_ogg = sf.BGM034[2] , sf.BGM14_x = sf.BGM034[3] , sf.BGM14_y = sf.BGM034[4]"]
[eval exp="sf.BGM_slot15 = sf.BGM035[0] , sf.BGM15_bt = sf.BGM035[1] , sf.BGM15_ogg = sf.BGM035[2] , sf.BGM15_x = sf.BGM035[3] , sf.BGM15_y = sf.BGM035[4]"]
[eval exp="sf.BGM_slot16 = sf.BGM036[0] , sf.BGM16_bt = sf.BGM036[1] , sf.BGM16_ogg = sf.BGM036[2] , sf.BGM16_x = sf.BGM036[3] , sf.BGM16_y = sf.BGM036[4]"]
[eval exp="sf.BGM_slot17 = sf.BGM037[0] , sf.BGM17_bt = sf.BGM037[1] , sf.BGM17_ogg = sf.BGM037[2] , sf.BGM17_x = sf.BGM037[3] , sf.BGM17_y = sf.BGM037[4]"]
[eval exp="sf.BGM_slot18 = sf.BGM038[0] , sf.BGM18_bt = sf.BGM038[1] , sf.BGM18_ogg = sf.BGM038[2] , sf.BGM18_x = sf.BGM038[3] , sf.BGM18_y = sf.BGM038[4]"]
[eval exp="sf.BGM_slot19 = sf.BGM039[0] , sf.BGM19_bt = sf.BGM039[1] , sf.BGM19_ogg = sf.BGM039[2] , sf.BGM19_x = sf.BGM039[3] , sf.BGM19_y = sf.BGM039[4]"]
[eval exp="sf.BGM_slot20 = sf.BGM040[0] , sf.BGM20_bt = sf.BGM040[1] , sf.BGM20_ogg = sf.BGM040[2] , sf.BGM20_x = sf.BGM040[3] , sf.BGM20_y = sf.BGM040[4]"]
[return]

;---------------------------------------------
;---------------------------------------------
*BGMとボタン設定03
[eval exp="sf.BGM_slot01 = sf.BGM041[0] , sf.BGM01_bt = sf.BGM041[1] , sf.BGM01_ogg = sf.BGM041[2] , sf.BGM01_x = sf.BGM041[3] , sf.BGM01_y = sf.BGM041[4]"]
[eval exp="sf.BGM_slot02 = sf.BGM042[0] , sf.BGM02_bt = sf.BGM042[1] , sf.BGM02_ogg = sf.BGM042[2] , sf.BGM02_x = sf.BGM042[3] , sf.BGM02_y = sf.BGM042[4]"]
[eval exp="sf.BGM_slot03 = sf.BGM043[0] , sf.BGM03_bt = sf.BGM043[1] , sf.BGM03_ogg = sf.BGM043[2] , sf.BGM03_x = sf.BGM043[3] , sf.BGM03_y = sf.BGM043[4]"]
[eval exp="sf.BGM_slot04 = sf.BGM044[0] , sf.BGM04_bt = sf.BGM044[1] , sf.BGM04_ogg = sf.BGM044[2] , sf.BGM04_x = sf.BGM044[3] , sf.BGM04_y = sf.BGM044[4]"]
[eval exp="sf.BGM_slot05 = sf.BGM045[0] , sf.BGM05_bt = sf.BGM045[1] , sf.BGM05_ogg = sf.BGM045[2] , sf.BGM05_x = sf.BGM045[3] , sf.BGM05_y = sf.BGM045[4]"]
[eval exp="sf.BGM_slot06 = sf.BGM046[0] , sf.BGM06_bt = sf.BGM046[1] , sf.BGM06_ogg = sf.BGM046[2] , sf.BGM06_x = sf.BGM046[3] , sf.BGM06_y = sf.BGM046[4]"]
[eval exp="sf.BGM_slot07 = sf.BGM047[0] , sf.BGM07_bt = sf.BGM047[1] , sf.BGM07_ogg = sf.BGM047[2] , sf.BGM07_x = sf.BGM047[3] , sf.BGM07_y = sf.BGM047[4]"]
[eval exp="sf.BGM_slot08 = sf.BGM048[0] , sf.BGM08_bt = sf.BGM048[1] , sf.BGM08_ogg = sf.BGM048[2] , sf.BGM08_x = sf.BGM048[3] , sf.BGM08_y = sf.BGM048[4]"]
[eval exp="sf.BGM_slot09 = sf.BGM049[0] , sf.BGM09_bt = sf.BGM049[1] , sf.BGM09_ogg = sf.BGM049[2] , sf.BGM09_x = sf.BGM049[3] , sf.BGM09_y = sf.BGM049[4]"]
[eval exp="sf.BGM_slot10 = sf.BGM050[0] , sf.BGM10_bt = sf.BGM050[1] , sf.BGM10_ogg = sf.BGM050[2] , sf.BGM10_x = sf.BGM050[3] , sf.BGM10_y = sf.BGM050[4]"]
[eval exp="sf.BGM_slot11 = sf.BGM051[0] , sf.BGM11_bt = sf.BGM051[1] , sf.BGM11_ogg = sf.BGM051[2] , sf.BGM11_x = sf.BGM051[3] , sf.BGM11_y = sf.BGM051[4]"]
[eval exp="sf.BGM_slot12 = sf.BGM052[0] , sf.BGM12_bt = sf.BGM052[1] , sf.BGM12_ogg = sf.BGM052[2] , sf.BGM12_x = sf.BGM052[3] , sf.BGM12_y = sf.BGM052[4]"]
[eval exp="sf.BGM_slot13 = sf.BGM053[0] , sf.BGM13_bt = sf.BGM053[1] , sf.BGM13_ogg = sf.BGM053[2] , sf.BGM13_x = sf.BGM053[3] , sf.BGM13_y = sf.BGM053[4]"]
[eval exp="sf.BGM_slot14 = sf.BGM054[0] , sf.BGM14_bt = sf.BGM054[1] , sf.BGM14_ogg = sf.BGM054[2] , sf.BGM14_x = sf.BGM054[3] , sf.BGM14_y = sf.BGM054[4]"]
[eval exp="sf.BGM_slot15 = sf.BGM055[0] , sf.BGM15_bt = sf.BGM055[1] , sf.BGM15_ogg = sf.BGM055[2] , sf.BGM15_x = sf.BGM055[3] , sf.BGM15_y = sf.BGM055[4]"]
[eval exp="sf.BGM_slot16 = sf.BGM056[0] , sf.BGM16_bt = sf.BGM056[1] , sf.BGM16_ogg = sf.BGM056[2] , sf.BGM16_x = sf.BGM056[3] , sf.BGM16_y = sf.BGM056[4]"]
[eval exp="sf.BGM_slot17 = sf.BGM057[0] , sf.BGM17_bt = sf.BGM057[1] , sf.BGM17_ogg = sf.BGM057[2] , sf.BGM17_x = sf.BGM057[3] , sf.BGM17_y = sf.BGM057[4]"]
[eval exp="sf.BGM_slot18 = sf.BGM058[0] , sf.BGM18_bt = sf.BGM058[1] , sf.BGM18_ogg = sf.BGM058[2] , sf.BGM18_x = sf.BGM058[3] , sf.BGM18_y = sf.BGM058[4]"]
[eval exp="sf.BGM_slot19 = sf.BGM059[0] , sf.BGM19_bt = sf.BGM059[1] , sf.BGM19_ogg = sf.BGM059[2] , sf.BGM19_x = sf.BGM059[3] , sf.BGM19_y = sf.BGM059[4]"]
[eval exp="sf.BGM_slot20 = sf.BGM060[0] , sf.BGM20_bt = sf.BGM060[1] , sf.BGM20_ogg = sf.BGM060[2] , sf.BGM20_x = sf.BGM060[3] , sf.BGM20_y = sf.BGM060[4]"]
[return]