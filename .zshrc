export ZSH="$HOME/.oh-my-zsh"
export FZF_DEFAULT_OPTS='--color=bg+:#302D41,bg:#1E1E2E,spinner:#F8BD96,hl:#F28FAD --color=fg:#D9E0EE,header:#F28FAD,info:#DDB6F2,pointer:#F8BD96 --color=marker:#F8BD96,fg+:#F2CDCD,prompt:#DDB6F2,hl+:#F28FAD'

ZSH_THEME="robbyrussell"
#ENABLE_CORRECTION="true"

plugins=(
  git 
  zsh-autosuggestions 
)

source $ZSH/oh-my-zsh.sh

# User configuration
if [[ -f ~/.zshrc_aliases ]]; then
  source ~/.zshrc_aliases
fi

if [[ -f ~/.zprofile ]]; then
  source ~/.zprofile
fi

if [[ -f ~/.zfunc ]]; then
  source ~/.zfunc
fi

if [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then 
  source /usr/share/doc/fzf/examples/key-bindings.zsh
fi

if [[ -f /usr/share/doc/fzf/examples/completion.zsh ]]; then
  source /usr/share/doc/fzf/examples/completion.zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
