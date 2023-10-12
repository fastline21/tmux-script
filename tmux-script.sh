tmux new-session -s ses-0 -n my-screen-name -d \;
tmux split-window -v \;
tmux split-window -h -t 0 \;
tmux send-keys -t 0 "htop" C-m \;
tmux send-keys -t 1 "ping 8.8.8.8" C-m \;
tmux select-pane -t 2 \;
tmux attach-session -t ses-0 \;