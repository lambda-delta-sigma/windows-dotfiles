alias h='cd "$HOME" && ls'
alias ha='cd "$HOME" && ls -a'

apd() {
  if [[ -z ${APPDATA:-} ]]; then
    printf 'apd: APPDATA is not set\n' >&2
    return 1
  fi

  local appdata_path
  appdata_path=$(cygpath -u "$APPDATA") || return
  builtin cd -- "$appdata_path"
}
