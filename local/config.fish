set -x PATH $HOME/.local/bin $PATH
set -x MPD_HOST $HOME/.config/mpd/socket
if status --is-interactive
  abbr --add --global cdd "cd ~/downloads"
end
