@if exp="typeof(global.stmove_object) == 'undefined'"
@iscript

/*
	背景/前景画像の拡大縮小移動効果による表示を行うプラグインver.1.0
*/

class stmovePlugin extends KAGPlugin
{
	var pluginName = "stmove";		// プラグインの名前

	var cx, cy;		// 回転中心

	var time;		// 描画時間
	var accel;		// 加速度的な動きを行うか ( 負 : 0 : 正 )

	var targetLayerName;		// 対象レイヤ名
	var targetLayer;		// 対象レイヤ
	var targetPage;		// 対象ページ（表／裏画面）
	var type;		// 描画レイヤータイプ
	var storage;		// 画像名
	var opa;		// 不透明度
	var index;		// 重ね合わせ順序
	var flipud;		// 上下反転
	var fliplr;		// 左右反転
	var blur;		// ブラーをかけるか
	var blur_x, blur_y;		// ブラーの強さ

	var tempLayer;		// テンポラリレイヤ

	var totalTime;		// 描画総時間
	var path_array = void;		// 移動位置用配列
	var pointCount;

	// スプライン補間
	var zx = [];		// スプラインワーク
	var zy = [];		// スプラインワーク
	var spline;		// スプライン補間を行うか

	var actionFunc;		// 移動位置計算関数

	var first = false;		// 始動判定フラグ
	var moving = false;		// 動作中フラグ
	var nextstop;		// 次回停止フラグ

	var startTick;		// 開始ティック
	var lasttick = 0;		// 前回ハンドラが描画開始した時間
	var processTime;		// stmove開始から終了までの時間

	function stmovePlugin(window)
	{
		super.KAGPlugin();
		this.window = window;
	}

	function finalize()
	{
		// finalize メソッド
		// このクラスの管理するすべてのオブジェクトを明示的に破棄
		stop();

		invalidate tempLayer if tempLayer !== void;

		super.finalize(...);
	}

