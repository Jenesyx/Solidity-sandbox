//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract test {

    uint256 public value;
    string public user;
    address public wallet;

    mapping (uint => mapping(string => address)) map;

    function set (uint256 amount, string memory account, address _wallet)
    public{
        map[amount][account] =  _wallet;
    }

    function get (uint256 amount_, string memory account_) 
    view public 
    returns(address) {
        return map[amount_][account_];
    }
}