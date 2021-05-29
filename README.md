# dotfiles

１．dotfilesとは
  以下抜粋。

・ようこそdotfilesの世界へ - Qiita
  (参考)https://qiita.com/yutakatay/items/c6c7584d9795799ee164
  dotfilesとは、ホームディレクトリに置いてあるドット(.)から始まる設定ファイル(
  .bashrcとか)を管理しているリポジトリのことである。
  シェルやエディタの設定からアプリケーションの設定まで幅広いものが置かれている。
  dotfilesはGitなどでバージョン管理されており、GitHubで公開されていることが多い。

２．インストール方法
cd ~
git clone https://github.com/kiyotosi/dotfiles.git
cd ~/dotfiles
./setup.sh

２．本ファイルについて
本リポジトリでは、以下の設定ファイルを扱う。
・bash
・fbterm 
・mozc
・tmux
・vim
・w3m

aliasは以下を扱う。


メモ
・Windows上で動くアプリからterminalへのコピー Shift + Insert

Todo
・tmux DM200設定 if分でわける
・fbterm フォントサイズ切り替え設定


