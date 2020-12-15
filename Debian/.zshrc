# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000
PROMPT='%F{027}%n%F{027}@%F{027}%m%f%F{027}%B%~%b%f %# '
RPROMPT='[%F{yellow}%?%f]'
alias coact='conda activate base'
alias codea='conda deactivate'
alias coupd='conda update --all'
alias iith='sudo wg-quick up wg0'
alias iithd='sudo wg-quick down wg0'
#alias gita='git add -A'
#alias gitc='git commit -m'
alias bluetooth-restart='sudo systemctl restart bluetooth'
alias pulse-restart='systemctl --user restart pulseaudio'


weather() {
	if [ -n "$1" ]
	then
		curl wttr.in/"$1"
	else
		curl wttr.in/110077
	fi

}
gitall() {
	if [ -n "$2" ]
	then
		echo "$2 ADDED"
		git add $2
	else
		echo "ALL FILES ADDED"
		git add -A
	fi
	if [ -n "$1" ]
	then
		echo "Commit : $1"
		git commit -m "$1"
	else
		echo "Commit : update"
		git commit -m "update"
	fi
	git push
}

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/aayush/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/aayush/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/aayush/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/aayush/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# End of lines configured by zsh-newuser-install

