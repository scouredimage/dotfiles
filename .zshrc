# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx brew)
export VIRTUAL_ENV_DISABLE_PROMPT=

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home
export PATH=~/bin:$JAVA_HOME/bin:/usr/local/opt/postgresql@9.6/bin:/usr/local/Cellar/mysql@5.6/5.6.39/bin:/Users/sandesh/istio/current/bin:/usr/local/opt/sbt@0.13/bin:$PATH
export EDITOR="/usr/bin/vim"
export GREP_COLOR=31
export AIRFLOW_HOME=~/airflow

alias vi="/usr/bin/vim"
alias vim="vi"
alias grep="grep --color=auto"
alias ll="ls -lhaG"

# Overload system default 256-color palette with precise gruvbox colors
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

