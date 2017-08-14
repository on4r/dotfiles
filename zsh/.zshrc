# histroy
HISTSIZE=4096
HISTFILE=~/.zsh_history
SAVEHIST=4096

# colored man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;38;5;74m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[38;33;246m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;38;5;146m'

# listings colored
export CLICOLOR=1

# pure prompt needs this
fpath+=("/usr/local/share/zsh/site-functions")

# init the prompt system
autoload -Uz promptinit
promptinit
prompt pure

#
# aliases
#

alias ll="ls -lh"
alias la="ls -lhA"

#
# exports
#

export PATH=$PATH:"/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"

#
# functions
#

function homestead() {
	( cd ~/Homestead && vagrant $* )
}

#
# plugins
#

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh