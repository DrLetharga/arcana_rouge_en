
;この命令で初回のみの設定なのかー。消したらまずいんだろうか。
@if exp="typeof(global.systembutton_object) == 'undefined'"

@iscript

var toggle_auto;//オートスキップ走行中判定用のフラグ
var toggle_skip;//オートスキップ走行中判定用のフラグ


class SystemButtonLayer extends ButtonLayer
	// クリックされたときに実行する関数を指定できるボタンレイヤ
{
	var onClickFunction;

	function SystemButtonLayer(window, parent, func)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
		visible = true;
		onClickFunction = func;
	}

	function finalize()
	{
		super.finalize(...);
	}


	function loadImages(storage, key)
	{
		// スーパークラス(SystemButtonLayerクラス)の loadImages メソッドを呼び出します
		super.loadImages(storage, key);

		// レイヤの表示幅をボタン画像の４分の１に設定します
		global.Layer.height = imageHeight \ 3;
	}

	function drawState(s)
	{
		// 状態 s に対応する画像を描画
		// s :  0 : 普通の状態
		//      1 : ボタンが押された状態
		//      2 : ボタンの上にマウスカーソルがある状態
		if(!enabled)
		{
			s = 0; // 無効状態
		}

		if(Butt_imageLoaded)
		{
			// ボタンの画像を設定（左から(s+1)番目の画像を表示）します
			imageTop = -s * height;
		}
	}

	function onClick()
	{
		super.onClick(...);
	}

	function onMouseUp(x, y, button, shift)
	{
		if(enabled && button == mbLeft)
			onClickFunction(this);
		super.onMouseUp(...);
	}

}

class SystemButtonPlugin extends KAGPlugin
{
	//mine:システムボタン配置設定
	var x = sf.sysbt_x; // 初期 x 位置
	var y = sf.sysbt_y; // 初期 y 位置
	var foreSeen = false; // 表画面のボタンが可視か
	var backSeen = false; // 裏画面のボタンが可視か

	var foreButtons = []; // 表画面のボタンの配列
	var backButtons = []; // 裏画面のボタンの配列

	// 以下は定数として扱う
	//var IndexHistory = 0;	// LOGボタンのインデックス
	//var IndexSave = 3;		// SAVEボタンのインデックス
	//var IndexLoad = 4;		// LOADボタンのインデックス

//なんか今までの並びおかしいから変える
//mm 2列の並び順は左の縦から？

	var IndexSave = 0;
	var IndexQsave = 1;
	var IndexSkip = 2;
	var IndexConfig = 3;
	var IndexTitle = 4;
	//////////////////
	var IndexLoad = 5;
	var IndexQload = 6;
	var IndexAuto = 7;
	var IndexHistory = 8;
	var IndexHide = 9;

//	var IndexVoice = 0;


	function SystemButtonPlugin()
	{
		// SystemButtonPlugin コンストラクタ

		createButtons(kag.fore.base, foreButtons); // 表画面のボタンを作成
		createButtons(kag.back.base, backButtons); // 裏画面のボタンを作成

		realign(); // 再配置

		setObjProp(foreButtons, 'visible', foreSeen = false);
		setObjProp(backButtons, 'visible', backSeen = false);
			// 非表示に

		onStableStateChanged(kag.inStable);		// イネーブル／ディセーブル状態を更新しておく
	}

	function finalize()
	{
		// ボタンを無効化
		for(var i = 0; i < foreButtons.count; i++)
			invalidate foreButtons[i];
		for(var i = 0; i < backButtons.count; i++)
			invalidate backButtons[i];

		super.finalize(...);
	}

	function setObjProp(array, member, value)
	{
		// array の各メンバのプロパティの設定
		for(var i = array.count - 1; i >= 0; i--) array[i][member] = value;
	}

