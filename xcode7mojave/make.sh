clang -fPIC -O3 -Wall -Wextra -Werror -Wno-unused-parameter -arch x86_64 -dynamiclib -mmacosx-version-min=10.8 -Wl,-reexport_library,/System/Library/Frameworks/AppKit.framework/Versions/C/AppKit -current_version 1404.11 -compatibility_version 45 -o cursed2.dylib cursed.c
perl -pi -e 's/IvarsA/Ivars./g' cursed2.dylib
perl -pi -e 's/SharedDataA/SharedData./g' cursed2.dylib
sudo cp cursed2.dylib /
