#!/usr/bin/env bash
set -x
if [ -d "/tmp/cargo_tmp" ]; then
    echo "Cache directory found"
else
    echo "Cache directory not found"
    exit 0
fi

if [ -n "$CARGO_HOME" ]; then
    rm -r "$(dirname "$CARGO_HOME")/.cargo"
    cp -r /tmp/cargo_tmp/.cargo "$(dirname "$CARGO_HOME")/.cargo"
else
    rm -r ~/.cargo
    cp -r /tmp/cargo_tmp/.cargo ~/.cargo
fi
set +x
