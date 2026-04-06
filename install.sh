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

echo -e "${MAGENTA}Hey there! Let's install ${RESET}${YELLOW}synfetch ${RESET}${MAGENTA}in style 🔥 ${RESET}"
echo ""

loading() {
    local pid=$1
    local delay=0.1
    local spin='|/-'
    while kill -0 "$pid" 2>/dev/null; do
        for i in $(seq 0 3); do
            printf "\r${CYAN}[ ${spin:$i:1}] ${YELLOW}Working... ${RESET}"
            sleep $delay
        done
    done
    printf "\r${GREEN}[✓] Done! ${RESET} \n"
}

echo -e "${BLUE}🔍 Checking for existing synfetch... ${RESET}"
if command -v synfetch &>/dev/null; then
    OLD_PATH=$(command -v synfetch)
    echo -e "${YELLOW}❗ Found old version at: $OLD_PATH ${RESET}"
    echo -e "${RED}🗑️ Removing old synfetch... ${RESET}"
    $PRIV rm -f "$OLD_PATH"
    echo -e "${GREEN}✅ Old version successfully removed! ${RESET}"
else
    echo -e "${GREEN}✅ No existing synfetch found. Fresh install incoming~ ${RESET}"
fi
echo ""

echo -e "${BLUE}🧹 Performing extra cleanup... ${RESET}"
for path in /usr/bin/synfetch /usr/local/bin/synfetch /usr/local/sbin/synfetch ~/.local/bin/synfetch; do
    if [ -f "$path" ]; then
        echo -e "${YELLOW} Removing leftover at $ path ${RESET}"
       $PRIV rm -f "$path" 2>/dev/null || true
    fi
done
echo -e "${GREEN}✅ Cleanup complete! ${RESET}"
echo ""

echo -e "${BLUE}📥 Cloning the latest synfetch from GitHub... ${RESET}"
(
    git clone https://github.com/SXSLVT/synfetch.git synfetch-temp 2>/dev/null &
    loading $!
) || {
    echo -e "${RED}❌ Clone failed! (Is git installed?) ${RESET}"
    exit 1
}

cd synfetch-temp
echo -e "${BLUE}🔧 Making synfetch executable... ${RESET}"
chmod +x synfetch

echo -e "${BLUE}📦 Installing to /usr/local/bin/... ${RESET}"
$PRIV mv synfetch /usr/local/bin/

cd - >/dev/null
echo -e "${BLUE}🧹 Cleaning up temporary files... ${RESET}"
rm -rf synfetch-temp
echo ""

echo -e "${CYAN}🚀 Running synfetch... ${RESET}"
echo -e "${CYAN}──────────────────────────────────────────────────────────── ${RESET}"
synfetch
echo -e "${CYAN}──────────────────────────────────────────────────────────── ${RESET}"
echo ""

echo -e "${GREEN}🎉 synfetch has been successfully installed! ${RESET}"
echo -e "${YELLOW} You can now run: ${RESET}"
echo -e " ${CYAN}synfetch ${RESET}        → Normal mode"
echo -e " ${CYAN}synfetch --live ${RESET} → Animated mode 🔥"
echo ""

echo -e "${MAGENTA}Enjoy your new fetch tool! 👾 ${RESET}"
echo -e "${BLUE}Goodbye! 👋 ${RESET}"
