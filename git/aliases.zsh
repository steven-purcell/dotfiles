# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'


#
# git-flow cheats
# brew install git-flow-avh
#
# init      Initialize a new git repo with support for the branching model.
# feature   Manage your feature branches.
# bugfix    Manage your bugfix branches.
# release   Manage your release branches.
# hotfix    Manage your hotfix branches.
# support   Manage your support branches.
# version   Shows version information.
# config    Manage your git-flow configuration.
# log       Show log deviating from base branch.

# INIT
# Init a new git repo with branching model support
alias gfi='git flow init'

## FEATURE
# Start a new feature
alias gffs='git flow feature start ' # <feature-name>
# Finish up a feature
alias gfff='git flow feature finish ' # <feature-name>
# Publish a feature
alias gffpub='git flow feature publish ' # <feature-name>
# Getting a published feature
alias gffpull='git flow feature pull origin ' # <feature-name>
# Track a feature
alias gfft='git flow feature track ' # <feature-name>

## RELEASE
# Start a release
alias gfrs='git flow release start ' # <release-name> [<sha1-hash-to-start-release-from>]
# Publish a release
alias gfrp='git flow release publish ' # <release-name>
# Track a release
alias gfrt='git flow release track ' # <release-name>
# Finish a release
alias gfrf='git flow release finish ' # <release-name>
# Push tags
alias gfpt='git push --tags'

# HOTFIX
# Start a hotfix
alias gfhs='git flow hotfix start ' # <version> [<base-name>]'
# Finish a hotfix
alias gfhf='git flow hotfix finish ' # <version>
