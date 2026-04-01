![Stars](https://img.shields.io/github/stars/SXSLVT/synfetch?style=social)
![Issues](https://img.shields.io/github/issues/SXSLVT/synfetch)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

<div align="center">

<img width="585" height="478" alt="image" src="https://github.com/user-attachments/assets/7bb3fb1b-5226-4545-9a00-bb303062e50e" />
<img width="814" height="458" alt="image" src="https://github.com/user-attachments/assets/36987278-f33b-4614-8994-54d0ebf53ec9" />


</div>

<div align="center">

  # Synfetch
  
*A really simple system fetch written in **bash**.*

</div>

### Why synfetch?

While there are many excellent fetch tools (neofetch, fastfetch, etc.), synfetch stands out by embracing a distinct **synthwave / synthetic** identity:

- Clean, modern layout with vibrant cyber colors
- Cross-platform support for **Linux** and **macOS**
- Fast bash implementation that stays lightweight

### Features

- Beautiful custom ASCII art
- Real-time Monitoring
- Displays Info + CPU, GPU and RAM Usage
- Highly customizable

### Support
`synfetch` currently supports **MacOS** and the following **Linux** distributions. However, I have not been able to test them all.
If you are experiencing issues with synfetch, please create an issue in (https://github.com/SXSLVT/synfetch/issues).
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
- Gentoo
- Void
- Alpine
- Guix
- Gobo
- NixOS
- QubesOS
- CentOS
- MacOS

### Installation

> [!NOTE]
>
> The package **git** is required to clone the repository!
> A **Nerd Font** is required to display icons!

```bash
git clone https://github.com/SXSLVT/synfetch.git
cd synfetch
chmod +x synfetch
sudo mv synfetch /usr/local/bin/
cd -
```

or

```bash
git clone https://github.com/SXSLVT/synfetch.git && cd synfetch && chmod +x synfetch && sudo mv synfetch /usr/local/bin/ && cd -
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

Available distros: arch, cachyos, ubuntu, debian, fedora, linuxmint, zorinos, popos, manjaro, opensuse, slackware, centos, mxlinux, guix, qubesos, antix, garuda, nobara, bazzite, kali, elementaryos, kdeneon, deepin, alpine, gobo, gentoo, endeavouros, artix, void, nixos, macos

Examples:
  synfetch 
  synfetch --live
  synfetch --nonerd
  synfetch --noascii
  synfetch --distro arch
  synfetch --distro macos --nonerd
```

### Uninstallation
Simply uninstall `synfetch` with this command:
```bash
rm -rf ~/synfetch && sudo rm -rf /usr/local/bin/synfetch
```

### License

This project is licensed under the **GNU General Public License v3.0**
