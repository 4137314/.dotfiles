#!/bin/bash

query=$(wofi --dmenu --prompt "DuckDuckGo:")
[ -z "$query" ] && exit

url="https://duckduckgo.com/?q=$(printf '%s' "$query" | jq -sRr @uri)"

# Avvia una nuova finestra di Firefox (non nuova scheda!)
firefox --new-window "$url" &

