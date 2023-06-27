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

## iTerm2
# Enable clipboard access in "Prefs > General > Selection > Applications in terminal may access clipboard".
/usr/libexec/PlistBuddy -c "Add ':AllowClipboardAccess' bool 'true'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"

# option + left arrow to jump word left
# https://apple.stackexchange.com/a/218639
/usr/libexec/PlistBuddy -c "Delete ':New Bookmarks:0:Keyboard Map:0xf702-0x280000'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf702-0x280000-0x0:Action' integer '10'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf702-0x280000-0x0:Text' string 'b'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"

# option + right arrow to jump word right
/usr/libexec/PlistBuddy -c "Delete ':New Bookmarks:0:Keyboard Map:0xf703-0x280000'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf703-0x280000-0x0:Action' integer '10'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf703-0x280000-0x0:Text' string 'f'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"

# command + left arrow to jump to beginning of line
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf702-0x300000-0x0:Action' integer '11'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf702-0x300000-0x0:Text' string '0x1'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"

# command + right arrow to jump to end of line
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf703-0x300000-0x0:Action' integer '11'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf703-0x300000-0x0:Text' string '0x5'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"

# option + delete to delete word left
# https://stackoverflow.com/a/63403514
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0x7f-0x80000-0x0:Action' integer '11'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0x7f-0x80000-0x0:Text' string '0x1b 0x7f'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"

# command + delete to delete to beginning of line
# https://stackoverflow.com/a/53626025
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0x7f-0x100000-0x0:Action' integer '11'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0x7f-0x100000-0x0:Text' string '0x15'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"

# Reuse previous session's directory
# https://apple.stackexchange.com/a/148514
/usr/libexec/PlistBuddy -c "Set ':New Bookmarks:0:Custom Directory' 'Recycle'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
