## Setup

	apt-get install stow
	cd ~ && git clone https://github.com/on4r/dotfiles.git
	cd dotfiles
	stow vim && stow tmux && stow zsh
	bash vim/.vim/init.sh
