alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias get='git '

alias cgn='cd /home/msh/proj/cognition'
alias cgns='cd /home/msh/proj/cognition && rails server'
alias work='cd /home/msh/proj/'
alias wsps='cd ~/bin/Worksnaps/bin/ && ./run.sh'

alias tml="tmux list-sessions"
alias tma="tmux attach-session"
alias tmc="clear && tmux clear-history"
alias tmk="tmux kill-session"
alias tm="tmux new-session \; \
  split-window -h -p 30 \; split-window -v -p 50 \; select-pane -t 1 \; \
  select-pane -t 0 \;"

alias pwg='pwgen -cnyB 14 14 | while read PASS; do echo -n -e "$PASS\t"; echo -n "$PASS" | md5sum | cut -f1 -d" "; done'

alias folio='ssh -p 42222 msh@velton.folioplus.com'
alias drill='ssh misha@gw.drillex.com.ua'

# Easy extract
 extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       rar e $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

 # Makes directory then moves into it
 function mkcdr {
     mkdir -p -v $1
     cd $1
 }

alias view="gnome-open"

#Для создания временного общего файлового сервера, который дает доступ ко всему в текущем каталоге, поэтому будьте осторожны с ним, кстати для него требуются дополнительные IP-псевдонимы приведенные ниже:
alias share='hostip && echo "To end sharing, press Ctrl + C - server on port 56840" && python -m SimpleHTTPServer 56840'

#Проверить внешний IP:
alias hostip="wget http://checkip.dyndns.org/ -O - -o /dev/null | cut -d: -f 2 | cut -d\< -f 1"
