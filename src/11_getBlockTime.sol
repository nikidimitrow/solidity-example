// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

contract GetAndSet{
    uint256 data = 0;
    
    uint256 chainStartTime = block.timestamp;
    
    function getTime() public view returns(uint256){
        return chainStartTime;
    }
    
}