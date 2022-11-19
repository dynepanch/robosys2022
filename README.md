# robosys2022

このソフトウェアパッケージは3条項BSDライセンスの元、再配布及び使用が許可されています。

© 2022 Ken Inaba

連絡先:s21C1016HB@s.chibakoudai.jp

ライセンス:https://github.com/dynepanch/robosys2022/blob/main/LICENSE

千葉工業大学先進工学部未来ロボティクス学科のロボットシステム学で作成したレポジトリ。


# plusコマンド
![test](https://github.com/dynepanch/robosys2022/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ数字を足す。

linuxのコマンド等を使い数字の列を出力し、それを入すると合計した値と全てを掛けた値を出力する。
また、一～十の漢数字を入力すると半角数字に変換し計算する

テストの結果は問題なく動作。

千葉工業大学の上田隆一先生のソースコードを授業のため流用

# 導入方法
下記のコマンドを実行

'git clone git@github.com:dynepanch/robosys2022.git'


# 動作例
 
` seq 10 | ./plus `
` plus=55 `
` product=3628800 `

` echo 三 | ./plus `
` plus=3 `
` product=3 `

` seq 1 0.1 2 | ./plus `
` plus=16.5 `
` product=67.04425728 `

## 動作テスト済み ##
* python
	* 3.7~3.10

## テスト環境 ##
* ubuntu 22.04.1LTS


©2022 Ken Inaba
