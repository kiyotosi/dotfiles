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


## Bash 便利なコマンド
### 翻訳(英語→日本語) `tj`
※ translate-shellが必要。 translate-shellのインストール方法はメモ参照。
~~~
$ echo "Hello world" | tj -b
こんにちは世界
~~~
~~~
$ tj -b "Hello world"
こんにちは世界
~~~
### 翻訳(日本語→英語) `te`
~~~
$ te -b "今日は暑い"
today is hot
~~~
### Google検索 `gg`
~~~
$ gg コロナ
 1.  東京都 新型コロナウイルス感染症対策サイト: 都内の最新感染 ...
     https://stopcovid19.metro.tokyo.lg.jp/
     昨日, 国のステージ判断のための指標
     21 時間前 —
~~~
### 計算機 `calc`
~~~
$ calc 1+2
3
~~~

### 標準出力に日付時刻をつける `logd`
~~~
$ while : ;do sleep 1 ; df -h;done | logd
2021-06-12 21:56:36 Filesystem      Size  Used Avail Use% Mounted on
2021-06-12 21:56:36 /dev/sdb        251G  4.1G  235G   2% /
2021-06-12 21:56:36 tmpfs           6.2G     0  6.2G   0% /mnt/wsl
2021-06-12 21:56:36 tools           476G  211G  266G  45% /init
2021-06-12 21:56:36 none            6.2G     0  6.2G   0% /dev
2021-06-12 21:56:36 none            6.2G  4.0K  6.2G   1% /run
~~~

## vim 便利なコマンド
### 選択範囲の翻訳
- 英語→日本語 viのノーマルモードで、翻訳したい文章を選択した後、tjと入力
- 日本語→英語 viのノーマルモードで、翻訳したい文章を選択した後、teと入力


## メモ
- Windows上で動くアプリからWindows terminalへのコピー `Shift + Insert`  
- googlerはバージョンが古いと、正常に動かない。アップグレード方法は以下。  
~~~
$ sudo googler -u
~~~
- translate-shell https://github.com/soimort/translate-shell
~~~
Debian、Ubuntuの場合
$ sudo apt install translate-shell
~~~
