# Path to your oh-my-zsh installation.
export ZSH=/Users/atvaccaro/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="seeker"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(git colored-man colorize github virtualenv pip python brew osx zsh-syntax-highlighting pyenv)

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin:/Users/atvaccaro/bin/FDK/Tools/osx"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
alias utdcs='ssh atv130330@cs1.utdallas.edu'
alias ec2='ssh -i ~/.ssh/serverPair.pem ec2-user@ec2-35-161-38-75.us-west-2.compute.amazonaws.com'
alias nwyc-mysql='mysql -uroot -pdbr00t123 -hnwycmobile.cetxajhlomvy.us-east-1.rds.amazonaws.com $1'
alias teamspeak='ssh teamspeak3-user@64.137.251.42'
alias slacker='ssh slacker@45.62.239.60'

#Other configs
export CVNODE=andrew
export DYLD_FALLBACK_LIBRARY_PATH=/opt/local/lib:/usr/lib # fixes some issues with cairo
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib
export PATH=$PATH:/usr/local/mysql/bin

fancy-ctrl-z () {
 if [[ $#BUFFER -eq 0 ]]; then
   BUFFER="fg"
   zle accept-line
 else
   zle push-input
   zle clear-screen
 fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

# Load in the git branch prompt script
#source ~/.git-prompt.sh
# Load in the git autocomplete
#if [ -f ~/.git-completion.bash ]; then
          #. ~/.git-completion.bash
  #fi
#__git_complete go _git_checkout
#__git_complete gh _git_log
#__git_complete gd _git_diff

# Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias gh='git hist'
alias go='git checkout '
alias gr='git reset HEAD '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gbl="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

# added by travis gem
[ -f /Users/atvaccaro/.travis/travis.sh ] && source /Users/atvaccaro/.travis/travis.sh
export PATH="/usr/local/bin:$PATH"
