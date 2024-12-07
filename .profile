#! /usr/bin/env bash

# Core
alias snvim="sudo -E nvim"

#Arch Linux Aliases
alias pacsu="yay --noconfirm --sudoloop -Syu"
alias pacin="sudo pacman -S --noconfirm"
alias yacin="yay -S --noconfirm"
alias pacre="sudo pacman -Rns"
alias yacre="yay -Rns"
alias paclean='sudo pacman -Qdtq | sudo pacman -Rns - ; sudo fstrim -av'
alias pacache="sudo pacman -Scc --noconfirm && yay -Scc --noconfirm"

#AstroNvim Aliases
alias avzsh="nvim ~/.dotfiles/.zshrc"
alias avprof="nvim ~/.dotfiles/.profile"
alias avdots="nvim ~/.dotfiles/"
alias avbsh="nvim ~/.dotfiles/.bashrc"
alias avpac="snvim ~/.dotfiles/public/pacman.conf"
alias avbsp="nvim ~/.config/bspwm/bspwmrc"
alias avhyp="nvim ~/.dotfiles/dot-config/hypr/"
alias avags="nvim ~/.dotfiles/dot-config/ags/"
alias avsxh="nvim ~/.config/sxhkd/sxhkdrc"
alias avnvim="nvim ~/.dotfiles/dot-config/nvim/"
alias avpic="snvim ~/.config/picom/picom.conf"

#ProtonVPN
alias pvpn="sudo protonvpn c --cc US"
alias pvpc="sudo protonvpn c"
alias pvpd="sudo protonvpn d"

#NMCLI
alias nmli="nmcli device wifi list"
alias nmco="nmcli device wifi connect"
alias nmcomp='nmcli device wifi connect "Mon Palais"'

#OTHERS
alias mkex="chmod +x"
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias lsa="eza -a --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias ll="/usr/bin/ls -al"
alias cdar="cd ~/arch_progs/"
alias codedots="code ~/.dotfiles"
alias codeags="code ~/.dotfiles/dot-config/ags/"
alias zdots="cd ~/.dotfiles/"
alias ztmp="cd /tmp"
alias curl='noglob curl'

# yt-dlp
alias ythd="yt-dlp -f 'bestvideo[height<=720]+bestaudio/best[height<=720]' -o '~/Downloads/Video/%(title)s.%(ext)s'"
alias ytfhd="yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]' -o '~/Downloads/Video/%(title)s.%(ext)s'"
alias ytmax="yt-dlp -f 'bestvideo+bestaudio' -o '~/Downloads/Video/%(title)s.%(ext)s'"

# Node & Bun
alias ptd="pnpm tauri dev"
alias prd="pnpm run dev"

alias btd="bun tauri dev"
alias brd="bun run dev"

# Ripgrep
alias rgfs='rg --fixed-strings --'

# Git Aliases

# Clone
alias gc="git clone"

# Diff
alias gd="git diff"
alias gds="git diff --staged"
alias gdc="git diff --cached"

# Status
alias gs="git status"
alias gss="git status -s"

# Add
alias ga="git add"
alias gaa="git add --all"

# Commit
alias gcm="git commit -m"

# Checkout and Switch
alias gco="git checkout"
alias gcb="git checkout -b"
alias gsw="git switch"
alias gswc="git switch -c"
alias gswm='git switch $(git_main_branch)'
alias gswd='git switch $(git_develop_branch)'

# Branch
alias gbr="git branch"
alias gbd="git branch -d"

# Bisect
alias gbs="git bisect"
alias gbss="git bisect start"
alias gbc="git bisect continue"
alias gbg="git bisect good"
alias gbb="git bisect bad"
alias gbs="git bisect reset"

# Log
alias glog="git log --oneline --decorate --graph --all"

# Pull
alias gpl="git pull"
alias gplr="git pull --rebase"
alias gplm="git pull origin main"
alias ggpull='git pull origin "$(git_current_branch)"'

# Push
alias gp="git push"
alias gpf!="git push --force"
alias gpsm="git push origin main"
alias ggpush='git push origin "$(git_current_branch)"'

# Fetch
alias gf="git fetch"
alias gfa="git fetch --all --prune"

# Restore
alias gr="git restore"
alias grs="git restore --staged"

# Merge
alias gm="git merge"
alias gmom='git merge origin/$(git_main_branch)'

# Stash
alias gst="git stash"
alias gsta="git stash apply"
alias gstd="git stash drop"
alias gstl="git stash list"
alias gstp="git stash pop"

# Tag
alias gts="git tag -s"
alias gtv="git tag | sort -V"

function git_current_branch() {
	git branch --show-current
}
function gdbat() {
	git diff --name-only --relative --diff-filter=d "$@" | xargs bat --diff
}
function eclean() {
	echo "Are you sure you want to clean the cache and remove old packages?"
	echo "Type 'yes' to continue: "
	read -r yn
	if [ "$yn" = "yes" ]; then
		pacman -Qdtq | sudo pacman -Rns -
		pacman -Qqd | sudo pacman -Rsu -
		yay -Scc --noconfirm
		sudo paccache -rk0
	else
		echo "Aborted."
	fi
}

#.Net Aliases
alias dn='dotnet new'
alias dr='dotnet run'
alias dt='dotnet test'
alias dw='dotnet watch'
alias dwr='dotnet watch run'
alias dwt='dotnet watch test'
alias ds='dotnet sln'
alias da='dotnet add'
alias dp='dotnet pack'
alias dng='dotnet nuget'
alias db='dotnet build'

# Make Aliases
alias mkr='make run'
alias mkp='make prune'
alias mkc='make create'

# Rust Aliases
alias cg='cargo'
alias cgc='cargo check'
alias cgr='cargo run'
alias cgb='cargo build'
alias cgbr='cargo build --release'

# Angular Aliases
alias ngs='ng serve'
alias ngso='ng serve --open'
alias nggc='ng generate component'

export PATH="$PATH:$HOME/.local/share/coursier/bin"

GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin

GPG_TTY=$(tty)
export GPG_TTY
