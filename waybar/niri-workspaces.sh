#!/usr/bin/env bash
niri msg --json workspaces 2>/dev/null | jq -r '
    .[] | select(.is_focused) | .idx'
