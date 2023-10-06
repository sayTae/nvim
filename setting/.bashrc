#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
alias ls='lsd'
alias ll='lsd -l'
alias li='ls -i'
alias la='lsd -a'
alias lla='lsd -la'
alias lt='lsd --tree'
alias cls='source ~/.bashrc'

alias S='sudo pacman -S'
alias Ss='sudo pacman -Ss'
alias Rs='sudo pacman -Rs'

alias grep='grep --color=auto'
alias vi='nvim'
alias mi='micro'
alias nf='neofetch'

alias goc='cd ~/CODE/c'
alias goja='cd ~/CODE/java'
alias goswap='cd ~/.local/state/nvim/swap'

PS1='\[\e[32m\]\u\[\e[0m\] \[\e[34m\]\w\[\e[0m\] '

clear
echo "
    _____
   /     \\
   vvvvvvv  /|__/|
      I   /O,O   |
      I /_____   |      /|/|
     J|/^ ^ ^ \  |    /00  |    _//|
      |^ ^ ^ ^ |W|   |/^^\ |   /oo |
       \m___m__|_|    \m_m_|   \mm_|    \""Totoros"\"

"
