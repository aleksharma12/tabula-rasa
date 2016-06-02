# set architecture flags
export ARCHFLAGS="-arch x86_64"
# load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# generate tags in git projects
alias gen_tags="ctags --tag-relative=yes -R -f ./.git/tags ."

# language-specific things

# Go
export GOPATH=$HOME/code/go

# Haskell
export PATH="$PATH:$HOME/Library/Haskell/bin:"

# Python
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
