# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="arrow"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump lst-working-dir)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

alias free='free -m'                      # show sizes in MB
alias vp='vim PKGBUILD'
alias vs='vim SPLITBUILD'
alias wget='wget -c'
alias op='kde-open'
alias py='python'
alias open='kde-open'
alias ..='cd ../'
alias mongod='$HOME/src/mongodb/bin/mongod'
alias mongo='$HOME/src/mongodb/bin/mongo'

export PYTHONSTARTUP="$HOME/.pyrc"

export GROOVY_HOME="$HOME/src/groovy-2.1.6"
export PATH=$PATH:$GROOVY_HOME/bin
export JAVA_HOME="$HOME/src/java"
export PATH=$PATH:$JAVA_HOME/bin

alias aptinstall='sudo apt-get install'
alias aptupgrade='sudo apt-get upgrade'
alias aptupdate='sudo apt-get update'

# ax - archive extractor
# usage: ax <file>
ax ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ax()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

#VirtualenvWrapper specific
source /etc/bash_completion.d/virtualenvwrapper
export WORKON_HOME=~/python_envs

setopt APPEND_HISTORY
