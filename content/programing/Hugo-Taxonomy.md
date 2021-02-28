---
title: "Hugoの記事をタクソノミーで分類する"
date: 2021-02-14T09:27:35+09:00
tags: ["hugo"]
categories: ["hugo"]
series: ["hugo"]
featured_image: ""
description: ""
---
Hugoを使って記事を分類してみます。

## Hugoのデフォルトでの記事の分類方法
| 種類 | 説明 |
| :--- | :--- |
| section | ディレクトリで分類 例)/{section_name}/index.html |
| tag | 記事にタグを付けて分類 |
| category | 記事にカテゴリを付けて分類。カテゴリは階層化できる |
| series | シリーズ物の記事を作れる |

## Hugoで記事を分類する方法一覧
Hugoで記事を分類する方法は複数あります。

| セクション | contentディレクトリ以下にフォルダを作ると、セクションになります ｜
| タグ | 記事毎にタグを設定し、記事を分類します ｜
| カテゴリ | タグと似ていますが、カテゴリは階層構造を持つことができます｜


## Taxonomyってなんですか？
Taxonomyは「分類(法)」のこと。
例えば、映画を例に挙げると...
```
Actor                    <- Taxonomy
    Bruce Willis         <- Term
        The Sixth Sense  <- Value
        Unbreakable      <- Value
        Moonrise Kingdom <- Value
    Samuel L. Jackson    <- Term
        Unbreakable      <- Value
        The Avengers     <- Value
        xXx              <- Value
```

この用に、 -どういう切り口で分類するか- がTaxonomyです。