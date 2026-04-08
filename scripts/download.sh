#!/bin/bash

set -e # Exit immediately if a command exits with a non-zero status.

OUTPUT_FILE="mercure-latest.tar.gz"

echo "Pulling latest release"

LATEST_RELEASE_ZIP=$(curl -s https://api.github.com/repos/dunglas/mercure/releases/latest \
  | sed 's/[()",{}]/ /g; s/ /\n/g' \
  | grep "https.*mercure_Linux_x86_64.tar.gz")

echo "Downloading and decompressing archive"

curl -sSL -o "$OUTPUT_FILE" "$LATEST_RELEASE_ZIP"
tar -xzf $OUTPUT_FILE mercure Caddyfile

echo "Cleaning temporary directories and files"

rm "$OUTPUT_FILE"