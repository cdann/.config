export PATH="$HOME/.brew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:$HOME/.npm_package/bin"
export NODE_PATH=$HOME/.npm_package/lib/node_module
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# fn + delete
bindkey '\e[3~' delete-char
# binding key for history
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
# edit command in emacs
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^[e" edit-command-line

#pour la completion
autoload -U compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# case insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'

# Crée un cache des complétion possibles
# très utile pour les complétion qui demandent beaucoup de temps
# comme la recherche d'un paquet aptitude install moz<tab>
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache

# des couleurs pour la complétion
# faites un kill -9 <tab><tab> pour voir :)
zmodload zsh/complist
setopt extendedglob
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"

# Correction des commandes
setopt correctall

alias .files="defaults write com.apple.finder AppleShowAllFiles 1 && killall -KILL Finder"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles 0 && killall -KILL Finder"
alias auteur="echo cdannapp > auteur && cat -e auteur"
alias c++="g++ -Wall -Wextra -Werror *.cpp"

alias ls='ls -G'
alias ll='ls -G -lah'
alias la='ls -G -ah'
alias l='ll'
alias lll='ls -G -lah | less'
alias grep='grep --color=auto'

alias src='source ~/.zshrc'

alias zshrc='vim ~/.zshrc'
alias prompt='vim ~/.zsh_prompt'
gitignore(){
	echo $* >> .gitignore
}

cd(){
	builtin cd $*
	if [[ -f .alias ]]; then
		source .alias
		cat .alias
	fi
}

st(){
/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl $*
}
alias init="sh ~/configs/initsubl.sh"

# cd -N
export DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome
# frequently used directories
setopt auto_cd
cdpath=("$HOME/Projects")

#coloration des commandes
source ~/.zsh_prompt
source ~/zsh-syntax-highlighting
