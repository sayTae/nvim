# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# settings
export EDITOR=nvim

alias S='sudo pacman -S'
alias Ss='sudo pacman -Ss'
alias R='sudo pacman -Rns'

alias ls='lsd --color=auto'
alias ll='lsd -l'
alias la='lsd -la'
alias lt='lsd --tree'
alias grep='grep --color=auto'

alias vi='nvim'
alias nf='neofetch'

# tmux
update_ip_info() {
  curl -s 'https://ipinfo.io?token=54640b2b60778f' > ~/.tmux_IP_info.json
}

alias tmux-reload='update_ip_info && tmux'

# fzf-settings
fzf_vi() {
    local selected_file
    selected_file=$(find ~/ | fzf --height 17)
    
    if [ -n "$selected_file" ]; then
        vi "$selected_file"
    else
        echo "Cancelled"
    fi
}
