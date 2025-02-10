export PS1="\[$(tput setaf 216)\]\u\[$(tput setaf 160)\]@\[$(tput setaf 202)\]\h \[$(tput setaf 131)\]\w \[$(tput sgr0)\]$ "

export PATH=$PATH:~/.local/bin

# Shell-GPT integration BASH v0.2
_sgpt_bash() {
if [[ -n "$READLINE_LINE" ]]; then
    READLINE_LINE=$(sgpt --shell <<< "$READLINE_LINE" --no-interaction)
    READLINE_POINT=${#READLINE_LINE}
fi
}
bind -x '"\C-l": _sgpt_bash'
# Shell-GPT integration BASH v0.2
