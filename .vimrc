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
let g:detectindent_preferred_expandtab = 1 
" To specify a preferred indent level when no detection is possible: 
let g:detectindent_preferred_indent = 4 
let g:detectindent_preferred_when_mixed = 1

" Autotab next line
filetype indent on

" Set line numbers
set relativenumber
