## Setup

### Install Stow

Linux: `apt-get install stow`

OSX:   `brew install stow`

### Clone repo and init dotfiles

	cd ~ && git clone https://github.com/on4r/dotfiles.git
	cd dotfiles
	stow vim && stow tmux && stow zsh

### Install vim plugins

> managed via [Vundle](https://github.com/VundleVim/Vundle.vim)

	vim +PluginInstall +qall

### Zsh plugins

> managed via [Antigen](https://github.com/zsh-users/antigen)


