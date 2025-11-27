#!/usr/bin/env bash
# Universal Blazingly Fast System Fetch — works on almost every Linux distro + macOS
# Made by Syn aka SXSLVT with love <3

RED='\e[31m'; GREEN='\e[32m'; BLUE='\e[34m'; MAGENTA='\e[35m'; RESET='\e[0m'

detect_distro() {
    case "$(uname -s)" in
        Linux*)
            if [ -f /etc/os-release ]; then . /etc/os-release; fi
            DISTRO="${PRETTY_NAME:-$NAME}"

            case "$ID" in
                arch|archarm)
                    ART="${BLUE}     ___           __ 
${BLUE}    / _ | ________/ / 
${BLUE}   / __ |/ __/ __/ _ \\
${BLUE}  /_/ |_/_/  \\__/_//_/ "
                    ;;
                cachy|cachyos)
                    ART="${BLUE}    _____         __        ____  ____
${BLUE}   / ___/__ _____/ /  __ __/ __ \\/ __/
${BLUE}  / /__/ _ \\/ __/ _ \\/ // / /_/ /\\ \\  
${BLUE}  \\___/\\_,_/\\__/_//_/\\_, /\\____/___/  
${BLUE}                    /___/             
                    "
                    ;;
                ubuntu)
                    ART="${RED}    __  ____             __      
${RED}   / / / / /  __ _____  / /___ __
${RED}  / /_/ / _ \\/ // / _ \\/ __/ // /
${RED}  \\____/_.__/\\_,_/_//_/\\__/\\_,_/ 
                               "
                    ;;
                debian)
                    ART="${RED}     ___      __   _         
${RED}    / _ \\___ / /  (_)__  ___ 
${RED}   / // / -_) _ \\/ / _ \\/ _ \\
${RED}  /____/\\__/_.__/_/\\_,_/_//_/                           
                    "             
                    ;;
                fedora)
                    ART="${BLUE}     ____       __             
${BLUE}    / __/__ ___/ /__  _______ _
${BLUE}   / _// -_) _  / _ \\/ __/ _ \\/
${BLUE}  /_/  \\__/\\_,_/\\___/_/  \\_,_/ 
                    "
                    ;;
                linuxmint|linux-mint)
                    ART="${GREEN}     __  ____      __ 
${GREEN}    /  |/  (_)__  / /_
${GREEN}   / /|_/ / / _ \\/ __/
${GREEN}  /_/  /_/_/_//_/\\__/ 
                    
"
                    ;;
                zorin)
                    ART="${BLUE}   ____           _    
${BLUE}  /_  / ___  ____(_)__ 
${BLUE}   / /_/ _ \\/ __/ / _ \
${BLUE}  /___/\\___/_/ /_/_//_/
                    "
                    ;;
                pop|pop-os)
                    ART="${BLUE}     ___            ____  ____
${BLUE}    / _ \\___  ___  / __ \\/ __/
${BLUE}   / ___/ _ \\/ _ \\/ /_/ /\\ \\  
${BLUE}  /_/   \\___/ .__/\\____/___/  
${BLUE}           /_/                
                    "                   
                    ;;
                manjaro)
                    ART="${GREEN}     __  ___            _             
${GREEN}    /  |/  /__ ____    (_)__ ________ 
${GREEN}   / /|_/ / _ \\/ _ \\  / / _ \\/ __/ _ \
${GREEN}  /_/  /_/\\_,_/_//_/_/ /\\_,_/_/  \\___/
${GREEN}                  |___/               
                    "                    ;;
                opensuse*|sles)
                    ART="${GREEN}                       ______  __________
${GREEN}   ___  ___  ___ ___  / __/ / / / __/ __/
${GREEN}  / _ \\/ _ \\/ -_) _ \\_\\ \\/ /_/ /\\ \\/ _/  
${GREEN}  \\___/ .__/\\__/_//_/___/\\____/___/___/  
${GREEN}     /_/                                 
                    "
                    ;;
                slackware)
                    ART="${BLUE}     ______         __                      
${BLUE}    / __/ /__ _____/ /___    _____ ________ 
${BLUE}   _\\ \\/ / _ \\/ __/  '_/ |/|/ / _ \\/ __/ -_)
${BLUE}  /___/_/\\_,_/\\__/_/\\_\\|__,__/\\_,_/_/  \\__/
                    "
                    ;;
                centos|centos-stream|rhel)
                    ART="${RED}    _____         __  ____  ____
${RED}   / ___/__ ___  / /_/ __ \\/ __/
${RED}  / /__/ -_) _ \\/ __/ /_/ /\\ \\  
${RED}  \\___/\\__/_//_/\\__/\\____/___/  
                    "
                    ;;
                gentoo)
                    ART="${MAGENTA}    _____         __          
${MAGENTA}   / ___/__ ___  / /____  ___ 
${MAGENTA}  / (_ / -_) _ \\/ __/ _ \\/ _ \
${MAGENTA}  \\___/\\__/_//_/\\__/\\___/\\___/                            
                    "
                    ;;
                endeavouros)
                    ART="${MAGENTA}     ____        __                  ____  ____
