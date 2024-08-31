import { HardhatUserConfig } from "hardhat/types";

const config: HardhatUserConfig = {
  solidity: "0.8.0",
  networks: {
    localhost: {
      url: "http://localhost:8545",
    },
  },
};

export default config;
