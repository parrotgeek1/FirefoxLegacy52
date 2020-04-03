#!/bin/sh
clang -fPIC -O3 -Wall -Wextra -Werror -Wno-unused-parameter -arch x86_64 -dynamiclib -mmacosx-version-min=10.8 -Wl,-reexport_library,/System/Library/Frameworks/AppKit.framework/Versions/C/AppKit -current_version 1404.11 -compatibility_version 45 -o shim.dylib shim.c
perl -pi -e 's/IvarsA/Ivars./g' shim.dylib
perl -pi -e 's/SharedDataA/SharedData./g' shim.dylib
sudo cp shim.dylib /Applications/Xcode7.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/shim.dylib
