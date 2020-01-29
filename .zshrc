# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="random"
#ZSH_THEME="frisk"
#ZSH_THEME="eastwood"
#ZSH_THEME="wezm"
# ZSH_THEME="nicoulaj"
# ZSH_THEME="avit"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gitfast git-extras ssh-agent bundler common-aliases rails tmux web-search zsh_reload vi-mode colorize nvm brew rsync vundle golang npm docker history postgres rake-fast fzf heroku kubectl asdf aws)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'
set -o vi

bindkey -v
export TERM="xterm-256color"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

PATH="/Users/nikolayponomarev/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/nikolayponomarev/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/nikolayponomarev/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/nikolayponomarev/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/nikolayponomarev/perl5"; export PERL_MM_OPT;

# GO
#export PATH=$PATH:/usr/local/opt/go/libexec/bin
# export GOPATH=$(go env GOPATH)
# export PATH=$PATH:$(go env GOPATH)/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fzf
# https://github.com/junegunn/fzf/wiki/Configuring-fuzzy-completion
export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion

## Shell Integration
source ~/.iterm2_shell_integration.zsh

# Git contrib PATH
# export PATH="/usr/local/Cellar/git/2.17.0/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"

source ~/env_vars.sh

# Plantuml
export PLANTUML_LIMIT_SIZE=8192
# hcl project
export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"

# prompt
# export PROMPT='${fg[magenta]}$ %{$reset_color%}'
export PROMPT=$' %{$fg_bold[green]%}%~%{$reset_color%} $(git_prompt_info)\
${fg[magenta]}\$ %{$reset_color%}'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Erlang/Elixir: Remember last commands in IEX
export ERL_AFLAGS="-kernel shell_history enabled"
