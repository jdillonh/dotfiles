#source ~/.bash_login
# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

#enable colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#bash prompt bar:
export PS1="[\A] \u \W \\$\[$(tput sgr0)\]"


### VIM stuff ###
#enter nvim focus mode; can take an argument
alias focus='nvim -c "Focus"'
alias Focus='nvim -c "Focus"'
alias Clean='nvim -u NONE'
alias clean='nvim -u NONE'
alias vim='nvim'
set -o vi

#misc
alias cl='clear'

#toggle desktop icons
alias noicon='bash ./Documents/bash_scripts/noicon.sh'
alias seticon='bash ./Documents/bash_scripts/seticon.sh'
alias icon='seticon'

#make a new bash script
alias newscript='bash ./Documents/bash_scripts/new_script.sh'

#love2d shortcut
alias love="/Applications/love.app/Contents/MacOS/love"

#pretty apple greeting
neofetch

