function cds -d "Change to a directory in the history" -v PWD
	# dirhist holds the history. Newst cd's shows at the top
	set -g maxdirhist 5
	if test (count $argv) -eq 1
		eval cd $dirhist[$argv]
	else # This part executes whenever the directory changes (or when called without args)
		if test -z (string match $PWD $dirhist); # dir is not in the history
			if test (count $dirhist) -lt $maxdirhist
				set -g dirhist $PWD $dirhist
			else # If there's no space, delete the oldest (move the list down)
				set -g dirhist $PWD $dirhist[1..(math "$maxdirhist -1")]
			end
		else # if dir is already in the history bring it to the top
			for i in (seq (count $dirhist))
				if not test -z (string match $PWD $dirhist[$i])
					set -e dirhist[$i]
					break
				end
			end
			set -g dirhist $PWD $dirhist
		end
	end	
end
