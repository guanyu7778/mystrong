pushd frida
xz build/frida-macos-x86_64/bin/frida-server
xz build/frida-macos-x86_64/bin/frida-inject
xz build/frida-macos-x86_64/lib/frida-gadget.dylib
xz build/frida-macos-arm64/bin/frida-server
xz build/frida-macos-arm64/bin/frida-inject
xz build/frida-macos-arm64/lib/frida-gadget.dylib
xz build/frida-macos-arm64e/bin/frida-server
xz build/frida-macos-arm64e/bin/frida-inject
xz build/frida-macos-arm64e/lib/frida-gadget.dylib
xz build/frida-macos-universal/lib/frida-gadget.dylib
releng/devkit.py frida-core macos-x86_64 build/CFrida/macos-x86_64-core
releng/devkit.py frida-core macos-arm64 build/CFrida/macos-arm64-core
releng/devkit.py frida-core macos-arm64e build/CFrida/macos-arm64e-core
releng/devkit.py frida-gum macos-x86_64 build/CFrida/macos-x86_64-gum
releng/devkit.py frida-gum macos-arm64 build/CFrida/macos-arm64-gum
releng/devkit.py frida-gum macos-arm64e build/CFrida/macos-arm64e-gum
releng/devkit.py frida-gumjs macos-x86_64 build/CFrida/macos-x86_64-gumjs
releng/devkit.py frida-gumjs macos-arm64 build/CFrida/macos-arm64-gumjs
releng/devkit.py frida-gumjs macos-arm64e build/CFrida/macos-arm64e-gumjs

releng/devkit.py frida-core macos-x86_64 frida-swift/CFrida/macos-x86_64/
releng/devkit.py frida-core macos-arm64 frida-swift/CFrida/macos-arm64/
cd frida-swift/CFrida/
mv macos-x86_64/frida-core.h .
lipo -create macos-x86_64/libfrida-core.a macos-arm64/libfrida-core.a -output libfrida-core.a
rm -rf macos-x86_64 macos-arm64
cd ..
xcodebuild
# xcodebuild -project Frida.xcodeproj -target Frida ARCHS=x86_64 ONLY_ACTIVE_ARCH=YES  -configuration Release
cd build/Release && tar cJf ../frida-swift-macos-universal.tar.xz .
popd

cd frida/build/CFrida/macos-x86_64-core && tar cJf ../macos-x86_64-core.tar.xz . && cd ../../../..
cd frida/build/CFrida/macos-x86_64-gum && tar cJf ../macos-x86_64-gum.tar.xz . && cd ../../../..
cd frida/build/CFrida/macos-x86_64-gumjs && tar cJf ../macos-x86_64-gumjs.tar.xz . && cd ../../../..
cd frida/build/CFrida/macos-arm64-core && tar cJf ../macos-arm64-core.tar.xz . && cd ../../../..
cd frida/build/CFrida/macos-arm64-gum && tar cJf ../macos-arm64-gum.tar.xz . && cd ../../../..
cd frida/build/CFrida/macos-arm64-gumjs && tar cJf ../macos-arm64-gumjs.tar.xz . && cd ../../../..
cd frida/build/CFrida/macos-arm64e-core && tar cJf ../macos-arm64e-core.tar.xz . && cd ../../../..
cd frida/build/CFrida/macos-arm64e-gum && tar cJf ../macos-arm64e-gum.tar.xz . && cd ../../../..
cd frida/build/CFrida/macos-arm64e-gumjs && tar cJf ../macos-arm64e-gumjs.tar.xz . && cd ../../../..
