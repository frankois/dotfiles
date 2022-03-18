# Installation

Here is the way to install dotfiles:

## 1. Install Brew :

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/frankois/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## 2. Install Hyper 
```bash
brew install hyper
```

## 3. Setup Hyper

```bash
hyper i hyper-material-theme
hyper i hypercwd
hyper i hyper-search
hyper i hyper-pane
ln -sv ~/Projects/SW_misc/dotfiles/.hyper.js ~
```

## 4. Setup zsh

```bash
# Install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install theme
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
brew install fzf
```

## 5. Setup Vim
```bash
# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Launch `Vim` and run `:PluginInstall`

```bash
# Create swap folder
mkdir ~/.vim/tmp/ 
```

## 6. Symlink dotfiles
```bash
# Zsh
ln -sv ~/Projects/SW_misc/dotfiles/.zshrc ~   
ln -sv ~/Projects/SW_misc/dotfiles/.zshrc.pre-oh-my-zsh ~  

# Vim
ln -sv ~/Projects/SW_misc/dotfiles/.vimrc ~  

# Aliases
ln -sv ~/Projects/SW_misc/dotfiles/.aliases ~  

# Git
ln -sv ~/Projects/SW_misc/dotfiles/.gitconfig ~  
ln -sv ~/Projects/SW_misc/dotfiles/.gitignore_global ~  

# VS Code
rm -rf ~/Library/Application\ Support/Code/User/snippets/

ln -sv ~/Projects/SW_misc/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User
ln -sv ~/Projects/SW_misc/dotfiles/vscode/snippets ~/Library/Application\ Support/Code/User
ln -sv ~/Projects/SW_misc/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User
```

## 7. Configure Python

```bash
brew install pyenv
brew install pyenv-virtualenv
```
