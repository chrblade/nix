#!/usr/bin/env bash

get_song_art () {
  TMP_DIR="$HOME/.cache/eww"
  TMP_COVER_PATH="$TMP_DIR/cover.png"
  TMP_TEMP_PATH="$TMP_DIR/temp.png"
	IMG_PHOTO="nix/home/apps/wm/otherFiles/wallp.jpg"

  mkdir -p "$TMP_DIR" 2>/dev/null

  ART_FROM_BROWSER="$(playerctl metadata mpris:artUrl | sed -e 's/file:\/\///g')"

  if [[ -n "$ART_FROM_BROWSER" ]]; then
    if [[ "$ART_FROM_BROWSER" =~ ^https?:// ]]; then
      # Download remote image
      curl -s -o "$TMP_TEMP_PATH" "$ART_FROM_BROWSER"
      # Fallback if download fails
      [ $? -ne 0 ] && cp "$HOME/$IMG_PHOTO" "$TMP_TEMP_PATH"
    else
      # Copy local file or fallback
      cp "$ART_FROM_BROWSER" "$TMP_TEMP_PATH" 2>/dev/null || cp "$HOME/$IMG_PHOTO" "$TMP_TEMP_PATH"
    fi
  else
    cp "$HOME/$IMG_PHOTO" "$TMP_TEMP_PATH"
  fi

  # Apply effects using magick (replaces deprecated convert)
  magick "$TMP_TEMP_PATH" -gravity center +repage -alpha set -channel A \
    -sparse-color Barycentric '%[fx:w*2/1],0 transparent %[fx:w+0.5],0 opaque' \
    -evaluate multiply 0.20 \
    "$TMP_COVER_PATH"
}

echo_song_art_url () {
  echo "$HOME/.cache/eww/cover.png"
}

case "$1" in
  echo)
		get_song_art
    echo_song_art_url
    ;;
  get)
    get_song_art
    ;;
esac