${MAGENTA}    / __/__  ___/ /__ ___ __  _____  __ ______/ __ \\/ __/
${MAGENTA}   / _// _ \\/ _  / -_) _ \\/ |/ / _ \\/ // / __/ /_/ /\\ \\  
${MAGENTA}  /___/_//_/\\_,_/\\__/\\_,_/|___/\\___/\\_,_/_/  \\____/___/  
                    "
                    ;;
                artix)
                    ART="${BLUE}     ___       __  _     
${BLUE}    / _ | ____/ /_(_)_ __
${BLUE}   / __ |/ __/ __/ /\\ \\ /
${BLUE}  /_/ |_/_/  \\__/_//_\\_\\
                    "    
                    ;;
                void)
                    ART="${GREEN}   _   __     _    __
${GREEN}  | | / /__  (_)__/ /
${GREEN}  | |/ / _ \\/ / _  / 
${GREEN}  |___/\\___/_/\\_,_/  
                    "
                    ;;
                nixos)
                    ART="${BLUE}     _  ___      ____  ____
${BLUE}    / |/ (_)_ __/ __ \\/ __/
${BLUE}   /    / /\\ \\ / /_/ /\\ \\  
${BLUE}  /_/|_/_//_\\_|\\____/___/  
                    "
                    ;;
            esac
            ;;
        Darwin*)
            DISTRO="macOS $(sw_vers -productVersion)"
            ART="${MAGENTA}     __  ___         ____  ____
${MAGENTA}    /  |/  /__ _____/ __ \\/ __/
${MAGENTA}   / /|_/ / _ \\/ __/ /_/ /\\ \\  
${MAGENTA}  /_/  /_/\\_,_/\\__/\\____/___/  
            "
            ;;
        *) DISTRO="Unknown" ;;
    esac
}

pkg_count() {
    if   command -v pacman      >/dev/null; then echo "$(pacman -Q | wc -l) (pacman)"
    elif command -v dpkg        >/dev/null; then echo "$(dpkg --get-selections | grep -v deinstall | wc -l) (dpkg)"
    elif command -v rpm         >/dev/null; then echo "$(rpm -qa | wc -l) (rpm)"
    elif command -v xbps-query  >/dev/null; then echo "$(xbps-query -l | wc -l) (xbps)"
    elif command -v apk         >/dev/null; then echo "$(apk info | wc -l) (apk)"
    elif command -v qlist       >/dev/null; then echo "$(qlist -I | wc -l) (portage)"
    elif command -v nix-store   >/dev/null; then echo "$(nix-store -q --requisites /run/current-system 2>/dev/null | wc -l || echo 0) (nix)"
    elif command -v flatpak     >/dev/null; then echo "$(flatpak list | wc -l) (flatpak)"
    else echo "?"
    fi
}

detect_distro

echo -e "$ART"
echo
echo -e " ${GREEN}OS${RESET}         $DISTRO"
echo -e " ${GREEN}Kernel${RESET}     $(uname -r)"
echo -e " ${GREEN}Host${RESET}       $(cat /etc/hostname 2>/dev/null || hostname)"
echo -e " ${GREEN}MoBo${RESET}       $(cat /sys/class/dmi/id/board_vendor 2>/dev/null || echo "") $(cat /sys/class/dmi/id/board_name 2>/dev/null || echo "")"
echo -e " ${GREEN}CPU${RESET}        $(lscpu | grep 'Model name' | awk -F: '{gsub(/^[ \t]+|[ \t]+$/, "", $2); print $2}')"
echo -e " ${GREEN}GPU${RESET}        $(lspci 2>/dev/null | grep -i --color=never 'vga\|3d\|display' | sed 's/.*: //;s/(rev [0-9a-f]*)//g' || echo "Unknown")"
echo -e " ${GREEN}Memory${RESET}     $(awk '/MemTotal/{t=$2}/MemAvailable/{a=$2}END{used=t-a; printf "%.1fGiB / %.1fGiB", used/1024/1024, t/1024/1024}' /proc/meminfo)"
echo -e " ${GREEN}Disk${RESET}       $(df -h --output=used,size / | tail -1 | awk '{print $1" / "$2}')"
echo -e " ${GREEN}Uptime${RESET}     $(uptime -p | sed 's/^up //')"
echo -e " ${GREEN}Shell${RESET}      ${SHELL##*/}"
[ -n "$XDG_CURRENT_DESKTOP" ] && echo -e " ${GREEN}DE/WM${RESET}      $XDG_CURRENT_DESKTOP" || echo -e " ${GREEN}WM${RESET}      ${DESKTOP_SESSION:-unknown}"
echo -e " ${GREEN}Packages${RESET}   $(pkg_count)"
echo -e " ${GREEN}Time${RESET}       $(date +%H:%M:%S)"
