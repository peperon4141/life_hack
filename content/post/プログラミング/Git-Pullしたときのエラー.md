---
title: "git pullした時にwarningが出力された"
description: "git pullした時にwarningが出力された"
featured_image: ""
date: 2021-05-15T09:27:35+09:00
tags: ["Git"]
categories: ["Programing"]
series: ["Git"]
---

## 概要
git pull した時に警告が出るようになりました。

```
$ git pull
warning: Pulling without specifying how to reconcile divergent branches is discouraged.
You can squelch this message by running one of the following commands sometime before your next pull:

  git config pull.rebase false  # merge (the default strategy)
  git config pull.rebase true   # rebase
  git config pull.ff only       # fast-forward only

You can replace "git config" with "git config --global" to set a default preference for all repositories.
You can also pass --rebase, --no-rebase, or --ff-only on the command line to override the configured default per invocation.
```

Gitの2.27.0以降から出るようになったようです。
現在の私のGitバージョン；
```
$ git --version
git version 2.29.2
```

日本語に翻訳したバージョン：
```
警告：分岐したブランチを調整する方法を指定せずにpullすることはお勧めしません。
次のpullの前に、次のコマンドのいずれかを実行することで、このメッセージを抑制できます。

   git config pull.rebase false ＃ マージ（デフォルトの戦略）
   git config pull.rebase true  ＃ リベース
   git config pull.ff only      ＃ fast-forwardのみ

「git config」を「git config --global」に置き換えることで、全リポジトリにデフォルトを設定できます。
コマンドラインで--rebase、-no-rebase、または--ff-onlyを渡すことで、起動毎にデフォルト設定を上書きできます。
```

## git merge の選択肢
`git pull`した場合、remote branchからlocal branchにマージしてくれます。  
`git merge` する場合の挙動を設定できます。

### git config pull.rebase false
これはデフォルトの挙動で、これまでの挙動と同じになります。  
`rebase`せずに`fast-forward`可能な場合は`fast-forward`し、そうでない場合は`merge commit`します。

### git config pull.rebase true
`git pull --rebase`を行った場合と同じになり、`merge commit`が作成されずに、コミット履歴が一直線になります。

### git config pull.ff only
`--ff-only` optionをつけた場合と同じ挙動になります。  
`fast-forward`可能な場合は`fast-forward`し、そうでない場合は`merge`,`rebase`せずにエラー終了します。