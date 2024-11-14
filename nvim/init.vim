

set expandtab
set tabstop=2  
set shiftwidth=2    " Indents will have a width of 4

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set smarttab


set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set number
" don't use ESC!
:imap jk <Esc>
:inoremap jk <Esc>
:xnoremap jk <Esc>

" set line breaks to not break in the middle of a word
set formatoptions+=l
set lbr


" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Word wrap with navigation
set ww=[,],<,>,h,l,b

"" active window highlight

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END


nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

nnoremap <leader>t :echo "Leader key is working!"<CR>


lua vim.g.loaded_netrw = 1
lua vim.g.loaded_netrwPlugin = 1
 



lua require("config.lazy")
lua require("lazy").setup("plugins")

