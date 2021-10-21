curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o rustup.sh
chmod +x rustup.sh
./rustup.sh -y

source "$HOME"/.cargo/env

if [ "$RUST_VERSION" != "stable" ]; then
	rustup toolchain install "$RUST_VERSION"
	rustup default "$RUST_VERSION"
fi
