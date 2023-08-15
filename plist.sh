#!/bin/bash

## macOS
/usr/libexec/PlistBuddy -c "Delete ':AppleInterfaceStyle'" -c "Add ':AppleInterfaceStyle' string 'Dark'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

# Disable Spotlight hotkey
/usr/libexec/PlistBuddy -c "Delete ':AppleSymbolicHotKeys:64:enabled'" -c "Add ':AppleSymbolicHotKeys:64:enabled' bool 'false'" "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist"

# Disable the "press and hold" feature on macOS
# https://apple.stackexchange.com/a/46363
defaults write -g ApplePressAndHoldEnabled -bool false

# Use F1, F2, etc. keys as standard function keys
/usr/libexec/PlistBuddy -c "Delete ':com.apple.keyboard.fnState'" -c "Add ':com.apple.keyboard.fnState' bool 'true'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

/usr/libexec/PlistBuddy -c "Delete ':KeyRepeat'" -c "Add ':KeyRepeat' real '2.000000'" "$HOME/Library/Preferences/.GlobalPreferences.plist"
/usr/libexec/PlistBuddy -c "Delete ':InitialKeyRepeat'" -c "Add ':InitialKeyRepeat' real '15.000000'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

/usr/libexec/PlistBuddy -c "Delete ':autohide'" -c "Add ':autohide' bool 'true'" "$HOME/Library/Preferences/com.apple.dock.plist"
