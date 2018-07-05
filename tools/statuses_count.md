# [マストドンで正確なトゥート数を調べる方法](https://gist.github.com/mamemomonga/32d60a1b7489b3f7dd036f7ecfb234ee)

1. ターゲットとなる人の**最新の**トゥートの「今」とか「xx分前」とかあたりをおす。
2. URLにくっついてるたくさんの数字を https://mstdn.jp/api/v1/statuses/[番号] にしてブラウザでアクセス。
3. JSONデータの accountの中のstatuses_countが多分それ

未確認だけどそれっぽい数字がでてるのでたぶんあってる。

## コマンド例

curlと[jq](https://stedolan.github.io/jq/)コマンドが必要です。

	$ curl -s https://mstdn.jp/api/v1/statuses/100271044536676901 | jq -r .account.statuses_count


