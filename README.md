![Stars](https://img.shields.io/github/stars/SXSLVT/synfetch?style=social)
![Issues](https://img.shields.io/github/issues/SXSLVT/synfetch)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

<div align="center">

<img width="519" height="412" alt="image" src="https://github.com/user-attachments/assets/3eaffc84-6600-468b-bb93-18ffb23a3d10" />

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
- Displays Info + CPU & RAM Usage
- Highly customizable

### Support
`synfetch` currently supports **MacOS** and the following **Linux** distributions. However, I have not been able to test them all.
If you are experiencing issues with synfetch or your **Linux** distribution does not support it, please create an issue in (https://github.com/SXSLVT/synfetch/issues).
- Arch
- CachyOS
- Ubuntu
- Debian
- Fedora
- Linux Mint
- ZorinOS
- PopOS
- Manjaro
- openSUSE
- Slackware
- CentOS
- Gentoo
- EndeavourOS
- Artix
- Void
- NixOS
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
To hide icons:
```bash
synfetch --nonerd
```
To hide ASCII:
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
  --nonerd          Disable Nerd Font icons
  --noascii         Hide ASCII art
  --distro <name>   Force specific distro ASCII
  --help | -h       Show this help message

Available distros: arch, cachyos, ubuntu, debian, fedora, linuxmint, zorin, pop-os, manjaro, opensuse, slackware, centos, gentoo, endeavouros, artix, void, nixos, macos

Examples:
  synfetch 
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
