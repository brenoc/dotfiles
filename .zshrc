export BASH_SILENCE_DEPRECATION_WARNING=1

### Aliases
alias gs='git status'
alias gp='git pull'
alias cd..='cd ..'
alias cdd='cd ~/Downloads'
alias cdp='cd ~/Projects'
alias ccat='pygmentize -g -O style=colorful,linenos=1'

# Show/Hide Mac hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

function b {
 echo $1 | sudo tee /sys/class/backlight/acpi_video0/brightness
 echo $1 | sudo tee /sys/class/backlight/intel_backlight/brightness
}

function parse_git_branch {
 ref=$(git-symbolic-ref HEAD 2> /dev/null) || return
 echo "("${ref#refs/heads/}")"
}

source ~/.git-prompt.sh
source ~/.git-completion.bash

## PWD
export PS1='\[\033[01;32m\]\u:\[\033[01;34m\]\W\[\033[00m\]$(__git_ps1)\$ '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

NPM_PACKAGES="${HOME}/.npm-packages"

PATH="$NPM_PACKAGES/bin:$PATH"
