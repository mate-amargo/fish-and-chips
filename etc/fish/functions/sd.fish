function sd -d "Synchronizes CWD on all shells executing it" -v SYNCEDDIR
	if test (count $argv) -eq 1
		cd $argv
		set -U SYNCEDDIR $PWD
	else
		cd $SYNCEDDIR
	end
end
