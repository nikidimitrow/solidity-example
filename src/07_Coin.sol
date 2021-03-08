// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Coin{
  //declares a state variable of type address that is publicly accessible
  //address type is a 160-bit value that does not allow any arithmetic operations
  address public minter;
  mapping (address => uint) public balances;
    
  event Sent(address from, address to, uint amount);
    
  function mint(address receiver, uint amount) public {
        if (msg.sender != minter) return;
        balances[receiver] += amount;
    }

    function send(address receiver, uint amount) public {
        if (balances[msg.sender] < amount) return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }

}
