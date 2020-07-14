function fish_greeting -d "Sage cow chess quote OR Fish OR Info OR Doge OR Matrix"
  switch (shuf -n1 -e (seq 1 6))
    case 1
      set -l QUOTE_FILE "$HOME/.local/share/quotes/chess.quotes"
      set -l QUOTE (shuf -n1 $QUOTE_FILE)
      set -l COW (shuf -n1 -e blowfish default dragon dragon-and-cow eyes ghostbusters moose sheep skeleton small stegosaurus turkey turtle tux)
      eval (shuf -n1 -e cowsay cowthink) -f $COW -(shuf -n1 -e b d g p s t w y) "$QUOTE" | lolcat
    case 2
      fish_logo
    case 3
      archey3
    case 4
      pfetch
    case 5
      doge
    case 6
      unimatrix -s 99 -f -w
  end
end
