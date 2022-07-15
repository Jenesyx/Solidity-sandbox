//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract pro2 {
    uint256 public password;
    address public wallet;

    constructor (uint256 pass_) {
        password = pass_;
        wallet = msg.sender;
    }

    modifier onlyUser (uint _pass) {
        require(_pass == password,"This is not the password");
        _;
    }

    function set (uint a) 
    public view onlyUser(a) 
    returns(string memory){
        return "This is the right one";
    } 

}