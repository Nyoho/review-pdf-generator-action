# Re:VIEW EPUB Generator Action

This is a [GitHub Action](https://github.com/features/actions) for [Re:VIEW](https://github.com/kmuto/review) repository: builds EPUB and uploads as Artifacts.

**Name:** `Nyoho/review-epub-generator-action`

## Usage

```yaml
name: build Re:VIEW EPUB
on: [push]
jobs:
  build:
    name: generate EPUB
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: build EPUB
      uses: Nyoho/review-epub-generator-action@master
    - name: upload as Artifacts
      uses: Nyoho/review-epub-generator-action/upload-artifact@master
```

### about upload-artifact

`upload-artifact` is a copy of [official upload-artifact](https://github.com/actions/upload-artifact) action.

The changes are:

* inputs `name` and `path` is not required
* default `path` is `build/output.epub`

----

(in Japanese)

これは[Re:VIEW](https://github.com/kmuto/review)リポジトリ用の[GitHub Action](https://github.com/features/actions)で、EPUBをビルドしてArtifactsとして保存するものです。

GitHub Actionsのbeta版に対応しています（現在はbeta版にsign upしている方のみ利用可能です）。

## 使い方

以下のようなYAMLファイルを `.github/workflows/main.yml` ファイルなどに置きます。

```yaml
name: build Re:VIEW EPUB
on: [push]
jobs:
  build:
    name: generate EPUB
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: build EPUB
      uses: Nyoho/review-epub-generator-action@master
    - name: upload as Artifacts
      uses: Nyoho/review-epub-generator-action/upload-artifact@master
```


### upload-artifactについて

`upload-artifact` は [official upload-artifact](https://github.com/actions/upload-artifact) actionをコピーしたものです。

違いは以下になります:

* inputs の `name` と `path` が省略可になっています
* デフォルトの `path` は `build/output.epub` になっています(Re:VIEW EPUB Generator Actionの出力先に揃えています)


## Thanks

forked from [takahashim/review-pdf-generator-action](https://github.com/takahashim/review-pdf-generator-action)
