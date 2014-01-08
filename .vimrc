set nocompatible
filetype off

set encoding=utf-8

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Key Mappings
map <F2> :NERDTreeToggle<CR>

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'vadv/vim-chef'
Bundle 'vim-scripts/chef.vim'
" Bundle 'davidhalter/jedi-vim'
Bundle 'Valloric/YouCompleteMe'
" The bundles you install will be listed here

filetype plugin indent on

" Powerline setup
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set guifont=Menlo\ for\ Powerline 
set laststatus=2
set t_Co=256

" Miscellaneous Setting
" Use l to toggle display of whitespace
nmap l :set list!<CR>
" " And set some nice chars to do it with
set listchars=tab:»\ ,eol:¬
"
" " automatically change window's cwd to file's dir
set autochdir
"
" " I'm prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab
"
" " more subtle popup colors
if has ('gui_running')
     highlight Pmenu guibg=#cccccc gui=bold
endif

" Chef stuff
autocmd FileType ruby,eruby set filetype=ruby.eruby.chef

" Python Mode Stuffs
" Keys:
" " K             Show python docs
" "   Rope autocomplete
" " g     Rope goto definition
" " d     Rope show documentation
" " f     Rope find occurrences
" " b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator modes)
" " ]]            Jump on next class or function (normal, visual, operator modes)
" " [M            Jump on previous class or method (normal, visual, operator modes)
" " ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

" "Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" " Auto check on save
let g:pymode_lint_write = 1

" " Support virtualenv
let g:pymode_virtualenv = 1

" " Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'

" " syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" " Don't autofold code
let g:pymode_folding = 0
