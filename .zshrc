if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
zstyle :compinstall filename '/home/archkye/.zshrc'

#ZStyles Completions
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:*:*:*' menu select
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} 'ma=48;5;197;1'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
#zstyle ':completion:*:warnings' format "%B%F{red}No matches for:%f %F{magenta}%d%b"
#zstyle ':completion:*:descriptions' format '%F{yellow}[-- %d --]%f'
#zstyle ':vcs_info:*' formats ' %B%s-[%F{magenta}%f %F{yellow}%b%f]-'

#Zsh Options
setopt PROMPT_SUBST        # enable command substitution in prompt
setopt MENU_COMPLETE       # Automatically highlight first element of completion menu
setopt LIST_PACKED		     # The completion menu takes less space.
setopt AUTO_LIST           # Automatically list choices on ambiguous completion.
setopt HIST_IGNORE_DUPS	   # Do not write events to history that are duplicates of previous events
setopt HIST_FIND_NO_DUPS   # When searching history don't display results already cycled through twice
setopt COMPLETE_IN_WORD    # Complete from both ends of a word.


#Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

autoload -Uz compinit
compinit

#Binds
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[1;5C' forward-word  # Ctrl + Right
bindkey '^[[1;5D' backward-word  # Ctrl + Left
bindkey '^H' backward-kill-word # Ctrl + Backspace
bindkey "^L" clear-screen # Ctrl + L

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Aliases
alias pacsu="sudo pacman -Syu --noconfirm && yay -Su --noconfirm"
alias pacin="sudo pacman -S"
alias yacin="yay -S"
alias pacre="sudo pacman -Rs"
alias yacre="yay -Rs"
alias paclean='sudo pacman -Rns $(pacman -Qdtq)'
alias pacache="sudo pacman -Scc --noconfirm && yay -Scc --noconfirm"
alias getw="xprop | grep WM_CLASS"
alias mkex="chmod +x"
alias cldl="scdl --onlymp3 --path Downloads/sdcl -l"
alias nfetch="clear && neofetch"
alias nmli="nmcli device wifi list"
alias nmco="nmcli device wifi connect"
alias mntwin="sudo mount -t ntfs-3g /dev/nvme0n1p3 /mnt/c && sudo mount -t ntfs-3g /dev/sda1 /mnt/d && sudo mount -t ntfs-3g /dev/sdb1 /mnt/e"
alias lvzsh="lvim ~/.zshrc"
alias lvpac="lvim /etc/pacman.conf"
alias ctd="cargo tauri dev"
alias ls="ls -l --group-directories-first --color"

#Dotnet Aliases
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


export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
