## Setup

### Install Stow

Linux: `apt-get install stow`  
MacOS: `brew install stow`

### Install Starship prompt

Linux: `curl -fsSL https://starship.rs/install.sh | bash`
MacOS: `brew install starship`

### Clone repo and init dotfiles

    cd ~ && git clone --recursive -j1 git@github.com:on4r/dotfiles.git
    cd dotfiles
    stow vim && stow tmux && stow zsh && stow git

### Install/Update vim plugins

    vim +PluginInstall +qall
    vim +PluginUpdate +qall

## Plugins

### vim

> managed via [Vundle](https://github.com/VundleVim/Vundle.vim)

* [gruvbox](https://github.com/morhetz/gruvbox)
* [lightline](https://github.com/itchyny/lightline.vim)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [numbers](https://github.com/myusuf3/numbers.vim)
* [yajs](https://github.com/othree/yajs.vim)
* [editorconfig](https://github.com/editorconfig/editorconfig-vim)
* [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
* [close-pair](https://github.com/tranvansang/vim-close-pair)
* [closetag](https://github.com/alvan/vim-closetag)

### zsh

> managed via [Antigen](https://github.com/zsh-users/antigen)

* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

## Bonus

### Programming Fonts

* [Anonymus Pro](https://www.marksimonson.com/fonts/view/anonymous-pro)
* [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

### Terminal Themes

* [Argonaut](https://github.com/lysyi3m/osx-terminal-themes#argonaut)
* [Brogrammer](https://github.com/lysyi3m/osx-terminal-themes#brogrammer)
* [Cobalt2](https://github.com/lysyi3m/osx-terminal-themes#cobalt2)
* [Darkside](https://github.com/lysyi3m/osx-terminal-themes#darkside)
* [DotGov](https://github.com/lysyi3m/osx-terminal-themes#dotgov)
* [ToyChest](https://github.com/lysyi3m/osx-terminal-themes#toychest)
