# poponchu-cli

ぽぽんちゅ構文を生成するCLIツールです。

```bash
➜ ./poponchu-cli
ヤッピー粗品クゥンブッチュチュチュチューン💋
最近もまたダイエット💦🚫しているみたいですわネ？
ダイエットをしていただきたいでス…(終わりの発言)
everyday粗品クゥン頂Paradise
```

## ビルド方法

Goがインストールされている環境で、プロジェクトのルートディレクトリに移動し、以下のコマンドを実行します。

```bash
make build
```

これにより、`poponchu-cli`という実行可能ファイルが生成されます。

## 使い方

### 基本的な使い方

```bash
./poponchu-cli
```

### 名前を指定して生成

`-n`または`--names`フラグで、対象の名前を指定できます。カンマ区切りで複数の名前を指定すると、その中からランダムに選ばれます。

```bash
./poponchu-cli -n 粗品
./poponchu-cli --names せいや,あのちゃん
```

### 行数を指定して生成

`-l`または`--length`フラグで、出力される全体の行数を指定できます（挨拶、本文、締めを含む）。デフォルトは4行です。

```bash
./poponchu-cli -l 5
./poponchu-cli --length 3
```

### バージョン情報の表示

`-v`または`--version`フラグで、バージョン情報を表示します。

```bash
./poponchu-cli -v
./poponchu-cli --version
```

### ヘルプの表示

`--help`フラグで、利用可能なオプションと説明を表示します。

```bash
./poponchu-cli --help
```

## 開発者向け

### テストの実行

```bash
make test
```

### リンティングの実行

```bash
make lint
```

### クリーンアップ

ビルド成果物やインストールされたツールを削除します。

```bash
make clean
```

## 参考

- [史上最も気色悪い太客の虫唾構文クイズ](https://www.youtube.com/watch?v=bxzfKNNc-6M&t=19s)
- [地獄の虫唾構文クイズでスタッフ全員型崩した](https://www.youtube.com/watch?v=wD283EARChk&t=387s)
