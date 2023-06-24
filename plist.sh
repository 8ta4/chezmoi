#!/bin/bash

## macOS
/usr/libexec/PlistBuddy -c "Add ':AppleInterfaceStyle' string 'Dark'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

# Disable Spotlight hotkey
/usr/libexec/PlistBuddy -c "Set ':AppleSymbolicHotKeys:64:enabled' 'false'" "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist"

## iTerm2
# Enable clipboard access in "Prefs > General > Selection > Applications in terminal may access clipboard".
/usr/libexec/PlistBuddy -c "Add ':AllowClipboardAccess' bool 'true'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
