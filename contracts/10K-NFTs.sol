//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract multiTransfer10k {

    uint256 private value;
    address private wallet;

    constructor () payable {
        value = msg.value;
        wallet = msg.sender;
    }

    modifier onlyOwner () {
        require(wallet == msg.sender,"This is not you!");
        _;
    }

    address payable [] wallets;

    function setAmount 
    (uint256 amount)
    public payable {
        for(uint i = 0; i < wallets.length; i++) {
            wallets[i].transfer(amount);
        }
    }

    function setAddress
    (address payable to)
    public onlyOwner {
        wallets.push(to);
    }
}