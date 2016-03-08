# Tap a few casks, and update while enjoying some suds
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions
brew tap homebrew/versions
brew tap homebrew/dupes

apps=(
    alfred
    atom
    flux
    google-chrome
    hammerspoon
    spotify
    virtualbox
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
