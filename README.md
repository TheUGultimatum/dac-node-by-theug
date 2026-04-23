# 🚀 DAC Node Setup Script (VPS / WSL)

**by TheUGultimatum**

Run a DAC Chain Testnet node with wallet creation + faucet flow + background execution — all in one script.

---

## ⚡ Features

- 🔐 Wallet creation using DAC CLI (keystore)
- 💧 Faucet-ready workflow
- 🚀 One-command node setup
- 🖥️ Runs in background using screen
- 🌐 Works on VPS & WSL
- 🧹 Cleanup script included
- ⚡ No Docker required

---

## 🧠 Requirements

- Ubuntu VPS / WSL (20.04 / 22.04 / 24.04)
- Internet connection
- Basic terminal usage

---

## 📥 Installation

```bash
wget https://raw.githubusercontent.com/TheUGultimatum/dac-node-by-theug/main/dac.sh
chmod +x dac.sh
./dac.sh
```

---

## 🔐 Wallet Setup

The script will:

- Create a new wallet using DAC CLI
- Ask you to set a password
- Store keystore file locally

📁 Wallet location:

```bash
~/dac-node/data/keystore
```

⚠️ IMPORTANT:

- Save your password
- Backup keystore file
- No recovery if lost

---

## 💧 Faucet Step

After wallet creation:

1. Copy your wallet address  
2. Send faucet (DAC testnet tokens)  
3. Confirm inside script  

---

## 🚀 Node Execution

Node runs automatically in background using:

```bash
screen
```

---

## 📜 View Logs

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
wget https://raw.githubusercontent.com/TheUGultimatum/dac-node-by-theug/main/cleanup.sh
chmod +x cleanup.sh
./cleanup.sh
```

---

## 🧠 Node Types (DAC Network)

- Light Node → basic participation  
- Validator → requires ~1000 DACT  
- Supervisor → requires ~100,000 DACT  

👉 This script runs a Testnet node.

---

## 🔒 Security Tips

- Never share private key  
- Backup keystore file offline  
- Use strong password  

---

## ⚡ Notes

- Uses official DAC binary  
- No Docker required  
- Works on most VPS providers  
- Compatible with WSL  

---

## 👑 Author

TheUGultimatum

---

## ⭐ Support

If this helped you:

- ⭐ Star the repo  
- 🔁 Share with others  

---

🔥 Run nodes like a pro.
