# Core
alias snvim = sudo -E nvim
alias ndev = nvim .

#Arch Linux Aliases
alias pacsu = yay --noconfirm --sudoloop -Syu
alias pacin = sudo pacman -S --noconfirm
alias yacin = yay -S --noconfirm
alias pacre = sudo pacman -Rns
alias yacre = yay -Rns

#AstroNvim Aliases
alias avzsh = nvim ~/.dotfiles/.zshrc
alias avprof = nvim ~/.dotfiles/.profile
alias avdots = nvim ~/.dotfiles/
alias avbsh = nvim ~/.dotfiles/.bashrc
alias avpac = snvim ~/.dotfiles/public/pacman.conf
alias avbsp = nvim ~/.config/bspwm/bspwmrc
alias avsxh = nvim ~/.config/sxhkd/sxhkdrc
alias avnvim = nvim ~/.dotfiles/dot-config/nvim/
alias avpic = snvim ~/.config/picom/picom.conf
alias avnu = nvim ~/.config/nushell/profile.nu
def avhyp [] {
    let cur_dir = (pwd)
    cd ~/.dotfiles/dot-config/hypr/
    nvim .
    cd $cur_dir
}

#NMCLI
alias nmli = nmcli device wifi list
alias nmco = nmcli device wifi connect

#OTHERS
alias mkex = chmod +x
alias cdar = cd ~/arch_progs/
alias codedots = code ~/.dotfiles
alias codeags = code ~/.dotfiles/dot-config/ags/
alias zdots = cd ~/.dotfiles/
alias ztmp = cd /tmp
alias curl = noglob curl
alias lsa = ls -a

# yt-dlp
alias ythd = yt-dlp -f 'bestvideo[height<=720]+bestaudio/best[height<=720]' -o '~/Downloads/Video/%(title)s.%(ext)s'
alias ytfhd = yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]' -o '~/Downloads/Video/%(title)s.%(ext)s'
alias ytmax = yt-dlp -f 'bestvideo+bestaudio' -o '~/Downloads/Video/%(title)s.%(ext)s'

# Ripgrep
alias rgfs = rg --fixed-strings --

# Git Aliases

def git_current_branch [] {
    git branch --show-current
}

def gen_commit_msg [] {
    loop {
        let msg = (lumen draft)
        print $"(ansi purple_bold)Commit Message:(ansi reset) ($msg)\n Commit? [y]es/[e]dit/[n]ext/[Q]uit"
        let user_input = (input --numchar 1 --default "n")
        match $user_input {
            "y" | "Y" => {
                git commit -m $msg
                break
            }
            "e" | "E" => {
                let temp_file = (mktemp -t --suffix ".txt")
                $msg | save --force $temp_file
                ^$env.EDITOR $temp_file
                let edited_msg = (open $temp_file | str trim)
                rm -f $temp_file
                if ($edited_msg | is-empty) {
                    print "Empty message, trying again..."
                    continue
                }
                git commit -m $edited_msg
                break
            }
			"q" | "Q" => {
				break
			}
            _ => {
                continue
            }
        }
    }
}

# Clone
alias gc = git clone

# Diff
alias gd = git diff
alias gds = git diff --staged
alias gdc = git diff --cached

# Status
alias gs = git status
alias gss = git status -s

# Add
alias ga = git add
alias gaa = git add --all

# Commit
alias gcm = git commit -m

# Checkout and Switch
alias gco = git checkout
alias gcb = git checkout -b
alias gsw = git switch
alias gswc = git switch -c

# Branch
alias gbr = git branch
alias gbd = git branch -d

# Bisect
alias gbs = git bisect
alias gbss = git bisect start
alias gbc = git bisect continue
alias gbg = git bisect good
alias gbb = git bisect bad
alias gbs = git bisect reset

# Log
alias glog = git log --oneline --decorate --graph --all

# Pull
alias gpl = git pull
alias gplr = git pull --rebase
alias gplm = git pull origin main
alias ggpull = git pull origin (git_current_branch)

# Push
alias gp = git push
alias gpf! = git push --force
alias gpsm = git push origin main
alias ggpush = git push origin (git_current_branch)

# Fetch
alias gf = git fetch
alias gfa = git fetch --all --prune

# Restore
alias gr = git restore
alias grs = git restore --staged

# Merge
alias gm = git merge
# alias gmom = 'git merge origin/$(git_main_branch)'

# Stash
alias gst = git stash
alias gsta = git stash apply
alias gstd = git stash drop
alias gstl = git stash list
alias gstp = git stash pop

# Tag
alias gts = git tag -s
alias gtv = git tag | sort -V

def eclean [] {
		pacman -Qdtq | sudo pacman -Rns -
		pacman -Qqd | sudo pacman -Rsu -
		yay -Scc --noconfirm
		sudo paccache -rk0
}

#.Net Aliases
alias dn = dotnet new
alias dr = dotnet run
alias dt = dotnet test
alias dw = dotnet watch
alias dwr = dotnet watch run
alias dwt = dotnet watch test
alias ds = dotnet sln
alias da = dotnet add
alias dp = dotnet pack
alias dng = dotnet nuget
alias db = dotnet build

# Make Aliases
alias mkr = make run
alias mkp = make prune
alias mkc = make create

# Rust Aliases
alias cg = cargo
alias cgc = cargo check
alias cgr = cargo run
alias cgb = cargo build
alias cgbr = cargo build --release

def gen_c_includes [lib: string] {
    let includes = pkg-config --cflags $lib | tr ' ' '\n'| grep '\-I'| sed 's/-I//g'
    $includes | wl-copy
    print $"(ansi green_bold)Copied Includes:(ansi reset)\n($includes)"
}

$env.PATH = ($env.PATH | prepend ((go env GOPATH) + /bin))
$env.BUN_INSTALL = $"($env.HOME)/.bun"
$env.PATH = ($env.PATH | prepend $"($env.HOME)/.bun/bin")
$env.GPG_TTY = (tty)
