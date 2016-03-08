# Install Homebrew if not installed
which -s pip
if [[ $? != 0 ]] ; then
  easy_install pip
fi

# Install git branch cleanup tool
pip install git-sweep
