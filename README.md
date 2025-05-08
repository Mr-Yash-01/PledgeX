# 📂 PledgeX: Smart Contract Project (Hardhat)

**Description:**
PledgeX Smart Contracts form the decentralized escrow logic for milestone-based freelance-client interactions. Deployed on the Ethereum Sepolia testnet using Hardhat, they ensure secure fund handling and transparent milestone validation.

**Topics:**
Solidity Ethereum Hardhat SmartContracts Escrow Milestone Payments Web3

## 🔐 PledgeX Smart Contracts

The core of the PledgeX platform — a decentralized escrow system for freelancers and clients — built with Solidity and deployed via Hardhat on the Ethereum Sepolia testnet.

### 🧠 Features
- **Escrow-Based Payments**: Automates fund release based on verified milestones.
- **Milestone Logic**: Tracks progress, approval, and release of payments per milestone.
- **Client-Freelancer Interaction**: Contracts are created with roles defined via public addresses.
- **Error Handling & Fund Safety**: Robust logic ensures safe fallback and fund returns.

### ⚙️ Tech Stack
- Solidity
- Hardhat
- Sepolia Ethereum Testnet
- Metamask
- Ethers.js

### 🚀 Getting Started

- git clone https://github.com/Mr-Yash-01/PledgeX.git
- cd pledgeX-smart-contracts
- npm install
- npx hardhat compile
- npx hardhat test
- npx hardhat run scripts/deploy.js --network sepolia
