"" Vundle configuration
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim.git'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'lunaru/vim-twig.git'
Plugin 'kien/ctrlp.vim.git'

" Install php getter/setters
Plugin 'docteurklein/php-getter-setter.vim'

" Get Latex support for vim
Plugin 'lervag/vimtex'

" This two plugins are used to format markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Plugin used to show errors in the editor...
Plugin 'scrooloose/syntastic'

" Just use Tab for autocompletion
Plugin 'ervandew/supertab.git'

call vundle#end()
filetype plugin indent on

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

filetype plugin on
filetype plugin indent on
filetype indent on
" Autocomment (having filetype plugin indent on)
" set formatoptions+=r Ideally, the line above will do exactly this

" Map f7 and f8 to move between tabs
nmap <c-e> :lcd %:p:h<CR>:Texplore<CR> 
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>

" Coloooors
colorscheme koehler
syntax on

" Set background to red if line exeeds 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Basic tab support (spaces instead of tabs, 4 each level)s
setlocal smartindent

" Use spaces instead of tabs
setlocal expandtab
" Number of spaces when tab is pressed
setlocal tabstop=4
" Number of spaces when auto indenting
setlocal shiftwidth=4
" Number of spaces when tab is pressed and its editing
setlocal softtabstop=4
" Allow backspace to work in insert mode
set backspace=indent,eol,start


" Configure markdown plugin
let g:vim_markdown_no_default_key_mappings=1
