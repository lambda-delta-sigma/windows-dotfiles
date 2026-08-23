# System commands. sdn and rbn act immediately and intentionally.
alias sdn='shutdown /s /t 0'
alias rbn='shutdown /r /t 0'
alias df='df -h'
alias histg='history | grep'

# du here
duh() {
  local target=${1:-.}
  command du -h --max-depth=1 -- "$target" | sort -h
}

myip() {
  curl --fail --silent --show-error https://api.ipify.org && printf '\n'
}

# Editing and shell utilities.
alias v='vim'
alias nv='nvim'
alias g='git'
alias mkd='mkdir -pv'
alias ref='source "$HOME/.bashrc"'
alias py='python'
alias ..='cd ..'
alias cd..='cd ..'
alias :q='exit'
alias :Q='exit'
alias :x='exit'
alias q='exit'
alias c='clear'
alias lsa='ls -Ah'

LEGACY='Application Data|Cookies|Local Settings|My Documents|NetHood|PrintHood|Recent|SendTo|Start Menu|Templates|3D Objects|NTUSER*|ntuser*'
alias l='ls'
alias ll='ls -lah --group-directories-first'
alias lt='eza --tree --level=2 --group-directories-first'
alias lsw="eza --group-directories-first --ignore-glob='$LEGACY'"
alias ls='ls -hsN --color=auto --group-directories-first'
alias grep='grep --color=auto'

# Applications.
alias yt='yt-dlp --add-metadata -ic'
alias yta='yt -x -f bestaudio/best'
alias wget='wget -c'
alias calc="cmd //c start '' calc"
alias htop='btm'
alias kostart='komorebic start'
alias kostop='komorebic stop'
alias powershell='powershell -NoLogo'
alias fastfetch='clear && fastfetch'
alias ytjp='yt-jp'

gitb() {
  local executable=${GIT_BASH_LAUNCHER:-}
  if [[ -z $executable ]]; then
    local program_files_win=${ProgramW6432:-${ProgramFiles:-${PROGRAMFILES:-}}}
    [[ -n $program_files_win ]] || {
      printf 'gitb: Windows Program Files environment is unavailable\n' >&2
      return 1
    }
    executable="$(cygpath -u "$program_files_win")/Git/git-bash.exe"
  fi
  "$executable" "$@" &
}

# Config editors target deployed entry points.
cfb() { "$EDITOR" "$HOME/.config/bash/commands.sh"; }
cfv() { "$EDITOR" "$HOME/.vimrc"; }
cfs() { "$EDITOR" "$HOME/.config/starship.toml"; }

cfy() {
  [[ -n ${YAZI_CONFIG_HOME:-} ]] || {
    printf 'cfy: YAZI_CONFIG_HOME is not configured\n' >&2
    return 1
  }
  "$EDITOR" "$YAZI_CONFIG_HOME/yazi.toml"
}

cfyk() {
  [[ -n ${YAZI_CONFIG_HOME:-} ]] || {
    printf 'cfyk: YAZI_CONFIG_HOME is not configured\n' >&2
    return 1
  }
  "$EDITOR" "$YAZI_CONFIG_HOME/keymap.toml"
}