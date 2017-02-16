let $PATH = '/usr/local/bin:'.$PATH

 set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kchmck/vim-coffee-script'
Plugin 'hail2u/vim-css3-syntax'
"Plugin 'mitsuhiko/vim-jinja'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'mxw/vim-jsx'
Plugin 'digitaltoad/vim-jade'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'sophacles/vim-processing'

Plugin 'pangloss/vim-javascript.git'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'isRuslan/vim-es6' 



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


let g:airline#extensions#tabline#enabled = 1

let g:javascript_plugin_jsdoc = 1

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*


au BufNewFile,BufRead *.ejs set filetype=html



" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set softtabstop=2
" On pressing tab, insert 2 spaces
set expandtab



syntax enable
filetype on
set nolist
"set listchars=tab:|-
match NonText '^\s\+'
set ww=[,],<,>,h,l,b

set number

set background=dark
colorscheme apprentice


autocmd FileType python set omnifunc=pythoncomplete#Complete
set foldmethod=indent
set foldlevel=99
nnoremap <space> za


"NERDTREE STUFF
autocmd vimenter * NERDTree | wincmd p 

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-n> :NERDTreeToggle<CR>

"NERDTREE-GIT-PLUGIN STUFF
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"MACVIM stuff
if has("gui_macvim")
  let macvim_skip_colorscheme=1
  set guifont=Source\ Code\ Pro:h13
  map <D-1> :tabfirst<Cr>
  map <D-2> :tabfirst<Cr>gt
  map <D-3> :tabfirst<Cr>3gt
  map <D-4> :tabfirst<Cr>4gt
  map <D-5> :tabfirst<Cr>5gt
endif
