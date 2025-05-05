;
; about.ks
;

[eval exp="tf.help_shortcutkey = 1"]
; バージョン情報ダイアログのキャプションを設定
[title name="ショートカットキー一覧"]
; 幅320×高さ200ピクセル背景画像を読み込み、表示
[image storage="menu_shortcutkey" layer=base page=fore]
; メッセージレイヤを非表示
[layopt layer=message0 page=fore visible=false]
; クリックを待つ
[waitclick]
; ダイアログを閉じる
;閉じる時に確認ダイアログが出てるなーMainWindow.tjs(490)弄ったからか。一旦戻しておこう。
[close]
