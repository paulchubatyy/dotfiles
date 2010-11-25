# ls aliases
alias ll='ls -hl --color=always'
alias la='ls -A'
alias l='ls -CF'

# Moving around
alias ..='cd ..'
alias ...='cd .. ; cd ..'
alias ....='cd .. ; cd .. ; cd ..'

#Git aliases
#alias g="git" # so lazy
#alias s='git status'
#alias d='git diff'
#alias c="git commit"
#alias cm="git commit -m"
#alias ca="git commit --amend"
#alias a="git add -Av"
#alias p="git add -p"
#alias co="git checkout"
#alias c-="git checkout -- ."
#alias pu="git pull"
#alias pur="git pull --rebase"
#alias b="git branch"

# Git submodule shortcuts
#alias subupdate='git submodule sync && git submodule update --init --recursive'
#alias subcheckout='git submodule foreach git checkout master'
#alias subreset='git submodule foreach --recursive git checkout -- . && git submodule foreach --recursive git clean -f'
#alias subpull='git submodule foreach git pull'
#alias subdiff='git submodule foreach --recursive git diff'
#alias subecho="git submodule foreach 'echo \$name \$sha1:`git rev-parse HEAD`'"

# Other handy aliases
alias ls='ls --color=auto'
alias free="free -m"
#alias update="sudo aptitude update"
#alias install="sudo aptitude install"
#alias upgrade="sudo aptitude safe-upgrade"
#alias remove="sudo aptitude remove"
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
              
alias grep='grep --color=auto'
#alias fgrep='fgrep --color=auto'
                                     