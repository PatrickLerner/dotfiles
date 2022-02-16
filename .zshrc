source ~/.zsh/antigen/antigen.zsh
source ~/.secrets

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
alias ls="exa"
alias cat="bat"
alias bro="tldr"

ls ~/.config/tmuxinator | while read f ; do
  cmd="$(basename "$f" .yml)"
  alias "${cmd}-start"="tmuxinator start ${cmd}"
  alias "${cmd}-stop"="tmuxinator stop ${cmd}"
done

export PS1='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)%m %{$fg_bold[blue]%}$(shrink_path -f) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} '

export LANG="C"
# export PATH="$PATH:/Users/patrick/Google Drive/Attic/bin"
export EDITOR=nvim
alias real_nano=/usr/bin/nano
alias nano=nvim
alias vim=nvim
alias nvim="rbenv shell 2.7.2 && nvim"
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
export PATH="/usr/local/opt/node@10/bin:$PATH"

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
# show zsh completion for g
compdef g='git'

ssh-add -K ~/.ssh/id_rsa &>/dev/null

# do not add cmd to history if it starts with a space
setopt histignorespace

export LC_ALL='en_US.UTF-8'
export LANG=en_US.UTF-8
export HOMEBREW_NO_ANALYTICS=1
export PATH=/usr/local/Cellar/openssl/1.0.2r/bin:$PATH
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# python poetry stuff
source $HOME/.poetry/env
alias poetry="python3 $HOME/.poetry/bin/poetry"

export GOPATH=/Users/patrick/.go
export GOBIN=$GOPATH/bin
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias dockerlatex='exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data blang/latex:ubuntu'

alias fix_elasticsearch="curl -XPUT -H 'Content-Type: application/json' http://localhost:9200/_cluster/settings -d '{ \"transient\": { \"cluster.routing.allocation.disk.threshold_enabled\": false } }' && curl -XPUT -H 'Content-Type: application/json' http://localhost:9200/_all/_settings -d '{\"index.blocks.read_only_allow_delete\": null}'"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/patrick/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/patrick/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/patrick/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/patrick/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

set_iterm_title ""

export PATH="$HOME/.poetry/bin:$PATH"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_NDK_ROOT=$ANDROID_SDK_ROOT/ndk/23.0.7599858
export NDK_HOME=$ANDROID_NDK_ROOT
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH="/usr/local/opt/node@14/bin:$PATH"
