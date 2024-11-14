dotfiles
========

nvim, .vimrc, .bashrc, .zshrc, etc

### Usage:

remove `.vim/` and `~/.config/nvim` dir, then run in repo dir:

```
ln -sfv "$(pwd)/.vim" ~
ln -sfv "$(pwd)/.vimrc" ~
ln -sfv "$(pwd)/.bashrc" ~
ln -sfv "$(pwd)/.bash_profile" ~
ln -sfv "$(pwd)/.zshrc" ~
ln -sfv "$(pwd)/nvim" ~/.config
```


one line, for my pleasure:

`ln -sfv "$(pwd)/.vim" ~ && ln -sfv "$(pwd)/.vimrc" ~ && ln -sfv "$(pwd)/.bashrc" ~ && ln -sfv "$(pwd)/.bash_profile" ~ && ln -sfv "$(pwd)/.zshrc" ~ && ln -sfv "$(pwd)/nvim" ~/.config
` 

## Neovim

In Neovim:

`:Lazy` -> `Install (I)`



## vim

#### Plug may have to be installed:

`curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

and run `PlugInstall` in vim.


