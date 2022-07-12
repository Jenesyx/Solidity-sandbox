//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract pro {

    address public owner;
    uint256 public value;

    address payable [] wallets;

    constructor () payable{
        owner = msg.sender;
        value = msg.value;
    }

    // value is hide
    modifier onlyOwner () {
        require(owner == msg.sender,"This is not you");
        _;
    }

    // Can set for all user the amount
    function set (uint256 amount) public payable onlyOwner {
        for(uint i = 0; i<wallets.length; i++) {
            wallets[i].transfer(amount);
        }
    }

    // This function can just transfer for one acc and not more
    function get (address payable wallets_) public payable {
        wallets.push(wallets_);
    }
}