# Hugo使い方

## サイト作成
### サイトテンプレ作成
```
hugo new site {{ site name }}
```

### テーマ配置
以下コマンドでthemesフォルダにテーマを追加。
```
git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke
```
config.tomlに `theme = "ananke"` 

## ディレクトリ構成

|ディレクトリ   | 説明                                               |
|-------------|---------------------------------------------------|
|archetypes   |記事を新規作成するテンプレート                          |
|config.toml  |サイトのコンフィグファイル                              |
|content      |サイトのコンテンツ                                    |
|data         |yamlやjsonを格納しリストのようにアクセスできる            |
|layouts      |テーマを使用しない場合に読み込まれるレイアウトフォルダです   |
|public       |静的ファイルをジェネレートした場合週連れよくされるフォルダ   |
|static       |画像やcssを格納。ドキュメントルートに配置される。          |
|themes       |サイトのテーマを格納。                                 |

## ページ追加
```
hugo new {{ site path }}
```
e.g. `hugo new posts/my-first-post.md`


## 起動
```
hugo server
```
※ `-D` で下書き状態でも表示

## 静的サイト作成
publishDir以下に作成。
```
hugo
```