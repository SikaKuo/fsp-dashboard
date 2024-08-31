// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FinancialRecord {
    struct Transaction {
        string description;
        uint256 amount;
        string transactionType;
        uint256 timestamp;
    }

    mapping(address => Transaction[]) public transactions;

    function recordTransaction(string memory _description, uint256 _amount, string memory _transactionType) public {
        transactions[msg.sender].push(Transaction({
            description: _description,
            amount: _amount,
            transactionType: _transactionType,
            timestamp: block.timestamp
        }));
    }

    function getTransactions() public view returns (Transaction[] memory) {
        return transactions[msg.sender];
    }
}
