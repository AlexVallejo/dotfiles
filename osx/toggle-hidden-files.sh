#!/bin/bash
# Credit: http://www.macosxtips.co.uk/index_files/quickly-show-hidden-files.php
# Usage: toggle-hidden-files
# Description: toggles the showing or hiding of hidden files in Mac OS X
# Note: this entire script is Mac OS X specific

STATUS=`defaults read com.apple.finder AppleShowAllFiles`
if [ $STATUS == YES ];
then
    defaults write com.apple.finder AppleShowAllFiles NO
else
    defaults write com.apple.finder AppleShowAllFiles YES
fi
killall Finder

