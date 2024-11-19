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


# setting
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# zoxide
eval "$(zoxide init zsh --cmd cd)"

# Import add-on
source $HOME/.config/zsh/prompt.zsh
source $HOME/.config/zsh/history-search.zsh


#########################################
#		Environment		#
#########################################

export PATH=~/bin:$PATH

# History search
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
HISTORY_SUBSTRING_SEARCH_PREFIXED=1
unset HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="fg=red,bold"
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_TIMEOUT=0.2


#########################################
#		Alias			#
#########################################

alias nb="sudo nixos-rebuild switch --flake ~/.config/nix#thinkpad"

# eza
alias ls="eza --icons=auto"
alias ll="eza -l --icons=auto"
alias la="eza -a --icons=auto"
alias lla="eza -la --icons=auto"

#editor
alias vi="nvim"


#########################################
#		keymap 			#
#########################################

bindkey ^j history-substring-search-up
bindkey ^k history-substring-search-down
bindkey "^[l" forward-char
bindkey "^[h" backward-char
bindkey "^[b" backward-word
bindkey "^[p" forward-word
