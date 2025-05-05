@if exp="typeof(global.affine_object) == 'undefined'"
@iscript

/*
	背景/前景画像の拡大縮小効果による表示を行うプラグインver.1.1
*/

class AffinePlugin extends KAGPlugin
{
	var pluginName = "affine";		// プラグインの名前

	var cx, cy;		// 回転中心

	var srot, smag, sx, sy;		// 初期位置
	var drot, dmag, dx, dy;		// 最終位置

	var time;		// 描画時間
	var accel;		// 加速度的な動きを行うか ( 負 : 0 : 正 )

	var storage;		// 画像名
	var index;		// 重ね合わせ順序
	var type;		// 描画レイヤータイプ
	var targetLayerName;		// 対象レイヤー名
	var targetLayer;		// 対象レイヤー
	var targetPage;		// 対象ページ（表／裏画面）
	var opa;		// 不透明度
	var flipud;		// 上下反転
	var fliplr;		// 左右反転
	var blur;		// ブラーをかけるか
	var blur_x, blur_y;		// ブラーの強さ

	var blur_inout;		// blur_inoutモード
	var fade;		// fadeモード

	var path;		// 移動位置

	var tempLayer;		// テンポラリレイヤ

	var actionFunc;		// 移動位置計算関数

	var moving = false;		// 動作中フラグ
	var nextstop;		// 次回停止フラグ

	var startTick;		// 開始ティック
	var processTime;		// affine開始から終了までの時間
	var lastTick = 0;		// 前回ハンドラが描画開始した時間

	function AffinePlugin(window)
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

