source /Users/patrick/.zsh/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle capistrano
antigen bundle docker
antigen bundle yarn
antigen bundle command-not-found
antigen bundle shrink-path
antigen bundle extract

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme gentoo

# Tell antigen that you're done.
antigen apply

# extend path
export PATH=~/.bin:$PATH:/usr/local/bin

# aliases
alias de="cd ~/Desktop"

ls ~/.config/tmuxinator | while read f ; do
  cmd="$(basename "$f" .yml)"
  alias "${cmd}-start"="tmuxinator start ${cmd}"
  alias "${cmd}-stop"="tmuxinator stop ${cmd}"
done

export PS1='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)%m %{$fg_bold[blue]%}$(shrink_path -f) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} '

export LANG="C"
export PATH="$PATH:/Users/patrick/Google Drive/Attic/bin"
export EDITOR=nvim
alias nano=nvim
alias vim=nvim
alias nvim="rbenv shell 2.5.1 && nvim"
export GREP_COLORS='mt=01;34'
# alias ctags to use homebrew version
alias ctags="`brew --prefix`/bin/ctags"

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

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/opt/node@8/bin:$PATH"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias pw='password-generator -l 24 -c'

alias r='bin/rails'
alias update_project_list="find ~/Projects/Instaffo -name '.git' | sed 's/\/.git//'"

# No arguments: `git status`
# With arguments: acts like `git`
unalias g
function g() {
  if [[ $# -gt 0 ]]; then
    git "$@"
  else
    git status
  fi
}

ssh-add -K ~/.ssh/id_rsa &>/dev/null

echo
bonsai
echo
