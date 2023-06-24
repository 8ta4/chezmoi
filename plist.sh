#!/bin/bash

## macOS
/usr/libexec/PlistBuddy -c "Add ':AppleInterfaceStyle' string 'Dark'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

# Disable Spotlight hotkey
/usr/libexec/PlistBuddy -c "Set ':AppleSymbolicHotKeys:64:enabled' 'false'" "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist"

## iTerm2
# Enable clipboard access in "Prefs > General > Selection > Applications in terminal may access clipboard".
/usr/libexec/PlistBuddy -c "Add ':AllowClipboardAccess' bool 'true'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"

# option + left arrow to jump word left
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf702-0x280000-0x0:Action' integer '10'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf702-0x280000-0x0:Text' string 'b'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"

# option + right arrow to jump word right
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf703-0x280000-0x0:Action' integer '10'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf703-0x280000-0x0:Text' string 'f'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"

# command + left arrow to jump to beginning of line
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf702-0x300000-0x0:Action' integer '11'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf702-0x300000-0x0:Text' string '0x1'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"

# command + right arrow to jump to end of line
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf703-0x300000-0x0:Action' integer '11'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
/usr/libexec/PlistBuddy -c "Add ':New Bookmarks:0:Keyboard Map:0xf703-0x300000-0x0:Text' string '0x5'" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
