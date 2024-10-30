#########################################
#		Setup			#
#########################################

HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
zstyle :compinstall filename '/home/Kanade/.zshrc'
autoload -Uz compinit
compinit

# zoxide
eval "$(zoxide init zsh --cmd cd)"


#########################################
#		Environment		#
#########################################

export PATH=~/bin:$PATH

# Prompt
NEWLINE=$'\n'
FLINE='%B%F{cyan}%2~%f%b'
SLINE='%F{green}%f '
export PROMPT="${FLINE}${NEWLINE}${SLINE}"


#########################################
#		Alias			#
#########################################

alias nb="sudo nixos-rebuild switch --flake ~/.config/nix#thinkpad"

# eza
alias ls="eza --icons=auto"
alias ll="eza -l --icons=auto"
alias la="eza -a --icons=auto"
alias lla="eza -la --icons=auto"


#########################################
#		keymap 			#
#########################################

bindkey ^j history-search-backward
bindkey ^k history-search-forward
bindkey "^[l" forward-char
bindkey "^[h" backward-char
bindkey "^[b" backward-word
bindkey "^[p" forward-word
