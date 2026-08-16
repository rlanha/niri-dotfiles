#!/usr/bin/env bash
title=$(niri msg --json focused-window 2>/dev/null | jq -r '
    if . == null then "null"
    elif .title != "" then .title
    else .app_id end')

if [ "$title" = "null" ]; then
    printf '\uf303'
else
    printf '%s' "$title" | cut -c1-60
fi
