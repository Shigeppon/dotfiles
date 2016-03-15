### gitコマンド補完とブランチ表示
source ~/dotfiles/git-completion.bash
source ~/dotfiles/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\w$(__git_ps1)\$ '

export TERM=xterm-color
export LSCOLORS=gxfxcxdxbxegedabagacad
alias ls='ls -G'
alias ll='ls -hl'

#export HISTCONTROL=ignorespace
export HISTCONTROL=ignoreboth
