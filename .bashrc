PS1='\W % '
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
source /usr/local/share/git/git-autocomplete.bash
[ -d "/Users/dschepers/git/8b/bin" ] && export PATH="/Users/dschepers/git/8b/bin:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export EDITOR=vim

alias be='bundle exec'
alias cuke='bundle exec cucumber --require features'
alias pow='powify server'
alias brake='bundle exec rake'
alias gendashboard='cd ~/git/genesys_dashboard && git branch'
alias genclient='cd ~/git/genesys_client && git branch'
alias genapi='cd ~/git/genesys_api && git branch'
alias onstride='cd ~/git/8b/brands/onstride/onstride && git branch'
alias staging_tests='cd ~/git/8b/brands/onstride/onstride_staging_tests && git branch'
alias portal_staging_tests='cd ~/git/8b/brands/onstride/onstride_portal_staging_tests && git branch'
alias leads_staging_tests='cd ~/git/8b/apps/leads_staging_tests && git branch'
alias portal='cd ~/git/8b/brands/onstride/onstride_portal && git branch'
alias portfolio='cd ~/git/8b/apps/portfolio && git branch'
alias identity='cd ~/git/8b/apps/identity && git branch'
alias postal='cd ~/git/8b/apps/postal_service && git branch'
alias leads='cd ~/git/8b/apps/leads && git branch'
alias helios='cd /Users/dschepers/go/src/git.enova.com/8b/helios'
alias moriarty='cd ~/git/8b/apps/moriarty && git branch'
alias postcoder='cd ~/git/8b/apps/postcoder && git branch'
alias postcoder_config='cd ~/git/8b/apps/postcoder_config && git branch'
alias ps_mailer='cd ~/git/8b/apps/postal_service_mailer && git branch'
alias ps_client='cd ~/git/8b/clients/postal_service_client && git branch'
alias id_client='cd ~/git/8b/clients/identity_client && git branch'
alias portfolio_client='cd ~/git/8b/clients/portfolio_client && git branch'
alias nconjure='cd ~/git/8b/apps/nconjure&& git branch'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias adv_glass='cd ~/git/adventure_glass && git branch'
alias gatherable='cd ~/git/gatherable && git branch'
alias rhit_triangle='cd ~/git/rhit_triangle && git branch'
alias weekly_workshop='cd ~/weekly_workshop'
alias gems='cd ~/git/8b/gems/ && ls'
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