	function startstmove(elm)
	{
		// storage : 表示画像
		// layer : 対象レイヤ
		// page : 対象ページ
		// opacity : 不透明度
		// path : 移動位置
		// cx, cy : 回転中心位置（画像上）
		// time : 描画を行っている時間
		// accel : 加速をつけるかどうか
		// blur : 画像をぼかすか
		// blur_x,blur_y : ブラーの強さ
		// spline : スプライン補間をするか

		this.processTime = System.getTickCount();

		var base = window.fore.base;

		// 既存の動作を停止
		stop();

		// 対象レイヤーの設定
		this.targetLayerName = elm.layer;

		// 対象ページの設定
		if(elm.page == "")
			this.targetPage = "fore";
		else
			this.targetPage = elm.page;

		// ブラーの強さの設定
		this.blur_x = elm.blur_x;
		this.blur_y = elm.blur_y;

		// テンポラリレイヤを確保
		{
			if(tempLayer === void)
			{
				// 元画像の設定
				this.storage = elm.storage;

				tempLayer = new Layer(window, base);

				//storageが指定されていない時は、対象レイヤーのpage=foreの画像を使用
				if(storage == "")
				{
					if(targetLayerName == 'base')
					{
							tempLayer.assignImages(window.fore.base);
					}
					else
					{
							tempLayer.assignImages(window.fore.layers[+targetLayerName]);
					}
				}
				else
				{
					tempLayer.loadImages(storage, clNone);
				}

				// 上下左右反転、ブラーの設定
				if(elm.flipud == "")
					this.flipud = false;
				else
					this.flipud = elm.flipud;

				if(elm.fliplr == "")
					this.fliplr = false;
				else
					this.fliplr = elm.fliplr;

				if(elm.blur == "")
					this.blur = false;
				else
					this.blur = elm.blur;


				if(flipud)
					tempLayer.flipUD();

				if(fliplr)
					tempLayer.flipLR();

				if(blur)
					tempLayer.doBoxBlur(blur_x, blur_y);
			}

			tempLayer.setSizeToImageSize();

		}

		// 対象レイヤを設定
		{
			// 重なり順序の設定
			this.index = elm.index;

			if(targetLayerName == 'base')
			{
				index = 0;
			}
			else
			{
				if(index == "")
					index = int(+targetLayerName * 1000 + 1000);
				else
					index = int(index);
			}

			// 対象レイヤー・ページ、レイヤープロパティの設定
			if(targetLayerName == 'base')
			{
				if(targetPage == 'back')
					this.targetLayer = window.back.base;
				else
					this.targetLayer = window.fore.base;

				targetLayer.type = ltOpaque;;
				targetLayer.face = dfOpaque;
				targetLayer.holdAlpha = false;

			}
			else
			{
				if(targetPage == 'back')
					this.targetLayer = window.back.layers[+targetLayerName];
				else
					this.targetLayer = window.fore.layers[+targetLayerName];

				this.type = (string)elm.type;

				switch(type)// Layer.typeを判定
				{
					case "ltOpaque":
						targetLayer.type = ltOpaque;
						break;

					case "ltAlpha":
						targetLayer.type = ltAlpha;
						break;

					case "ltAddAlpha":
						targetLayer.type = ltAddAlpha;
						break;

					case "ltAdditive":
						targetLayer.type = ltAdditive;
						break;

					case "ltSubtractive":
						targetLayer.type = ltSubtractive;
						break;

					case "ltMultiplicative":
						targetLayer.type = ltMultiplicative;
						break;

					case "ltDodge":
						targetLayer.type = ltDodge;
						break;

					case "ltDarken":
						targetLayer.type = ltDarken;
						break;

					case "ltLighten":
						targetLayer.type = ltLighten;
						break;

					case "ltScreen":
						targetLayer.type = ltScreen;
						break;

					case "ltPsNormal":
						targetLayer.type = ltPsNormal;
						break;

					case "ltPsAdditive":
						targetLayer.type = ltPsAdditive;
						break;

					case "ltPsSubtractive":
						targetLayer.type = ltPsSubtractive;
						break;

					case "ltPsMultiplicative":
						targetLayer.type = ltPsMultiplicative;
						break;

					case "ltPsScreen":
						targetLayer.type = ltPsScreen;
						break;

					case "ltPsOverlay":
						targetLayer.type = ltPsOverlay;
						break;

					case "ltPsHardLight":
						targetLayer.type = ltPsHardLight;
						break;

					case "ltPsSoftLight":
						targetLayer.type = ltPsSoftLight;
						break;

					case "ltPsColorDodge":
						targetLayer.type = ltPsColorDodge;
						break;

					case "ltPsColorDodge5":
						targetLayer.type = ltPsColorDodge5;
						break;

					case "ltPsColorBurn":
						targetLayer.type = ltPsColorBurn;
						break;

					case "ltPsLighten":
						targetLayer.type = ltPsLighten;
						break;

					case "ltPsDarken":
						targetLayer.type = ltPsDarken;
						break;

					case "ltPsDifference":
						targetLayer.type = ltPsDifference;
						break;

					case "ltPsDifference5":
						targetLayer.type = ltPsDifference5;
						break;

					case "ltPsExclusion":
						targetLayer.type = ltPsExclusion;
						break;

					default:
						targetLayer.type = ltAlpha;
				}

				// レイヤーtypeがltOpaqueなら、stFastLinear用にプロパティを設定
				if(targetLayer.type == ltOpaque)
				{
					targetLayer.face = dfOpaque;
					targetLayer.holdAlpha = false;
				}
				else
					targetLayer.face = dfAuto;

				targetLayer.setImageSize(base.imageWidth, base.imageHeight);
				targetLayer.setPos(0,0, base.imageWidth,base.imageHeight);
				targetLayer.absolute = index;
			}

			// 不透明度の設定
			this.opa = (elm.opacity !== void) ? +elm.opacity : 255;
			if(targetLayerName != 'base')
			{
				targetLayer.opacity = +opa;
			}

		}

		// オブジェクトにパラメータを設定
		{
			// 描画時間の設定、pathの分解
			if(elm.time == "")
				this.time = 1000;
			else
				this.time = (int)elm.time;

			this.path = elm.path;
			path_array = [].split("(), ", path, , true);

			var a = path_array.count - 1;
			for(var i = a; i>=0; i--)
				path_array[i] = +path_array[i];

			pointCount = (path_array.count \ 3) - 1;

			totalTime = pointCount * time;

			// 回転中心
			if(elm.cx == "" || elm.cx == 'c')
				this.cx = tempLayer.imageWidth \ 2;
			else if(typeof +cx == 'Real')
				this.cx = tempLayer.imageWidth * +elm.cx;
			else
				this.cx = (int)elm.cx;

			if(elm.cy == "" || elm.cy == 'c') 
				this.cy = tempLayer.imageHeight \ 2;
			else if(typeof +elm.cy == 'Real')
				this.cy = tempLayer.imageHeight * +elm.cy;
			else
				this.cy = (int)elm.cy;

			// 加速度の設定
			if(elm.accel == "")
				this.accel = 0;
			else
				this.accel = (real)elm.accel;
		}

		// スプライン設定
		if(elm.spline == "")
			this.spline = false ;
		else
			this.spline = elm.spline;

		// コンソールにstmoveの情報を出力
		dm('■stmove : layer = ' + targetLayerName + ' : spline = ' + spline+ ' : index = '+index);

		// スプライン補間を行うか？
		if(spline)
		{
			// 移動位置計算関数の設定
			if(path_array.count < 9)
			{
				// 3 点以下 ( 指定するのはそのうちの2点 ) は補完できない
				throw new Exception("2 点以上を指定してください");
			}

			// スプライン補間に必要なワークを計算
			var points = path_array.count \ 3;
			var tmpx = [], tmpy = [];
			var tx = zx, ty = zy;
			tx[0] = 0;
			ty[0] = 0;
			tx[points-1] = 0;
			ty[points-1] = 0;

			for(var i = points-2, pi = path_array.count-6; i >= 0; i--, pi -= 3)
			{
				tmpx[i+1] = (path_array[pi + 3] - path_array[pi  ]);
				tmpy[i+1] = (path_array[pi + 4] - path_array[pi+1]);
			}

			tx[1] = tmpx[2] - tmpx[1] - tx[0];
			ty[1] = tmpy[2] - tmpy[1] - ty[0];

			tmpx[1] = 4;
			tmpy[1] = 4;

			var lim = points - 2;
			for(var i = 1, pi = 3; i < lim; i++, pi += 3)
			{
				var x = 1 / tmpx[i];
				var y = 1 / tmpy[i];
				tx[i+1] = tmpx[i+2] - tmpx[i+1] - tmpx[i] * x;
				ty[i+1] = tmpy[i+2] - tmpy[i+1] - tmpy[i] * y;
				tmpx[i+1] = 4 - x;
				tmpy[i+1] = 4 - y;
			}

			tx[points-2] -= tx[points-1];
			ty[points-2] -= ty[points-1];

			for(var i = points-2, pi = path_array.count-6; i>0; i--, pi -= 3)
			{
				tx[i] = (tx[i] - tx[i+1]) / tmpx[i];
				ty[i] = (ty[i] - ty[i+1]) / tmpy[i];
			}

			// 移動位置計算関数の設定
			actionFunc = splineMover;

		}
		else
		{
			// 移動位置計算関数の設定
			actionFunc = defaultMover;
		}

		// 描画の開始
		if(time <= 0)// timeが0以下ならすぐに終了処理へ
			targetLayer.visible = true,finish();
		else
		{
			// 初期位置に表示
			actionFunc(0);
			targetLayer.visible = true;

			// 開始
			first = true;
			System.addContinuousHandler(continuousHandler);
			moving = true;
			nextstop = false;
		}
	}

