pushd frida
xz build/frida-linux-x86/bin/frida-server
xz build/frida-linux-x86_64/bin/frida-server
xz build/frida-linux-x86/bin/frida-inject
xz build/frida-linux-x86_64/bin/frida-inject
xz build/frida-linux-x86/lib/frida-gadget.so
xz build/frida-linux-x86_64/lib/frida-gadget.so

releng/devkit.py frida-core linux-x86 build/CFrida/linux-x86-core
releng/devkit.py frida-core linux-x86_64 build/CFrida/linux-x86_64-core
releng/devkit.py frida-gum linux-x86 build/CFrida/linux-x86-gum
releng/devkit.py frida-gum linux-x86_64 build/CFrida/linux-x86_64-gum
releng/devkit.py frida-gumjs linux-x86 build/CFrida/linux-x86-gumjs
releng/devkit.py frida-gumjs linux-x86_64 build/CFrida/linux-x86_64-gumjs

popd

cd frida/build/CFrida/linux-x86-core && tar cJf ../linux-x86-core.tar.xz . && cd ../../../..
cd frida/build/CFrida/linux-x86-gum && tar cJf ../linux-x86-gum.tar.xz . && cd ../../../..
cd frida/build/CFrida/linux-x86-gumjs && tar cJf ../linux-x86-gumjs.tar.xz . && cd ../../../..
cd frida/build/CFrida/linux-x86_64-core && tar cJf ../linux-x86_64-core.tar.xz . && cd ../../../..
cd frida/build/CFrida/linux-x86_64-gum && tar cJf ../linux-x86_64-gum.tar.xz . && cd ../../../..
cd frida/build/CFrida/linux-x86_64-gumjs && tar cJf ../linux-x86_64-gumjs.tar.xz . && cd ../../../..