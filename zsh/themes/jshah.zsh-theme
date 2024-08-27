NEWLINE=$'\n'

PROMPT="%(?:%{$fg[green]%}➜ :%{$fg[red]%}➜ )"
PROMPT+=' %{$fg[green]%}%~%f%{$reset_color%} $(git_prompt_info)'
PROMPT+="${NEWLINE}$ "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

