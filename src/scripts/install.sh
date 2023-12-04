#!/usr/bin/env bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- \
  -y --default-toolchain "$RUST_VERSION"

# shellcheck source=/dev/null
source "$HOME"/.cargo/env
