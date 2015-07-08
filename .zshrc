# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bla"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sublime)

# User configuration

export PATH="$HOME/.brew/bin:$HOME/.composer/vendor/bin:$HOME/MAMP/php/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:$HOME/.npm_package/bin"
export NODE_PATH=$HOME/.npm_package/lib/node_module
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source $HOME/.myzshrc

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias .files="defaults write com.apple.finder AppleShowAllFiles 1 && killall -KILL Finder"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles 0 && killall -KILL Finder"
alias auteur="echo cdannapp > auteur && cat -e auteur"
alias zshrc="subl $HOME/.zshrc"
alias nasm="~/.brew/bin/nasm"
alias get libft="make fclean -C $HOME/Projects/refonte/libft && cp -rf $HOME/Projects/refonte/libft . && rm -rf libft/norm libft/test"
alias c++="g++ -Wall -Wextra -Werror *.cpp"
source $HOME/.Sublivim/sublivimrc.sh
source /nfs/zfs-student-5/users/2013/cdannapp/.Sublivim/sublivimrc.sh

# OPAM configuration
. /nfs/zfs-student-5/users/2013/cdannapp/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
# cd -N
export DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome
# frequently used directories
setopt auto_cd
cdpath=("$HOME/Projects")





