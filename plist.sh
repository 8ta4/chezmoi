#!/bin/bash

/usr/libexec/PlistBuddy -c "Add ':AppleInterfaceStyle' string 'Dark'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

# Disable Spotlight hotkey
/usr/libexec/PlistBuddy -c "Set ':AppleSymbolicHotKeys:64:enabled' 'false'" "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist"