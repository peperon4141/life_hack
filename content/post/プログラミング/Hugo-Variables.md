---
title: "Hugoの変数"
date: 2021-07-08T11:35:35+09:00
tags: ["hugo"]
categories: ["hugo"]
series: ["hugo"]
featured_image: ""
description: "Hugoの変数について"
---

Hugoの頻出の変数・関数についてまとめます。

## Title
`{{ .Site.Title }}` -> サイトのタイトル
`{{ .Title }}` -> ページのタイトル

.Siteで、config.tomlファイルの変数を取得できる。  
変数の頭文字は大文字で始まる。  

## 日付
`{{ .Date }}` -> 2017-03-03 14:15:59 -0600 CST  
`{{ .Date.Format "Monday, January 2, 2006" }}` -> Friday, March 3, 2017  
`{{ .Date.Format "Mon Jan 2 2006" }}` -> Fri Mar 3 2017  
`{{ .Date.Format "January 2006" }}` -> March 2017  
`{{ .Date.Format "2006-01-02" }}` -> 2017-03-03  
`{{ .Date.Format "Monday" }}` -> Friday  
`{{ .Date.Format "02 Jan 06 15:04 MST" (RFC822) }}` -> 03 Mar 17 14:15 CST  
`{{ .Date.Format "02 Jan 06 15:04 -0700" (RFC822Z) }}` -> 03 Mar 17 14:15 -0600  
`{{ .Date.Format "Mon, 02 Jan 2006 15:04:05 MST" (RFC1123) }}` -> Fri, 03 Mar 2017 14:15:59 CST  
`{{ .Date.Format "Mon, 02 Jan 2006 15:04:05 -0700" (RFC1123Z) }}` -> Fri, 03 Mar 2017 14:15:59 -0600  

参考: [.Format](https://gohugo.io/functions/format/)  

## 記事
`{{ .Content }}`

## 小文字・大文字
小文字にする  
`{{lower "BatMan"}}` → "batman"  

大文字にする  
`{{ upper "BatMan" }}` → "BATMAN"  

パイプライン文字`|`を使って、以下のようにも書ける  
`{{ "BatMan" | upper }}` → "BATMAN"

## HTML/URL
通常は`http:`, `https:`、`mailto:`から始まるURIだけが安全なURLとして判断される。  
それ以外は`#ZgotmplZ`が出力される。  
`safeURL`を使用することでその他のスキーマのURLも出力できる。  
`{{ .URL | safeURL }}`

HTMLタグをエスケープする。  
`{{ .Site.Copyright | safeHTML }}`
`© 2015 Jane Doe.  <a href="https://creativecommons.org/licenses/by/4.0/">Some rights reserved</a>.`  
↓  
`<p>© 2015 Jane Doe.  &lt;a href=&#34;https://creativecommons.org/licenses by/4.0/&#34;&gt;Some rights reserved&lt;/a&gt;.</p>`


Style属性を出力する。  
`safeCSS`を使用しなければ`#ZgotmplZ`が表示される。  
`<p style="{{ .Params.style | safeCSS }}">…</p>`  
↓  
`<p style="color: red;">…</p>`