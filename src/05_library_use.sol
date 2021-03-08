pragma solidity ^0.5.1;

library math{
    function divide(uint256 a, uint256 b) internal pure returns (uint256){
        require(b > 0);
        uint256 c = a  / b;
        return c;
    }
}

contract AcceptEther{
    uint256 public value;
    
    function calculation(uint256 _value1, uint256 _value2) public{
        value = math.divide(_value1, _value2);
    }
}