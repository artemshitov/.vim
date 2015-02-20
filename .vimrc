" 256 colors
set t_Co=256

" Pathogen
execute pathogen#infect()

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Color scheme
syntax enable
colorscheme solarized
filetype on
filetype plugin indent on

" Syntax highlighting
" syntax on

" Soft tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Indentation
set autoindent
set smartindent

" Line numbers
set nu

" Reload vim when .vimrc changes
augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

" Autoresize windows
autocmd VimResized * wincmd =

" Ignore some files
set wildignore+=node_modules/*