	function createButtons(parent, array)
	{
		// parent を親レイヤとしてボタンを作成し、array に登録する。
		// ボタンは表画面と裏画面の両方に対して作成されるので注意。

		// ボタンを追加するには、これを参考にして いろいろ追加してください。

		var obj;

		//シーン回想中に別のボタン画像読み込もうと思ったけど上手くいかないでやめる。
		//ボタン画像は縦に4のまま。ディシーぶる中も見た目は通常のボタンしておく

//なんか今までの並びおかしいから変える
//mm 並び順はここの読み込み順か？
		array.add(obj = new SystemButtonLayer(kag, parent, onSaveButtonClick));
		obj.loadImages('game_save.png'); // SAVE ボタン用画像を読み込む
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "セーブする";

		array.add(obj = new SystemButtonLayer(kag, parent, onQuickSaveButtonClick));
		obj.loadImages('game_Qsave.png'); // クイックセーブ用画像を読み込む
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "クイックセーブ";

		array.add(obj = new SystemButtonLayer(kag, parent, onSkipButtonClick));
		obj.loadImages('game_skip.png'); // SKIP ボタン用画像を読み込む
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "次の選択肢/未読まで進む";

		array.add(obj = new SystemButtonLayer(kag, parent, onConfigButtonClick));
		obj.loadImages('game_config.png'); // CONFIG ボタン用画像を読み込む
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "ゲーム設定";

		array.add(obj = new SystemButtonLayer(kag, parent, onTitleButtonClick));
		obj.loadImages('game_quit.png'); // TITLE ボタン用画像を読み込む
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "タイトルへ戻る";

//		array.add(obj = new SystemButtonLayer(kag, parent, onVoiceButtonClick));
//		obj.loadImages('game_voice.png'); // "; ボイス再生ボタン用画像を読み込む
//		obj.hint = "ボイス再生";

		array.add(obj = new SystemButtonLayer(kag, parent, onLoadButtonClick));
		obj.loadImages('game_load.png'); // LOAD ボタン用画像を読み込む
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "ロードする";

		array.add(obj = new SystemButtonLayer(kag, parent, onQuickLoadButtonClick));
		obj.loadImages('game_Qload.png'); // クイックロード用画像を読み込む
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "クイックロード";

		array.add(obj = new SystemButtonLayer(kag, parent, onAutoButtonClick));
		obj.loadImages('game_auto.png'); // AUTO ボタン用画像を読み込む
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "自動的に読み進む";

		array.add(obj = new SystemButtonLayer(kag, parent, onLogButtonClick));
		obj.loadImages('game_log.png'); // LOG ボタン用画像を読み込む
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "メッセージ履歴の表示";

		array.add(obj = new SystemButtonLayer(kag, parent, onCloseButtonClick));
		obj.loadImages('game_window_hide.png'); // CLOSE ボタン用画像を読み込む
//		obj.width = 81;
//		obj.height = 72;
//		obj.hint = "メッセージを消す";

	}

	function realign()
	{
		// ボタンの再配置
		// このメソッドは、ボタンを x y 位置から横一列に配置する
		var fore, back, count, btn_x, btn_y;


		count = foreButtons.count;
		btn_x = 0;
//ボタン2列用
			btn_y = 0;
			var btwidth = 81;
			var btheight = 72;
		for(var i = 0; i < count; i++)
		{


			var xpos = btn_x + x;
//ボタン2列用
			var ypos = btn_y + y;
			var obj;



			obj = backButtons[i];
//ボタン2列用
			obj.setPos(xpos, ypos);
//////////////			obj.setPos(xpos, y);
			obj.absolute = 2000000-3; // 重ね合わせ順序はメッセージ履歴よりも奥

			obj = foreButtons[i];
//ボタン2列用
			obj.setPos(xpos, ypos);
//////////////			obj.setPos(xpos, y);
			obj.absolute = 2000000-3;

			//mine:システムボタン配置設定　あとで要調整
//////////////			btn_x += obj.width+sf.sysbt_offset;		// オフセット。ボタン間を空ける時はこの項目を変更
			btn_y += obj.height+sf.sysbt_offset;		// オフセット。ボタン間を空ける時はこの項目を変更

//ボタン2列用
			if(i == 4)
			{
			btn_x = 5 + obj.width;
			btn_y = 0;
			}
//ボタン2列用

		}
	}

	function onSaveButtonClick()
	{
		// SAVE ボタンが押された
		// 現在のファイルとラベルを保存
//		f.ksStorageSys = (kag.conductor.curStorage);
//		f.ksLabelSys = (kag.conductor.curLabel);
//右クリックで画面遷移した場合にフラグを保存できないので、保存処理pcmsマクロ内でやる。

		kag.callExtraConductor("systembutton_sub.ks", "*sys_save");
	}

	function onLoadButtonClick()
	{
		// LOAD ボタンが押された
		// 現在のファイルとラベルを保存
//		f.ksStorageSys = (kag.conductor.curStorage);
//		f.ksLabelSys = (kag.conductor.curLabel);
//右クリックで画面遷移した場合にフラグを保存できないので、保存処理pcmsマクロ内でやる。



		kag.callExtraConductor("systembutton_sub.ks", "*sys_load");
//↓これなんだっけ？
onStableStateChanged(kag.inStable);	}

