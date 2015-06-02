export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting

sh ~/.ssh/saveagent

# Immediately attach tmux session if asked for.
if [ -n "$LC_tmux_session" ] && tmux has -t "$LC_tmux_session"; then
    exec tmux -2 attach -t "$LC_tmux_session"
elif [ -n "${LC_tmux_session+1}" ] && tmux has; then
    exec tmux -2 attach
fi

