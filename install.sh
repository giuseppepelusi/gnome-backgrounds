#!/usr/bin/env bash
set -e

# Configuration
REPO_URL="https://github.com/giuseppepelusi/gnome-wallpapers.git"
BACKGROUNDS_DIR="$HOME/.local/share/backgrounds"
PROPERTIES_DIR="$HOME/.local/share/gnome-background-properties"

# Create temporary folder
TMP_DIR=$(mktemp -d)
git clone --quiet "$REPO_URL" "$TMP_DIR"

# Install wallpapers
for wp_path in "$TMP_DIR"/backgrounds/*/; do
    wp=$(basename "$wp_path")
    mkdir -p "$BACKGROUNDS_DIR/$wp" "$PROPERTIES_DIR"
    cp "$wp_path"images/* "$BACKGROUNDS_DIR/$wp/"
    cp "$wp_path"slideshow.xml "$BACKGROUNDS_DIR/$wp/$wp.xml"
    cp "$wp_path"properties.xml "$PROPERTIES_DIR/$wp.xml"
    sed -i "s/__USER__/$USER/g" "$BACKGROUNDS_DIR/$wp/$wp.xml"
    sed -i "s/__USER__/$USER/g" "$PROPERTIES_DIR/$wp.xml"
    echo "Installed: $wp"
done

# Cleanup
rm -rf "$TMP_DIR"
echo "Wallpapers installed successfully"