	function onAutoButtonClick()
	{

		// AUTO ボタンが押された
		kag.enterAutoMode();
	}

	function onSkipButtonClick()
	{

		// SKIP ボタンが押された
		kag.skipToStop();

	}

	function onLogButtonClick()
	{
		// LOG ボタンが押された
	//	kag.callExtraConductor("systembutton_sub.ks", "*sys_log");
	//うーんとりあえずボタン押したときは消せたけど復帰させたりマウススクロールに対応するの面倒だなぁ
		kag.onShowHistoryMenuItemClick(kag);
	}




	function onConfigButtonClick()
	{
		// 現在のファイルとラベルを保存
//		f.ksStorageSys = (kag.conductor.curStorage);
//		f.ksLabelSys = (kag.conductor.curLabel);
//右クリックで画面遷移した場合にフラグを保存できないので、保存処理pcmsマクロ内でやる。

		// CONFIG ボタンが押された
		kag.callExtraConductor("systembutton_sub.ks", "*sys_config");
	}

	//function onExitButtonClick()
	//{
		// EXIT ボタンが押された
	//	kag.callExtraConductor("systembutton_sub.ks", "*sys_exit");
	//}

	function onCloseButtonClick()
	{
		// CLOSE ボタンが押された
		//kag.onPrimaryRightClick();
		//m 右クリックを呼び出すとコンフィグで機能を変えてる場合に、
		//windowを隠さずにセーブ画面とかにjumpしてしまうのでMainWindow.tjsの
		//windowを隠すファンクションを呼び出すことにする　2015/01/06
		//選択肢が表示中でないなら実行
		if(f.selnow == 0)
		{
		kag.hideMessageLayerByUser();
		}
	}

	function onTitleButtonClick()
	{
		// TITLE ボタンが押された
		//kag.callExtraConductor("systembutton_sub.ks", "*sys_title");

		//mm Noを押した時にバックログが使えないままになるのでdialog.ksを経由しないでメニューを呼ぶ　2018/05/06
		kag.onGoToStartMenuItemClick(kag);

//		// ダイアログオンならダイアログサブルーチンに飛ばす条件追加　オフなら直でsystembutton_subへ
//		if(sf.dialog_on == 1)
//		{
//			//モードごとに分岐さしたけど、最終的な戻り処理はtitle.ksの頭にあるから同じ飛び先でいいのでは？
//			//	if(tf.scene_mode == 1)
//			//	{
//			//	tf.dialog_game_title = 1;
//			//	kag.callExtraConductor("dialog.ks");
//			//	//Noを押したらここに戻ってゲームにreturn
//			//	return;
//			//	}
//			//	else
//			//	{
//			tf.dialog_game_title = 1;
//			kag.callExtraConductor("dialog.ks");
//			//Noを押したらここに戻ってゲームにreturn
//			return;
//			//	}
//		}
//		else
//		{
//
//			//	if(tf.scene_mode == 1)
//			//	{
//			//	//kag.callExtraConductor("systembutton_sub.ks", "*sys_title");
//			//	kag.callExtraConductor("dialog.ks", "*ゲーム中システムボタンタイトル_ダイアログオフ");
//			//	}
//			//	else
//			//	{
//			//kag.callExtraConductor("systembutton_sub.ks", "*sys_title");
//			kag.callExtraConductor("dialog.ks", "*ゲーム中システムボタンタイトル_ダイアログオフ");
//			//	}
//		}
	}







//	function onSceneButtonClick()
//	{
//		// TITLE ボタンが押された
//		kag.callExtraConductor("systembutton_sub.ks", "*sys_scene");
//	}


	function onVoiceButtonClick()
	{
		// ボイスボタンが押された
//		kag.se[f.lastbuf].play(%[storage:f.lastVoice]) if kag.se[0].status == 'play';
//	;	↑だと動作しないので↓に書き換え
		if(f.lastVoice != '') kag.se[f.lastbuf].play(%[storage:f.lastVoice]); 
		return;

	}

	function setOptions(elm)
	{
		// オプションを設定
		setObjProp(foreButtons, 'visible', foreSeen = +elm.forevisible) if elm.forevisible !== void;
		setObjProp(backButtons, 'visible', backSeen = +elm.backvisible) if elm.backvisible !== void;
		var poschanged = false;
		(x = +elm.left, poschanged = true) if elm.left !== void;
		(y = +elm.top, poschanged = true) if elm.top !== void;
		if(poschanged) realign(); // 表示位置の変更
	}

