---
title: "Hugoのディレクトリ構造を理解する"
date: 2021-02-14T09:27:35+09:00
tags: ["hugo"]
categories: ["hugo"]
series: ["hugo"]
featured_image: ""
description: ""
---
Hugoで生成されるディレクトリやファイルの構造を理解します。

## Hugoで生成される構造
```
.
├── config.toml
├── archetypes
├── content
├── data
├── layouts
├── static
└── themes
```
参照: [Directory Structure](https://gohugo.io/getting-started/directory-structure/)

## config.toml
Hugoの設定を記述します。

環境毎に設定を変更したい場合は、configディレクトリが有効です。（configディレクトリはデフォルトでは作成されません）
configディレクトリを使用することで、環境ごとの追加設定を定義することもできます。

## archetypes
新しいコンテンツを追加する際のテンプレートを定義できます。
参照: [Archetypes](https://gohugo.io/content-management/archetypes/)

## content
記事を入れるディレクトリです。
このディレクトリ構造はそのまま記事のURLになります。
それぞれのディレクトリは、セクションとして扱われます。

例えば、 `blog` , `articles` , `tutorials` のように、記事をセクション分けしたい場合は、
`content/blog` , `content/articles` , `content/tutorials` のようにディレクトリを作るだけです。

## data
設定ファイルを使用したい場合に、このディレクトリを使用できます。
YAML, JSON, TOMLなどのフォーマットで定義できます。

[サンプル](https://gohugo.io/templates/data-templates/)はここにあります。

## layouts
画像、CSS、JavaScriptなどのような、静的コンテンツ(動的に変わらないコンテンツ)を配置します。
サイトをビルドすると、staticディレクトリのコンテンツはそのままビルド結果にコピーされます。

## resources
このディレクトリはデフォルトでは作成されません。
キャッシュなどのスピードアップのためなどに使用されるディレクトリです。