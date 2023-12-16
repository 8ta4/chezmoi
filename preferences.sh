#!/bin/bash

## Foxit PDF Reader
/usr/libexec/PlistBuddy -c "Delete ':Preferences.General.SingleKey'" -c "Add ':Preferences.General.SingleKey' string '1'" "$HOME/Library/Preferences/com.foxit-software.Foxit PDF Reader.plist"

/usr/libexec/PlistBuddy -c "Delete ':Preferences.Display.bCustomMargin'" -c "Add ':Preferences.Display.bCustomMargin' string '1'" "$HOME/Library/Preferences/com.foxit-software.Foxit.PDF.Reader.plist"
/usr/libexec/PlistBuddy -c "Delete ':Preferences.Display.nMarginSize'" -c "Add ':Preferences.Display.nMarginSize' string '1'" "$HOME/Library/Preferences/com.foxit-software.Foxit.PDF.Reader.plist"

## macOS
# Disable input source switching hotkeys
/usr/libexec/PlistBuddy -c "Delete ':AppleSymbolicHotKeys:60:enabled'" -c "Add ':AppleSymbolicHotKeys:60:enabled' bool 'false'" "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist"
/usr/libexec/PlistBuddy -c "Delete ':AppleSymbolicHotKeys:61:enabled'" -c "Add ':AppleSymbolicHotKeys:61:enabled' bool 'false'" "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist"

# Disable Spotlight hotkey
/usr/libexec/PlistBuddy -c "Delete ':AppleSymbolicHotKeys:64:enabled'" -c "Add ':AppleSymbolicHotKeys:64:enabled' bool 'false'" "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist"

# https://apple.stackexchange.com/a/46363
defaults write -g ApplePressAndHoldEnabled -bool false

# https://support.apple.com/en-us/102439#:~:text=macOS%20Ventura-,Choose%20Apple%20menu%20%EF%A3%BF%20%3E%20System,standard%20function%20keys%E2%80%9D.2,-Earlier%20macOS%20versions
/usr/libexec/PlistBuddy -c "Delete ':com.apple.keyboard.fnState'" -c "Add ':com.apple.keyboard.fnState' bool 'true'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

# https://support.apple.com/guide/mac-help/set-how-quickly-a-key-repeats-mchl0311bdb4/mac#:~:text=set%20how%20quickly%20characters%20repeat%3A%20drag%20the%20%E2%80%9Ckey%20repeat%20rate%E2%80%9D%20slider.
/usr/libexec/PlistBuddy -c "Delete ':KeyRepeat'" -c "Add ':KeyRepeat' real '2.000000'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

# https://support.apple.com/guide/mac-help/set-how-quickly-a-key-repeats-mchl0311bdb4/mac#:~:text=set%20how%20long%20to%20wait%20before%20the%20character%20starts%20repeating%3A%20drag%20the%20%E2%80%9Cdelay%20until%20repeat%E2%80%9D%20slider.
/usr/libexec/PlistBuddy -c "Delete ':InitialKeyRepeat'" -c "Add ':InitialKeyRepeat' real '15.000000'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

# https://support.apple.com/guide/mac-help/change-desktop-dock-settings-mchlp1119/mac#:~:text=Automatically%20hide%20and,not%20using%20it.
/usr/libexec/PlistBuddy -c "Delete ':autohide'" -c "Add ':autohide' bool 'true'" "$HOME/Library/Preferences/com.apple.dock.plist"

# Set the autohide-delay to a very large number to prevent the Dock from appearing
defaults write com.apple.dock autohide-delay -float 100000

# https://support.apple.com/guide/mac-help/use-a-light-or-dark-appearance-mchl52e1c2d2/mac#:~:text=during%20the%20day.-,On%20your%20Mac%2C%20choose,Auto%20on%20the%20right.,-Light%20is%20a
/usr/libexec/PlistBuddy -c "Delete ':AppleInterfaceStyle'" -c "Add ':AppleInterfaceStyle' string 'Dark'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

# Create a solid black image
convert -size 1x1 xc:black "$HOME/.black.png"

# Set the wallpaper to the black image
osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"$HOME/.black.png\""

# https://support.apple.com/guide/mac-help/change-language-region-settings-on-mac-intl163/mac#:~:text=Temperature,preferred%20temperature%20format.
/usr/libexec/PlistBuddy -c "Delete ':AppleTemperatureUnit'" -c "Add ':AppleTemperatureUnit' string 'Celsius'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

# https://support.apple.com/guide/mac-help/show-or-hide-filename-extensions-on-mac-mchlp2304/mac#:~:text=In%20the%20Finder,all%20filename%20extensions.%E2%80%9D
/usr/libexec/PlistBuddy -c "Delete ':AppleShowAllExtensions'" -c "Add ':AppleShowAllExtensions' bool 'true'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

# https://support.apple.com/guide/mac-help/get-file-folder-and-disk-information-on-mac-mchlp1774/mac#:~:text=file%20or%20folder-,On%20your%20Mac%2C%20click,of%20the%20Finder%20window.,-You%20can%20also
/usr/libexec/PlistBuddy -c "Delete ':ShowPathbar'" -c "Add ':ShowPathbar' bool 'true'" "$HOME/Library/Preferences/com.apple.finder.plist"

# https://support.apple.com/guide/mac-help/change-language-region-settings-on-mac-intl163/mac#:~:text=Measurement%20system,preferred%20measurement%20system.
/usr/libexec/PlistBuddy -c "Delete ':AppleMeasurementUnits'" -c "Add ':AppleMeasurementUnits' string 'Centimeters'" "$HOME/Library/Preferences/.GlobalPreferences.plist"
/usr/libexec/PlistBuddy -c "Delete ':AppleMetricUnits'" -c "Add ':AppleMetricUnits' bool 'true'" "$HOME/Library/Preferences/.GlobalPreferences.plist"

## Shottr
# After Area Crop, show Editor
/usr/libexec/PlistBuddy -c "Delete ':areaCaptureMode'" -c "Add ':areaCaptureMode' string 'editor'" "$HOME/Library/Containers/cc.ffitch.shottr/Data/Library/Preferences/cc.ffitch.shottr.plist"
