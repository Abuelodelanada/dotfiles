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


if [ -d "$HOME/trabajos/multi-ssh-config" ]
then
    PATH="$HOME/trabajos/multi-ssh-config:$PATH"
fi

# Customize to your needs...

TERM=xterm-vt220

alias albatros="ssh gcoop@albatros ./albatros/albatros.sh"
alias gitpush='git stash && git pull && git push origin && git stash pop'
alias gitpull='git stash && git pull && git stash pop'
alias gca='cd ~/trabajos/gca'
alias gitm='git status --porcelain | grep M | cut -c 3- | while read i ; do git add $i; done'
alias gitd='git status --porcelain | grep D | cut -c 3- | while read i ; do git rm $i; done'
alias svpn="killall ssh;  ssh -fNC malbec && ssh -fNC albatros && ssh -fNC ssug1003lx && ssh -fNC ssug1001lx"
alias socks= "ssh albatros '~/albatros/proxy.sh'"
alias ssug1001="ssh ssug1001lx"
alias pirus="ssh pirujitos.no-ip.org"
alias hacklab='/usr/bin/parallel-ssh -i -h /home/jose/.ssh/groups/hacklab'
alias php5='php5.6'
alias php='php5.6'


# Tiendas

alias os_current_tenant='export | grep OS_'
os_set_tenant()
{
    export OS_TENANT_NAME="$1"
}
alias ttiendasprd='ssh -fN tiendas_prd-aegir01 -o StrictHostKeyChecking=no'
alias tnube='ssh -fN compute01 -o StrictHostKeyChecking=no'
alias tlist='ps aux | grep "ssh -fN"'
alias sts0009='rdesktop -g 1280x800 localhost:3389 &'
alias sts0008='rdesktop -g 1280x800 localhost:3388 &'
alias suma="awk 'BEGIN {S=0} {S+=$1} END {print S}'"

export PATH=~/trabajos/git-bash-utils:$PATH
export PATH=~/trabajos/multi-ssh-config:$PATH
export PATH=~/trabajos/automatizacion/bin:$PATH
export PATH=~/desarrollo/dotfiles:$PATH
export TERM=xterm-256color
