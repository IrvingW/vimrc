"set nocompatible 
set expandtab
set softtabstop=4
set backspace=2   
set encoding=utf-8  
set fileencoding=utf-8  
set number  
set autoindent 
set cindent 
set shiftwidth=4
set tabstop=4
set hlsearch
set incsearch	" begin to search before press enter"
set cursorline	" prominent current line
set t_Co=256 " using 256 colors"
set background=dark


set nocompatible
"filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'KabbAmine/yowish.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'godlygeek/tabular'
Plugin 'junegunn/limelight.vim'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tmhedberg/SimpylFold'
Plugin 'google/yapf', { 'rtp': 'plugins/vim' }
Plugin 'mileszs/ack.vim'
Plugin 'ashfinal/vim-colors-violet'
Plugin 'Shougo/denite.nvim'
Plugin 'chemzqm/denite-git'
call vundle#end()

let g:mapleader = ";"
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

" CtrlP
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <F4> <Esc>:CtrlP<CR>
let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
        \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
        \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=30
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

" NERDTree
" Ctrl+N 打开/关闭
map <C-n> :NERDTreeToggle<CR>
" 当不带参数打开Vim时自动加载项目树
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 当所有文件关闭时关闭项目树窗格
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 不显示这些文件
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] "ignore files in NERDTree
" 不显示项目树上额外的信息，例如帮助、提示什么的
" let NERDTreeMinimalUI=1

" fold code
set foldmethod=indent
" au BufWinLeave * silent mkview  " 保存文件的折叠状态
" au BufRead * silent loadview    " 恢复文件的折叠状态
nnoremap <space> za             " 用空格来切换折叠状态
nnoremap <C-z> zm               " 打开所有折叠
nnoremap <C-x> zr               " 关闭所有折叠

" nerdcommenter
let g:NERDSpaceDelims=1

" tagbar
map <C-t> :Tagbar<CR>

" ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" shell
noremap <c-d> :sh<cr>


" 自动补全配置
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项

let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
" let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
" nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
"nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处

" limelight
map <C-l> :Limelight!!<CR>

" colorscheme monokai 
colorscheme yowish
