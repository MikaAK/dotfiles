function hideFiles
	defaults write com.apple.finder AppleShowAllFiles 0 
killall Finder
end
