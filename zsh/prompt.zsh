# Styling Prompt
NEWLINE=$'\n'
FLINE='%B%F{cyan}%2~%f%b'
SLINE='%F{green}%f '
export PROMPT="${FLINE}${NEWLINE}${SLINE}"

# New line between PROMPT
precmd() { 
  if [[ -z $IS_FIRST_PROMPT ]]; then
    IS_FIRST_PROMPT=1
  else
    print -P ""
  fi
}
