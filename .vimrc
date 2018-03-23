"" Vundle configuration
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim.git'

" Just use Tab for autocompletion
Plugin 'ervandew/supertab.git'

Plugin 'kien/ctrlp.vim.git' 

" Detect intentation on the file (and set shiftwidth, expandtab & tabstop)
Plugin 'ciaranm/detectindent.git'

call vundle#end()

"" end of Vundle Configuration

" CtrlP configuration
set runtimepath^=~/.vim/bundle/ctrlp.vim
""" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
""" Use the nearest .git directory as the cwd
""" This makes a lot of sense if you are working on a project that is in
""" version control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'
" nmap <leader>p :CtrlP<cr>

" File endings to linux
set fileformat=unix

" Colors
colorscheme koehler
syntax on

" Set background to red if line exeeds 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


" DetectIndent Plugin preferences
:autocmd BufReadPost * :DetectIndent
" To prefer 'expandtab' to 'noexpandtab' when no detection is possible
:let g:detectindent_preferred_expandtab = 1 
" To specify a preferred indent level when no detection is possible: 
:let g:detectindent_preferred_indent = 4 

" Autotab next line
filetype indent on


" " Basic tab support (spaces instead of tabs, 4 each level)s
" setlocal smartindent
" 
" " Use spaces instead of tabs
" setlocal expandtab
" " Number of spaces when tab is pressed
" setlocal tabstop=4
" " Number of spaces when auto indenting
" setlocal shiftwidth=4
" " Number of spaces when tab is pressed and its editing
" setlocal softtabstop=4
" " Allow backspace to work in insert mode
" set backspace=indent,eol,start
"
" filetype plugin on
" filetype indent on
" Autocomment (having filetype plugin indent on)
" set formatoptions+=r Ideally, the line above will do exactly this

