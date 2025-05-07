#!/usr/bin/env bash
hyprctl monitors -j | jq -r '.[] | select(.focused == true) | .activeWorkspace.id | tostring'
