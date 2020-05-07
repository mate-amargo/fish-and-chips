function fish_greeting -d "Sage cow displaying a quote at random"
  switch (shuf -n1 -e (seq 1 4))
    case 1
      set -l QUOTE_FILE "$HOME/.local/share/quotes/chess.quotes"	
      set -l QUOTE (head -n (math (random) "%" (cat $QUOTE_FILE | wc -l) "+1") $QUOTE_FILE | tail -1)
      eval (shuf -n1 -e cowsay cowthink) -(shuf -n1 -e b d g p s t w y) "$QUOTE"
    case 2
      fish_logo
    case 3
      archey3
    case 4
      neofetch
  end
end
