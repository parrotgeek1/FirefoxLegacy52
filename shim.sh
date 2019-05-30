#!/bin/bash -e 


gcc -fPIC -O3 -Wall -Wextra -Werror -Wno-unused-parameter -arch x86_64 -arch i386 -dynamiclib -mmacosx-version-min=10.6 -Wl,-reexport_library,/usr/lib/libSystem.B.dylib -current_version 1 -compatibility_version 1 -o libFxShim.dylib  shim.c

mv libFxShim*.dylib "$1"/Contents/MacOS/

install_name_tool -change /usr/lib/libSystem.B.dylib '@loader_path/libFxShim.dylib' "$1"/Contents/MacOS/libmozavutil.dylib 
install_name_tool -change /usr/lib/libSystem.B.dylib '@loader_path/libFxShim.dylib' "$1"/Contents/MacOS/libmozglue.dylib 
install_name_tool -change /usr/lib/libSystem.B.dylib '@loader_path/libFxShim.dylib' "$1"/Contents/MacOS/XUL
install_name_tool -change /usr/lib/libSystem.B.dylib '@loader_path/libFxShim.dylib' "$1"/Contents/MacOS/libnss3.dylib 

