// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

contract MyContract{
    uint256 public peopleCount = 0;
    mapping(uint256 => Person) public people;
    
    uint256 openingTime = 1622707526;
    
    
    modifier onlyOwner(){
         require(block.timestamp >= openingTime);
         _;
    }
    
    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }
    
   
    function addPerson(string memory _firstName, string memory _lastName) public onlyOwner{
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
    
    function incrementCount() internal{
        peopleCount += 1;
    }
}