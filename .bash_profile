export LC_ALL=en_US.UTF-8
export LD_LIBRARY_PATH=/opt/python27/lib:/usr/local/lib
export PATH=/home/sdevaraju/bin:/opt/py27/bin:/usr/local/nz/bin:$PATH
export PREFIX_PATH=/home/sdevaraju/python-packages
export PYTHONPATH=/home/sdevaraju/optimization:$PREFIX_PATH/lib/python2.7/site-packages:$PYTHONPATH
export MPLCONFIGDIR=/home/sdevaraju/.matplotlib
export PYCHARM_JDK=/usr/java/latest/

alias tmux='tmux -2'

# See http://munkymorgy.blogspot.com/2008/07/screen-ctrl-s-bug.html
stty stop undef
stty start undef

source ~/.git-completion.bash
# Show the current git branch
PS1='[\u@\H \W$(__git_ps1 " (%s)")]\$ '
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"

export EDITOR='vim'
export GREP_COLOR=31
alias grep="grep --color=always"
alias ll="ls -lha --color=always"
