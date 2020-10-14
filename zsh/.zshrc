# init antigen
source ~/.zsh/antigen.zsh

# load plugins
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# history
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

# enable prompt system
autoload -Uz promptinit
promptinit

# enable autocompletion
autoload -Uz compinit
compinit

# gpg
GPG_TTY=$(tty)
export GPG_TTY

#
# aliases
#

alias ll="ls -lh"
alias la="ls -lhA"
alias c="clear"
alias gs="git status"
alias gl="git lg"

#
# exports
#

export PATH=$PATH:"/Applications/Sublime Text.app/Contents/SharedSupport/bin/"
export PATH=$PATH:~/scripts
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:~/.composer/vendor/bin
export PATH=$PATH:/usr/local/opt/

#
# functions
#

findh() {
	history 256 | grep $1
}

cdl() {
	cd $* && ll
}
