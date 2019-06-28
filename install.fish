#!/usr/bin/fish
# A simple fish script to install all the goodies

git submodule init
git submodule update

echo -e '\e[32mAbout to install system-wide files\e[0m'
for file in etc/**
	if test -d /$file
		sudo install -v -d -m 755 -o root -g root $file /$file 
	else
		sudo install -v -m 644 -o root -g root $file /$file 
	end
end

echo -e '\e[32mAbout to install user files\e[0m'
for file in (string replace local/ "" local/**)
	if test -d local/$file
		install -v -d -m 755 -o $USER -g users local/$file $HOME/.config/fish/$file
	else
		install -v -m 644 -o $USER -g users local/$file $HOME/.config/fish/$file
	end
end

if test $status = 0
	echo -e '\e[32mAll done wonderfully!\e[0m'
else
	echo -e '\e[31mOh-oh. Something went wrong :(\e[0m'
end
