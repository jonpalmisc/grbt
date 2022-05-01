#!/bin/sh

DEPOT_DIR=depot

TAG="depot-$(date +"%Y%m%d-%H%M")"
ARCHIVE_PATH="$TAG.tar.xz"

tar -cJf "$ARCHIVE_PATH" "$DEPOT_DIR"
mv "$DEPOT_DIR" "$TAG"
echo "$ARCHIVE_PATH"
