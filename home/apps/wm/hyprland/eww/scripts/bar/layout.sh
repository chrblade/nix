#!/usr/bin/env bash
if hyprctl devices | grep -q "active keymap: Russian"; then
    echo "ru"
else
    echo "en"
fi
