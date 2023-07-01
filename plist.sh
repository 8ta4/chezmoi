#!/bin/bash

## macOS
/usr/libexec/PlistBuddy -c "Add ':AppleInterfaceStyle' string 'Dark'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

# Disable Spotlight hotkey
/usr/libexec/PlistBuddy -c "Set ':AppleSymbolicHotKeys:64:enabled' 'false'" "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist"

# Disable the "press and hold" feature on macOS
# https://apple.stackexchange.com/a/46363
defaults write -g ApplePressAndHoldEnabled -bool false

/usr/libexec/PlistBuddy -c "Set ':KeyRepeat' '2.000000'" "$HOME/Library/Preferences/.GlobalPreferences.plist"
/usr/libexec/PlistBuddy -c "Set ':InitialKeyRepeat' '15.000000'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

/usr/libexec/PlistBuddy -c "Add ':autohide' bool 'true'" "$HOME/Library/Preferences/com.apple.dock.plist"
