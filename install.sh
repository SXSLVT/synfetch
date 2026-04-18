#!/usr/bin/env bash
set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
RESET='\033[0m'

if command -v doas >/dev/null 2>&1; then
    PRIV="doas"
elif command -v sudo >/dev/null 2>&1; then
    PRIV="sudo"
else
    PRIV="su -c"
fi

echo -e "${CYAN}"
cat << "EOF"
   ____          ____    __      __ 
  / __/_ _____  / __/__ / /_____/ / 
 _\ \/ // / _ \/ _// -_) __/ __/ _ \
/___/\_, /_//_/_/  \__/\__/\__/_//_/
    /___/                           
EOF
echo -e "${RESET}"

echo -e "${MAGENTA}Hey there! Let's install ${RESET}${YELLOW}synfetch ${RESET}${MAGENTA}!!! ${RESET}"
echo ""

loading() {
    local pid=$1
    local delay=0.1
    local spin='\|/-'
    while kill -0 "$pid" 2>/dev/null; do
        for i in $(seq 0 3); do
            printf "\r${CYAN}[${spin:$i:1}] ${YELLOW}Working... ${RESET}"
            sleep $delay
        done
    done
    printf "\r\033[K" 
}

echo -e "${BLUE}🔍 Checking for existing synfetch... ${RESET}"
if command -v synfetch &>/dev/null; then
    OLD_PATH=$(command -v synfetch)
    echo -e "${YELLOW}❗ Found old version at: $OLD_PATH ${RESET}"
    echo -e "${RED}🗑️ Removing old synfetch... ${RESET}"
    echo -e "${GREEN}⏳ Running $PRIV... ${RESET} "
    $PRIV rm -f "$OLD_PATH"
    echo -e "${GREEN}✅ Old version successfully removed! ${RESET}"
else
    echo -e "${GREEN}✅ No existing synfetch found. Fresh install incoming~ ${RESET}"
fi
echo ""

echo -e "${BLUE}🧹 Performing extra cleanup... ${RESET}"
for path in /usr/bin/synfetch /usr/local/bin/synfetch /usr/local/sbin/synfetch ~/.local/bin/synfetch; do
    if [ -f "$path" ]; then
        echo -e "${YELLOW} Removing leftover at $path ${RESET}"
        $PRIV rm -f "$path" 2>/dev/null || true
    fi
done
echo -e "${GREEN}✅ Cleanup complete! ${RESET}"
echo ""

echo -e "${BLUE}📥 Downloading latest synfetch from GitHub... ${RESET}"

if command -v curl >/dev/null 2>&1; then
    DOWNLOAD_CMD="curl -L -f -s -o synfetch https://raw.githubusercontent.com/SXSLVT/synfetch/main/synfetch"
elif command -v wget >/dev/null 2>&1; then
    DOWNLOAD_CMD="wget -q -O synfetch https://raw.githubusercontent.com/SXSLVT/synfetch/main/synfetch"
else
    echo -e "${RED}❌ Neither curl nor wget is installed!${RESET}"
    echo -e "${YELLOW}Please install curl or wget and try again.${RESET}"
    exit 1
fi

$DOWNLOAD_CMD &
DOWNLOAD_PID=$!

loading $DOWNLOAD_PID

if ! wait $DOWNLOAD_PID; then
    echo ""
    echo -e "${RED}❌ Download failed! ${RESET}"
    exit 1
fi

echo -e "${BLUE}🔧 Making synfetch executable... ${RESET}"
chmod +x synfetch

echo -e "${BLUE}📦 Installing to /usr/bin/... ${RESET}"
echo ""
echo -e "${GREEN}⏳ Running $PRIV if necessary... ${RESET} "
$PRIV mv synfetch /usr/bin/
echo ""
echo -e "${BLUE}🧹 Cleaning up temporary files... ${RESET}"
echo ""

echo -e "${CYAN}⏳ Running synfetch... ${RESET}"
echo -e "${CYAN}──────────────────────────────────────────────────────────── ${RESET}"
synfetch
echo -e "${CYAN}──────────────────────────────────────────────────────────── ${RESET}"
echo ""

echo -e "${BLUE}🎉 synfetch ${RESET}${GREEN}has been successfully installed! ${RESET}"
echo -e "${YELLOW} You can now run: ${RESET}"
echo -e " ${CYAN}synfetch ${RESET}        → Normal mode"
echo -e " ${CYAN}synfetch --live ${RESET} → Animated mode" 
echo ""

echo -e "${MAGENTA}Enjoy your new fetch tool! ${RESET}"
echo -e "${BLUE}Goodbye! 👋 ${RESET}"
