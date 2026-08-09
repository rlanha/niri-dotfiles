#!/usr/bin/env bash
niri msg workspaces | tail -n +4 | while IFS='|' read -r id name output windows is_active is_focused urgent; do
    id="$(echo "$id" | xargs)"
    is_focused="$(echo "$is_focused" | xargs)"
    if [[ "$is_focused" == '*' ]]; then
        printf '<span foreground="#ffb52a">%s</span> ' "$id"
    else
        printf '<span foreground="#93A1A1">%s</span> ' "$id"
    fi
done
