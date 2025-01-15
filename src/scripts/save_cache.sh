#!/usr/bin/env bash
set -x
if [ -n "$CARGO_HOME" ]; then
    mkdir -p /tmp/cargo_tmp
    cp -r "$CARGO_HOME/registry" /tmp/cargo_tmp/registry
    cp -r "$CARGO_HOME/git" /tmp/cargo_tmp/git
else
    mkdir -p /tmp/cargo_tmp
    cp -r ~/.cargo /tmp/cargo_tmp/
fi
set +x
