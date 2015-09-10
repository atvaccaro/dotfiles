#coloring
export CLICOLOR=1 #makes ls colored
export LSCOLORS=gxfxcxdcxbxegedabagacad #sets colors for ls
export SUDO_PS1="\[\e[33;1;41m\][\u] \w \$\[\e[0m\] " #warning colors for su

#ssh key for amazon server
eval `ssh-agent`
ssh-add ~/.ssh/serverPair.pem
alias ec2='ssh -X atvaccaro@ec2-54-200-47-57.us-west-2.compute.amazonaws.com'

#update test3
touch ~/Google\ Drive/test3

#new trash function to replace rm
trash() { mv "#1" ~/.Trash/ ;}

#aliases
alias rp='source ~/.bash_profile'
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g --remote-tab-silent'
alias su='sudo bash'
#alias atom=/Applications/Atom.app/Contents/MacOS/Atom
alias fixaudio='sudo killall coreaudiod'
alias utdcs='ssh atv130330@cs1.utdallas.edu'

#bash completion, mainly for git
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

#homebrew=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin
# Initialization for FDK command line tools.Mon Jun 22 21:50:49 2015
FDK_EXE="/Users/atvaccaro/bin/FDK/Tools/osx"
PATH=${PATH}:"/Users/atvaccaro/bin/FDK/Tools/osx"
export PATH
export FDK_EXE

#git stuff
#NOT NEEDED B/C ALREADY ABOVE source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp \w$(__git_ps1)]\$ '
