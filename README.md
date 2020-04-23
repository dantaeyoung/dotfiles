dotfiles
========

.vimrc, .bashrc, .zshrc, etc

### Usage:

remove `.vim/` dir, then run in repo dir:

```
ln -sfv "$(pwd)/.vim" ~
ln -sfv "$(pwd)/.vimrc" ~
ln -sfv "$(pwd)/.bashrc" ~
ln -sfv "$(pwd)/.bash_profile" ~
ln -sfv "$(pwd)/.zshrc" ~
```


one line, for my pleasure:

`ln -sfv "$(pwd)/.vim" ~ && ln -sfv "$(pwd)/.vimrc" ~ && ln -sfv "$(pwd)/.bashrc" ~ && ln -sfv "$(pwd)/.bash_profile" ~ && ln -sfv "$(pwd)/.zshrc" ~
` 

#### Plug may have to be installed:

`curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

and run `VundleInstall` in vim.
