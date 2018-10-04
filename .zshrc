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

#PATH="$PATH:/bin/rg"
PATH="$HOME/bin:$PATH"
TERM=xterm-vt220

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm


alias kcondor="ps ax | pgrep -f 'ssh -fNC condor' | while read i; do kill -15 $i; done"
alias gitpush='git stash && git pull && git push origin && git stash pop'
alias gitpull='git stash && git pull && git stash pop'
alias gca='cd ~/trabajos/gca'
alias gitm='git status --porcelain | grep M | cut -c 3- | while read i ; do git add $i; done'
alias gitd='git status --porcelain | grep D | cut -c 3- | while read i ; do git rm $i; done'
alias socks= "ssh condor '~/albatros/proxy.sh'"
alias ssug1001="ssh ssug1001lx"
alias ssug1003="ssh ssug1003lx"
alias hacklab='/usr/bin/parallel-ssh -i -h /home/jose/.ssh/groups/hacklab'
alias php5='php5.6'
alias php='php5.6'
alias pirunas='ssh pirujitos.no-ip.org'
alias felipe='ssh felipe'
alias percona='mysql -uroot -p -h lo -P 3152 gca_jose'


# SSH
alias smith='ls -1 /home/jose/.ssh/ | grep ".pub" | sed "s/.pub//" | while read i; do ssh-add /home/jose/.ssh/$i; done'
alias kt='ps ax | pgrep -f "ssh -fNC (malbec|albatros|caladoc|ssug1001lx|ssug1003lx)" | while read i; do kill -15 $i; done'
alias kts='ps ax | pgrep -f "ssh -fNC suitecrm-prd-proxy01" | while read i; do kill -15 $i; done'
alias svpn="kt; ssh -fNC malbec && ssh -fNC condor && ssh -fNC ssug1003lx && ssh -fNC ssug1001lx"
alias suite="kts; ssh -fNC suitecrm-prd-proxy01"
alias condor="ssh -fNC malbec && ssh gcoop@condor ./albatros/albatros.sh"


# Tiendas

alias os_current_tenant='export | grep OS_'
os_set_tenant()
{
    export OS_TENANT_NAME="$1"
}
alias ttiendasprd='ssh -fN tiendas_prd-aegir01 -o StrictHostKeyChecking=no'
alias tnube='ssh -fN compute01 -o StrictHostKeyChecking=no'
alias tlist='ps aux | grep "ssh -fN"'
alias sts0009='krdc rdp://jmasson@localhost:3389 &'
alias sts0008='krdc rdp://jmasson@localhost:3388 &'
alias suma="awk 'BEGIN {S=0} {S+=$1} END {print S}'"

export PATH=~/trabajos/git-bash-utils:$PATH
export PATH=~/trabajos/multi-ssh-config:$PATH
export PATH=~/trabajos/automatizacion/bin:$PATH
export PATH=~/desarrollo/dotfiles:$PATH
export TERM=xterm-256color
export PATH=$PATH:/home/jose/trabajos/SuiteCRM/vendor/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# SuiteCRM test
export DATABASE_DRIVER=MYSQL;
export DATABASE_NAME=suitecrm;
export DATABASE_HOST=localhost;
export DATABASE_USER=root;
export DATABASE_PASSWORD=xx;
export INSTANCE_URL=http://localhost/SuiteCRM;
export INSTANCE_ADMIN_USER=admin;
export INSTANCE_ADMIN_PASSWORD=xx;
export INSTANCE_CLIENT_ID=suitecrm_client;
export INSTANCE_CLIENT_SECRET=secret;
export PROGRESS_DELAY=2;


if [ -d "$HOME/Android/platform-tools" ] ; then
    export PATH="$HOME/Android/platform-tools:$PATH"
fi


if [ "$TMUX" = "" ]; then tmux; fi