	// スプライン補間用、移動位置計算関数
	/*static*/ function splineMover(tick)
	{
		var inde;
		var pindex = (inde = tick \ time) * 3;
		var d = tick % time / time;

		var p = path_array;

		var l = (((zx[inde+1] - zx[inde])*d +
				zx[inde]*3)*d +
				((p[pindex + 3] - p[pindex]) -
				(zx[inde]*2 + zx[inde+1]))) * d +
				p[pindex];

		var t = (((zy[inde+1] - zy[inde])*d +
				zy[inde]*3)*d +
				((p[pindex + 4] - p[pindex+1]) -
				(zy[inde]*2 + zy[inde+1]))) * d +
				p[pindex+1];

		var sm = p[pindex+2];
		var em = p[pindex+5];

		var s = (em - sm) * d + sm;

		var m00, m01, mtx, mty;

		m00 = tempLayer.imageWidth * s;
		m01 = tempLayer.imageHeight * s;
		mtx = -(cx) * s + l;
		mty = -(cy) * s + t;

		// m00 m01 mtx mty 位置に移動
		targetLayer.visible = true;

		// レイヤを一度クリアする
		targetLayer.fillRect(0,0, targetLayer.imageWidth,targetLayer.imageHeight, 0);

		// 拡大縮小転送
		if(targetLayer.type == ltOpaque)
		{
			dm("stFastLinear");
			targetLayer.operateStretch(mtx, mty, m00, m01, 
tempLayer, 0, 0, tempLayer.imageWidth, tempLayer.imageHeight, omOpaque, 255, stFastLinear);
		}
		else
		{
			targetLayer.operateStretch(mtx, mty, m00, m01, 
tempLayer, 0, 0, tempLayer.imageWidth, tempLayer.imageHeight, omAuto, 255, stNearest);
		}
	}

