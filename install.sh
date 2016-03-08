DOTFILES_DIR="/Users/$USER/.dotfiles"
export DOTFILES_DIR

# Update dotfiles itself first
# [ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks for global dotfiles
ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/runcom/.inputrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.gemrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

# Package managers
. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/npm.sh"
. "$DOTFILES_DIR/install/pip.sh"

# SDK Manager
curl -s get.sdkman.io | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
