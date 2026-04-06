![Stars](https://img.shields.io/github/stars/SXSLVT/synfetch?style=social)
![Issues](https://img.shields.io/github/issues/SXSLVT/synfetch)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

<div align="center">

<img width="474" height="449" alt="image" src="https://github.com/user-attachments/assets/712c11fb-a9da-45b3-84bc-177767065f32" />
<img width="945" height="531" alt="image" src="https://github.com/user-attachments/assets/45f9e56a-c006-4274-8a3d-42dff9f57842" />

</div>

<div align="center">

  # Synfetch
  
*A really simple system fetch written in **bash**.*

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

While there are many excellent fetch tools (neofetch, fastfetch, etc.), `synfetch` stands out by embracing a distinct **synthwave / synthetic** identity:

- Clean, modern layout with vibrant synthwave colors
- Fast bash implementation that stays lightweight
- Can be used in ricing and sharing your info/ricing
- Cross-platform support for **Linux** and **macOS**

### Features

- Beautiful custom ASCII art
- Real-time Monitoring
- Displays Info + CPU, GPU and RAM Usage
- Highly customizable & Minimal Flags


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
- Guix
- Gobo
- NixOS
- QubesOS
- CentOS
- MacOS

### Dependencies

- The package **git** is required to clone the repository!
- The package **pciutils** is required for accurate GPU detection (Intel, AMD Radeon, NVIDIA)!
- The package **nvidia-utils** is required for NVIDIA GPU usage! **(optional)** 
- A **Nerd Font** is required to display icons! **(optional)**

### Building and Installation

For `Arch` based users, I have a [`PKGBUILD`](./PKGBUILD) available. 

For `Nix` users, I have both [`flake.nix`](./flake.nix) and [`flake.lock`](./flake.lock) available.

For everyone else:

I have an [install.sh](./install.sh) available.

or

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

To display CPU, GPU and RAM Usage in real-time:
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

To display help:
```bash
synfetch --help
```
or
```bash
synfetch -h
```

Output of `synfetch --help`
```bash
Usage: synfetch [OPTIONS]

Options:
  --nonerd          Hide icons
  --noascii         Hide ASCII art
  --distro <name>   Display ASCII art of a different distro
  --live            Animated CPU, GPU and RAM usage
  --help | -h       Show this help message

Available distros: arch, cachyos, ubuntu, debian, fedora, linuxmint, zorinos, popos, manjaro, opensuse, slackware, centos, mxlinux, guix, qubesos, antix, garuda, nobara, bazzite, kali, elementaryos, kdeneon, deepin, alpine, gobo, lfs, gentoo, endeavouros, artix, void, nixos, macos

Examples:
  synfetch 
  synfetch --live
  synfetch --nonerd
  synfetch --noascii
  synfetch --distro arch
  synfetch --distro macos --nonerd
```

### Uninstallation

To uninstall `synfetch`:

I have an [uninstall.sh](./uninstall.sh) available.

or

```bash
sudo rm -rf /usr/local/bin/synfetch
```

### License

This project is licensed under the **GNU General Public License v3.0**
