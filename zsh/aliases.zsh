# Reload it all
alias reload!='. ~/.zshrc'

# Mysql
alias startdb='mysql.server start'
alias stopdb='mysql.server stop'
alias restartdb='mysql.server restart'
alias importdb='echo "mysql -u <username> -p <databasename> < <filename.sql>"'

# readlink OSX
alias readlink='greadlink'

# Code
alias ...='cd ../..'
alias ..='cd ..'
alias .d='cd ~/.dotfiles'
alias apis='cd ~/code/apis'
alias c='cd ~/code'
alias data='cd ~/code/data'
alias h='history'
alias js'node'
alias oss='cd ~/code/oss'
alias serv='cd ~/code/serv'
alias src='cd ~/code'
alias sync='cd ~/code/sync'
alias tmp='cd ~/code/tmp'
alias tool='cd ~/code/tools'

# MacVim
alias vim='mvim -v'
alias v='mvim -v .'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "

# Moving around
alias cdb='cd -'
alias cls='clear;ls'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

alias la='ls -a'
alias ll='ls -alGh'
alias ls='ls -Gh'
alias lsg='ll | grep'

# editing
alias ae='mvim -v ~/.dotfiles/zsh/aliases.zsh'
alias de='mvim -v ~/.dotfiles'
alias ge='mvim -v ~/.dotfiles/git/aliases.zsh'
alias pe='mvim -v ~/.dotfiles/zsh/prompt.zsh'
alias ve='mvim -v ~/.vimrc'
alias ze='mvim -v ~/.zshrc'

# Homebrew
alias brewu='brew update  && brew upgrade --all && brew cleanup && brew prune && brew doctor'
