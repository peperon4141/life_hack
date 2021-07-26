---
title: "HugoのPagination"
date: 2021-07-08T11:35:35+09:00
tags: ["hugo"]
categories: ["hugo"]
series: ["hugo"]
featured_image: ""
description: "HugoのPaginationについて"
---

Hugoのページネーションについてまとめます。

## 変数
Hugoはページネーションに関する機能を用意してくれています。  
また、その機能の設定も可能です。

config.tomlで定義できます。  
`paginate`: デフォルト10。何件を1つのまとまりとするか。  
`paginatePath`: デフォルト`page`

## ページのリストを作成するときの関数
`.Paginator`もしくは`.Paginate`を使用できます。  

最も簡単に使用する方法は、`.Paginator.Pages`とすることでページ一覧を作成できます。  

## ナビゲーションを作成する
`.Paginater`はページネーションを作成するのに十分な情報を持っています。  

最も簡単に実装する方法はbuilt-inテンプレートを使用する方法です。  
`{{ template "_internal/pagination.html" . }}`  

もし、フィルターや順番を変更したい場合は、`.Paginator`が利用できます。  
具体例は以下です。  
```
{{ $paginator := .Paginate (where .Pages "Type" "posts") }}
{{ template "_internal/pagination.html" . }}
{{ range $paginator.Pages }}
   {{ .Title }}
{{ end }}
```


## 参考
[Pagination](https://gohugo.io/templates/pagination/)

