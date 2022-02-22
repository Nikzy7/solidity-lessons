// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    // this will get initialised to zero
    uint256 favoriteNumber;


    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addperson(string memory inpname,uint256 favNum) public {
        people.push(People(favNum,inpname));
        nameToFavoriteNumber[inpname] = favNum;
    }
}