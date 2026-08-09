#!/usr/bin/env bash
niri msg --json focused-window 2>/dev/null | jq -r '
    if .title != "" then .title else .app_id end
' | cut -c1-60
