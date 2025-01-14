#!/usr/bin/env bash

if [ -n "$CARGO_HOME" ]; then
    mkdir -p /tmp/cargo_tmp
    cp -r "$CARGO_HOME" /tmp/cargo_tmp/
else
    mkdir -p /tmp/cargo_tmp
    cp -r ~/.cargo /tmp/cargo_tmp/
fi
