sudo install_name_tool -change  /System/Library/Frameworks/AppKit.framework/Versions/C/AppKit '/cursed2.dylib' /Applications/Xcode7.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/DVTKit
sudo "./unsign/unsign" /Applications/Xcode7.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/DVTKit 
sudo mv /Applications/Xcode7.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/DVTKit.unsigned /Applications/Xcode7.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/DVTKit
sudo chmod +x /Applications/Xcode7.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/DVTKit