syntax on
execute pathogen#infect('~/.vim/bundle/{}')
""execute pathogen#infect()
filetype on
filetype plugin indent on
set listchars=tab:..
match NonText '^\s\+'
set list
set ww=[,],<,>,h,l,b
colorscheme solarized
set background=dark
set tabstop=4
set shiftwidth=2
set autoindent
set expandtab
set number
set paste


autocmd FileType python set omnifunc=pythoncomplete#Complete
set foldmethod=indent
set foldlevel=99
nnoremap <space> za


"NERDTREE STUFF
autocmd vimenter * NERDTree | wincmd p 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

"MACVIM stuff
if has("gui_macvim")
  set guifont=Source\ Code\ Pro:h13
  map <D-1> :tabfirst<Cr>
  map <D-2> :tabfirst<Cr>gt
  map <D-3> :tabfirst<Cr>3gt
  map <D-4> :tabfirst<Cr>4gt
endif
