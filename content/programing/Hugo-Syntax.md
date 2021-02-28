---
title: "Hugoの文法を理解する"
date: 2021-02-26T11:27:35+09:00
tags: ["hugo"]
categories: ["hugo"]
series: ["hugo"]
featured_image: ""
description: ""
---
Hugoのテーマを自作やカスタマイズするにあたり、必要そうな文法をまとめます。

## 変数
{{ foo }}
{{ $repoHost := default "github" $.Params.repoHost }}


## partial
```
{{ partial "header" . }}
```

## range end
```
{{ partial "header" . }}
```

## Dot
{{ .Title }}

## if

## With



## ショートコード