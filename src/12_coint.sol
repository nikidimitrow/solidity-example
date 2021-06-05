//SPDX-License-Identifier: GPL-3.0 

pragma solidity ^0.8.4;

contract Coin{
    address public minter;
    mapping(address => uint)public balance;
    
   // event Set(address from, adress to, uint amount);
    event Sent(address from, address to, uint amount);
    
    constructor(){
        minter = msg.sender;
    }
    
    //function mint(adress receiver, uint amount) public{
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        require(amount < 1e60);
        balance[receiver] += amount;
    }
    
    error InsufficientBalance(uint requested, uint available);
    
    function send(address receiver, uint amount) public{
        if(amount > balance[msg.sender])
            revert InsufficientBalance({
                requested: amount,
                available: balance[msg.sender]
            });
            
            balance[msg.sender] -= amount;
            balance[receiver] += amount;
            emit Sent(msg.sender, receiver, amount);
    }
}