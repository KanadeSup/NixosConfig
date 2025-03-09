#########################################
#              Import                   #
#########################################

source $HOME/.config/zsh/alias.zsh
source $HOME/.config/zsh/prompt.zsh
source $HOME/.config/zsh/history-search.zsh


#########################################
#              Setup                    #
#########################################

HISTSIZE=1000
SAVEHIST=1000
setopt dotglob
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

#########################################
#           Environment                 #
#########################################

export PATH=~/bin:$PATH

# History search
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
HISTORY_SUBSTRING_SEARCH_PREFIXED=1
unset HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="fg=red,bold"
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_TIMEOUT=0.2

#########################################
#                 keymap                #
#########################################

bindkey ^j history-substring-search-up
bindkey ^k history-substring-search-down
bindkey "^[l" forward-char
bindkey "^[h" backward-char
bindkey "^[b" backward-word
bindkey "^[p" forward-word
