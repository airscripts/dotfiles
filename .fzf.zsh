# Setup fzf
# ---------
if [[ ! "$PATH" == */home/airscript/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/airscript/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/airscript/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/airscript/.fzf/shell/key-bindings.zsh"
