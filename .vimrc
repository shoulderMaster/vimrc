set nocompatible
set autoindent
set cindent
set smartindent
set wrap 
set nowrapscan
set nobackup
set ruler
set shiftwidth=2
set number
set fencs=ucs-bom,utf-8,euc-kr.latin1
set fileencoding=utf-8
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
set tags=../../../../tags,../../../tags,../../tags,../tags,./tags,tags
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

"map   <S-CR> <ESC>o
"map!  <S-CR> <ESC>o

"disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
  endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
if filereadable("../../ctags")
  let g:neocomplcache_ctags_program = "../../ctags"
elseif filereadable("../ctags")
  let g:neocomplcache_ctags_program = "../ctags"
elseif filereadable("./ctags")
  let g:neocomplcache_ctags_program = "./ctags"
endif
  " Plugin key-mappings.
  "imap      (neocomplcache_snippets_expand)
  "smap      (neocomplcache_snippets_expand)
  "map  <S-Tab>  :neocomplcache#undo_completion()
  "inoremap      neocomplcache#complete_common_string()

  " SuperTab like snippets behavior.
  "imap  neocomplcache#sources#snippets_complete#expandable() ? "\(neocomplcache_snippets_expand)" : pumvisible() ? "\" : "\"
  " Recommended key-mappings.
  " <CR>: close popup and save indent.
  "inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
  " <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
  inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
  inoremap <expr><S-Space> pumvisible() ? neocomplcache#close_popup()."\<ESC><S-e><a>" : "\<ESC><S-e><a>" 
  " <C-h>, <BS>: close ppup and delete backword char.
  "inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"

  "inoremap <expr><BS> neocomplcache#smart_close_popup()."\<()
  "inoremap <expr><C-e>  neocomplcache#cancel_popup " Recommended key-mappings.
  " : close popup and save indent.
  "inoremap   neocomplcache#smart_close_popup() . "\"
  " : completion.
  "inoremap   pumvisible() ? "\" : "\"
  " , : close popup and delete backword char.
  "map <Tab> :neocomplcache#smart_close_popup()."\"
  "inoremap  neocomplcache#smart_close_popup()."\"
  "inoremap   neocomplcache#close_popup()
  "inoremap   neocomplcache#cancel_popup()
  " AutoComplPop like behavior.
  "let g:neocomplcache_enable_auto_select = 1

  " Shell like behavior(not recommended).
  "set completeopt+=longest
  "let g:neocomplcache_enable_auto_select = 1
  "let g:neocomplcache_disable_auto_complete = 1
  "inoremap   pumvisible() ? "\" : "\"
  "inoremap   neocomplcache#smart_close_popup() . "\"

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  

  " Enable heavy omni completion.
  if !exists('g:neocomplcache_omni_patterns')
      let g:neocomplcache_omni_patterns = {}
    endif
    let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
    "autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
    let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
    let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'neocomplcache'

call vundle#end()


"<Tab>-oriented-edit
inoremap ;<TAB> <End>;

"inoremap {}<CR> {<CR><CR>}<Up><TAB>
inoremap {<Tab> <End><Space>{<CR><CR>}<Up><TAB>
inoremap (<Space> <Space>(void)
inoremap (<TAB> <Space>()<Left>
inoremap [<Tab> []<Left>
map <C-k> <C-u>
map <C-j> <C-d>
inoremap <C-l> <ESC>ea
inoremap <C-h> <ESC>bi
inoremap /* /*<Space><Space>*/<Left><Left><Left>
vnoremap ' <Esc>`<i'<Esc>`>a'<Esc>
vnoremap " <Esc>`<i"<Esc>`>a"<Esc>
vnoremap ) <Esc>`<i(<Esc>`>a)<Esc>
vnoremap */ <Esc>`<i/*<space><Esc>`>a<space>*/<Esc>
