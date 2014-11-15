# If X is not already running and this is tty1, start sedia.
# Using "exec" means that killing X results in
# the user being logged out.
if [[ -z "$DISPLAY" && "$XDG_VTNR" -eq 1 ]]; then
	exec sedia
fi
