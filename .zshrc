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
plugins=(git osx brew django)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH=$HOME/bin:/Library/PostgreSQL/9.0/bin:$PATH

export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export PATH=~/bin:$JAVA_HOME/bin:$PATH
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export HADOOP_EC2_HOME=~/code/kikin/mapreduce/clouderaec2
export HADOOP_CONF_DIR=$HADOOP_EC2_HOME/conf/watson
export PIG_CLASSPATH=$HADOOP_CONF_DIR
export PIG_OPTIONS="-Dmapred.reduce.tasks.speculative.execution=false"
export PIG_OPTS=$PIG_OPTIONS
export HBASE_CLASSPATH=$HADOOP_CONF_DIR
export HBASE_CONF_DIR=$HADOOP_CONF_DIR
export EDITOR="/usr/local/bin/vim"
export GREP_COLOR=31
alias vi="/usr/local/bin/vim"
alias vim="vi"
alias grep="grep --color=auto"
alias ll="ls -lha --color=auto"
alias hdfs="hadoop dfs"
alias jump='ssh jump'

export PYTHONPATH=$HOME/code/appnexus/optimization:$PYTHONPATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
source "`brew --prefix grc`/etc/grc.bashrc"
