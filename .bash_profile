# Pyenv
# export PATH="/Users/fdecourc/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# Aliases Pyhton
alias py2='/usr/bin/python2.7'
alias pi='pip install'
alias pf='pip freeze'
alias pr='pip uninstall'
alias pl='pip list'

# Aliases bash
alias ..='cd ..'
alias h='man'
alias g='hub'

# Aliases directories
alias invs='cd /Users/fdecourc/dev_cern/invenio_software/'
alias invp='cd /Users/fdecourc/dev_cern/invenio_projects/'
alias zens='cd /Users/fdecourc/dev_cern/zenodo_software/'
alias zenp='cd /Users/fdecourc/dev_cern/zenodo_projects/'

alias bi='brew install'
alias bu='brew update'
alias br='brew remove'

alias da='deactivate'

# Virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh

# Setting color
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[32;47m\]\\$\[\e[m\] "

export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'


