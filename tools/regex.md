# [mstdn.jpで便利な正規表現](https://gist.github.com/mamemomonga/4caec914e79556ce3eb2fc189ba38f4a)

マストドンの正規表現は**マッチしたものが除外される**

設定したら元に戻すのを忘れないようにしましょう。「ポストがでないよ〜」って焦ることがあります。

## 設定例

画像等を含む

	^(?!.*/media/)	

画像等を除外

	/media/

にゃーん, こゃーん

	^(?!.*(に|こ)ゃ)

きつね

	^(?!きつね$)

ネイティオ

	^(?!.*トゥー)

寝マストドン警察

	^(?!.*寝(ま|マ)(す|ス)(と|ト)((ど|ド)(ん|ン)|丼))

8文字未満の発言

	.{9}

4文字の発言

	^(?!.{4}$)
	
3桁以上の数字を含む

	^(?!.*\d{3})

t.co を除外

	t\.co/

膣を含む

	^(?!.*膣)
	
膣を除外

	膣
	
## 参考資料と便利ツール

* [MDN 正規表現](https://developer.mozilla.org/ja/docs/Web/JavaScript/Guide/Regular_Expressions)
* [debuggex](https://www.debuggex.com/)
* [正規表現チェックツールまとめ](http://qiita.com/AQRiL_1132/items/c185c7ad84c129e5a2df)
* [Mastodon 連合 or ローカルタイムライン用正規表現フィルタ](http://let.hatelabo.jp/pacochi/let/hLHW8svRzY8o)

