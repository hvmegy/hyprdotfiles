if status is-interactive
    # Commands to run in interactive sessions can go here
    theme_gruvbox dark medium
end

set fish_greeting ""

function yy
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

if [ (tty) = "/dev/tty1" ]
    exec Hyprland
end

if test (tty) = "/dev/tty1"
    exec Hyprland
end

set -gx EDITOR nvim

starship init fish | source

fish_add_path /home/hvmegy/.spicetify
