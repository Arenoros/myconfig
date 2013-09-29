export DEBEMAIL=arenoros@gmial.com

# OPAM configuration
source /home/arenoros/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
# my alias

alias myctags='ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .'

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
