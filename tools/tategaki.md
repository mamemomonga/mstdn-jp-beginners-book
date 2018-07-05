# 縦書きポスト

* 複数ポストにわたった縦書きをポストします。
* 長文は危険です。5文字程度に抑えましょう。
* あまり使うとみんなに迷惑がかかりますので使うときはほどほどにしましょう。

実行には[tootコマンド](https://github.com/ihabunek/toot)によるポストが可能な状態にしておく必要があります。

以下のサンプルの「縦書き」部分を任意の単語に変更してください。

	$ echo "縦書き" | \
		perl -CSAD -MEncode -E '$_=<>; chomp; say join("",reverse map qq{echo "$_" | toot post\n},split(//,$_))' | sh

