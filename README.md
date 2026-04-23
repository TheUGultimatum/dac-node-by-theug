# 🚀 DAC Node Auto Setup (VPS / WSL)

**by TheUGultimatum**

Run a DAC Chain Testnet node with wallet + faucet + background execution — fully automated.

---

## ⚡ Features

- 🔐 Auto wallet creation (CLI-based keystore)
- 🚀 One-command node setup
- 🖥️ Runs in background using `screen`
- 🌐 Works on VPS & WSL
- 🧹 Easy cleanup script included
- ⚡ Lightweight (no Docker needed)

---

## 🧠 Requirements

- Ubuntu VPS / WSL (Ubuntu 20+ recommended)
- Internet connection
- Basic terminal access

---

## 📥 Installation

```bash
wget https://raw.githubusercontent.com/TheUGultimatum/quip-node-for-vps/main/dac.sh
chmod +x dac.sh
./dac.sh
```

---

## 🔐 Wallet Creation

The script will:

- Generate a new wallet using DAC CLI
- Ask you to set a password
- Store wallet securely

📁 Location:
```bash
~/dac-node/data/keystore
```

⚠️ IMPORTANT:
- Save your password
- Backup keystore file
- No recovery if lost

---

## 💧 Faucet (Important Step)

After wallet creation:

1. Copy your wallet address  
2. Send faucet tokens (testnet)  
3. Confirm in script → then node starts  

---

## 🚀 Running Node Manually

```bash
cd ~/dac-node
./dacnode --testnet --identity "your-node-name" --datadir ./data
```

---

## 🖥️ View Logs

```bash
screen -r dacnode
```

Detach safely:
```bash
CTRL + A + D
```

---

## 🛑 Stop Node

```bash
screen -S dacnode -X quit
```

---

## 🧹 Cleanup (Full Reset)

```bash
wget https://raw.githubusercontent.com/TheUGultimatum/quip-node-for-vps/main/cleanup.sh
chmod +x cleanup.sh
./cleanup.sh
```

---

## 🧠 Node Types (Understanding)

DAC Network includes:

- 🔹 Light Node → basic participation  
- 🔹 Validator → requires ~1000 DACT  
- 🔹 Supervisor → requires ~100,000 DACT  

👉 This script runs a **Testnet Node**

---

## 🔒 Security Tips

- Never share private key  
- Keep backups offline  
- Use strong password  

---

## ⚡ Notes

- No Docker required  
- Uses official DAC binary  
- Works on most VPS providers  
- Compatible with WSL  

---

## 👑 Author

**TheUGultimatum**

---

## ⭐ Support

If this helped you:

- ⭐ Star the repo  
- 🔁 Share with others  
- 🧠 Follow for more node guides  

---

🔥 *Run nodes like a pro. Stay ahead of the crowd.*
