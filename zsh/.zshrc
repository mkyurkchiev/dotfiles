alias ls='ls --color=auto'
alias grep='grep --color'

alias e="emacs -nw"
alias ..="cd .."
PROMPT='%F{cyan}%n%f@%F{red}%m%f:%F{blue}%~%f - 
%F{yellow}%T%f %# '
alias l="ls -lah"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH="$HOME/.local/bin:$PATH"
