""""""""""""""""""""""
" VUNDLE
""""""""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Syntax Highlight for Vue.js components
Plugin 'posva/vim-vue'

"Next generation completion framework after neocomplcache
Plugin 'Shougo/neocomplete'

"A vim plugin to display the indention levels with thin vertical lines
Plugin 'Yggdroot/indentLine'
"A Vim plugin for visually displaying indent levels in code
"Plugin 'nathanaelkane/vim-indent-guides'

"A tree explorer plugin for vim.
Plugin 'scrooloose/nerdtree'
"A plugin of NERDTree showing git status
Plugin 'Xuyuanp/nerdtree-git-plugin'

"Vim plugin for intensely orgasmic commenting
Plugin 'scrooloose/nerdcommenter'
"lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


Plugin 'christoomey/vim-tmux-navigator'
"Seamless navigation between tmux panes and vim splits

"CoffeeScript support for vim
Plugin 'kchmck/vim-coffee-script'

"Distraction-free writing in Vim.
Plugin 'junegunn/goyo.vim'

"Hyperfocus-writing in Vim.
Plugin 'junegunn/limelight.vim'

"Low-contrast Vim color scheme based on Seoul Colors
Plugin 'junegunn/seoul256.vim'

"one colorscheme pack to rule them all!
Plugin 'flazz/vim-colorschemes'

"press F8 / Shift F8 to switch colorschemes.. alt F8 for a random one
Plugin 'felixhummel/setcolors.vim'


""""""""" LANGUAGE-SPECIFIC
"CoffeeScript support for vim
"Plugin 'kchmck/vim-coffee-script'

"CSS3 syntax (and syntax defined in some foreign specifications) support for Vim's built-in syntax/css.vim
Plugin 'hail2u/vim-css3-syntax'

"Vim Pug (formerly Jade) template engine syntax highlighting and indent
"Plugin 'digitaltoad/vim-puge'

"Enhanced javascript syntax file for Vim 
Plugin 'jelera/vim-javascript-syntax'

Plugin 'pangloss/vim-javascript'


"Interactive command execution in Vim.
Plugin 'Shougo/vimproc.vim'

Plugin 'shougo/vimshell'

"Better Rainbow Parentheses
Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'tpope/vim-sexp-mappings-for-regular-people.git'
"Plugin 'guns/vim-sexp.git'
"Plugin 'tpope/vim-repeat.git'
"Plugin 'tpope/vim-surround.git'

"vim-hy
"Plugin 'hylang/vim-hy'

"You don't Complete Me; Vim Completes Me! A super simple, super minimal, super light-weight tab completion plugin for Vim.
Plugin 'ajh17/VimCompletesMe'






" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:javascript_plugin_jsdoc = 1

let g:neocomplete#enable_at_startup = 1

autocmd BufRead,BufNewFile * RainbowParenthesesLoadRound
autocmd BufRead,BufNewFile * RainbowParenthesesActivate



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Set to auto read when a file is changed from the outside
set autoread

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
		set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif



" Highlight search results
set hlsearch

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>


" Don't redraw while executing macros (good performance config)
set lazyredraw 

" Show matching brackets when text indicator is over them
set showmatch  

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" Add a bit extra margin to the left
set foldcolumn=1

" copy paste works with control-p
set pastetoggle=<c-p>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme flattened_dark
catch
endtry

set background=dark



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab



" 1 tab == 4 spaces
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces


set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" show line numbers 
set number

" don't use ESC!
:imap jk <Esc>
:inoremap jk <Esc>
:xnoremap jk <Esc>

" set line breaks to not break in the middle of a word
set formatoptions+=l
set lbr


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Word wrap with navigation
set ww=[,],<,>,h,l,b

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other plugin things
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline#extensions#tabline#enabled = 1

let g:javascript_plugin_jsdoc = 1

" use the same clipboard (leader is usually backslash)
vmap <leader>y :w! /tmp/vitmp<CR>                                                                   
nmap <leader>p :r! cat /tmp/vitmp<CR>

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

au BufNewFile,BufRead *.ejs set filetype=html



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

"GVIM stuff
if has("win32")
  set guifont=Consolas:h10
  colorscheme solarized
endif


" Goyo / limelight / distraction free writing
let g:limelight_conceal_ctermfg = 'gray'
function! s:goyo_enter()
  colo seoul256
  Limelight
endfunction

function! s:goyo_leave()
  color solarized
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
