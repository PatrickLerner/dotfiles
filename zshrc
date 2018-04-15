source ~/.zsh/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle capistrano
antigen bundle docker
antigen bundle yarn
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme gentoo

# Tell antigen that you're done.
antigen apply

# extend path
export PATH=~/.bin:$PATH

# aliases
alias de="cd ~/Desktop"
alias pingdad="ping 192.178.178.20"
alias platform-start="tmuxinator start instaffo"
alias platform-stop="tmuxinator stop instaffo"
alias lea-start="tmuxinator start instaffo-lea"
alias lea-stop="tmuxinator stop instaffo-lea"
alias pp-start="tmuxinator start instaffo-people-processor"
alias pp-stop="tmuxinator stop instaffo-people-processor"
alias lapi-start="tmuxinator start instaffo-location-api"
alias lapi-stop="tmuxinator stop instaffo-location-api"

export PS1='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)%m %{$fg_bold[blue]%}$(shrink_path -f) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} '

export PATH="$PATH:$HOME/Dropbox/Attic/bin"
export EDITOR=vim

eval "$(rbenv init -)"

export DISABLE_AUTO_TITLE=true

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function git_prompt_info() {
  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    ref=$(echo $ref | cut -c 1-35)
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

