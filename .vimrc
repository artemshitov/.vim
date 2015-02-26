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
set tabstop=4
set softtabstop=4
set shiftwidth=4
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
set wildignore+=*/node_modules/*

" Syntastic
set laststatus=2
set statusline=%f "tail of the filename
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Russian langmap
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Backspaces should remove already inserted text
set backspace=2

" Disable automatic comments insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Line wrapping
set tw=79
set formatoptions+=t
set wrap linebreak nolist
