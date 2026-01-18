setopt EXTENDED_GLOB
setopt PROMPT_VARS
disable -p '#'

export WORDCHARS="${WORDCHARS/\//}"
export BC_ENV_ARGS="-l"

export PATH="$HOME/bin:$PATH"

export EDITOR=$HOME/bin/safe_nvim
bindkey -e # after setting editor, reset terminal to emacs mode
alias vim="$HOME/bin/safe_nvim"

export DISABLE_SPRING=1
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

alias g="git"
alias gaa="git add --all"
alias gb="git branch -i"
alias gbr="git branch -i --sort=authordate"
alias gc="git commit"
alias gco="git checkout"
alias gd="git diff"
alias gdc="git diff --cached"
alias gdd="gddev"
alias gkl="git clean -fd"
alias glod="git log --oneline --decorate"
alias glodd="git log --oneline --decorate -10"
alias glodm="git log --oneline --decorate HEAD...master~"
alias glodr="git log --oneline --decorate HEAD...origin/\$(git cb)~"
alias glodiff="git log --oneline --decorate --left-right HEAD...origin/HEAD"
alias gp="git push"
alias gph="git push origin HEAD"
alias gpod="git pull origin development"
alias gpom="git pull origin master"
alias gpr="git pull --rebase"
alias gss="git add --all -N; git diff head --name-only --diff-filter=d"
alias gst="git status -s"
alias spring="bin/spring"
alias st="git status -s"
alias greset="git checkout .; git clean -fd"
alias spring="bin/spring"
alias webpack="bin/webpack"

alias specs="rg _spec"
alias rubies="rg '[.]rb$'"
alias ber="bundle exec rspec"
alias bers="bundle exec rspec \$(gddev | specs)"
alias berof="bundle exec rspec --only-failures"
alias dirty="bundle exec rspec \$(gss | specs)"

alias gorb="test \$? -eq 0 && say good || say bad"

function file_exists {
  while read fn
  do
    test -f $fn && echo $fn
  done
}

function gddev {
  if [[ $PWD == *postprocessors* ]]; then
    git diff master --name-only --diff-filter=d | sed 's/.*[[:space:]]//'
  else
    git diff development --name-only --diff-filter=d | sed 's/.*[[:space:]]//'
  fi
}

alias gbs="gb | sed 's/.*[[:space:]]//' | sk"

alias sc="bin/rails c"
alias ss="bin/rails s -p 3000"
alias ssp="bin/rails s -p"
alias wkr='QUEUE=* bundle exec rake resque:work'

alias ezs="vim ~/.zshrc"
alias .zs="source ~/.zshrc"

alias rg="rg -S"
alias ls="ls -A1"
alias ll="ls -Al"
alias lsr="ls -A1tr"
alias llr="ls -Altr"

function _gss() {
  if test $# -gt 0; then
    git status -s | sed 's/...//;s/.* -> //' | rg -i "$*"
  else
    git status -s | sed 's/...//;s/.* -> //'
  fi
}

function glink() {
  git symbolic-ref refs/heads/$1 refs/heads/$2
}

function glinkcb() {
  git symbolic-ref refs/heads/$1 refs/heads/$(git cb)
}

function cpb() {
  git branch -i --list $1
}

function pad() {
  blanklines
  while read a; do
    echo "$a"
  done
  blanklines
}

export PS1=$'\n'"%~ \$(git_prompt_info)"$'\n'"%#> "

export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
source <(starship init zsh --print-full-init)

[[ -n $SSH_CONNECTION && -z $VIM && -z $TMUX ]] && tmux new -A -s remote

export TERM=screen-256color

if [[ ! -d ~/.local/share/broot ]]; then
  yes | broot &>/dev/null
fi

if [[ ! -d /sandbox/.git ]]; then
  git init /sandbox
fi

[[ -a /home/dev/.config/broot/launcher/bash/br ]] && source /home/dev/.config/broot/launcher/bash/br

alias h="bundle exec h"
h setup &>/dev/null

