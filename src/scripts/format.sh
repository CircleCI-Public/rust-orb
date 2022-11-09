#!/usr/bin/env bash

rustup_args=()
cargo_args=()

if [ "$ORB_VAL_NIGHTLY_TOOLCHAIN" ]; then
    rustup_args+=(--toolchain nightly)
    cargo_args+=(+nightly)
fi

rustup component add rustfmt "${rustup_args[@]}"
cargo "${cargo_args[@]}" fmt -- --check