#!/usr/bin/env bash

if [ "$ORB_VAL_RELEASE" = 1 ]; then
    set -- "$@" --release
fi

if [ "$ORB_VAL_VERBOSE" = 1 ]; then
    set -- "$@" -vv
fi

cargo build "$@"
