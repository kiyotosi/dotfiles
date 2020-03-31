
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2016 Jul 28
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd matchit
endif

"### 文字コード自動判定
:set encoding=utf-8
:set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

"### 改行コード自動認識
:set fileformats=unix,dos,mac

"### バックアップファイルを作成しない
:set nobackup

"### ステータスライン設定
" ステータスラインを常に表示（0:表示しない 1:２つ以上ウィンドウがあるときだけ表示 2:常に表示）
:set laststatus=2
" ステータスライン表示
"   ファイル名
:set statusline=%<%f\ %m%r%h%w
"   以降右寄せ
:set statusline+=%=
"   現在行数/全体行数L,カラム数C
:set statusline+=%=%l/%LL,%cC
"   ReadOnly表示 
:set statusline+=%r
"   [文字コード][改行コード] 
:set statusline+=%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}

"### タブ・スペース・改行可視設定
" 　以下は、:set listを実行したときに有効となる。
"   eol     : $ ,行末
"   tab     : >- or ^| ,タブ >- (4文字設定の場合) ^| (8文字設定の場合)
"   trail   : ~ ,行末のスペース
"   extends : > ,行が画面の関係で折り返されているとき、最終列に表示される文字
"   precedes: ~ ,行が画面の関係で折り返されているとき、開始列に表示される文字
"   conceal : < , conceal文字
:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

"  ペーストモードOn/Off切り替え
:set pastetoggle=<f5>
" クリップボード連携を有効にする
:set clipboard&
:set clipboard^=unnamed
" クリップボード連携を有効にしたとき、BackSpace (Delete)が効かない件の対策
:set backspace=indent,eol,start
