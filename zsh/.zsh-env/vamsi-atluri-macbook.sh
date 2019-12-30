source ${HOME}/.lt.sh
source ${HOME}/lt_vars.sh

export MYSQL=/usr/local/opt/mysql@5.7/bin

export GOPATH=${HOME}

export PATH="/usr/local/opt/node@10/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_201.jdk/Contents/Home
export PATH=$PATH:$HOME/bin:/usr/local/bin:$MYSQL

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

