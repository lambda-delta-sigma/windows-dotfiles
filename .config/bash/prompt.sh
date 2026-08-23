if command -v starship >/dev/null 2>&1; then
  if [[ -z ${DOTFILES_STARSHIP_INITIALIZED:-} ]]; then
    eval "$(starship init bash)"
    DOTFILES_STARSHIP_INITIALIZED=1
  fi
else
  PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\$ \[$(tput sgr0)\]"
fi
