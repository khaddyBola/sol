// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    // This gets initialize to zero!
    uint256 public favoriteNumber;  

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        uint256 testVar = 5;
        // favoriteNumber = _favoriteNumber + 1;

    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    // 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8
}