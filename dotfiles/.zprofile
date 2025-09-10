eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH=/opt/homebrew/bin:$HOME/Library/Python/3.9/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/.local/bin:$HOME/go/bin:/usr/local/git/bin:$HOME/.yarn/bin:$HOME/.composer/vendor/bin:$PATH

# To use Java:
# export JAVA_HOME=`/usr/libexec/java_home -v 23`

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

zmodload -i zsh/complist

setopt correct_all
setopt auto_list
setopt auto_menu
setopt always_to_end
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt share_history

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#2F4F4F"

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

bindkey '^[[3~' delete-char
bindkey '^[3;5~' delete-char
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.zaliases ]
then
  source ~/.zaliases
fi