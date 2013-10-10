let g:Powerline_symbols = 'fancy'
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
set softtabstop=2 tabstop=2 shiftwidth=2
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc>:BufExplorer<cr>

" F6 - предыдущий буфер
nmap <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - следующий буфер
nmap <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

set mouse=a
set mousemodel=popup
set incsearch
set nocompatible               " be iMproved
set nu
set showcmd
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'https://github.com/wincent/Command-T.git'
 " git repos on your local machine (ie. when working on your own plugin)
 Bundle 'https://github.com/Lokaltog/vim-powerline'
 " ...
 Bundle 'https://github.com/ervandew/screen.git'
 Bundle 'https://github.com/scrooloose/nerdtree.git'
 Bundle 'https://github.com/corntrace/bufexplorer.git'
 Bundle 'https://github.com/scrooloose/nerdcommenter.git'
 filetype plugin indent on     " required!
 set fo+=cr
 set sessionoptions=curdir,buffers,tabpages
 " F2 - быстрое сохранение
 nmap <F2> :w<cr>
 vmap <F2> <esc>:w<cr>i
 imap <F2> <esc>:w<cr>i
 
 " F3 - просмотр ошибок
 nmap <F3> :copen<cr>
 vmap <F3> <esc>:copen<cr>
 imap <F3> <esc>:copen<cr>
 autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

 vmap < <gv
 vmap > >gv
" function InsertTabWrapper()
"  let col = col('.') - 1
"  if !col || getline('.')[col - 1] !~ '\k'
"    return "\<tab>"
"  else
"    return "\<c-p>"
"  endif
" endfunction
" imap <tab> <c-r>=InsertTabWrapper()<cr>
" " Слова откуда будем завершать
" set complete=""
" " Из текущего буфера
" set complete+=.
" " Из словаря
" set complete+=k
" " Из других открытых буферов
" set complete+=b
" " из тегов 
" set complete+=t
" imap <C-F> <C-X><C-O>
" set omnifunc=syntaxcomplete#Complete
 set completeopt=longest,menuone
 inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
 inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
   \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

 inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
   \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

