if [ -f /etc/bash_completion ]; then
	    . /etc/bash_completion
fi

xhost +local:root > /dev/null 2>&1

complete -cf sudo

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
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

alias nn='nano'
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

export EDITOR=nano
export SUDO_EDITOR="nano"

export PYTHONSTARTUP="$HOME/.pyrc"

# prompt
PS1='[\u@\h \W]\$ '


#Mark-Unmark-Jump by http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html 
export MARKPATH=$HOME/.marks/
function jump { 
    cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}
function mark { 
    mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}
function unmark { 
    rm -i $MARKPATH/$1 
}
function marks {
    ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}
function _jump {
    local cur=${COMP_WORDS[COMP_CWORD]}
    local marks=$(find $MARKPATH -type l -printf "%f\n")
    COMPREPLY=($(compgen -W '${marks[@]}' -- "$cur"))
    return 0
}
complete -o default -o nospace -F _jump jump
function _unmark {
    local cur=${COMP_WORDS[COMP_CWORD]}
    local marks=$(find $MARKPATH -type l -printf "%f\n")
    COMPREPLY=($(compgen -W '${marks[@]}' -- "$cur"))
    return 0
}
complete -o default -o nospace -F _unmark unmark

export GROOVY_HOME="$HOME/src/groovy-2.1.6"
export PATH=$PATH:$GROOVY_HOME/bin
export JAVA_HOME="$HOME/src/java"
export PATH=$PATH:$JAVA_HOME/bin
