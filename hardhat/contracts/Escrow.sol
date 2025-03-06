// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Escrow {
    mapping(string => uint256) public projectBalances;

    event Deposited(string indexed projectId, uint256 amount);
    event Released(string indexed projectId, address indexed freelancer, uint256 amount);

    // Deposit funds for a specific project
    function depositFunds(string memory projectId) external payable {
        require(msg.value > 0, "Amount must be greater than zero");

        projectBalances[projectId] += msg.value; // msg.value is already in Wei

        emit Deposited(projectId, msg.value);
    }

    // Release a specific amount (converted from ETH to Wei) to a freelancer
    function releaseFunds(string memory projectId, address payable freelancer, uint256 amountInEth) external {
        uint256 amountInWei = amountInEth * 1e18; // Convert ETH to Wei

        require(amountInWei > 0, "Amount must be greater than zero");
        require(projectBalances[projectId] >= amountInWei, "Insufficient funds");

        projectBalances[projectId] -= amountInWei;
        freelancer.transfer(amountInWei);

        emit Released(projectId, freelancer, amountInWei);
    }

    // Get escrow balance for a specific project
    function getBalance(string memory projectId) external view returns (uint256) {
        return projectBalances[projectId];
    }
}
