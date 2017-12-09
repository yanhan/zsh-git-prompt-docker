source ~/zsh-git-prompt/zshrc.sh
GIT_PROMPT_EXECUTABLE='haskell'
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_super_status) %# '
