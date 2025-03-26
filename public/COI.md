- Pacman Static
```sh
curl -O https://pkgbuild.com/~morganamilo/pacman-static/x86_64/bin/pacman-static
```

- Mirrors
```sh
sudo reflector --verbose --protocol https --age 12 --sort rate --score 7 --download-timeout 25 --save /etc/pacman.d/mirrorlist
```

- Fstab
```sh
# <device> <dir> <type> <options> <dump> <fsck>
# `lsblk -f`
# Example:
UUID=<Very-Long-UUID> /mnt/Various ext4 defaults 0 1
```

- Remove DEBUG pkgs
On `/etc/makepkg.conf` add `"!"` before "debug" on the line `OPTIONS=`

- MIDI/ALSA shits
```sh
fluidsynth -l -s -i -aalsa -o audio.alsa.device=default /usr/share/soundfonts/FluidR3_GM.sf2
```

```nu
$env.SOUND_FONT = "/usr/share/soundfonts/FluidR3_GM.sf2"
$env.OTHER_OPTS = "-a pipewire -m alsa_seq -r 48000"
systemctl --user start fluidsynth.service
```
