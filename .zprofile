
# Setting PATH for Python 3.9
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH

##
# Your previous ~/.zprofile file was backed up as ~/.zprofile.macports-saved_2022-01-21_at_16:07:04
##

# MacPorts Installer addition on 2022-01-21_at_16:07:04: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.12
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH

# Setting PATH for Python 3.13
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.13/bin:${PATH}"
export PATH

# Created by `pipx` on 2024-11-10 13:09:11
export PATH="$PATH:~/.local/bin"

if [ "$(uname -s)" = "Darwin" ]; then
  export PATH="$(brew --prefix python)/libexec/bin:$PATH"
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
