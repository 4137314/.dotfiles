#!/bin/bash

# Nome della sessione tmux
SESSION_NAME="config"

# Verifica se la sessione tmux esiste
if tmux has-session -t $SESSION_NAME 2>/dev/null; then
    # Se la sessione esiste, attaccati a essa
    tmux attach-session -t $SESSION_NAME
else
    # Se la sessione non esiste, crea una nuova sessione
    tmux new-session -d -s $SESSION_NAME
    # Puoi aggiungere comandi da eseguire automaticamente nella sessione, se necessario
    tmux send-keys -t $SESSION_NAME 'cd ~/.dotfiles' C-m
    tmux attach-session -t $SESSION_NAME
fi

