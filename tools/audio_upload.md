# [mstdn.jp にオーディオファイルをアップロードする](https://gist.github.com/mamemomonga/d7fbf937720903854ccd48bb5450b34d)

mstdn.jpではオーディファイルのアップロードができないので、ffmpegをつかって適当な静止画を入れた動画を作成することでアップロードできます。最大サイズは8MBなので、それ以内に収まるようにオーディオのビットレートを調整します。

* 入力音声: audio.wav
* 静止画像: image.png
* 出力動画: movie.mp4

コマンド例

	$ ffmpeg -loop 1 -i image.png \
	 -itsoffset 1 -i audio.wav \
	 -c:v libx264 -vf scale=320:240 -tune stillimage \
	 -c:a aac -b:a 192k \
	 -pix_fmt yuv420p -shortest movie.mp4

