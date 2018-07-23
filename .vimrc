"for vim plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py' 
let g:ycm_confirm_extra_conf = 0 
let g:ycm_key_list_select_completion = ['', ''] 
let g:ycm_key_list_previous_completion = ['', ''] 
let g:ycm_autoclose_preview_window_after_completion = 1 
let g:ycm_warning_symbol = '>*' 
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1
"for python
let g:ycm_server_python_interpreter = '/usr/bin/python3'"
let g:pydiction_location='~/.vim/complete-dict'


inoremap <expr> <SPACE>  pumvisible() ? "\<C-Y>\<ESC>a" : "\<SPACE>"
inoremap <expr> <TAB>    pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <C-l> <ESC>ea
inoremap <C-h> <ESC>bi

"for general language
set nocompatible
set autoindent
set cindent
set number
set smartindent
set wrap
set nowrapscan
set nobackup
set ruler
set shiftwidth=2
set fencs=ucs-bom,utf-8,euc-kr.latin1
set fileencodings=utf8
set tenc=utf-8
set expandtab
set hlsearch
set ignorecase
set tabstop=2
set lbr
set incsearch
syntax on
filetype indent on
set background=dark
colorscheme desert
set backspace=eol,start,indent
set history=1000

"for python
filetype indent plugin on
let python_version_2 = 1
let python_highlight_all = 1


"key mapping
map   <S-CR> <ESC>o
map!  <S-CR> <ESC>o

"<Tab>-oriented-edit
inoremap ;<TAB> <End>;

inoremap {<Tab> <End><Space>{<CR><CR>}<Up><TAB>
inoremap (<Space> <Space>(void)
inoremap (<TAB> <Space>()<Left>
inoremap [<Tab> []<Left>
map <C-k> <C-u>
map <C-j> <C-d>
inoremap /* /*<Space><Space>*/<Left><Left><Left>
vnoremap ' <Esc>`<i'<Esc>`>a'<Esc>
vnoremap " <Esc>`<i"<Esc>`>a"<Esc>
vnoremap ) <Esc>`<i(<Esc>`>a)<Esc>
vnoremap */ <Esc>`<i/*<space><Esc>`>a<space>*/<Esc>

"for 한글 명령
inoremap <ESC> <ESC>:set iminsert=0<CR>

"for ctags, cscope
set tags=../../tags,../tags,./tags,tags
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
if filereadable("../cscope.out")
  cs add ../cscope.out
  cd ..
elseif filereadable("./cscope.out")
  cs add cscope.out
else
  cs add /usr/src/linux/cscope.out
endif
set csverb
set nocscopetag

