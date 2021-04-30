---
title: "HugoのLayoutについて理解する"
description: "Hugoのページの種類や、各ページに適用されるテンプレートの優先度を説明します。"
date: 2021-02-23T00:00:00+09:00
featured_image: ""
tags: ["Hugo", "Layout"]
categories: ["Hugo"]
series: ["Hugo"]
---
HugoのLayoutの中身について理解していきます。

Layoutの中身は要はテンプレートで、各種ページのHTMLがレンダリングされる際にこれらのテンプレートが使用されます。

## Hugoのページ構成
[Section Page Templates](https://gohugo.io/templates/section-templates/)

### Contentディレクトリ
HTMLレンダリング前の構成は以下のようになります。
```
content/
  ├── _index.html（ホームページ）
  ├── page-1.md（通常ページ）
  ├── page-2.md（通常ページ）
  ├── section-1/
  │     ├── _index.html（セクションページ）
  │     ├── page-1-1.html（通常ページ）
  │     └── page-1-2.html（通常ページ）
  └── section-2/
        ├── _index.html（セクションページ）
        ├── page-2-1.html（通常ページ）
        └── page-2-2.html（通常ページ）
```
これらの各ページに対してHugoが適用するテンプレートを優先度付けしています。

### ページの種類
テンプレートが適用されて、HTMLレンダリング後のページの種類は以下のようになります。

| 種類 | 説明 | 例 |
| :--- | :--- | :--- |
| home | ホームページ | /index.html |
| page | 通常ページ | /posts/{投稿名}/index.html |
| section | セクションページ | /{セクション名}/index.html |
| taxonomy | 分類一覧ページ | /tags/index.html や /categories/index.html |
| term | 分類絞り込みページ | /tags/{タグ名}/index.html や /categories/{カテゴリ名}/index.html |

`分類一覧ページ`や`分類絞り込みページ`は、通常ページの設定を読み取ってレンダリングされるページです。
  
## ホームページ
[Homepage Template](https://gohugo.io/templates/homepage/)

ホームページ（content/_index.html)をレンダリングする場合の優先度です。

1. /layouts/index.html
1. /layouts/home.html
1. /layouts/list.html
1. /layouts/_default/index.html
1. /layouts/_default/home.html
1. /layouts/_default/list.html
1. /themes/{テーマ名}/layouts/index.html
1. /themes/{テーマ名}/layouts/home.html
1. /themes/{テーマ名}/layouts/list.html
1. /themes/{テーマ名}/layouts/_default/index.html
1. /themes/{テーマ名}/layouts/_default/home.html
1. /themes/{テーマ名}/layouts/_default/list.html

基本ルールは以下のようになります。
- テーマより、独自で定義したテンプレートが優先される
- _defaultフォルダ内より、layouts直下のテンプレートが優先される
- 汎用のリストテンプレートなどより、より特化したテンプレートが優先される

## セクションページ
[Section Page Templates](https://gohugo.io/templates/section-templates/)

セクションページ（content/{section_name}/_index.md）をレンダリングする場合の優先度です。

1. /layouts/section/{セクション名}.html ← セクション特化型テンプレート
1. /layouts/{セクション名}/list.html ← セクション特化型リストテンプレート
1. /layouts/_default/section.html
1. /layouts/_default/list.html
1. 省略（テーマ内のテンプレートが上記の優先度と同様使用される）

`{セクション名}` は特定のセクション名の時だけ使用されるテンプレートです。

## リストテンプレート
[Lists of Content in Hugo](https://gohugo.io/templates/lists/)

ホームページやセクションページの優先度でも、リストテンプレートが出てきましたね。

リストテンプレートは、特定のグループ内の記事一覧を表示するためのテンプレートです。
例えば、セクションページでリストテンプレートが使用された場合、そのセクションの記事リストを表示するような結果になります。

## シングルページ
[Single Page Templates](https://gohugo.io/templates/single-page-templates/)

通常ページ(content/{投稿名}.md)に適用されるテンプレートです。

1. /layouts/{タイプ名}/{レイアウト名}.html
1. /layouts/{セクション名}/{レイアウト名}.html
1. /layouts/{タイプ名}/single.html
1. /layouts/{セクション名}/single.html
1. /layouts/_default/single.html
1. 省略（テーマ内のテンプレートが上記の優先度と同様使用される）

## タクソノミーテンプレート
[Taxonomy Templates](https://gohugo.io/templates/taxonomy-templates/)

分類一覧ページとして表示されるテンプレートです。

1. layouts/_default/category.terms.html
1. layouts/_default/terms.html
1. layouts/_default/taxonomy.html
1. layouts/_default/list.html
1. 省略（テーマ内のテンプレートが上記の優先度と同様使用される）


## 最後に
[Hugo's Lookup Order](https://gohugo.io/templates/lookup-order/)