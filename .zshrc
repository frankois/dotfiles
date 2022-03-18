# ----------------------------------------------------------------------------
# CUSTOM
if [ $HOST = "frankois_perso" ]
then
	echo "I am at home"
	export ZSH="/Users/Frankois/.oh-my-zsh"
	export PATH="/Users/Frankois/.pyenv/bin:$PATH"
    export NVM_DIR=~/.nvm
    source $(brew --prefix nvm)/nvm.sh
	[ -f $HOME/.aliases.home ] && source $HOME/.aliases.home
elif [ $HOST = "frankois_pro" ]
then
	echo "I am at work"
	export ZSH="/Users/fdecourc/.oh-my-zsh"
	export PATH="/Users/fdecourc/.pyenv/bin:$PATH"
	[ -f $HOME/.aliases.work ] && source $HOME/.aliases.work
else
	echo "I don't know where I am... I am scared !!!"
fi

# ----------------------------------------------------------------------------
# GLOBAL
export LANG=en_US.UTF-8
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

ZSH_THEME="spaceship"

# ----------------------------------------------------------------------------
# DEPENDENCIES
[ -f $HOME/.aliases ] && source $HOME/.aliases
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# ----------------------------------------------------------------------------
# PLUGINS
plugins=(
  git
  zsh-autosuggestions
  virtualenv
  zsh-syntax-highlighting
  ssh-agent
  fzf
  z
)

source $ZSH/oh-my-zsh.sh
bindkey '^ ' autosuggest-accept
# bindkey '^ ' autosuggest-execute

# ----------------------------------------------------------------------------
# PYTHON
# - virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3  # HOME_FIX
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/bin/virtualenv  # HOME_FIX
export WORKON_HOME=~/.virtualenvs
mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh

# - pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# ----------------------------------------------------------------------------
# SPACESHIP
# - order
SPACESHIP_PROMPT_ORDER=(
  venv
  time     
  user     
  host    
  dir
  git
  vi_mode
  line_sep
  char
)

# - vim 
SPACESHIP_VI_MODE_COLOR='grey'

# - git
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

# ----------------------------------------------------------------------------
# TESTING
# echo -e -n "\x1b[\x35 q" # changes to blinking bar

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
# ----------------------------------------------------------------------------
# LOCAL
# ! DO NOT PUT ANYTHING BELOW
# loading local configuration if exists
[ -f $HOME/.zshrc.local ] && source $HOME/.zshrc.local
