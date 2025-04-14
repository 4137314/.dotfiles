#!/bin/bash
query=$(wofi --dmenu -p "DuckDuckGo:")
xdg-open "https://duckduckgo.com/?q=$query"

