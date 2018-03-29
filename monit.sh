#!/bin/bash

tmux new -s monit -d
tmux split-window -t monit
tmux split-window -t monit
tmux split-window -t monit

tmux select-layout -t monit tiled

tmux split-window -v -t monit:0.2

tmux split-window -v -t monit:0.4
tmux split-window -v -t monit:0.4

tmux split-window -v -t monit:0.6

tmux send-keys -t monit:0.0 'bmon -b -p ens5' C-m
tmux send-keys -t monit:0.1 'htop' C-m
tmux send-keys -t monit:0.2 'echo "qos in"' C-m
tmux send-keys -t monit:0.3 'echo "qos out"' C-m
tmux send-keys -t monit:0.4 'echo "freeline"' C-m
tmux send-keys -t monit:0.5 'echo "ping inter"' C-m
tmux send-keys -t monit:0.6 'echo "ping vpn"' C-m
tmux send-keys -t monit:0.7 'echo "ping exter"' C-m

tmux attach -t monit
