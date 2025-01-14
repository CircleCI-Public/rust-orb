#!/usr/bin/env bash

if [ -d "/tmp/cargo_tmp" ]; then
    echo "Cache directory found"
else
    echo "Cache directory not found"
    exit 0
fi

if [ -n "$CARGO_HOME" ]; then
    cp -r /tmp/cargo_tmp/.cargo "$(dirname "$CARGO_HOME")/.cargo"
else
    cp -r /tmp/cargo_tmp/.cargo "~/.cargo"
fi