# Pure prompt
autoload -U promptinit; promptinit
prompt pure

# Autocomplete
autoload -U compinit
compinit
source <(jj util completion zsh)
source <(COMPLETE=zsh jj)

alias lg=lazygit
