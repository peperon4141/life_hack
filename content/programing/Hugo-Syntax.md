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
変数の定義は、変数名に `$` を付け、 `:=` で代入します。
```
{{ $変数名 := 値 }}
```

参照するときは、 `$変数名` とします。
```
<p>{{ $x }}</p>
```

例）
```
{{ $hello := "Hello" }}
<p>{{ $hello }}</p>
```
↓
```
<p>Hello</p>
```

## パイプ
`|` を使うことで、

```
{{ $hello := "HUGO" | printf "%s World!" | printf "Hello %s." }}
<p>{{ $hello }}</p>
```
↓
```
Hello HUGO World!
```

## range
変数をループ処理できます。
```
<ul>
  {{ range $page := .Site.AllPages }}
    <li><a href="{{ $page.RelPermalink }}">{{ $page.Title }}</a>
  {{ end }}
</ul>
```

## With
変数にアクセスできるスコープを限定できます。
```
{{ with $hello := "HUGO" }}
  Hello {{ $hello }}
{{ end }}
```
`end` 以降は変数にアクセスできません。


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