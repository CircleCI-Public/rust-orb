#!/usr/bin/env bash

if [ "$ORB_VAL_RELEASE" = 1 ]; then
    set -- "$@" --release
fi

cargo build -vv "$@"
