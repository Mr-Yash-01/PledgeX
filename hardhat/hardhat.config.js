require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();  // <-- Add this to load .env variables

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.28",
  networks: {
    sepolia: {
      url: process.env.INFURA_RPC_URL || "", // Ensure fallback if undefined
      accounts: process.env.PRIVATE_KEY ? [process.env.PRIVATE_KEY] : [],
    }
  }
};
