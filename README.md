# dotfiles
## dotfilesとは
  以下抜粋。  
>- [ようこそdotfilesの世界へ - Qiita  ](https://qiita.com/yutakatay/items/c6c7584d9795799ee164)  
>  dotfilesとは、ホームディレクトリに置いてあるドット(.)から始まる設定ファイル(
>  .bashrcとか)を管理しているリポジトリのことである。  
>  シェルやエディタの設定からアプリケーションの設定まで幅広いものが置かれている。  
>  dotfilesはGitなどでバージョン管理されており、GitHubで公開されていることが多い。  

## インストール方法  
~~~
$ cd ~
$ git clone https://github.com/kiyotosi/dotfiles.git
$ cd ~/dotfiles
$ ./setup.sh
~~~

## 本ファイルについて
以下の設定ファイルを扱う。
- bash  
- tmux  
- vim  

## メモ
- Windows上で動くアプリからterminalへのコピー `Shift + Insert`  
- googlerはバージョンが古いと、正常に動かない。アップグレード方法は以下。  
~~~
$ sudo googler -u
~~~

## 便利なコマンド
### 翻訳(英語→日本語)
~~~
$ echo "Hello world" | tj -b
こんにちは世界
~~~
~~~
$ tj -b "Hello world"
こんにちは世界
~~~
### 翻訳(日本語→英語)
~~~
$ te -b "今日は暑い"
today is hot
~~~
### Google検索
~~~
$ gg コロナ
 1.  東京都 新型コロナウイルス感染症対策サイト: 都内の最新感染 ...
     https://stopcovid19.metro.tokyo.lg.jp/
     昨日, 国のステージ判断のための指標
     21 時間前 —
~~~
