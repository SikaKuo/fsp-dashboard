// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FinancialRecordWithUserID {
    struct Transaction {
        string description;
        uint256 amount;
        string transactionType;
        uint256 timestamp;
    }

    mapping(uint256 => Transaction[]) public userTransactions;

    function recordTransaction(uint256 _userId, string memory _description, uint256 _amount, string memory _transactionType) public {
        userTransactions[_userId].push(Transaction({
            description: _description,
            amount: _amount,
            transactionType: _transactionType,
            timestamp: block.timestamp
        }));
    }

    function getTransactionsByUserID(uint256 _userId) public view returns (Transaction[] memory) {
        return userTransactions[_userId];
    }
}
