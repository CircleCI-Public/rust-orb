curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

if [ $RUST_VERSION != "latest" ]; then
	rustup toolchain install $RUST_VERSION
	rustup default $RUST_VERSION
fi
