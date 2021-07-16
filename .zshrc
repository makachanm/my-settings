# Init Zplug
source ~/.zplug/init.zsh

# Plugins
zplug "eendroroy/nothing"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zplug/zplug"
zplug "plugin/emoji-clock", from:oh-my-zsh

# Zsh Settings
HISTFILE=~/.histfile
HISTSIZE=2500
SAVEHIST=7200
export EDITOR="vim"

# Auto Update
if ! zplug status; then
	zplug update
fi

# Load
zplug check || zplug install
zplug load
sleep 1

# Initial Message
export UPTIME=$(uptime -p)
clear
cowsay "Welcome to zsh. after you turn on the system: $UPTIME ." 

