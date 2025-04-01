#!/bin/bash

# Function to install missing packages
install_pkg() {
    pkg install -y $1
}

# Function to install tools if missing
install_tool() {
    if [ ! -d "$2" ]; then
        echo "Installing $1..."
        git clone $3
    fi
}

# Check and install required packages
install_pkg git
install_pkg python
install_pkg php
install_pkg curl
install_pkg wget

# ASCII Skull Banner
clear
echo " "
echo "      ☠️  ULTIMATE TERMUX MULTI-TOOL ☠️"
echo " "
echo "      ███████████████████████"
echo "      █─▄─▄─█─▄▄─█─▄▄─█─█─█─█"
echo "      ███─███─██─█─██─█─▄─█─█"
echo "      █▄▀▄▀▄█▄▄▄▄█▄▄▄▄█▄█▄█▄█"
echo " "
echo "      ☠️  Made for Hackers, by a Hacker ☠️"
echo " "

while true; do
    echo "🔥 Ultimate Termux Multi-Tool 🔥"
    echo "1) Recon & OSINT"
    echo "2) SQL Injection"
    echo "3) Brute Force Attacks"
    echo "4) Phishing Attacks"
    echo "5) DDoS Testing"
    echo "6) Network Scanning"
    echo "7) Vulnerability Scanning"
    echo "8) Reverse Shells"
    echo "9) Password Cracking"
    echo "10) Exploits"
    echo "11) Anonymous Surfing"
    echo "12) Exit"
    read -p "Choose an option: " choice

    case $choice in
        1)
            install_tool "TheHarvester" "theHarvester" "https://github.com/laramies/theHarvester.git"
            cd theHarvester && python3 theHarvester.py
            ;;
        2)
            install_tool "SQLMap" "sqlmap" "https://github.com/sqlmapproject/sqlmap.git"
            cd sqlmap && python3 sqlmap.py
            ;;
        3)
            install_tool "Hydra (Brute Force)" "thc-hydra" "https://github.com/vanhauser-thc/thc-hydra.git"
            cd thc-hydra && ./hydra
            ;;
        4)
            install_tool "Zphisher (Phishing)" "zphisher" "https://github.com/htr-tech/zphisher.git"
            cd zphisher && bash zphisher.sh
            ;;
        5)
            install_tool "Hammer (DDoS Testing)" "hammer" "https://github.com/cyweb/hammer.git"
            cd hammer && python3 hammer.py
            ;;
        6)
            install_tool "Nmap (Network Scanning)" "nmap" "https://github.com/nmap/nmap.git"
            cd nmap && ./nmap
            ;;
        7)
            install_tool "Nikto (Vuln Scanning)" "nikto" "https://github.com/sullo/nikto.git"
            cd nikto && perl nikto.pl
            ;;
        8)
            install_tool "Netcat (Reverse Shell)" "netcat" "https://github.com/diegocr/netcat.git"
            cd netcat && ./nc
            ;;
        9)
            install_tool "John The Ripper (Password Cracking)" "john" "https://github.com/magnumripper/JohnTheRipper.git"
            cd JohnTheRipper/src && ./john
            ;;
        10)
            install_tool "Metasploit (Exploits)" "metasploit-framework" "https://github.com/rapid7/metasploit-framework.git"
            cd metasploit-framework && ./msfconsole
            ;;
        11)
            install_tool "Tor (Anonymous Surfing)" "tor" "https://github.com/torproject/tor.git"
            cd tor && ./tor
            ;;
        12)
            exit
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
    read -p "Press Enter to continue..."
done
