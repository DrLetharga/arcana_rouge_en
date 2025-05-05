[iscript]

// 選択肢用レイヤ（ButtonLayer クラスを継承して作成します）
class ButtonLinkLayer extends ButtonLayer
{
	var textLayer; // テキストを表示するためのレイヤ
	var storage, target; // クリックした時にジャンプするシナリオファイル名とラベル名
	var exp; // クリックされた時に実行する TJS 式
	var onenter, onleave; // マウスカーソルが乗った時・出て行った時に実行する TJS 式
	var countpage; // ジャンプする時に、この場所のラベルを読んだとみなすか
	var clickse, clicksebuf; // クリックした時の効果音と使用するバッファ番号
	var enterse, entersebuf; // マウスカーソルが乗った時の効果音と使用するバッファ番号
	var leavese, leavesebuf; // マウスカーソルが出て行った時の効果音と使用するバッファ番号
	var text; // 表示するテキスト
	var textcolor = []; // テキストの色[通常時, クリックしている時, マウスカーソルが乗っている時]
	var onClickFunction; // クリックされた時に呼び出すメソッドへの参照

	// コンストラクタ
	function ButtonLinkLayer(win, par, func, elm)
	{
		// スーパークラスのコンストラクタを呼び出します
		super.ButtonLayer(win, par);

		// テキストを表示するためのレイヤを作成します（サイズはボタン画像を表示するレイヤと同じにします）
		textLayer = new global.Layer(win, this);
		textLayer.hitThreshold = 256; // このレイヤはマウスメッセージを受け取る必要がないので 256 (すべてのマウスメッセージを受け取らない)に設定します
		textLayer.visible = true; // 表示状態にします

		// クリックされた時に呼び出すメソッドへの参照を onClickFunction に保存しておきます
		onClickFunction = func;

		// 各種設定を行います
		setOptions(elm);

		// 重ね合わせ順序はメッセージ履歴よりも奥にします
		absolute = 2000000-10;
		// 表示状態にします
		visible = true;
	}

	// デストラクタ
	function finalize()
	{
		invalidate textLayer; // テキスト表示用レイヤを無効化します
		super.finalize(); // スーパークラスのデストラクタを呼び出します
	}

	// 各種設定を行うメソッド
	function setOptions(elm)
	{
		// ボタン関係の設定
		loadImages(elm.graphic);
		left = +elm.left if elm.left !== void;
		top = +elm.top if elm.top !== void;
		hint = elm.hint if elm.hint !== void;
		storage = elm.storage;
		target = elm.target;
		exp = elm.exp;
		onenter = elm.onenter;
		onleave = elm.onleave;
		countpage = elm.countpage === void || +elm.countpage;
		clickse = elm.clickse;
		clicksebuf = elm.clicksebuf !== void ? +elm.clicksebuf : 0;
		enterse = elm.enterse;
		entersebuf = elm.entersebuf !== void ? +elm.entersebuf : 0;
		leavese = elm.leavese;
		leavesebuf = elm.leavesebuf !== void ? +elm.leavesebuf : 0;

		// テキスト関係の設定
		text = elm.text;
		textLayer.setImageSize(width, height);
		textLayer.setSizeToImageSize();
		textLayer.font.face = elm.font !== void ? elm.font : window.fore.messages[0].userFace;
		textLayer.font.height = elm.fontsize !== void ? elm.fontsize : window.fore.messages[0].defaultFontSize;
		textcolor[0] = elm.color !== void ? +elm.color : 0xFFFFFF;
		textcolor[1] = elm.clickcolor !== void ? +elm.clickcolor : 0xFF0000;
		textcolor[2] = elm.oncolor !== void ? +elm.oncolor : 0x000000;
	}

	// ButtonLayer クラスの drawState メソッドをオーバーライドします
	function drawState(s)
	{
		// 状態 s に対応する画像・選択肢のテキストを描画
		// s :  0 : 普通の状態
		//      1 : ボタンが押された状態
		//      2 : ボタンの上にマウスカーソルがある状態

		// ボタンの表示を更新します
		super.drawState(s);

		// テキストの表示を更新します
		with(textLayer)
		{
			// レイヤをクリアします
			.fillRect(0, 0, .width, .height, 0x00000000);
			// テキストをレイヤの中央に表示します
			var textWidth = .font.getTextWidth(text);
			var textHeight = .font.getTextHeight(text);
			.drawText((.width - textWidth) \ 2, (.height - textHeight) \ 2, text, textcolor[s]);
		}
	}

	function onMouseUp(x, y, button, shift)
	{
		// スーパークラスの onMouseUp メソッドを呼び出します
		super.onMouseUp(...);

		if(enabled && button == mbLeft)
		{
			// clickse が指定されていれば効果音を再生します
			if(clickse !== void)
				window.se[clicksebuf].play(%["storage" => clickse, "loop" => false]);

			// exp が指定されていれば TJS 式として実行します
			if(exp !== void)
				Scripts.eval(exp);

			// クリックされた時に実行するメソッドを this を引数にして呼び出します
			onClickFunction(this);
		}
	}

