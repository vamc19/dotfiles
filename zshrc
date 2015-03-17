# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="varrow"
ZSH_THEME="vsorin"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump command-not-found python jump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

alias free='free -m'                      # show sizes in MB
alias vp='vim PKGBUILD'
alias vs='vim SPLITBUILD'
alias wget='wget -c'
alias op='kde-open'
alias py='python'
alias py3='python3'
alias open='xdg-open'
alias t='tree -C --dirsfirst'

export PYTHONSTARTUP="$HOME/.pyrc"

alias agi='sudo apt-get install'
alias agug='sudo apt-get upgrade'
alias agud='sudo apt-get update'
alias acs='apt-cache search'
alias agr='sudo apt-get remove'
alias agp='sudo apt-get purge'

alias j='jump'

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
#source /etc/bash_completion.d/virtualenvwrapper
#export WORKON_HOME=~/python_envs

setopt append_history no_inc_append_history no_share_history

#source ~/ros_catkin/install_isolated/setup.zsh
#source /opt/ros/indigo/setup.zsh

export ANDROID_HOME='/home/vamc/src/android-sdk-linux/'
