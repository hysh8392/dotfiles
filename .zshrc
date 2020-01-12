autoload -Uz colors && colors
autoload -Uz compinit && compinit
autoload -Uz vcs_info

# prompts
PROMPT='%F{green}%n@%m:%f%F{blue}%~%f
%# '
PROMPT2="> "

setopt prompt_subst
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:*' unstagedstr "%F{red}*"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# aliases
alias la='ls -AFG'
alias ll='ls -AFGl'
