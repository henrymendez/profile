
# Pretty prompt
export PS1="\[\e[00;34m\]\w\[\e[0m\]\[\e[00;37m\]\n\[\e[0m\]\[\e[00;31m\][\A]\[\e[0m\]\[\e[00;32m\]\u@\h\[\e[0m\]\[\e[00;35m\]:\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

# Color man pages- wowza
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode - red
export LESS_TERMCAP_md=$(printf '\e[01;35m') # enter double-bright mode - bold, magenta
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode - yellow
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode - cyan

# Aliases
alias ls='ls -G'
#alias ssh='ssh -A'
alias grep='grep --color'
alias mv='mv -v'
alias ap='ansible-playbook'
alias a='ansible'
#alias pip='pip-2.7'

# Add ssh key. osx hack
ssh-add
