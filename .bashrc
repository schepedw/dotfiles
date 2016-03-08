PS1='\W % '
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
source /usr/local/share/git/git-autocomplete.bash
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export EDITOR=vim

alias be='bundle exec'
alias cuke='bundle exec cucumber --require features'
alias pow='powify server'
alias brake='bundle exec rake'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias gco='git checkout'
alias gst='git status'
alias gd='git diff'
alias gbr='git branch'

_complete_ssh_hosts ()
{
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                        cut -f 1 -d ' ' | \
                        sed -e s/,.*//g | \
                        grep -v ^# | \
                        uniq | \
                        grep -v "\[" ;
                `
        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}
complete -F _complete_ssh_hosts ssh
