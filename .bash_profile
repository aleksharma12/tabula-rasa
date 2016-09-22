# load ~/profile file for RVM
source ~/.profile

# set architecture flags
export ARCHFLAGS="-arch x86_64"

# generate tags in git projects
alias gen_tags="ctags --tag-relative=yes -R -f ./.git/tags ."

# language-specific things
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Go
export GOPATH=$HOME/code/go

# Haskell
export PATH="$PATH:$HOME/Library/Haskell/bin:"

# Python
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

