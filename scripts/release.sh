#!/bin/bash

set -e # Exit immediately if a command exits with a non-zero status.

OUTPUT_FILE="mercure-hub-buildpack.tar.gz"

echo "Creating archive"

tar -czf $OUTPUT_FILE bin Caddyfile mercure
