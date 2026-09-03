# oh-my-posh init bash --print
# loads oh-my-posh config
# eval "$(oh-my-posh init bash --config ~/AppData/Local/Programs/oh-my-posh/themes/pure.omp.json)"

# Redirects to zsh execution
# : '
if [ -t 1 ]; then
    exec zsh
   fi
# '

#Nvim stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use          # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Aliases
[ -f "$HOME/.bash_aliases" ] && source "$HOME/.bash_aliases"

# Yazi wrapper to update current working directory
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}


   

