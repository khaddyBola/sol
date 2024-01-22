// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./Price"

contract FundMe {

    uint256 public minimumUsd = 50 * 1e18;

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    function fund() public payable {
       
        // want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this correct?
        require(getConversionRate(msg.value) >= minimumUsd, "Didn't send enough!"); //1e18 == 1 * 10 ** 18 == 1000000000000
        funders.push(msg.sender);
        addressToAmountFunded(msg.sender) = msg.value;
    }

    // function withdraw(){}
}

