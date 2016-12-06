function mkdircd -d "Create a directory and set CWD"
	command mkdir -p $argv[1]; and cd $argv[1]
end
