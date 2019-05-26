# TODO : fix virtualenvwrapper

# Pyenv
# export PATH="/Users/fdecourc/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# ----------------------------------------------------------------------------
# ALIASES
source ~/.aliases

# ----------------------------------------------------------------------------
# PYTHON
## virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh

# COLORS 
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


