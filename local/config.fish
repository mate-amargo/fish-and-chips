# Set LESS colors for nicely reading man pages
set -xU LESS_TERMCAP_md (printf "\e[01;31m")
set -xU LESS_TERMCAP_me (printf "\e[0m")
set -xU LESS_TERMCAP_se (printf "\e[0m")
set -xU LESS_TERMCAP_so (printf "\e[01;44;33m")
set -xU LESS_TERMCAP_ue (printf "\e[0m")
set -xU LESS_TERMCAP_us (printf "\e[01;32m")

set -x PATH $HOME/.local/bin $PATH
set -x MPD_HOST $HOME/.config/mpd/socket
if status --is-interactive
  abbr --add --global cdd "cd ~/downloads"
end
