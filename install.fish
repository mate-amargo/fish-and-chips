#!/usr/bin/fish
# A simple fish script to install all the goodies

echo 'About to install system-wide files'
for file in etc/**
	if test -d /$file
		sudo install -v -d -m 755 -o root -g root $file /$file 
	else
		sudo install -v -m 644 -o root -g root $file /$file 
	end
end

echo 'About to install user files'
for file in (string replace local/ "" local/**)
	if test -d local/$file
		install -v -d -m 755 -o $USER -g users local/$file $HOME/.config/fish/$file
	else
		install -v -m 644 -o $USER -g users local/$file $HOME/.config/fish/$file
	end
end

if test $status = 0
	echo 'All done wonderfully!'
else
	echo 'Oh-oh. Something went wrong :('
end
