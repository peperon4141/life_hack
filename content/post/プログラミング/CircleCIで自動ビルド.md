---
title: "GitHub x CircleCIでHugo自動公開"
description: ""
image: ""
date: 2021-06-22T22:04:42+09:00
tags: []
categories: []
series: []
draft: true

---
## 背景

このサイトは、Hugoで構築しています。  
公開するために、Hugoでビルドを行い公開ディレクトリに配置してコミットしています。  
毎回この作業を行うのが面倒になったので、CircleCIにお任せします。

## CircleCIの設定
`.circleci/config.yml`ファイルを作成します。

```
version: 2.1
jobs:
  build:
    docker:
      - image: circleci/node:4.8.2
    steps:
      - checkout
      - run: echo "hello world"
```

`circleci/node:4.8.2`という、CircleCIが提供しているDockerイメージを使用します。
`steps`は実行する処理を順番に記載していきます。
- checkout -> GitHubリポジトリをチェックアウトしてDocker環境に配置します
- run: echo "hello world" -> コマンドを実行します



