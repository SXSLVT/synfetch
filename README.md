![Stars](https://img.shields.io/github/stars/SXSLVT/synfetch?style=social)
![Issues](https://img.shields.io/github/issues/SXSLVT/synfetch)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

<div align="center">

<img width="490" height="449" alt="image" src="https://github.com/user-attachments/assets/41467914-637a-4a33-9399-7548c03c6a7a" />
<img width="945" height="531" alt="image" src="https://github.com/user-attachments/assets/45f9e56a-c006-4274-8a3d-42dff9f57842" />

</div>

<div align="center">

# Synfetch

</div>

### Contents

- [Why synfetch?](#why-synfetch)
- [Features](#features)
- [Support](#support)
- [Dependencies](#dependencies)
- [Building and Installation](#building-and-installation)
- [Usage](#usage)
- [Uninstallation](#uninstallation)
- [License](#license)

### Why synfetch?

They told me **bash** wasn't meant for speed... I took that personally. `synfetch` stands out to be one of the fastest, feature-rich system fetch tool written entirely in pure **bash**.

### Features

- Pure bash with smart caching (feels instant on every run)
- Beautiful synthwave aesthetic with vibrant neon colors
- Lightweight, debloated, and highly customizable
- Real-time monitoring mode (--live)
- Excellent Linux + macOS support
- Perfect for ricing and showing off your setup

### Support

`synfetch` currently supports **MacOS** and the following **Linux** distributions. However, I have not been able to test them all.
If you are experiencing issues with synfetch, please create an [issue](https://github.com/SXSLVT/synfetch/issues/new).
- Arch
- Artix
- CachyOS
- Garuda
- Manjaro
- EndeavourOS
- Debian
- Devuan
- Ubuntu
- Linux Mint
- ZorinOS
- Pop!_OS
- elementaryOS
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
- Gobo
- NixOS
- QubesOS
- CentOS
- MacOS

### Dependencies

Only requires `bash`

Uses common tools like `lspci`, `lscpu` when available **(optional)**

### Building and Installation

For those on `Arch` based systems, **synfetch** is available in the [AUR](https://aur.archlinux.org/packages/synfetch-git).

For those on `Nix` systems, enable `flakes` and you can just run: 

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

To display Uptime & CPU, GPU, RAM Usage in real-time:
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
To force refresh all cache files (use after installing packages)
```bash
synfetch --refresh
```

To set a theme:
```bash
synfetch --theme <name>
```

Output of `synfetch --help`
```bash
Usage: synfetch [OPTIONS]

Options:
  --nonerd          Hide icons
  --noascii         Hide ASCII art
  --distro <name>   Display ASCII art of a different distro
  --live            Animated Uptime, CPU, GPU and RAM usage
  --refresh         Force refresh all cache files (use after installing packages)
  --theme <name>    Color theme
  --help | -h       Show this help message

Available themes: synthwave (default), monochrome, minimal, dracula, nord, catppuccin, tokyonight, gruvbox
Available distros: arch, cachyos, ubuntu, debian, devuan, fedora, linuxmint, zorinos, popos, manjaro, opensuse, slackware, centos, mxlinux, guix, qubesos, antix, garuda, nobara, bazzite, kali, elementaryos, kdeneon, deepin, alpine, gobo, lfs, gentoo, endeavouros, artix, void, bedrock, bodhi, nixos, macos
```

### Uninstallation

If you want to uninstall `synfetch`, run:
```bash
sudo rm -rf /usr/bin/synfetch
```

### License

This project is licensed under the **GNU General Public License v3.0**
