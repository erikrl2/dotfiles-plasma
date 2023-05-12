# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# My configs

## Aliases

alias vim="nvim"
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias grep="grep --color=always"

## Functions

open_with_fzf() {
file="$(fd -t f -H | fzf --preview="head -$LINES {}")"
if [ -n "$file" ]; then
  mimetype="$(xdg-mime query filetype $file)"
  default="$(xdg-mime query default $mimetype)"
  if [[ "$default" == "nvim.desktop" ]]; then
    nvim "$file"
  else
    &>/dev/null xdg-open "$file"
  fi
fi
}

cd_with_fzf() {
cd "$(fd -t d | fzf --preview="tree -L 1 {}" --bind="space:toggle-preview" --preview-window=:hidden)"
_p9k_precmd && zle clear-screen
}

pacs() {
sudo pacman -Syy $(pacman -Ssq | fzf -m --preview="pacman -Si {}" --preview-window=:hidden --bind=space:toggle-preview)
}

open_vim() {
  nvim
}

## Widgets

zle -N open_with_fzf
zle -N cd_with_fzf
zle -N open_vim

## Bindings

bindkey '^ ' autosuggest-accept
bindkey '^O' open_with_fzf
bindkey '^F' cd_with_fzf
bindkey '^V' open_vim

