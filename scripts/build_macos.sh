pushd frida
export MACOS_CERTID='-'
make core-macos
make core-macos-apple_silicon
make gadget-macos
make python-macos
make tools-macos
make node-macos
popd