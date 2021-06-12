# dotfiles

1. dotfilesとは
  以下抜粋。

・ようこそdotfilesの世界へ - Qiita  
  (参考)https://qiita.com/yutakatay/items/c6c7584d9795799ee164  
  dotfilesとは、ホームディレクトリに置いてあるドット(.)から始まる設定ファイル(
  .bashrcとか)を管理しているリポジトリのことである。  
  シェルやエディタの設定からアプリケーションの設定まで幅広いものが置かれている。  
  dotfilesはGitなどでバージョン管理されており、GitHubで公開されていることが多い。  

1. インストール方法
~~~cd ~
$ git clone https://github.com/kiyotosi/dotfiles.git
$ cd ~/dotfiles
$ ./setup.sh
~~~

1. 本ファイルについて
以下の設定ファイルを扱う。
- bash  
- tmux  
- vim  

メモ
・Windows上で動くアプリからterminalへのコピー `Shift + Insert`  
・googlerはバージョンが古いと、正常に動かない。アップグレード方法は以下。  
~~~
$ sudo googler -u
~~~
