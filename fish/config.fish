# wengwengweng

# alias
alias o "open"
alias f "open ."
alias t "touch"
alias c "set_color"
alias v "nvim"
alias j "just"
alias size "du -sh ."
alias disk "df -h ."
alias ase "/Applications/Aseprite.app/Contents/MacOS/aseprite --batch"
alias vps "ssh t@wengwengweng.me"
alias website "open https://www.wengwengweng.me/"
alias sfxr "amulet ~/.tools/sfxr.lua"

# replacements
type -q neomutt; and alias mutt "neomutt"
type -q hub; and alias git "hub"
type -q bat; and alias cat "env PAGER='' bat --theme=TwoDark --style=plain"
type -q exa; and alias ls exa

# nav
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# abbr
abbr gs git status
abbr ga git add .
abbr gc git commit -m
abbr gp git push
abbr gd git diff
abbr gb git browse
abbr lg lazygit

# env
set -x BROWSER open
set -x TERM xterm-super
set -x PAGER less

if type -q nvim
	set -x EDITOR nvim
else
	set -x EDITOR vim
end

# fzf
if type -q fzf
	if type -q fd
		set -x FZF_DEFAULT_COMMAND "fd --type f"
	end
end

# jump
if type -q jump
	status --is-interactive; and . (jump shell --bind=z | psub)
end

# go
if test -d $HOME/.go
	set -x GOPATH $HOME/.go
	set -x PATH $GOPATH/bin $PATH
end

# cargo
if test -d $HOME/.cargo
	set -x PATH $HOME/.cargo/bin $PATH
end

# homebrew
set -x HOMEBREW_NO_AUTO_UPDATE 1

# openssl
if test -d /usr/local/opt/openssl

	set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_path
	set -gx LDFLAGS "-L/usr/local/opt/openssl/lib"
	set -gx CPPFLAGS "-I/usr/local/opt/openssl/include"
	set -gx PKG_CONFIG_PATH "/usr/local/opt/openssl/lib/pkgconfig"

end

# sbin
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

