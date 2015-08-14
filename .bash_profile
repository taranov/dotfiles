
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

#[[ -r $rvm_path/scripts/completion ]] &&. $rvm_path/scripts/completion

case $- in *i*) . ~/.bashrc;; esac
