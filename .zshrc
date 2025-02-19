# Emacs keybindings
bindkey -e

# Zsh completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Alias
source $HOME/.config/alias/navigation
source $HOME/.config/alias/git
source $HOME/.config/alias/fzf
source $HOME/.config/alias/spark

# Starship Prompt
eval "$(starship init zsh)"

# NVM 
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  #