	function onStore(f, elm)
	{
		// 栞を保存するとき
		var dic = f.systemButtons = %[];
			// f.systemButtons に辞書配列を作成
		dic.foreVisible = foreSeen;
		dic.backVisible = backSeen;
		dic.left = x;
		dic.top = y;
			// 各情報を辞書配列に記録
	}

	function onRestore(f, clear, elm)
	{
		// 栞を読み出すとき
		var dic = f.systemButtons;
		if(dic === void)
		{
			// systemButtons の情報が栞に保存されていない
			setObjProp(foreButtons, 'visible', foreSeen = false);
			setObjProp(backButtons, 'visible', backSeen = false);
		}
		else
		{
			// systemButtons の情報が栞に保存されている
			setOptions(%[ forevisible : dic.foreVisible, backvisible : dic.backVisible,
				left : dic.left, top : dic.top]);
				// オプションを設定
		}
	}

	function onStableStateChanged(stable)
	{
		// 「安定」( s l p の各タグで停止中 ) か、
		// 「走行中」 ( それ以外 ) かの状態が変わったときに呼ばれる

		// 走行中は各ボタンを無効にする
		setObjProp(foreButtons, 'enabled', stable);
		setObjProp(backButtons, 'enabled', stable);


		if (stable) {
			// 安定していても、以下の状態になっている場合、対応するボタンをディセーブルにする
			// ‐historyタグでメッセージ履歴が抑止
			// ‐disablestore/storeタグでセーブ／ロードが抑止
			if (!kag.historyEnabled)
				foreButtons[IndexHistory].enabled = backButtons[IndexHistory].enabled = false;
			if (!kag.canStore())
				foreButtons[IndexSave].enabled = backButtons[IndexSave].enabled = false;
			if (!kag.canRestore())
				foreButtons[IndexLoad].enabled = backButtons[IndexLoad].enabled = false;
			// 回想中も抑止
			if (tf.scene_mode)
				foreButtons[IndexQsave].enabled = backButtons[IndexQsave].enabled = false;
			if (tf.scene_mode)
				foreButtons[IndexQload].enabled = backButtons[IndexQload].enabled = false;
			// ダイアログ中も抑止
//			if (tf.dialog_now)
//				foreButtons[IndexTitle].enabled = backButtons[IndexTitle].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexSkip].enabled = backButtons[IndexSkip].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexAuto].enabled = backButtons[IndexAuto].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexSave].enabled = backButtons[IndexSave].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexLoad].enabled = backButtons[IndexLoad].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexConfig].enabled = backButtons[IndexConfig].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexQsave].enabled = backButtons[IndexQsave].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexQload].enabled = backButtons[IndexQload].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexHistory].enabled = backButtons[IndexHistory].enabled = false;
			if (tf.dialog_now)
				foreButtons[IndexHide].enabled = backButtons[IndexHide].enabled = false;

			//if (!kag.enterAutoMode)
			//ここでなんか上手いことするとAUTO走行中にボタン帰られrそうだけど……。
			//こうか？
			//	foreButtons[IndexAuto].enabled = backButtons[IndexAuto].enabled = false;

		}
	}

	function onMessageHiddenStateChanged(hidden)
	{
		// メッセージレイヤがユーザの操作によって隠されるとき、現れるときに
		// 呼ばれる。メッセージレイヤとともに表示/非表示を切り替えたいときは
		// ここで設定する。
		if(hidden)
		{
			setObjProp(foreButtons, 'visible', false);
			setObjProp(backButtons, 'visible', false);
		}
		else
		{
			// foreSeen, backSeen は、ボタンが本来表示中であったかどうかを記録している
			setObjProp(foreButtons, 'visible', foreSeen);
			setObjProp(backButtons, 'visible', backSeen);
		}
	}

	function onCopyLayer(toback)
	{
		// レイヤの表←→裏の情報のコピー

		// backlay タグやトランジションの終了時に呼ばれる

		// ここでレイヤに関してコピーすべきなのは
		// 表示/非表示の情報だけ

		if(toback)
		{
			// 表→裏
			setObjProp(backButtons, 'visible', foreButtons[0].visible);
			backSeen = foreSeen;
		}
		else
		{
			// 裏→表
			setObjProp(foreButtons, 'visible', backButtons[0].visible);
			foreSeen = backSeen;
		}
	}

