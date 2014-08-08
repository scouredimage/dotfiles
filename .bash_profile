export SCALA_HOME=/usr/local/share/scala/current
export KAFKA_HOME=/usr/local/share/kafka/current
export SPARK_HOME=/home/sdevaraju/spark/current

export LC_ALL=en_US.UTF-8
export LD_LIBRARY_PATH=/usr/lib64/atlas:$LD_LIBRARY_PATH
export PATH=$HOME/bin:/usr/local/nz/bin:$SCALA_HOME/bin:$KAFKA_HOME/bin:$SPARK_HOME/bin:$PATH
export PREFIX_PATH=/home/sdevaraju/python-packages
export PYTHONPATH=/home/sdevaraju/optimization:$PREFIX_PATH/lib/python2.7/site-packages:$PYTHONPATH
export MPLCONFIGDIR=/home/sdevaraju/.matplotlib
export PYCHARM_JDK=/usr/java/latest/
export INPUTRC=/home/sdevaraju/.inputrc

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

# ODBC
export ODBCINI="/etc/odbcinst.ini"
export ODBCSYSINI="/etc"

# Hadoop, Spark, etc
export HADOOP_CONF_DIR="/etc/hadoop/conf"
export PYSPARK_PYTHON="python2.7"
alias ipyspark='IPYTHON_OPTS="notebook --pylab inline --profile nbserver" pyspark --master yarn-client'

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source $HOME/.profile

