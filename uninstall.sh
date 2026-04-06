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

echo -e "${MAGENTA}Uninstalling ${RESET}${YELLOW}synfetch${RESET}${MAGENTA}... ${RESET}"
echo ""

echo -e "${BLUE}🔍 Checking for synfetch...${RESET}"

if command -v synfetch >/dev/null 2>&1; then
    OLD_PATH=$(command -v synfetch)
    echo -e "${YELLOW}❗ Found synfetch at: $OLD_PATH${RESET}"
    echo -e "${RED}🗑️ Removing synfetch...${RESET}"
    
    $PRIV rm -f "$OLD_PATH" 2>/dev/null || true
    
    echo -e "${BLUE}🧹 Performing extra cleanup...${RESET}"
    for path in /usr/bin/synfetch /usr/local/bin/synfetch /usr/local/sbin/synfetch ~/.local/bin/synfetch; do
        if [ -f "$path" ]; then
            $PRIV rm -f "$path" 2>/dev/null || true
        fi
    done
    
    echo -e "${GREEN}✅ synfetch has been successfully uninstalled!${RESET}"
    
else
    echo -e "${RED}❌ No synfetch found on the system ${RESET}"
    echo -e "${YELLOW}Nothing to uninstall.${RESET}"
fi

echo ""
echo -e "${MAGENTA}Goodbye! 👋${RESET}"
