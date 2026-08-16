#!/usr/bin/env bash
niri msg --json workspaces 2>/dev/null | jq -r '
    sort_by(.idx)[] |
    if .is_focused then
        "<span foreground=\"#ffb52a\">" + (.idx|tostring) + "</span> "
    else
        "<span foreground=\"#93A1A1\">" + (.idx|tostring) + "</span> "
    end'
