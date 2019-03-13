# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/fdecourc/.oh-my-zsh"

# Fixing home bug
export LANG=en_US.UTF-8
# export LC_ALL=en_US.UTF-8

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="false"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  virtualenv
  zsh-syntax-highlighting
  ssh-agent
  z
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="vim ~/.oh-my-zsh"

# Virtualenvwrapper
# export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3  # HOME_FIX
# export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/bin/virtualenv  # HOME_FIX
export WORKON_HOME=~/.virtualenvs
mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh

# Pyenv
export PATH="/Users/fdecourc/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

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
alias invs='cd /Users/fdecourc/SW_cern/invenio_software/'
alias invp='cd /Users/fdecourc/SW_cern/invenio_projects/'
alias zens='cd /Users/fdecourc/SW_cern/zenodo_software/'
alias zenp='cd /Users/fdecourc/SW_cern/zenodo_projects/'

alias bi='brew install'
alias bu='brew update'
alias br='brew remove'

alias da='deactivate'

# Docker aliases
alias dka='docker kill $(docker ps -q)'


# Spaceship
# ORDER
SPACESHIP_PROMPT_ORDER=(
  venv
  time     #
  vi_mode  # these sections will be
  user     # before prompt char
  host     #
  dir
  git
  vi_mode
  line_sep
  char
)

SPACESHIP_GIT_SYMBOL=$'\uf113 '
SPACESHIP_GIT_STATUS_PREFIX=' '
SPACESHIP_GIT_STATUS_SUFFIX=''
SPACESHIP_GIT_STATUS_UNTRACKED=$'\uf059 '
SPACESHIP_GIT_STATUS_ADDED=$'\uF055 '
SPACESHIP_GIT_STATUS_MODIFIED=$'\uF06A '
SPACESHIP_GIT_STATUS_RENAMED=$'\uf45a '
SPACESHIP_GIT_STATUS_DELETED=$'\uf056 '
SPACESHIP_GIT_STATUS_STASHED=$'\uF01C '
SPACESHIP_GIT_STATUS_AHEAD=$'\uF01B '
SPACESHIP_GIT_STATUS_BEHIND=$'\uF01A '
SPACESHIP_GIT_STATUS_DIVERGED=$'\uf47f '
