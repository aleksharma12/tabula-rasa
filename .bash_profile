# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

PS1='\W $ '

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	source $(brew --prefix)/etc/bash_completion
fi

alias gen_tags="ctags --tag-relative=yes -R -f ./.git/tags ."

# added by Anaconda3 2.5.0 installer
export PATH="/Users/alek/anaconda/bin:$PATH"
