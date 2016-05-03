# Resolve DOTFILES_DIR (assuming ~/dotfiles on distros without readlink and/or $BASH_SOURCE/$0)

READLINK=$(which greadlink || which readlink)
CURRENT_SCRIPT=$BASH_SOURCE

if [[ -n $CURRENT_SCRIPT && -x "$READLINK" ]]; then
    SCRIPT_PATH=$($READLINK -f "$CURRENT_SCRIPT")
    DOTFILES_DIR=$(dirname "$(dirname "$SCRIPT_PATH")")
elif [ -d "$HOME/dotfiles" ]; then
    DOTFILES_DIR="$HOME/dotfiles"
else
    echo "Unable to find dotfiles, exiting."
    return # `exit 1` would quit the shell itself
fi

# Finally we can source the dotfiles (order matters)

for DOTFILE in "$DOTFILES_DIR"/system/.{function,function_*,path,env,alias,completion,grep,prompt,nvm,rvm,custom}; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# added by Anaconda3 4.0.0 installer
export PATH="//anaconda/bin:$PATH"