	function onMouseEnter()
	{
		// enterse が指定されていれば効果音を再生します
		if(enterse !== void)
			window.se[entersebuf].play(%["storage" => enterse, "loop" => false]);

		// onenter が指定されていれば TJS 式として実行します
		if(onenter !== void)
			Scripts.eval(onenter);

		// スーパークラスの onMouseEnter メソッドを呼び出します
		super.onMouseEnter(...);
	}

	function onMouseLeave()
	{
		// leavese が指定されていれば効果音を再生します
		if(leavese !== void)
			window.se[leavesebuf].play(%["storage" => leavese, "loop" => false]);

		// onleave が指定されていれば TJS 式として実行します
		if(onleave !== void)
			Scripts.eval(onleave);

		// スーパークラスの onMouseLeave メソッドを呼び出します
		super.onMouseLeave(...);
	}
}

// 選択肢を管理するプラグイン
class ButtonLinkPlugin extends KAGPlugin
{
	var links = []; // 選択肢オブジェクト(ButtonLinkLayer クラスのオブジェクト)の配列

	// コンストラクタ
	function ButtonLinkPlugin()
	{
		// スーパークラスのコンストラクタを呼び出します
		super.KAGPlugin();
	}

	// デストラクタ
	function finalize()
	{
		// すべての選択肢を破棄します
		clear();
		// スーパークラスのデストラクタを呼び出します
		super.finalize();
	}

	// 選択肢の項目を追加するメソッド
	function addLink(elm)
	{
		// 新しく選択肢オブジェクトを作って links に追加します
		links.add(new ButtonLinkLayer(kag, kag.fore.base, onLinkClicked, elm));
	}

	// 選択肢がクリックされた時に呼び出されるメソッド
	function onLinkClicked(link)
	{
		// 指定のシナリオファイル・ラベルにジャンプします
		kag.process(link.storage, link.target, link.countpage);

		// 選択肢をすべて破棄します
		clear();
	}

	// すべての選択肢を破棄するメソッド
	function clear()
	{
		for(var i=links.count-1;i>=0;i--)
			invalidate links[i]; // 選択肢オブジェクトを無効化します
		links.clear(); // 配列の要素をすべて消去します
	}

	// array の各メンバのプロパティを設定するメソッド
	function setObjProp(array, member, value)
	{
		for(var i = array.count - 1; i >= 0; i--) array[i][member] = value;
	}

	// onMessageHiddenStateChanged メソッドをオーバーライドします
	function onMessageHiddenStateChanged(hidden)
	{
		// メッセージレイヤの表示状態にあわせて選択肢の表示状態を設定します
		setObjProp(links, 'visible', !hidden);
	}

	// onRestore メソッドをオーバーライドします
	function onRestore(f, clear, elm)
	{
		// 選択肢が表示された状態でデータがロードされた時、
		// ロード後に選択肢が残らないようにここで消去しておきます
		this.clear();
	}
}

// ButtonLinkPlugin クラスのオブジェクトを作成して、プラグインとして登録します
kag.addPlugin(global.buttonlink_object = new ButtonLinkPlugin());

[endscript]

; blink マクロ：選択肢の項目を作成します
;
; （指定できる属性）
;    graphic : 背景に表示する画像(button タグの graphic 属性に相当)
;       left : 左端位置(image タグの left 属性に相当)
;        top : 上端位置(image タグの top 属性に相当)
;       text : 表示するテキスト
;    storage : クリックした時ジャンプするシナリオファイル名(button/link タグの storage 属性に相当)
;     target : クリックした時ジャンプするラベル名(button/link タグの target 属性に相当)
;        exp : クリックした時実行する TJS 式(button/link タグの exp 属性に相当)
;       hint : マウスカーソルが乗った時表示するツールチップヒント(button/link タグの hint 属性に相当)
;    onenter : マウスカーソルが乗った時実行する TJS 式(button/link タグの onenter 属性に相当)
;    onleave : マウスカーソルが出て行った時実行する TJS 式(button/link タグの onleave 属性に相当)
;  countpage : ジャンプする時にこの場所のラベルを読んだとみなすか(button/link タグの countpage 属性に相当)
;    clickse : クリックした時再生する効果音(button/link タグの clickse 属性に相当)
; clicksebuf : クリックした時効果音を再生するのに使う効果音バッファ(button/link タグの clicksebuf 属性に相当)
;    enterse : マウスカーソルが乗った時再生する効果音(button/link タグの enterse 属性に相当)
; entersebuf : マウスカーソルが出て行った時効果音を再生するのに使う効果音バッファ(button/link タグの entersebuf 属性に相当)
;    leavese : マウスカーソルが出て行った時再生する効果音(button/link タグの leavese 属性に相当)
; leavesebuf : マウスカーソルが出て行った時効果音を再生するのに使う効果音バッファ(button/link タグの leavesebuf 属性に相当)
;       font : テキストを表示する時に使用するフォント名(デフォルト：現在ユーザが選択しているフォント)
;   fontsize : テキストの文字の大きさ(デフォルト：デフォルトの文字サイズ)
;      color : 通常時のテキストの色(デフォルト：0x000000(黒))
;    oncolor : マウスカーソルが乗っている時のテキストの色(デフォルト：0xFF0000(赤))
; clickcolor : クリックしている時のテキストの色(デフォルト：0xFF0000(赤))
[macro name=blink]
[eval exp="buttonlink_object.addLink(mp)"]
[endmacro]



[return]
