# Get the only language computers should speak
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=vim

# Use emacs style commands
bindkey -e

# Fix the delete key
bindkey "[3~" delete-char

# source additional files
source ~/.termcolors
source ~/.aliases

# pushd on every cd, but avoid dupes
setopt auto_pushd
setopt pushdignoredups

# Set up commandline prompt
prompt="%n@%m:$BRIGHT$CYAN%~/$NORMAL $ "

# Rightside prompt show time
RPROMPT="[%T]"

# History
HISTSIZE=5000
HISTFILE=${HOME}/.zsh_history
SAVEHIST=5000
setopt HIST_IGNORE_SPACE

# No CR to screw output
setopt nopromptcr

# No auto correction
setopt nocorrect
setopt nocorrectall

# Print exit value if not 0
setopt print_exit_value

# No lower priority for background jobs
unsetopt bg_nice

# History completion
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "[A" history-beginning-search-backward-end
bindkey "[B" history-beginning-search-forward-end

# Give the shell's title a nice name with hostname etc.
case $TERM in
	xterm*)
		precmd () {print -Pn "\e]0;%n@%m: %~\a"}
		;;
esac

# The nice ZSH completion
autoload -U compinit
compinit
