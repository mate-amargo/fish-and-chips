function weather -d "Show weather from wttr.in"
  curl -s 'wttr.in/bahia_blanca'| head -n-2
end
