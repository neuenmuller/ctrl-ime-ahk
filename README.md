# Ctrl-ime-ahk

alt-ime-ahkのCtrlキー版であるctrl-ime-ahkを一部修正したものです。

- [alt-ime-ahk](https://github.com/karakaram/alt-ime-ahks)  
- [ctrl-ime-ahk](https://github.com/moremorefor/ctrl-ime-ahk)


## 概要

左右 Ctrl キーの空打ちで IME を OFF/ON する AutoHotKey スクリプトです。

* 左 Ctrl キーの空打ちで IME を「英数」に切り替え
* 右 Ctrl キーの空打ちで IME を「かな」に切り替え
* Ctrl キーを押している間に他のキーを打つと通常の Ctrl キーとして動作

## 修正点

### 1. Ctrl押下時のBackspace動作

Ctrlを押しながらBackspaceを押すと単語単位の削除が可能ですが、Ctrlを離したタイミングでIMEが切り替わってしまう問題を修正しました。


### 2. 日本語入力途中での左Ctrlキーを無視

日本語入力途中に誤って左Ctrlキーを押すとIMEの挙動がおかしくなるため、日本語入力途中で左Ctrlキーを押しても無反応となるように修正しました。  
変換が完了し、入力確定後に左Ctrlを押せば、問題なく英数に切り替わります。

