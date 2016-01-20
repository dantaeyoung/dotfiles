let $PATH = '/usr/local/bin:'.$PATH

 set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'rizzatti/dash.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'marijnh/tern_for_vim'
Plugin 'tpope/vim-abolish'
Plugin 'bling/vim-airline'
Plugin 'kchmck/vim-coffee-script'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mxw/vim-jsx'
Plugin 'digitaltoad/vim-jade'
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
set softtabstop=4
" On pressing tab, insert 4 spaces
set noexpandtab



syntax on
filetype on
set nolist
"set listchars=tab:|-
match NonText '^\s\+'
set ww=[,],<,>,h,l,b
colorscheme solarized
set background=dark
set number
set paste


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
endif