	function onExchangeForeBack()
	{
		// 裏と表の管理情報を交換

		// children = true のトランジションでは、トランジション終了時に
		// 表画面と裏画面のレイヤ構造がそっくり入れ替わるので、
		// それまで 表画面だと思っていたものが裏画面に、裏画面だと思って
		// いたものが表画面になってしまう。ここのタイミングでその情報を
		// 入れ替えれば、矛盾は生じないで済む。

		// ここで表画面、裏画面のレイヤに関して管理すべきなのは
		// foreButtons と backButton 、foreSeen と backSeen の変数だけ
		var tmp;

		tmp = backButtons;
		backButtons = foreButtons;
		foreButtons = tmp;

		tmp = backSeen;
		backSeen = foreSeen;
		foreSeen = tmp;
	}


	function onQuickSaveButtonClick()

//	{
//	//クイックセーブのサムネにセーブマスクが乗らないのでサブルーチンに飛ばしてセーブする
//	kag.callExtraConductor("systembutton_sub.ks", "*sys_Qsave");
//	}

	{
	  if (kag.canStore())
	// 確認ダイヤログ有りにするならfalseを消す


//通常		if(sf.dialog_on)
//通常		{
//通常		kag.storeBookMark(kag.numBookMarks-1,false);  // クイックセーブ
//通常		}
//通常		else
//通常		{
//通常		kag.storeBookMark(kag.numBookMarks-1,false);  // クイックセーブ
//通常		}

		//邪淫用は枠を変数にしただけ
		if(sf.dialog_on)
		{
		kag.storeBookMark(sf.QsaveNo,false);  // クイックセーブ
		}
		else
		{
		kag.storeBookMark(sf.QsaveNo,false);  // クイックセーブ
		}



		//クイックセーブ演出をしにいく
		kag.callExtraConductor("systembutton_sub.ks", "*sys_Qsave");
	}


	function onQuickLoadButtonClick()
	{
	  if (kag.canRestore())

		//無条件でオンにしちゃうとデータ無い時にもフラグオンのままになってタイトル→ゲームスタートで暴発するから
		//データ無いときは立てない
		//邪淫用は枠を変数にしただけ
//		if (kag.getBookMarkDate(kag.numBookMarks-1) != '')
		if (kag.getBookMarkDate(sf.QsaveNo) != '')
		{
			tf.QuickLoad = 1;
		}

		//ログ多重出力よけの判定の為のフラグ保存 ロードしたら消えちゃうからsfか
		sf.ksStorageSys_tmp = (kag.conductor.curStorage);
		//kag.conductor.currentLabelだとうまくいかない
		sf.ksLabelSys_tmp = (kag.currentLabel);
		
//通常		// 確認ダイヤログ有りにするならfalseを消す
//通常		if(sf.dialog_on)
//通常		{
//通常		//このフラグ立てておかないと右クリックが正しく設定されないわ2015/04/28
//通常		sf.ロード後右クリック未設定 = 1;
//通常		kag.restoreBookMark(kag.numBookMarks-1,false);  // クイックロード
//通常		}
//通常		else
//通常		{
//通常		//このフラグ立てておかないと右クリックが正しく設定されないわ2015/04/28
//通常		sf.ロード後右クリック未設定 = 1;
//通常		 kag.restoreBookMark(kag.numBookMarks-1,false);  // クイックロード
//通常		}

		//邪淫用は枠を変数にしただけ
		// 確認ダイヤログ有りにするならfalseを消す
		if(sf.dialog_on)
		{
		//このフラグ立てておかないと右クリックが正しく設定されないわ2015/04/28
		sf.ロード後右クリック未設定 = 1;
		kag.restoreBookMark(sf.QsaveNo,false);  // クイックロード
		}
		else
		{
		//このフラグ立てておかないと右クリックが正しく設定されないわ2015/04/28
		sf.ロード後右クリック未設定 = 1;
		 kag.restoreBookMark(sf.QsaveNo,false);  // クイックロード
		}



	}

}

kag.addPlugin(global.systembutton_object = new SystemButtonPlugin(kag));	// プラグインオブジェクトを作成し、登録する

@endscript
@endif
;
; マクロの登録
@macro name="sysbtopt"
@eval exp="systembutton_object.setOptions(mp)"
; mp がマクロに渡された属性を示す辞書配列オブジェクト
@endmacro
@return


