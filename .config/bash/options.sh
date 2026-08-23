# Do not let Ctrl-S pause terminal output. Non-interactive shells have no tty.
[[ -t 0 ]] && stty -ixon

shopt -s autocd

# Empty values intentionally keep an unlimited in-memory and on-disk history.
HISTSIZE=
HISTFILESIZE=
