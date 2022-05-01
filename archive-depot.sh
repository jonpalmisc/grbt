#!/bin/sh

ARCHIVE_DIR=depot-tx
DEPOT_DIR=depot

ARCHIVE_PATH="$ARCHIVE_DIR/depot.$(date +"%Y%m%d.%H%M").tar.xz"

mkdir -p "$ARCHIVE_DIR"
tar -cJf "$ARCHIVE_PATH" "$DEPOT_DIR"

echo "$ARCHIVE_PATH"
