
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

#[[ -r $rvm_path/scripts/completion ]] &&. $rvm_path/scripts/completion

case $- in *i*) . ~/.bashrc;; esac

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
