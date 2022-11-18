# robosys2022

このソフトウェアパッケージは3か条BSDライセンスの元、再配布及び使用が許可されています。
SPDX-Copy right Text 2022 Ken Inaba

千葉工業大学先進工学部未来ロボティクス学科のロボットシステム学で作成したレポジトリです。

#plusコマンド
![test](https://github.com/dynepanch/robosys2022/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ数字を足す。

linuxのコマンド等を使い数字の列を出力し、それを入すると合計した値と全てを掛けた値を出力する。
また、一～十の漢数字を入力すると半角数字に変換する

テストの結果は問題なく動作。

千葉工業大学の上田隆一先生のソースコードを授業のため流用

動作例

> seq 10 | ./plus

> total=55

> product=3628800

> echo 三 | ./plus

> total=3

> product=3 


##動作テスト済み##
*python
	*3.7~3.10

##テスト環境##
*ubuntu

©2022 Ken Inaba
