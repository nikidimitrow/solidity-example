pragma solidity ^0.5.1;

contract MyConstract{
    
    uint256 public peopleCount = 0;
    mapping(uint256 => Person) public people;
    uint256 openingTime = 1613216617;
    
    modifier onlyWhileOpen{
        require(block.timestamp >= openingTime);
        _;
    } 
    
    struct Person{
        uint _id;
        string _firstName;
        string _secondName;
    }
    
    function addPerson(string memory _firstName, string memory _secondName) public onlyWhileOpen{
        incrementPeople();
        people[peopleCount] = Person(peopleCount, _firstName, _secondName);
     
    }
    
    function incrementPeople() private returns(uint){
        return peopleCount += 1;
    }
}