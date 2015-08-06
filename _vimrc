" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
	if &compatible
		set nocompatible               " Be iMproved
	endif
	" Required:
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle (Required):
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here: Refer to |:NeoBundle-examples|.(Note: You don't set neobundle setting in .gvimrc!)

" Plugin
NeoBundle 'scrooloose/nerdtree'

" Syntax
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'groenewege/vim-less'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'chriskempson/tomorrow-theme', { 'rtp': 'vim/' }
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set nu
syntax on
set backspace=2
set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set ai
set si
colorscheme Tomorrow-Night
