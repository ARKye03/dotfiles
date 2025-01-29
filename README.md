# ARKye03's dotfiles

Used here:

- [Morghulis](https://github.com/ARKye03/morghulis).
- [River](https://codeberg.org/river/river/) with [uwsm](https://github.com/Vladimir-csp/uwsm), [Hyprland](https://hyprland.org/).
- [Alacritty](https://alacritty.org/), [Kitty](https://sw.kovidgoyal.net/kitty/).
- [NuShell](https://www.nushell.sh/), [Zsh](https://www.zsh.org/).
- [Hyprlock](https://github.com/hyprwm/hyprlock)/[GtkLock](https://github.com/jovanlanik/gtklock), [hyprpicker](https://github.com/hyprwm/hyprpicker), [hypridle](https://github.com/hyprwm/hypridle)
- [Music Player Daemon](https://musicpd.org/) + [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp) & [mpd-mpris](https://github.com/natsukagami/mpd-mpris).
- Wallpaper utility: [wbg](https://codeberg.org/dnkl/wbg).
- Clipboard manager: [CopyQ](https://github.com/hluk/CopyQ).
- Notification Daemon: Morghulis.
- Theme: Adwaita (Gtk), KvLibadwaitaDark (Qt).
- Cursor: [Bibata](https://github.com/rtgiskard/bibata_cursor).
- [GNU Stow](https://www.gnu.org/software/stow/).
- [Lua](https://lua.org/).

!["Something went wrong :("](https://raw.githubusercontent.com/ARKye03/morghulis/refs/heads/trunk/public/morghulis.webp "Morghulis Desktop in Arch Linux")

## Usage

Install GNU Stow, dependencies, and clone the repo

- [These](public/installedPKGS/README.md) are my installed packages.

```sh
git clone https://github.com/ARKye03/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow --dotfiles --no-folding .
```

Remember that if Stow finds a file that already exists, it will not overwrite it.
