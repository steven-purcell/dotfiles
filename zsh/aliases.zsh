# Reload it all
alias reload!='. ~/.zshrc'

alias name='scutil --get ComputerName' # get computer name

# Mysql
alias importdb='echo "mysql -u <username> -p <databasename> < <filename.sql>"'
alias restartdb='mysql.server restart'
alias startdb='mysql.server start'
alias stopdb='mysql.server stop'

#keycloak
alias startkeycloak='docker run -p8080:8080 -e KEYCLOAK_USER=admin -e KEYCLOAK_PASSWORD=admin jboss/keycloak'

# readlink OSX
alias readlink='greadlink'

# move around
alias ...='cd ../..'
alias ..='cd ..'
alias .d='cd ~/.dotfiles'
alias h='history'
alias rf='rm -rf'

# tools
alias tool='cd ~/tools'

# ssm
alias ssm-gov='cd ~/tools/ssm-parameter-store-gov; awsworkspace g2lytics-gov'
alias ssm-pub='cd ~/tools/ssm-parameter-store-pub; awsworkspace g2lytics-pub'
alias ssm-gov-open='ssm-gov; atom .'
alias ssm-pub-open='ssm-pub; atom .'

# workspace
alias ws='cd $HOME/workspace'
alias makesrc='mkdir -p ~/code/apis ~/code/data ~/code/oss ~/code/services ~/code/syncs ~/code/tmp ~/code/tools'
alias wsp='cd $HOME/workspace/projects'

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
alias .v='vim ~/.vimrc'
alias .z='vim ~/.zshrc'
alias .h='vim /etc/hosts'

# Homebrew
alias brewu='brew update  && brew upgrade --all && brew cleanup && brew prune && brew doctor'

#bitbucket shortcuts
alias pull-requests='python -mwebbrowser https://bitbucket.org/dashboard/pullrequests?section=teams'