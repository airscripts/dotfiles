export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git 
  zsh-autosuggestions 
)

source $ZSH/oh-my-zsh.sh

if [[ -f ~/.zshrc_aliases ]]; then
  source ~/.zshrc_aliases
fi

if [[ -f ~/.zprofile ]]; then
  source ~/.zprofile
fi

if [[ -f ~/.zfunc ]]; then
  source ~/.zfunc
fi

if [[ -f ~/.zshenv ]]; then
  source ~/.zshenv
fi

if [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then 
  source /usr/share/doc/fzf/examples/key-bindings.zsh
fi

if [[ -f /usr/share/doc/fzf/examples/completion.zsh ]]; then
  source /usr/share/doc/fzf/examples/completion.zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "`fnm env`"
