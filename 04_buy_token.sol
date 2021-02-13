pragma solidity ^0.5.1;

contract AcceptEther{
    
    mapping(address => uint256) public balance;
    address payable wallet;
    
    constructor(address payable _wallet) public{
        wallet = _wallet;
    } 
    
    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );
    
    function()external payable{
        buyToken();
    }
    
    function buyToken() public payable{
        //buy Token
        //send to wallet
        balance[msg.sender] += 1;
        wallet.transfer(msg.value);
        emit Purchase(msg.sender, 1);
    } 
}