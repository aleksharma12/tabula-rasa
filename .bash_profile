# set architecture flags
export ARCHFLAGS="-arch x86_64"
# load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# generate tags in git projects
alias gen_tags="ctags --tag-relative=yes -R -f ./.git/tags ."

# Go development
export GOPATH=$HOME/code/go

# Haskell development
export PATH="$PATH:$HOME/Library/Haskell/bin:"
