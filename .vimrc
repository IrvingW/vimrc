set rtp+=~/.vim/bundle/Vundle.vim  
call vundle#begin()  
Plugin 'VundleVim/Vundle.vim'  
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Raimondi/delimitMate'
Plugin 'godlygeek/tabular'
Plugin 'junegunn/limelight.vim'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'sjl/gundo.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'
call vundle#end()
  
set nocompatible 
set backspace=2   
set encoding=utf-8  
set fileencoding=utf-8  
set number  
set autoindent 
set cindent 
set tabstop=4  
set shiftwidth=4
set softtabstop=4
set tabstop=4
set mouse=a		" use mouse
set hlsearch
set incsearch	" begin to search before press enter"
set cursorline	" prominent current line
syntax enable  



colorscheme monokai 

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" ==============================================================
" vim airline
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

" 是否打开tabline
 let g:airline#extensions#tabline#enabled = 1
" =============================================================
" 是否打开markdown预览
let g:instant_markdown_autostart = 0
map <F12> :InstantMarkdownPreview<CR>

" ========================================================
" YouCompleteMe preview window do not hide
set completeopt-=preview

" ====================================================
