#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set default editer
export EDITOR=nvim

alias cls='source ~/.bash_profile'

alias S='sudo pacman -S'
alias Ss='sudo pacman -Ss'
alias R='sudo pacman -Rns'

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias vi='nvim'
alias nf='neofetch'

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
