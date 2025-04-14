#!/bin/bash

# Definisci la cartella degli script
SCRIPT_DIR=~/.dotfiles/scripts

# Ottieni l'elenco dei file .sh nella cartella
SCRIPTS=$(find "$SCRIPT_DIR" -maxdepth 1 -name "*.sh" -exec basename {} \;)

# Usa wofi per visualizzare la lista degli script
SELECTED_SCRIPT=$(echo "$SCRIPTS" | wofi --dmenu --prompt "Select script" --width 30 --height 15)

# Se è stato selezionato uno script, eseguilo
if [ -n "$SELECTED_SCRIPT" ]; then
    # Esegui lo script selezionato
    bash "$SCRIPT_DIR/$SELECTED_SCRIPT"
fi

