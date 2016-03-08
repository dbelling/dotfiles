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
    hammerspoon
    spotify
)

brew cask install "${apps[@]}"
