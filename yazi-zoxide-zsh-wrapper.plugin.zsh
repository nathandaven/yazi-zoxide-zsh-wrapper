# Add a `y` function to zsh that opens yazi either at the given directory or
# at the one zoxide suggests
# Also implements https://yazi-rs.github.io/docs/quick-start/#shell-wrapper

y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  if [ "$1" != "" ]; then
    if [ -d "$1" ]; then
      yazi "$1"  --cwd-file="$tmp
    else
      yazi "$(zoxide query $1)" --cwd-file="$tmp
    fi
  else
    yazi --cwd-file="$tmp
  fi
    return $?
  IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	command rm -f -- "$tmp"
}
