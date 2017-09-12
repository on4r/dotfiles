## Setup

### Install Stow

Linux: `apt-get install stow`  
OSX:   `brew install stow`

### Clone repo and init dotfiles

	cd ~ && git clone https://github.com/on4r/dotfiles.git
	cd dotfiles
	stow vim && stow tmux && stow zsh

### Install vim plugins

	vim +PluginInstall +qall

## Plugins

### vim

> managed via [Vundle](https://github.com/VundleVim/Vundle.vim)

* [gruvbox](https://github.com/morhetz/gruvbox)
* [lightline](https://github.com/itchyny/lightline.vim)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [numbers](https://github.com/myusuf3/numbers.vim)

### zsh

> managed via [Antigen](https://github.com/zsh-users/antigen)

* [zsh-async](https://github.com/mafredri/zsh-async)
* [pure](https://github.com/sindresorhus/pure)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

## Fonts & Colors

...
