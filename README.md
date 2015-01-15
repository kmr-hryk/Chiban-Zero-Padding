Chian-Zero-Padding
====

## これは何

地番の本番(親番)が4桁、枝番(子番、支号)が3桁になるようにゼロパディング(ゼロ埋め)します。

Ex. 100-1 → 0100-001  
    200   → 0200-000

一部の環境で地番名が地番順に並ばないことがあるのでゼロパディングすることで順序良く並ぶようにします。

## 使い方

PowerShellスクリプトです。セキュリティ設定で署名無しのスクリプトを実行可能なように設定をしておいてください。

適当なディレクトリにChian-Zero-Padding.ps1を置き、Chian-Zero-Padding.ps1を読み込みます。

```ps1
PS> . Chian-Zero-Padding.ps1
```

```ps1
PS> Chian-Zero-Padding 100-1
```

ゼロパディングされた地番文字列が表示されます。

```
0100-001
```

このスクリプトを使ってPDFファイル名を変更する場合には下記のようにします。

```ps1
PS> $ex = ".pdf" ; Get-ChildItem "*$ex" -Name | ForEach-Object { $tmp = (Chiban-Zero-Padding $_.Replace($ex,"")) ; Rename-Item $_ $tmp$ex }
```

ワンライナーだとわかりにくいですね。

## 注意

枝番の枝番がある地番(例えば「500-1-2」)や、漢数字の地番、添え字のある地番(例えば「ロ600-1」)などでは意図した形で動作しない可能性があります。

----
2014-10-31 Hiroyuki Kimura
