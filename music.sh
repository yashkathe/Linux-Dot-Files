#!/bin/bash

SESSION="music"

# Create session with window named "main", detached
tmux new-session -d -s "$SESSION" -n main

# Rename the first (only) window and target it
WINDOW="$SESSION:main"

# Top pane: ncspot
tmux send-keys -t "$WINDOW".0 'ncspot' C-m

# Split horizontally, bottom gets 20% height
tmux split-window -v -p 20 -t "$WINDOW"

# Bottom pane: cava
tmux send-keys -t "$WINDOW".1 'cava -p ./cava.config' C-m

# Focus back on ncspot (top pane)
tmux select-pane -t "$WINDOW".0

# Attach session
tmux attach -t "$SESSION"
