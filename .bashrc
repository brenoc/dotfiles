### Aliases
alias gs='git status'
alias gp='git pull'
alias eh='sudo gedit /etc/hosts'
alias cd..='cd ..'
alias cdd='cd ~/Downloads'
alias cdp='cd ~/projects'

function b {
 echo $1 | sudo tee /sys/class/backlight/acpi_video0/brightness
 echo $1 | sudo tee /sys/class/backlight/intel_backlight/brightness
}

function parse_git_branch {
 ref=$(git-symbolic-ref HEAD 2> /dev/null) || return
 echo "("${ref#refs/heads/}")"
}

source ~/.git-prompt.sh

## PWD
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u:\[\033[01;34m\]\W\[\033[00m\]$(__git_ps1)\$ '
