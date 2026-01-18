##################
#### ~/.zshrc ####
##################

# Enable git prompt (using zsh-git-prompt)
source /opt/homebrew/opt/zsh-git-prompt/zshrc.sh

# Enable iTerm 2 shell integration
source ~/.iterm2_shell_integration.zsh

# Source aliases
if [[ -r ~/.aliasrc ]]; then
  source ~/.aliasrc
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true
alias config='/opt/homebrew/bin/git --git-dir=/Users/tylerwilcox/.cfg/ --work-tree=/Users/tylerwilcox'
