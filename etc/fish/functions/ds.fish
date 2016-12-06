function ds -d "Prints the directory history"
	for i in (seq (count $dirhist))
		echo "$i) $dirhist[$i]" | sed "s| $HOME| ~|"
	end
end
