# Set LESS colors for nicely reading man pages
set -xU LESS_TERMCAP_md (printf "\e[01;31m")
set -xU LESS_TERMCAP_me (printf "\e[0m")
set -xU LESS_TERMCAP_se (printf "\e[0m")
set -xU LESS_TERMCAP_so (printf "\e[01;44;33m")
set -xU LESS_TERMCAP_ue (printf "\e[0m")
set -xU LESS_TERMCAP_us (printf "\e[01;32m")

set -xU EDITOR vim
set -xU BROWSER google-chrome-stable

set -x PATH $HOME/.local/bin $PATH
set -x MPD_HOST $HOME/.config/mpd/socket
if status --is-interactive
	abbr --add --global cdd "cd ~/downloads"
	abbr --add --global l "exa -l --icons"
end

set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block
fish_hybrid_key_bindings

# Fix del key in st
switch $TERM
case 'st-*' # suckless' simple terminal
						# Enable keypad, do it once before fish_postexec ever fires
	tput smkx
	function st_smkx --on-event fish_postexec
		tput smkx
	end
	function st_rmkx --on-event fish_preexec
		tput rmkx
	end
end

# ssh-agent
set -xU SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

if test (tty | cut -d'/' -f3 | sed 's/[0-9]//g') = 'tty'
	pgrep X || x
end
