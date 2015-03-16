" 256 colors
set t_Co=256

" Pathogen
execute pathogen#infect()

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Color scheme
syntax enable
colorscheme zenburn
filetype on

" Soft tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Indentation
set autoindent
set smartindent
set nocindent
filetype plugin indent on

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
set statusline+=\ %#warningmsg#
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
set formatoptions+=t
set wrap linebreak nolist

" Display lines navigation
nmap <silent> k gk
nmap <silent> j gj

" Navigate buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" This one lets :find work on subdirectories
set path+=$PWD/**

" Store temp files in separate directories
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

"Markdown
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html']
