//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract bicth {

    address public owner;
    uint256 public value;

    address wallet;

    constructor () payable{
        owner = msg.sender;
        value = msg.value;
    }

    modifier onlyOwner () {
        require(owner == msg.sender,"This is not you!");
        _;
    }

    function send (address payable to) public payable onlyOwner {
        to.transfer(value);
    }
}