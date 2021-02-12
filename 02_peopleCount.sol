pragma solidity ^0.5.1;

contract MyConstract{
    
    uint256 public peopleCount = 0;
    mapping(uint256 => Person) public people;   
    
    struct Person{
        uint _id;
        string _firstName;
        string _secondName;
    }
    
    function addPerson(string memory _firstName, string memory _secondName) public{
        incrementPeople();
        people[peopleCount] = Person(peopleCount, _firstName, _secondName);
     
    }
    
    function incrementPeople() private returns(uint){
        return peopleCount += 1;
    }
}
