# fish-and-chips

A bunch of fish shell functions and configurations

# [ARCHIVED]

This repo is now archived. I stopped maintaining this a long time ago and all
my fish configs, along with everything else, is now on my
[dotfiles repo](https://github.com/mate-amargo/dotfiles).

## The stuff

- `install.fish` -- Script to install all the goodies. Written in fish of course!
- `etc/config.fish` -- This is fish config's file executed at start

Some global abbreviations are defined there:

- `lh` -- List contents of directory using long human format
- `ll` -- List contents of directory using long format
- `lah` -- Same as lh but doesn't exclude hidden directories except for . and ..

`etc/functions`:

- `fish_prompt` -- Write out the prompt
- `fish_right_prompt` -- Write out the right prompt
- `mkdircd` -- Create a directory and set CWD
- `sd` -- Synchronizes CWD on all shells executing it

`local/functions`:

- `fish_greeting` -- Sage cow displaying a quote at random
- `weather` -- Show weather from wttr.in

`local/config.fish`: -- Local thingies

- `cdd` -- Abbreviation to cd ~/downloads
