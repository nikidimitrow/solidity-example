pragma solidity^0.4.9;

contract HelloWorld{
    
    address owner;git 
    
    function HelloWorld(){
        owner = msg.sender;
    }
    
    function sayHello() public constant returns (string){
        return "Hello World";
    }
     
}
