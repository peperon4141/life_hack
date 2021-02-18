---
title: "Hugoでカテゴリ、タグを管理する"
date: 2021-02-14T09:27:35+09:00
tags: [hugo]
categories: [hugo]
featured_image: ""
description: ""
---
Hugoを使って記事を分類してみます。

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