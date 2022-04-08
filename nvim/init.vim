set number	" 行番号を表示
set autoindent	" 改行でインデント
set hls		" 検索した文字をハイライトする
set tabstop=2	" タブを２文字の空白に変換
set shiftwidth=2 " 自動インデント時に入力する空白の数
set expandtab	" タブ入力を空白に変換
set clipboard=unnamed	" yankした文字列をクリップボードにコピー

" denite.vimの導入
if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
" プラグインのインストールを自動化
if dein#check_install()
	call dein#instal()
endif

filetype plugin indent on
syntax enable
