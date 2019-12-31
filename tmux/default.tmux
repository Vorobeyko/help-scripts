#!/bin/bash
wn=main

tmux kill-session -t "$wn"
tmux new-session -s "$wn" -n 'start' -d
tmux select-window -t "$wn"

tmux split-window -v
tmux select-pane -D

tmux split-window -h

tmux select-pane -U
tmux send-keys -t "$wn" "htop" ENTER
tmux select-pane -D
tmux -2 attach-session -t "$wn"
