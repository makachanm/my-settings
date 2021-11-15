source ~/.zplug/init.zsh
zplug "eendroroy/nothing"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zplug/zplug"

export EDITOR="vim"

if ! zplug check; then
        zplug install
else
        zplug update
fi

zplug load

HISTFILE=~/.histfile
HISTSIZE=6000
SAVEHIST=6000
setopt autocd

sleep 1

export UPTIME=$(uptime -p)
export KERVER=$(uname -r)
clear
cowsay "Welcome back, $USER. after you turn on the system: $UPTIME . Currunt kernel version: $KERVER"
