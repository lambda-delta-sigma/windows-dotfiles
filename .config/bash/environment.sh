export EDITOR="${EDITOR:-vim}"
export VISUAL="${VISUAL:-$EDITOR}"

# This is trusted, data-only Bash assignment syntax. It must not contain secrets.
bash_env="$HOME/.config/bash/env.local"
if [[ -r "$bash_env" ]]; then
  case $- in
    *a*) dotfiles_restore_allexport=0 ;;
    *)   dotfiles_restore_allexport=1; set -a ;;
  esac
  # shellcheck source=/dev/null
  source "$bash_env"
  (( dotfiles_restore_allexport )) && set +a
  unset dotfiles_restore_allexport
fi
unset bash_env

case ":$PATH:" in
  *":$HOME/.local/bin:"*) ;;
  *) PATH="$HOME/.local/bin:$PATH" ;;
esac

if [[ -n ${VIM_DIR:-} ]]; then
  case ":$PATH:" in
    *":$VIM_DIR:"*) ;;
    *) PATH="$VIM_DIR:$PATH" ;;
  esac
fi

# Yazi's conventional Windows locations can be derived by Git Bash.
if [[ -z ${YAZI_FILE_ONE:-} && -x /usr/bin/file.exe ]]; then
  YAZI_FILE_ONE=$(cygpath -w /usr/bin/file.exe)
  export YAZI_FILE_ONE
fi

if [[ -z ${YAZI_CONFIG_HOME:-} && -n ${APPDATA:-} ]]; then
  YAZI_CONFIG_HOME="$(cygpath -u "$APPDATA")/yazi/config"
  export YAZI_CONFIG_HOME
fi

export PATH
