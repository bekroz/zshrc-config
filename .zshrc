# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# Powerlevel 10k customizations
#
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=( 
    # other plugins...
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Webstorm aliases
alias ws='open -a /Applications/WebStorm.app'

alias op="ws ~/.p10k.zsh"
alias sp="source ~/.p10k.zsh"

# Aliases
#
alias ga='git add .'
alias gs='git status'
alias gc='git commit -m'
alias gp='git push'
alias gcl='git clone'
alias gi='git init'
alias go='git remote add origin'
alias gb='git branch -M main'

# VS Code
alias o="code ."

# Folders and moving
alias c="clear"
alias cc="cd .."
alias ccc="cd"

# Yarn aliases
alias aa="yarn"
alias add="yarn add"
alias addd="yarn add -D"
alias addg="sudo yarn add -g"
alias aq="rm -rf node_modules && rm -rf yarn.lock && rm -rf package-lock.json"
alias s="aa & c && yarn start"

# React Native Global
alias rn='react-native init'
alias rs="react-native start"

# React Native IOS
alias p="npx pod-install"
alias pu="cd ios && pod install --repo-update && cd .. && clear && echo 'Pods are ready. 👌'"
alias pd="cd ios && rm -rf Podfile.lock && pod deintegrate && cd .. && echo 'Pods are clean like a sky. ✨'"
alias 1="pu && yarn ios"

# React Native Android 
alias a="cd android && ./gradlew clean && cd .."
alias 2="a && yarn android"

# Watchman
alias w="watchman watch-del-all"
alias cs="watchman watch-del-all && rm -rf ${TMPDIR:-/tmp}/metro-* && rm -rf node_modules/ && yarn cache clean --force && yarn && react native start --reset-cache"

# ZSH aliases
alias sz="source ~/.zshrc"
alias oz="ws ~/.zshrc"

# Z folder jumper
eval "$(zoxide init zsh)"

# Exa aliases
alias ls="exa --icons --git --group-directories-first --color=always"
alias lsa="exa --icons --git --all"

# TheFuck typo fixer
eval $(thefuck --alias)
alias f='fuck'
