// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FundMe {
    uint256 public minimumUsd = 50;

    function fund() public payable {
        // want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this correct?
        require(msg.value >= minimumUsd, "Didn't send enough!"); //1e18 == 1 * 10 ** 18
    }

    // function withdraw(){}
}

