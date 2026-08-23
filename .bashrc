# Interactive Bash only.
case $- in
  *i*) ;;
  *) return ;;
esac

source "$HOME/.config/bash/init.sh"