# alias
alias a='alias' 
alias g='grep'
alias h='history'
alias m='less'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias more='less'
alias ls='ls --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias gnubg='gnubg -q'
alias tj='trans :ja'
alias te='trans :en'
alias googler='googler -n 4 --show-browser-logs'
alias gg='googler -n 4 --show-browser-logs'
# function

# calc
# Example
#  $ calc '1+2-3*4/5'
#  0.6
calc() {
        awk "BEGIN{ print $print $*}"
}
