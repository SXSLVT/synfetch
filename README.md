![Stars](https://img.shields.io/github/stars/SXSLVT/synfetch?style=social)
![Issues](https://img.shields.io/github/issues/SXSLVT/synfetch)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

<div align="center">

<img width="498" height="469" alt="image" src="https://github.com/user-attachments/assets/33dc9713-a8d4-42b3-bd85-b74bce20b407" />
<img width="945" height="531" alt="image" src="https://github.com/user-attachments/assets/45f9e56a-c006-4274-8a3d-42dff9f57842" />

</div>

<div align="center">

# Synfetch
  
*A really simple system fetch written in **bash**.*

</div>

### Contents

- [Why synfetch?](#why-synfetch)
- [Support](#support)
- [Dependencies](#dependencies)
- [Building and Installation](#building-and-installation)
- [Usage](#usage)
- [Uninstallation](#uninstallation)
- [License](#license)

### Why synfetch?

While there are many excellent fetch tools, `synfetch` stands out with:

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

Only requires `bash` (because synfetch is written in **pure bash**) 

Uses common tools like `lspci`, `lscpu` when available **(optional)**

### Building and Installation

For `Arch` based users, I have a [`PKGBUILD`](./PKGBUILD) available. 

For `Nix` users, I have both [`flake.nix`](./flake.nix) and [`flake.lock`](./flake.lock) available.

For everyone else:

**Clone the repository and cd into the new directory**
```bash
git clone https://github.com/SXSLVT/synfetch && cd synfetch
```
**Make `synfetch` executable**
```bash
chmod +x synfetch
```
**Install `synfetch` system-wide and return to the previous directory**
```bash
sudo mv synfetch /usr/local/bin/ && cd -
```


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

To display Uptime and CPU, GPU, RAM Usage in real-time:
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
  --live            Animated CPU, GPU and RAM usage
  --refresh         Force refresh all cache files (use after installing packages)
  --theme <name>    Color theme (synthwave, monochrome, minimal, dracula)
  --help | -h       Show this help message

Available themes: synthwave (default), monochrome, minimal, dracula
Available distros: arch, cachyos, ubuntu, debian, fedora, linuxmint, zorinos, popos, manjaro, opensuse, slackware, centos, mxlinux, guix, qubesos, antix, garuda, nobara, bazzite, kali, elementaryos, kdeneon, deepin, alpine, gobo, lfs, gentoo, endeavouros, artix, void, bedrock, bodhi, nixos, macos
```

### Uninstallation

If you want to uninstall `synfetch`, run:
```bash
sudo rm -rf /usr/local/bin/synfetch
```

### License

This project is licensed under the **GNU General Public License v3.0**
