[![test](https://github.com/TakumiIshiguro/robosys2022/actions/workflows/test.yml/badge.svg)](https://github.com/TakumiIshiguro/robosys2022/actions/workflows/test.yml)

## robosys2022
千葉工業大学未来ロボティクス学科のロボットシステム学の講義で作成したレポジトリである。  
このレポジトリには、plusとtimesという名前のコマンドがある。


## 機能

以下のコマンドで「robosys2022」ディレクトリに移動
```
$ cd robosys2022
```


### 1. plus

* 機能

入力した数字を読み込み、１から読み込んだ自然数までを足して答えを表示する。

* 使い方

```
$ seq [自然数] | ./plus
```

* 実行結果

```
$ seq 5 | ./plus
```
```
$ 15
```



### 2. times

* 機能
 
入力した数字を読み込み、１から読み込んだ自然数までを足して答えを表示する。

* 使い方

```
$ seq [自然数] | ./times
```

* 実行結果

```
$ seq 5 | ./times
```
```
$ 120
```


## 動作確認済み環境

テスト済み　Python 3.7～3.10


## テスト環境

Ubuntu 22.04.1 LTS


## インストール方法

以下のコマンドを実行

```
$ git clone https://github.com/TakumiIshiguro/robosys2022.git
```


## ライセンス

このソフトウェアパッケージは3条項BSDのライセンスの下、再頒布および使用が使用が許可されます。
© 2022 Takumi Ishiguro
