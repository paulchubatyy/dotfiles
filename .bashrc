# ~/.bashrc: executed by bash(0) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# Ignores dupes in the history
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:cd:[bf]g:exit:..:...:ll"

if hash brew 2>/dev/null; then
    # nvm
    export NVM_DIR=~/.nvm
    if [ -f "$(brew --prefix nvm)/nvm.sh" ]; then
        source $(brew --prefix nvm)/nvm.sh
    fi
fi

if hash kubectl 2>/dev/null; then
    source $(kubectl completion bash)
fi

if [ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc ]; then
    source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
fi

if [ -f ~/.bash-completion.d/watson.completion ]; then
	source ~/.bash-completion.d/watson.completion
fi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
fi

# pyenv virtualenv
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
TERM=xterm
export TERM

RED='\[\033[01;31m\]'
WHITE='\[\033[0;00m\]'
GREEN='\[\033[0;32m\]'
BLUE='\[\033[0;34m\]'
YELLOW='\[\033[0;33m\]'
if [ $(hostname) = 'dreamer' ]; then
    export PS1="${GREEN}\h:${YELLOW}\W \\$ ${WHITE}\[$(tput sgr0)\]"
else
    export PS1="${BLUE}\h:${YELLOW}\W \\$ ${WHITE}\[$(tput sgr0)\]"
fi

