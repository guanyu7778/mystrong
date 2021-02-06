pushd frida
xz build/frida-android-arm/bin/frida-server
xz build/frida-android-arm64/bin/frida-server
xz build/frida-android-x86/bin/frida-server
xz build/frida-android-x86_64/bin/frida-server
xz build/frida-android-arm/bin/frida-inject
xz build/frida-android-arm64/bin/frida-inject
xz build/frida-android-x86/bin/frida-inject
xz build/frida-android-x86_64/bin/frida-inject
xz build/frida-android-arm/lib/frida-gadget.so
xz build/frida-android-arm64/lib/frida-gadget.so
xz build/frida-android-x86/lib/frida-gadget.so
xz build/frida-android-x86_64/lib/frida-gadget.so

releng/devkit.py frida-core android-arm build/CFrida/android-arm-core
releng/devkit.py frida-core android-arm64 build/CFrida/android-arm64-core
releng/devkit.py frida-core android-x86 build/CFrida/android-x86-core
releng/devkit.py frida-core android-x86_64 build/CFrida/android-x86_64-core
releng/devkit.py frida-gum android-arm build/CFrida/android-arm-gum
releng/devkit.py frida-gum android-arm64 build/CFrida/android-arm64-gum
releng/devkit.py frida-gum android-x86 build/CFrida/android-x86-gum
releng/devkit.py frida-gum android-x86_64 build/CFrida/android-x86_64-gum
releng/devkit.py frida-gumjs android-arm build/CFrida/android-arm-gumjs
releng/devkit.py frida-gumjs android-arm64 build/CFrida/android-arm64-gumjs
releng/devkit.py frida-gumjs android-x86 build/CFrida/android-x86-gumjs
releng/devkit.py frida-gumjs android-x86_64 build/CFrida/android-x86_64-gumjs

popd

cd frida/build/CFrida/android-arm-core && tar cJf ../android-arm-core.tar.xz . && cd ../../../..
cd frida/build/CFrida/android-arm-gum && tar cJf ../android-arm-gum.tar.xz . && cd ../../../..
cd frida/build/CFrida/android-arm-gumjs && tar cJf ../android-arm-gumjs.tar.xz . && cd ../../../..
cd frida/build/CFrida/android-arm64-core && tar cJf ../android-arm64-core.tar.xz . && cd ../../../..
cd frida/build/CFrida/android-arm64-gum && tar cJf ../android-arm64-gum.tar.xz . && cd ../../../..
cd frida/build/CFrida/android-arm64-gumjs && tar cJf ../android-arm64-gumjs.tar.xz . && cd ../../../..
cd frida/build/CFrida/android-x86-core && tar cJf ../android-x86-core.tar.xz . && cd ../../../..
cd frida/build/CFrida/android-x86-gum && tar cJf ../android-x86-gum.tar.xz . && cd ../../../..
cd frida/build/CFrida/android-x86-gumjs && tar cJf ../android-x86-gumjs.tar.xz . && cd ../../../..
cd frida/build/CFrida/android-x86_64-core && tar cJf ../android-x86_64-core.tar.xz . && cd ../../../..
cd frida/build/CFrida/android-x86_64-gum && tar cJf ../android-x86_64-gum.tar.xz . && cd ../../../..
cd frida/build/CFrida/android-x86_64-gumjs && tar cJf ../android-x86_64-gumjs.tar.xz . && cd ../../../..