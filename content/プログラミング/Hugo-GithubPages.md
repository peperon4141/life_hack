---
title: "Hugo GithubPagesで公開"
description: "Hugoで生成したページをGithubPagesで独自ドメインで公開します"
featured_image: ""
date: 2021-03-08T09:16:57+09:00
tags: ["Hugo"]
categories: ["Hugo"]
series: ["Hugo"]
---
Githubは、GithubPagesという機能があり、docsディレクトリを公開することができます。  
Publicなリポジトリだけの機能です。

## 出力ディレクトリを設定
Hugoで出力するディレクトリをdocsディレクトリにする必要があります。  
config.tomlに以下の設定を追加することで出力先を設定できます。  
```
publishDir = "docs"
```

## 本番用のビルド設定
Hugoではディレクトリによって、環境独自の設定を追加できます。
```
config
  ┣  config.toml  // デフォルトの設定
  ┣  production
  ┃    ┗  config.toml  // 本番用の設定
  ┗  development
       ┗  config.toml  // 開発用の設定
```

GithubPagesではサブディレクトリが公開されるので、baseurlで調整します。
以下の要領で、本番の設定をします。
```
baseurl = "https://example.com/repo_name/" # URL
canonifyurls = true # aタグなどのリンクを絶対パスにする場合はtrue
```

## GoogleDomainsでドメインを取得
独自ドメインを設定したいので、取得します。
[Google Domains](https://domains.google.com/)を使いました。  
Google Domainsの特徴は以下です。  
- 全て込み（メール転送、プライバシー設定など）のシンプルな料金体系で1050[円/年]~
- Googleの安定したインフラ
- サブドメインの管理が簡単

私が取得したドメインは1400[円/年]でした。

## GoogleDomainsの設定
GithubPagesに独自ドメインを設定する方法は2つあるようなのです。  
- Aレコード（Address Record）:  
  独自ドメインにIPアドレスを紐付けます。独自ドメインにアクセスした時に、指定されたIPアドレスにアクセスできるようになります。
- CNAME（Canonical NAME）:  
  Canonicalは`規準的な`という意味です。ホスト名の別名を定義することができます。  
  別名のホスト名でアクセスされた場合、正規ホスト名に転送します。

Aレコードの場合、Githubが指定しているIPアドレスを紐付けることになります。  
CNAMEの場合、`xxx.github.io` のようなGithubのホスト名に対して、別名を設定することになります。  

※ GoogleDomainsは仕様上Aレコードでしか対応できないようです。  

### Aレコードで指定する
https://domains.google.com/m/registrar/?hl=ja のページからAレコードを指定します。  

`DNS`のメニューを選択すると、スクロールして下の方に`カスタム リソース レコード`が設定できます。  
以下のURLにGithubの4つのIPアドレスが載っているので、これを設定します。
https://docs.github.com/en/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain

## GithubPagesの設定
Githubのリポジトリから、`Settings` > `GitHub Pages`へ行きます。
`Custom domain`の設定から、GoogleDomainsで取得したドメインを入力して保存します。

## Https対応
`Settings` > `GitHub Pages`の`Enforce HTTPS`のチェックを入れるだけです。
なんですが、カスタムドメイン設定直後はチェックを押せないようです。
1日程度待ってチェックを付けれるようになるようなので、ひたすら待ちましょう！