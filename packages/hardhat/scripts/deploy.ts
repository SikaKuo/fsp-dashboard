import { ethers } from "hardhat";

async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with the account:", deployer.address);

  const FinancialRecord = await ethers.getContractFactory("FinancialRecord");
  const financialRecord = await FinancialRecord.deploy();
  await financialRecord.deployed();
  console.log("FinancialRecord deployed to:", financialRecord.address);

  const FinancialRecordWithUserID = await ethers.getContractFactory("FinancialRecordWithUserID");
  const financialRecordWithUserID = await FinancialRecordWithUserID.deploy();
  await financialRecordWithUserID.deployed();
  console.log("FinancialRecordWithUserID deployed to:", financialRecordWithUserID.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
