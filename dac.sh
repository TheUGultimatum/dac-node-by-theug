#!/bin/bash

clear

echo "=================================================="
clear
echo -e "\e[1;36m"
                                                                                                    
▄▄▄▄▄▄▄▄▄ ▄▄            ▄▄▄  ▄▄▄  ▄▄▄▄▄▄▄          ▄▄                                               
▀▀▀███▀▀▀ ██            ███  ███ ███▀▀▀▀▀          ██  ██   ▀▀                  ██                  
   ███    ████▄ ▄█▀█▄   ███  ███ ███         ██ ██ ██ ▀██▀▀ ██  ███▄███▄  ▀▀█▄ ▀██▀▀ ██ ██ ███▄███▄ 
   ███    ██ ██ ██▄█▀   ███▄▄███ ███  ███▀   ██ ██ ██  ██   ██  ██ ██ ██ ▄█▀██  ██   ██ ██ ██ ██ ██ 
   ███    ██ ██ ▀█▄▄▄   ▀██████▀ ▀██████▀    ▀██▀█ ██  ██   ██▄ ██ ██ ██ ▀█▄██  ██   ▀██▀█ ██ ██ ██ 
                                                                                                    
                                                                                                    
echo -e "\e[0m"
echo "🚀 DAC Node Installer | TheUGultimatum"
echo "======================================"
echo "⚡ DAC NODE + WALLET SETUP BY THEUGULTIMATUM ⚡"
echo "=================================================="

# Setup dir
mkdir -p $HOME/dac-node
cd $HOME/dac-node

echo ""
echo "📥 Downloading DAC node..."

wget -q -O dacnode https://repo.dachain.tech/node/dev/linux/amd64/dacnode

chmod +x dacnode

# Verify binary
if ! file dacnode | grep -q ELF; then
  echo "❌ Invalid binary"
  exit 1
fi

echo "✅ Binary ready"

# Create data folder
mkdir -p data

echo ""
echo "🔐 Creating wallet..."

./dacnode account new --datadir ./data

echo ""
echo "⚠️ SAVE YOUR PASSWORD + KEYSTORE FILE SAFELY"

echo ""
echo "👉 Your wallet is inside:"
echo "$HOME/dac-node/data/keystore"

echo ""
echo "💧 Now send faucet to your address"
read -p "Have you sent faucet? (y/n): " F

if [[ "$F" == "n" ]]; then
  echo "👉 Please send faucet first, then rerun script"
fi

# Node name
read -p "👉 Enter node name: " NAME

# Stop old session
screen -S dacnode -X quit 2>/dev/null

echo ""
echo "🚀 Starting node..."

screen -dmS dacnode ./dacnode --testnet --identity "$NAME" --datadir ./data

sleep 2

if screen -list | grep -q dacnode; then
  echo ""
  echo "=================================================="
  echo "✅ NODE RUNNING WITH WALLET"
  echo "=================================================="
else
  echo "❌ Node failed"
  echo "👉 Try manually:"
  echo "./dacnode --testnet --datadir ./data"
fi

echo ""
echo "📜 Logs:"
echo "screen -r dacnode"

echo ""
echo "🛑 Stop:"
echo "screen -S dacnode -X quit"

echo ""
echo "📁 Keystore location:"
echo "$HOME/dac-node/data/keystore"

echo ""
echo "🔥 TheUG Ultimatum — Proper setup with identity 🚀"
