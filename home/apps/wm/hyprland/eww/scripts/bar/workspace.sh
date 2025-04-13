#!/usr/bin/env bash
# workspace.sh (Hyprland версия)
workspaces_json=$(hyprctl workspaces -j) || { echo "[]"; exit 1; }
focused_ws=$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .activeWorkspace.id') || exit 1

echo "$workspaces_json" | jq --arg focused "$focused_ws" '
  map({
    name: (.id | tostring),
    active: (.id | tostring == $focused)
  })
'
