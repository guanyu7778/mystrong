pushd frida
xz build/frida-ios-arm64/bin/frida-inject
xz -k build/frida-ios-arm64/bin/frida-server
xz build/frida-ios-arm64/lib/frida-gadget.dylib
xz build/frida-ios-arm64e/bin/frida-inject
xz -k build/frida-ios-arm64e/bin/frida-server
xz build/frida-ios-arm64e/lib/frida-gadget.dylib
xz build/frida-ios-universal/lib/frida-gadget.dylib

releng/devkit.py frida-core ios-arm64 build/CFrida/ios-arm64-core
releng/devkit.py frida-core ios-arm64e build/CFrida/ios-arm64e-core
releng/devkit.py frida-gum ios-arm64 build/CFrida/ios-arm64-gum
releng/devkit.py frida-gum ios-arm64e build/CFrida/ios-arm64e-gum
releng/devkit.py frida-gumjs ios-arm64 build/CFrida/ios-arm64-gumjs
releng/devkit.py frida-gumjs ios-arm64e build/CFrida/ios-arm64e-gumjs

FRIDA_VERSION=$(git describe --tags) FRIDA_TOOLCHAIN=$(pwd)/build/toolchain-macos-x86_64 frida-core/tools/package-server.sh build/frida-ios-arm64/bin/frida-server $(pwd)/build/frida_iphoneos-arm.deb
FRIDA_VERSION=$(git describe --tags) FRIDA_TOOLCHAIN=$(pwd)/build/toolchain-macos-x86_64 frida-core/tools/package-server.sh build/frida-ios-arm64e/bin/frida-server $(pwd)/build/frida64_iphoneos-arm.deb

popd

cd frida/build/CFrida/ios-arm64-core && tar cJf ../ios-arm64-core.tar.xz . && cd ../../../..
cd frida/build/CFrida/ios-arm64-gum && tar cJf ../ios-arm64-gum.tar.xz . && cd ../../../..
cd frida/build/CFrida/ios-arm64-gumjs && tar cJf ../ios-arm64-gumjs.tar.xz . && cd ../../../..
cd frida/build/CFrida/ios-arm64e-core && tar cJf ../ios-arm64e-core.tar.xz . && cd ../../../..
cd frida/build/CFrida/ios-arm64e-gum && tar cJf ../ios-arm64e-gum.tar.xz . && cd ../../../..
cd frida/build/CFrida/ios-arm64e-gumjs && tar cJf ../ios-arm64e-gumjs.tar.xz . && cd ../../../..