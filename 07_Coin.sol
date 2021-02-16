// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Coin{

    address public minter;
    mapping (address => uint) public balances;
    
    event Sent(address from, address to, uint amount);
    
  

}
