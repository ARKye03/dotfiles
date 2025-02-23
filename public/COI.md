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
# /dev/<NAME> <MOUNTPOINT> <FSTYPE> <OPTIONS> <DUMP> <PASS>
# `lsblk`
# Example:
/dev/nvme0n1p2 /mnt/c ntfs-3g defaults 0 0
```

- MIDI/ALSA shits
```sh
fluidsynth -l -s -i -aalsa -o audio.alsa.device=default /usr/share/soundfonts/FluidR3_GM.sf2
```

```nu
$env.SOUND_FONT = "/usr/share/soundfonts/FluidR3_GM.sf2"
$env.OTHER_OPTS = "-a pipewire -m alsa_seq -r 48000"
systemctl --user start fluidsynth.service
```
