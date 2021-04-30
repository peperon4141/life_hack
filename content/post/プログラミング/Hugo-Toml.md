---
title: "HugoのTomlの書き方"
date: 2021-02-26T11:35:35+09:00
tags: ["hugo"]
categories: ["hugo"]
series: ["hugo"]
featured_image: ""
description: ""
---
TOMLの記法についてまとめます。

## TOMLとは
TOMLとは、設定ファイルを記述するための言語です。
明瞭な文法のため、人間に読みやすくなっています。

## コメント
コメントは `#` から改行までがコメントになります。
```
# これはコメント
key = "value" # ここもコメント
```

## 型を表現
```
key1 = "文字列"
key2 = "文字列\"エスケープ" # エスケープでダブルコーテーションを入れられる
key3 = """
複数行文字列
"""

key4 = 1 # 整数
key5 = 2.1 # 少数

key6 = true # ブーリアン
key7 = false # ブーリアン

key8 = 1979-05-27T07:32:00Z # 日付

key9 = [1, 2, 3] # 配列
```

## テーブル
`[テーブル名]`でテーブルを定義できます。

```
[table]
key1 = "value1"

[foo.bar]
key2 = "value2"
```
これをJSONに変換すると以下のようになります。

```
{
  "table": {
    "key1": "value1"
  },
  "foo": {
    "bar": {
      "key2": "value2"
    }
  }
```

## テーブルの配列
テーブル名を`[[テーブル名]]`のように、２つの括弧で囲むことで、テーブルも配列を定義できます。
```
[[array]]
key3 = "value3"

[[array]]
key4 = "value4"
```
これをJSONに変換すると以下のようになります。
```
{
  "array": [
    {
      "key3": "value3"
    },
    {
      "key4": "value4"
    }
  ]
}
```