	// 通常用、移動位置計算関数
	/*static*/ function defaultMover(tick)
	{
		// 位置計算

		var indexM = tick \ time * 3;
		var ratio = tick % time / time;
		var p = path_array;
		var sx = p[indexM];
		var sy = p[indexM+1];
		var sm = p[indexM+2];
		var ex = p[indexM+3];
		var ey = p[indexM+4];
		var em = p[indexM+5];

		var s = (em - sm) * ratio + sm;
		var x = (ex - sx) * ratio + sx;
		var y = (ey - sy) * ratio + sy;

		var m00, m01, mtx, mty;
		m00 = tempLayer.imageWidth * s;
		m01 = tempLayer.imageHeight * s;
		mtx = -(cx) * s + x;
		mty = -(cy) * s  +y;

		// m00 m01  mtx mty 位置に移動

		targetLayer.visible = true;

		// レイヤを一度クリアする
		targetLayer.fillRect(0,0, targetLayer.imageWidth,targetLayer.imageHeight, 0);

		// 拡大縮小転送
		if(targetLayer.type == ltOpaque)// レイヤータイプがltOpaqueならstFastLinear(線形補間)
		{
			dm("stFastLinear");
			targetLayer.operateStretch(mtx, mty, m00, m01, 
tempLayer, 0, 0, tempLayer.imageWidth, tempLayer.imageHeight, omOpaque, 255, stFastLinear);
		}
		else
		{
			targetLayer.operateStretch(mtx, mty, m00, m01, 
tempLayer, 0, 0, tempLayer.imageWidth, tempLayer.imageHeight, omAuto, 255, stNearest);
		}
	}

	function continuousHandler(tick)
	{
		// 移動中に呼ばれる
		if(nextstop) { finish();  return; }
		if(first) startTick = tick, first = false;
		tick -= startTick;
		if(tick >= totalTime)
		{
			nextstop = true;
			return;
		}

		var intervalTime = System.getTickCount() - lasttick;

		if(intervalTime > 15)// ハンドラが15ms以内に呼ばれたら、描画しない
		{

			if(accel < 0)
			{
				// 上弦 ( 最初が動きが早く、徐々に遅くなる )
				tick = 1.0 - tick / totalTime;
				tick = Math.pow(tick, -accel);
				tick = int ( (1.0 - tick) * totalTime );
			}
			else if(accel > 0)
			{
				// 下弦 ( 最初は動きが遅く、徐々に早くなる )
				tick = tick / totalTime;
				tick = Math.pow(tick, accel);
				tick = int (tick * totalTime);
			}

			lasttick = System.getTickCount();

			// 移動
			actionFunc(tick);
		}
	}

	function finish()
	{
		// 最終位置に移動
		var idx = int(pointCount * 3);
		var pz = path_array;

		var m00, m01, mtx, mty;
		m00 = tempLayer.imageWidth * pz[idx+2];
		m01 = tempLayer.imageHeight * pz[idx+2];
		mtx = -(cx) * pz[idx+2] + pz[idx];
		mty = -(cy) * pz[idx+2] + pz[idx+1];

		targetLayer.visible = true;

		// レイヤを一度クリアする
		targetLayer.fillRect(0,0, targetLayer.imageWidth,targetLayer.imageHeight, 0);

		// 拡大縮小転送
		if(targetLayer.type == ltOpaque)// レイヤータイプがltOpaqueならstFastLinear(線形補間)
		{
			dm("stFastLinear");
			targetLayer.operateStretch(mtx, mty, m00, m01, 
tempLayer, 0, 0, tempLayer.imageWidth, tempLayer.imageHeight, omOpaque, 255, stFastLinear);
		}
		else
		{
			targetLayer.operateStretch(mtx, mty, m00, m01, 
tempLayer, 0, 0, tempLayer.imageWidth, tempLayer.imageHeight, omAuto, 255, stNearest);
		}

		// 回転ズームの終了
		stop(); // 停止
	}

	function stop()
	{
		// 停止
		if(moving)
		{
			window.trigger(pluginName);
			System.removeContinuousHandler(continuousHandler);
			moving = false;
			dm("■stmove実行時間 :"+ (System.getTickCount() - processTime) +"ms■");
		}

		invalidate tempLayer if tempLayer !== void;
		tempLayer = void;
		targetLayer = void;
	}

	function onStore(f, elm)
	{
	}

	function onRestore(f, clear, elm)
	{
		// 栞を読み出すとき
		stop(); // 動作を停止
	}

	function onStableStateChanged(stable)
	{
	}

	function onMessageHiddenStateChanged(hidden)
	{
	}

	function onCopyLayer(toback)
	{
	}

	function onExchangeForeBack()
	{
	}
}

// プラグインオブジェクトを作成し、登録する
kag.addPlugin(global.stmove_object = new stmovePlugin(kag));

@endscript
@endif

; マクロ登録
@macro name="stmove"
;skipModeが2以上のときは描画しない
;@eval exp="mp.time = 0" cond="kag.skipMode >= 2"
@eval exp="mp.time = 0"
@eval exp="stmove_object.startstmove(mp)"
@endmacro
;
@macro name="wstmove"
@if exp="stmove_object.moving"
;@eval exp="stmove_object.finish()" cond="kag.skipMode >= 2"
@eval exp="stmove_object.finish()"
@waittrig * name="stmove" onskip="stmove_object.finish()" canskip=%canskip|true
@endif
@endmacro
;
@macro name=wsm
@wstmove *
@endmacro
;
@return