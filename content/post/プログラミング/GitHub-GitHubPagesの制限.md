---
title: "GitHubPagesの制限"
description: "GitHub Pagesを使用する場合の制限事項をまとめます。"
image: ""
date: 2021-06-28T09:35:31+09:00
tags: ["Hugo", "Git"]
categories: ["Programing"]
series: ["Hugo"]
---

このサイトではGitHub Pagesを使用して運用しています。  
Github Pagesでの制限について整理します。
この記事の内容は主に以下をまとめたものです。
[GitHub Pages について](https://docs.github.com/ja/pages/getting-started-with-github-pages/about-github-pages)

## 使用制限
以下の上限を超えた場合、サービスを提供できないか、Supportから影響を減らす方法を示唆するメールが届くことがある。

- 公開されたGitHub Pagesのサイトは1GB以上であってはならない
- GitHub Pages サイトには、100[GB/月] のソフトな帯域幅制限
- GitHub Pages サイトには、10[ビルド/時間] のソフトな制限

## 上限を超えた場合の対応策
- CDNをサイトの前に配置することで、帯域を減らすことができる
- データを置いておくだけであれば、GitHubPagesを使用せずにRelease機能を使用することができる
- 別のホストサービスにファイルを配置する

## 禁止される用途
> GitHub Pages は、オンラインビジネス、eコマースサイト、主に商取引の円滑化またはサービスとしての商用ソフトウェアの提供 (SaaS) のどちらかを目的とする、その他のウェブサイトを運営するための無料のウェブホスティングサービスとしての使用を意図したものではなく、またそのような使用を許可するものでもありません。

GitHub Pagesでビジネスをしないでくださいと言うことですね。