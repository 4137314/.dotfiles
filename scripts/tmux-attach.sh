#!/bin/bash

SESSION_NAME="${1:-main}"  # usa "main" se non viene passato nulla

if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    tmux attach-session -t "$SESSION_NAME"
else
    tmux new-session -s "$SESSION_NAME"
fi


