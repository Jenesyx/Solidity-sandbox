//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract struct_ {

    struct person{
        string name;
        uint256 age;
    }

    person [] persons;

    function set (string memory name_, uint256 age_) 
    public {
        persons.push(person(name_,age_));
    } 

    function get (uint256 key) 
    public view 
    returns(person memory) {
        return persons[key];
    }
}