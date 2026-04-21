![Stars](https://img.shields.io/github/stars/SXSLVT/synfetch?style=social)
![Issues](https://img.shields.io/github/issues/SXSLVT/synfetch)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

<div align="center">

<img width="546" height="457" alt="image" src="https://github.com/user-attachments/assets/92380e64-4510-4e27-9b8c-6a26cad49dbe" />

<img width="1096" height="544" alt="image" src="https://github.com/user-attachments/assets/9f499957-cecb-4df6-bbf3-42029e4b6384" />

</div>

<div align="center">

# Synfetch

</div>

### Contents

- [Why synfetch?](#why-synfetch)
- [Features](#features)
- [Support](#support)
- [Limitations](#limitations)
- [Dependencies](#dependencies)
- [Building and Installation](#building-and-installation)
- [Usage](#usage)
- [Uninstallation](#uninstallation)
- [License](#license)

### Why synfetch?

They told me **bash** wasn't meant for speed... I took that personally. `synfetch` stands out to be one of the fastest, unique and feature-rich system fetch + system monitor tool written entirely in pure **bash**.

### Features

- Pure bash (no compiled binaries) with smart caching (feels instant on every run)

- Beautiful synthwave aesthetic with vibrant neon colors

- Lightweight, minimal, and highly customizable

- Real-time monitoring mode

- Excellent Linux + macOS support

- Perfect for ricing and showing off your setup

### Support

`synfetch` currently supports **MacOS** and the following **Linux** distributions. If you are experiencing issues with synfetch, please create an [issue](https://github.com/SXSLVT/synfetch/issues/new).

- Arch
- BlackArch
- ArcoLinux
- Archcraft 
- SteamOS
- Parabola
- Artix
- CachyOS
- Garuda
- Manjaro
- EndeavourOS
- Debian
- Devuan
- Ubuntu
- PikaOS
- Peppermint
- Tails
- ParrotOS
- Linux Mint
- ZorinOS
- Pop!_OS
- elementary OS
- Kali
- MX Linux
- antiX
- Bodhi
- KDE Neon
- Deepin
- Fedora
- Nobara
- Bazzite
- openSUSE
- Slackware
- LFS (Linux From Scratch)
- Gentoo
- Void
- Alpine
- Bedrock
- Guix
- GoboLinux
- Puppy
- NixOS
- QubesOS
- CentOS
- MacOS

### Limitations

- No support for BSD family and Windows (Windows can run synfetch via `WSL` and will probably add support for BSD family soon)

- The `--live` feature can be slow, especially on older hardware

- Some of the supported OSes listed above are untested

- Very young project (undiscovered bugs might exist)

### Dependencies

- Core dependencies **(necessary)**:
`bash`, `coreutils` and `procps`/`procps-ng`
- Required dependencies for Live mode (--live):
`tput` and `stty`
- Optional dependencies for better GPU/CPU detection:

  `pciutils` for most GPUs and CPUs

  `nvidia-utils` for NVIDIA GPU usage

  `intel-gpu-tools` for Intel GPU usage

- MacOS-specific dependencies:
`sysctl`, `vm_stat` and `date`

### Building and Installation

For those on `Arch` based systems, **synfetch** is available in the [AUR](https://aur.archlinux.org/packages/synfetch-git).

For those on `Nix`
systems, make sure to have `flakes` enabled and you can just run: 

```bash
nix run github:SXSLVT/synfetch
```

For everyone else, run:

```bash
wget https://raw.githubusercontent.com/SXSLVT/synfetch/main/synfetch && chmod +x synfetch && sudo mv synfetch /usr/bin/
```
What this command does:

`wget ...` → downloads **synfetch** from GitHub

`chmod +x synfetch` → makes **synfetch** executable

`sudo mv synfetch /usr/bin/` → installs **synfetch** system-wide (so you can run it anywhere)

You can use the [`install.sh`](./install.sh) script to update synfetch.

### Usage

Just run: 
```bash
synfetch
```

To display help:
```bash
synfetch --help
```
or
```bash
synfetch -h
```

To open or locate the configuration file:
```bash
synfetch --config
```

To display Uptime, CPU Usage, GPU Usage, RAM Usage and Processes in real-time:
```bash
synfetch --live
```

To hide icons:
```bash
synfetch --nonerd
```

To hide ASCII art:
```bash
synfetch --noascii
```

To display ASCII art of a different distro:
```bash
synfetch --distro <name>
```
To force refresh all cache files (use after installing packages):
```bash
synfetch --refresh
```

To pick a random built-in theme:
```bash
synfetch --cycle-theme
```

To set a theme:
```bash
synfetch --theme <name>
```

To pick random colors and distro:
```bash
synfetch --random
```

Output of `synfetch --help`
```bash
Usage: 
  synfetch [OPTIONS]

Options:
  --config          Open or locate the configuration file
  --nonerd          Hide icons
  --noascii         Hide ASCII art
  --distro <name>   Display ASCII art of a different distro
  --live            Animated Uptime, CPU, GPU and RAM usage + app killer
  --refresh         Force refresh all cache files (use after installing packages)
  --theme <name>    Color theme
  --cycle-theme     Pick a random built-in theme
  --random          Randomize colors and distro
  --help | -h       Show this help message

Config:
  Location: /home/syner/.config/synfetch/config
  Set THEME="custom" in the config to use your own Hex colors.

Available themes:
  synthwave (default), monochrome, minimal, dracula, nord, catppuccin, tokyonight, gruvbox, custom

Available distros:
  arch, cachyos, ubuntu, debian, devuan, fedora, linuxmint, zorinos, popos, manjaro, opensuse, slackware, centos, mxlinux, guix, qubesos, antix, garuda, nobara, bazzite, kali, elementaryos, kdeneon, deepin, alpine, gobo, lfs, gentoo, endeavouros, artix, void, bedrock, bodhi, nixos, blackarch, arco, archcraft, puppy, parrotos, peppermint, parabola, steamos, tails, pikaos, macos
```

### Uninstallation

If you want to uninstall `synfetch`, run:
```bash
sudo rm -rf /usr/bin/synfetch
```

### License

This project is licensed under the **GNU General Public License v3.0**
