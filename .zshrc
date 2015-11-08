#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias albatros="ssh gcoop@albatros.gcoop.com.ar ./albatros/albatros.sh"
alias gitpush='git stash && git pull && git push origin && git stash pop'
alias gitpull='git stash && git pull && git stash pop'
alias gca='cd ~/trabajos/gca'
alias gitm='git status --porcelain | grep M | cut -c 3- | while read i ; do git add $i; done'
alias gitd='git status --porcelain | grep D | cut -c 3- | while read i ; do git rm $i; done'
alias svpn="killall ssh;  ssh -fNC malbec && ssh -fNC albatros && ssh -fNC ssug1003lx && ssh -fNC ssug1001lx"
alias ssug1001="ssh ssug1001lx"
cal -3

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3' # This needs to be placed before the virtualenvwrapper command
#source /usr/local/bin/virtualenvwrapper.sh


export PATH=~/trabajos/git-bash-utils:$PATH
export PATH=~/trabajos/multi-ssh-config:$PATH
export PATH=~/trabajos/automatizacion:$PATH
