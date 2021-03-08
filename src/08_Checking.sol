// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface BankRegulator{

}

contract InternalAccount is BankRegulator{
    uint private value;

    constructor (uint _wallet)public{
        value = _wallet;
    }

}

contract Checking is InternalAccount(10){

}