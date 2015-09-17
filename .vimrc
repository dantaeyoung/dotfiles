syntax on
filetype on
filetype plugin indent on
set listchars=tab:..
set list
set ww=[,],<,>,h,l,b
colorscheme solarized
set background=dark
set tabstop=4
set shiftwidth=4
set autoindent
set number
set paste

autocmd FileType python set omnifunc=pythoncomplete#Complete
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

execute pathogen#infect()

"NERDTREE STUFF
autocmd vimenter * NERDTree | wincmd p 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>




