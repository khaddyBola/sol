// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    // This gets initialize to zero!

    uint256 favoriteNumber;  
    // People public person = People({favoriteNumber: 2, name: "Bolanle", favColor: "Pink", hobbies: "Codding"});

    mapping(string => uint256) public nameToFavoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
        string favColor;
        string hobbies;
    }

    //Array
    People[] public people;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        // uint256 testVar = 5;
        // favoriteNumber = _favoriteNumber + 1;

    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }


    //Array
    //callback, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber, string memory _favColor, string memory _hobbies) public {
        // People memory newPerson = People({favoriteNumber:_favoriteNumber, name:_name, favColor:_favColor, hobbies:_hobbies});
        people.push(People(_favoriteNumber, _name, _favColor, _hobbies));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8
}