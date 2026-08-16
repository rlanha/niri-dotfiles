#!/usr/bin/env bash
last=""
print_idx() {
    v=$(niri msg --json workspaces 2>/dev/null | jq -r '.[] | select(.is_focused) | .idx')
    if [ -n "$v" ] && [ "$v" != "$last" ]; then
        echo "$v"
        last="$v"
    fi
}

print_idx
niri msg event-stream 2>/dev/null | while read -r line; do
    case "$line" in
        "Workspace focused:"*|"Workspaces changed:"*|"Workspace activated"*|"Config loaded successfully"*)
            print_idx
            ;;
    esac
done
