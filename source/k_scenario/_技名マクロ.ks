;_技名マクロ

;ルビサイズ変更
[macro name="rubysize_change"]
	[font rubysize=%rubysize|18]

[endmacro]

;ルビサイズ元に戻す
[macro name="rubysize_reset"]
	[font rubysize=12]
[endmacro]

;茜--------------------------------------

;｛舞い上がれ、紅蓮の花｝
[macro name="技_エリュプシオン・デ・クラテール"]
	[rubysize_change]
	[ruby_c t="エリュプシオン・デ・クラテール" r="舞 い 上 が れ、紅 蓮 の 花"]
	[rubysize_reset]
[endmacro]

;｛深淵穿つ灼熱の弾丸｝
[macro name="技_バレ・ブルロント"]
	[rubysize_change rubysize=16]
	[ruby_c t="バレ・ブルロント" r="深淵穿つ灼熱の弾丸"]
	[rubysize_reset]
[endmacro]

;｛爆ぜよ、我が情熱、我が魂｝
[macro name="技_フラム・デ・エクスプロージオン"]
	[rubysize_change]
	[ruby_c t="フラム・デ・エクスプロージオン" r="爆 ぜ よ、我 が 情 熱、我 が 魂"]
	[rubysize_reset]
[endmacro]


;｛聖なる炎よ、汚れし魂を清め給え｝
[macro name="技_ラヴェール・アヴェ・デ・フレーム・サクリ"]
	[rubysize_change]
	[ruby_c t="ラヴェール・アヴェ・デ・フレーム・サクリ" r="聖 な る 炎 よ、汚 れ し 魂 を 清 め 給 え"]
	[rubysize_reset]
[endmacro]

;葵--------------------------------------

;｛空駆けるツバメとなりて奔れ｝
[macro name="技_アメシスト・イクラティ"]
	[rubysize_change]
	[ruby_c t="アメシスト・イクラティ" r="空 駆 け る ツ バ メ と な り て 奔 れ"]
	[rubysize_reset]

[endmacro]

;｛盾となりて我を守りたまえ｝
[macro name="技_アメシスト・ブークリエ"]
	[rubysize_change rubysize=16]
	[ruby_c t="アメシスト・ブークリエ" r="盾となりて我を守りたまえ"]
	[rubysize_reset]
[endmacro]


;ミア--------------------------------------

;｛迷い断つ金色の槍｝
[macro name="技_ル・ジュジュモン・ドゥ・ジュ"]
	[rubysize_change]
	[ruby_c t="ル・ジュジュモン・ドゥ・ジュ" r="迷 い 断 つ 金 色 の 槍"]
	[rubysize_reset]
[endmacro]

;｛虚空に煌めけ光の刃｝
[macro name="技_ラミ・ドゥ・リュミエール"]
	[rubysize_change]
	[ruby_c t="ラミ・ドゥ・リュミエール" r="虚 空 に 煌 め け 光 の 刃"]
	[rubysize_reset]
[endmacro]


;｛降り注げ光の雨｝
[macro name="技_プリュ・バリアント"]
	[rubysize_change]
	[ruby_c t="プリュ・バリアント" r="降 り 注 げ 光 の 雨"]
	[rubysize_reset]
[endmacro]

;冥--------------------------------------

;｛塗りつぶせ深淵より来る闇｝
;//（めっさつあんかいめいあんげき）。ルビとは合っていませんが発声はこれです。
[macro name="技_滅殺暗晦冥闇撃"]
	[rubysize_change rubysize=16]
	[ruby_c t="滅殺暗晦冥闇撃" r="塗りつぶせ深淵より来る闇"]
	[rubysize_reset]
[endmacro]

;｛永劫の檻こそ魂の安寧｝
;//（ぜったいだんぜつだんがいめいきゅう）。ルビとは合っていませんが発声はこれです。
[macro name="技_絶対断絶弾劾迷宮"]
	[rubysize_change rubysize=16]
	[ruby_c t="絶対断絶弾劾迷宮" r="永劫の檻こそ魂の安寧"]
	[rubysize_reset]
[endmacro]


;｛みたまみなそこごりょう｝
[macro name="技_御霊水底御陵"]
	;スペース入れないのはわざと
	[ruby_c t="御霊水底御陵" r="みたまみなそこごりょう"]
[endmacro]

;カクエン--------------------------------------

;｛めいまごうばくふ｝
[macro name="技_冥魔豪爆斧"]
	[ruby_c t="冥魔豪爆斧" r="め い ま ご う ば く ふ"]
[endmacro]

;｛めいまごうふうざん｝
[macro name="技_冥魔豪風斬"]
	[ruby_c t="冥魔豪風斬" r="め い ま ご う ふ う ざ ん"]
[endmacro]

;｛めいまくぐつじん｝
[macro name="技_冥魔傀儡陣"]
	[ruby_c t="冥魔傀儡陣" r="め い ま く ぐ つ じ ん"]
[endmacro]

[return]


;-------------------------------------------------
*test
	[call storage="_技名マクロ.ks"]
*1|
[fc]「[技_アメシスト・イクラティ]」[pcms]
*2|
[fc]「[技_ラミ・ドゥ・リュミエール]」[pcms]
*3|
[fc]「[技_エリュプシオン・デ・クラテール]」[pcms]
*4|
[fc]「[技_冥魔傀儡陣]」[pcms]
*5|
[fc]「[技_冥魔豪爆斧]」[pcms]
*6|
[fc]「[技_冥魔豪風斬]」[pcms]
*7|
[fc]「[技_バレ・ブルロント]」[pcms]
*8|
[fc]「[技_フラム・デ・エクスプロージオン]」[pcms]
*9|
[fc]「[技_ル・ジュジュモン・ドゥ・ジュ]」[pcms]
*10|
[fc]「[技_プリュ・バリアント]」[pcms]
*11|
[fc]「[技_アメシスト・ブークリエ]」[pcms]
*12|
[fc]「[技_ラヴェール・アヴェ・デ・フレーム・サクリ]」[pcms]
*13|
[fc]「[技_滅殺暗晦冥闇撃]」[pcms]
*14|
[fc]「[技_絶対断絶弾劾迷宮]」[pcms]
*16|
[fc]「[技_御霊水底御陵]」[pcms]


[returntitle]

