#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set default editer
export EDITOR=nvim

alias S='sudo pacman -S'
alias Ss='sudo pacman -Ss'
alias R='sudo pacman -Rns'

alias ls='lsd --color=auto'
alias ll='lsd -l --color=auto'
alias la='lsd -la --color=auto'
alias grep='grep --color=auto'

alias vi='nvim'
alias nf='neofetch'
alias tmux='curl -s https://ipinfo.io?token=54640b2b60778f > ~/.tmux_IP_info.json & tmux'

PS1='\[\e[32m\]\u\[\e[0m\] \[\e[34m\]\w\[\e[0m\] '

fzf_vi() {
    local selected_file
    selected_file=$(fzf)
    
    if [ -n "$selected_file" ]; then
        vi "$selected_file"
    else
        echo "Cancelled"
    fi
}

# 원하는 별칭 설정
alias vif=fzf_vi

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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
