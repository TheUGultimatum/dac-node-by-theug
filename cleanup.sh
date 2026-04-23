#!/bin/bash

clear

echo "======================================"
echo "🧹 DAC NODE CLEANUP BY THEUGULTIMATUM"
echo "======================================"

echo ""
echo "🛑 Stopping node..."

# Stop screen session
screen -S dacnode -X quit 2>/dev/null

# Kill any running process
pkill -f dacnode 2>/dev/null

echo "🗑️ Removing files..."

# Remove dac directory
rm -rf $HOME/dac-node

# Remove scripts if present
rm -f $HOME/dac.sh
rm -f $HOME/install.sh

# Remove stray binaries
find $HOME -name "dacnode*" -delete 2>/dev/null

echo ""
echo "✅ CLEANUP COMPLETE"
echo ""
echo "💡 System is now fresh for reinstall"

echo ""
echo "🔥 TheUG Ultimatum — Clean slate ready 🚀"
