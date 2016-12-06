function fish_greeting -d "Sage cow displaying a quote at random"
	set -l QUOTE_FILE "$HOME/.local/share/quotes/chess.quotes"	
	set -l QUOTE (head -n (math (random) "%" (cat $QUOTE_FILE | wc -l) "+1") $QUOTE_FILE | tail -1)
	eval (shuf -n1 -e cowsay cowthink) -(shuf -n1 -e b d g p s t w y) "$QUOTE"
end