	function startaffine(elm)
	{
		// storage : 表示画像
		// layer : 対象レイヤ
		// page : 対象ページ
		// cx, cy : 回転中心位置（画像上）
		// path : 移動位置
		// srot smag sx sy : 初期角度、初期倍率、初期位置
		// drot dmag dy dy : 最終角度、最終倍率、最終位置
		// time : 描画を行っている時間
		// accel : 加速をつけるかどうか
		// opacity : 不透明度
		// fade : fadeモード(徐々に画像が消えていくor現れる)
		// blur : 画像をぼかすか
		// blur_inout : blur_inoutモード(徐々に画像がぼかされるかorはっきるするか)
		// blur_x,blur_y : ブラーの強さ

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
			// 元画像の設定
			this.storage = elm.storage;

			if(tempLayer === void)
			{
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
					tempLayer.loadImages(this.storage, clNone);
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
			else if(index == "")
			{
				index = int(+targetLayerName * 1000 + 1000);
			}
			else
			{
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
		}

		{
			// 不透明度の設定
			this.opa = (elm.opacity !== void) ? +elm.opacity : 255;
			if(targetLayerName != 'base')
			{
				targetLayer.opacity = +opa;
			}

			// fadeモードの設定
			if(elm.fade == "")
				this.fade = false;
			else
				this.fade = elm.fade;

			// ブラーイン・アウトモードの設定
			if(elm.blur_inout == "")
				this.blur_inout = false;
			else
				this.blur_inout = elm.blur_inout;

			// pathを分解
			this.path = elm.path;
			var array = [].split("(), ", path, , true);
		
			this.sx = array[0];
			this.sy = array[1];
			this.dx = array[2];
			this.dy = array[3];

			// 回転中心の設定
			if(elm.cx == "" || elm.cx == 'c')
				this.cx = tempLayer.imageWidth \ 2;
			else if( typeof +elm.cx == 'Real')
				this.cx = tempLayer.imageWidth * +elm.cx;
			else
				this.cx = (int)elm.cx;
			
			if(elm.cy == "" || elm.cy == 'c')
				this.cy = tempLayer.imageHeight \ 2;
			else if( typeof +elm.cy == 'Real')
				this.cy = tempLayer.imageHeight * +elm.cy;
			else
				this.cy = (int)elm.cy;
			
			// 初期位置の設定
			if(elm.srot == "")
				this.srot = (real)0;
			else if( typeof +elm.srot == 'Real')
				this.srot = Math.PI * +elm.srot;
			else
				this.srot = +elm.srot;

			if(elm.smag == "")
				this.smag = (int)1;
			else
				this.smag = (real)elm.smag;
			
			if(sx == "" || sx == 'c')
				sx = targetLayer.imageWidth / 2;
			else if( typeof +sx == 'Real')
				sx = targetLayer.imageWidth * +sx;
			else
				sx = (int)sx;
			
			if(sy == "" || sy == 'c')
				sy = targetLayer.imageHeight / 2;
			else if( typeof +sy == 'Real')
				sy = targetLayer.imageHeight * +sy;
			else
				sy = (int)sy;
			
			// 最終位置の設定
			if(elm.drot == "")
				this.drot = (real)0;
			else if( typeof +elm.drot == 'Real')
				this.drot = Math.PI * +elm.drot;
			else
				this.drot = +elm.drot;
			
			if(elm.dmag == "")
				this.dmag = (int)1;
			else
				this.dmag = (real)elm.dmag;
			
			if(dx == "")
				dx = sx;
			else if(dx == 'c')
				dx = targetLayer.imageWidth / 2;

			else if( typeof +dx == 'Real')
				dx = targetLayer.imageWidth * +dx;
			else
				dx = (int)dx;

			if(dy == "")
				dy = sy;
			else if(dy == 'c')
				dy = targetLayer.imageHeight / 2;
			else if( typeof +dy == 'Real')
				dy = targetLayer.imageHeight * +dy;
			else
				dy = (int)dy;

			// 描画時間の設定
			if(elm.time == "")
				this.time = 1000;
			else
				this.time = (int)elm.time;

			// 加速度の設定
			if(elm.accel == "")
				this.accel = 0;
			else
				this.accel = (real)elm.accel;
		}

		// コンソールにaffineの情報を出力
		dm("■affine : layer = " + targetLayerName + "; page = " + targetPage + "; storage = " + storage + ";
 time = " + time + "; (cx,cy) = " + "("+cx+","+cy+")");

		// 移動位置計算関数の設定
		if(srot == 0 && drot == 0)// 回転しないならoperateStretchを使用
		{
			actionFunc = stretchMover;
			dm("■operateStretch");
		}
		else
		{
			actionFunc = affineMover;
			dm("■operateAffine : srot = " + srot + "; drot =" + drot);
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
			startTick = System.getTickCount();
			System.addContinuousHandler(continuousHandler);
			moving = true;
			nextstop = false;
		}
	}

	// 通常用、移動位置計算関数
	/*static*/ function affineMover(tm)
	{
		// 位置計算
		// tm は 0.0(開始点) ～ 1.0(終了点) の間で変化する変数なので、
		// これを元にして位置を計算する
		var r = (drot - srot) * tm + srot;
		var s = (dmag - smag) * tm + smag;
		var tx = (dx - sx) * tm + sx;
		var ty = (dy - sy) * tm + sy;

		var rc = Math.cos((Math.PI/180) * r);
		var rs = Math.cos((Math.PI / 2) - (Math.PI/180) * r);

		var m00, m01, m10, m11, mtx, mty;  // アフィン変換行列パラメータ
		m00 = s * rc;
		m01 = s * -rs;
		m10 = s * rs;
		m11 = s * rc;
		mtx = (m00*-cx) + (m10*-cy) + tx;
		mty = (m01*-cx) + (m11*-cy) + ty;

		// fadeモード用不透明度の計算
		var opa2;

		if(fade == 'in')
		{
			opa2 = int(( 255 * tm));
		}
		else if(fade == 'out')
		{
			opa2 = int(255 - ( 255 * tm));
		}
		else
		{
			opa2 = 255;
		}

		// blur_inoutモード用ブラーの強さの計算
		var bx, by;

		if(blur_inout == 'in' || blur_inout == 'out')
		{
			if(blur_inout == 'in')
			{
				bx = int(blur_x - (blur_x * tm));
				by = int(blur_y - (blur_y * tm));
			}
			else
			{
				bx = int(blur_x * tm);
				by = int(blur_y * tm);
			}
		}

		// m00 m01 m10 m11 mtx mty 位置に移動
		targetLayer.visible = true;

		// レイヤーを一度クリアする
		targetLayer.fillRect( 0,0, targetLayer.imageWidth,targetLayer.imageHeight, 0 );

		// アフィン変換転送
		if(targetLayer.type == ltOpaque)// レイヤータイプがltOpaqueならstFastLinear(線形補間)
		{
			dm("stFastLinear");
			targetLayer.operateAffine(
					tempLayer, 0, 0, tempLayer.imageWidth, tempLayer.imageHeight, 'true',
					m00, m01, m10, m11, mtx, mty, omOpaque, opa2, stFastLinear);
		}
		else
		{
			targetLayer.operateAffine(
					tempLayer, 0, 0, tempLayer.imageWidth, tempLayer.imageHeight, 'true',
					m00, m01, m10, m11, mtx, mty, omAuto, opa2, stNearest);
		}

		// blur_inoutモードなら、ブラーを実行
		if(blur_inout == 'in' || blur_inout == 'out')
			targetLayer.doBoxBlur(bx, by);
	}

	// 無回転用、移動位置計算関数
	/*static*/ function stretchMover(tm)
	{
		// 位置計算
		// tm は 0.0(開始点) ～ 1.0(終了点) の間で変化する変数なので、
		// これを元にして位置を計算する
		var s = (dmag - smag) * tm + smag;
		var tx = (dx - sx) * tm + sx;
		var ty = (dy - sy) * tm + sy;

		var m00, m01, mtx, mty;

		m00 = tempLayer.imageWidth * s;
		m01 = tempLayer.imageHeight * s;
		mtx = (-cx) * s + tx;
		mty = (-cy) * s + ty;

		// fadeモード用不透明度の計算
		var opa2;

		if(fade == 'in')
		{
			opa2 = int(( 255 * tm));
		}
		else if(fade == 'out')
		{
			opa2 = int(255 - ( 255 * tm));
		}
		else
		{
			opa2 = 255;
		}

		// blur_inoutモード用ブラーの強さの計算
		var bx, by;

		if(blur_inout == 'in' || blur_inout == 'out')
		{
			if(blur_inout == 'in')
			{
				bx = int(blur_x - (blur_x * tm));
				by = int(blur_y - (blur_y * tm));
			}
			else
			{
				bx = int(blur_x * tm);
				by = int(blur_y * tm);
			}
		}

		// m00 m01 mtx mty 位置に移動
		targetLayer.visible = true;

		// レイヤーを一度クリアする
		targetLayer.fillRect( 0,0, targetLayer.imageWidth,targetLayer.imageHeight, 0 );

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

		// blur_inoutモードなら、ブラーを実行
		if(blur_inout == 'in' || blur_inout == 'out')
			targetLayer.doBoxBlur(bx, by);
	}

	function continuousHandler(tick)
	{
		// ハンドラ
		if(nextstop)
		{
			// 終了
			finish();
			return;
		}

		// 時間を得る
		var tm = tick - startTick;
		tm /= time;
		if(tm >= 1)
		{
			// 描画終了フラグON
			nextstop = true;
			tm = 1;
			return;
		}
		else
		{
			var intervalTime = System.getTickCount() - lastTick;

			if(intervalTime > 15)// ハンドラが15ms以内に呼ばれたら、描画しない
			{
				// 加速計算
				if(accel < 0)
				{
					// 上弦 ( 最初が動きが早く、徐々に遅くなる )
					tm = 1.0 - tm;
					tm = Math.pow(tm, -accel);
					tm = 1.0 - tm;
				}
				else if(accel > 0)
				{
					// 下弦 ( 最初は動きが遅く、徐々に早くなる )
					tm = Math.pow(tm, accel);
				}

				lastTick = System.getTickCount();

				// 移動
				actionFunc(tm);
			}
		}
	}

	function finish()
	{
		// 最終位置に移動
		actionFunc(1.0);

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
			dm("■affine実行時間 :"+ (System.getTickCount() - processTime) +"ms■");
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
kag.addPlugin(global.affine_object = new AffinePlugin(kag));

@endscript
@endif

; マクロ登録
@macro name="affine"
;skipModeが2以上のときは描画しない
@eval exp="mp.time = 0" cond="kag.skipMode >= 2"
@eval exp="affine_object.startaffine(mp)"
@endmacro
;
@macro name="waffine"
@if exp="affine_object.moving"
@eval exp="affine_object.finish()" cond="kag.skipMode >= 2"
@waittrig * name="affine" onskip="affine_object.finish()" canskip=%canskip|true
@endif
@endmacro
;
@macro name=waf
@waffine *
@endmacro
;
@return