//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract enumlol {
    enum resturant {
        pizza,
        hamburger,
        kebab
    }

    resturant public menu;
    
    function pizaa () 
    public {
        menu = resturant.pizza;
    }

    function hamburger () 
    public {
        menu = resturant.hamburger;
    }

    function kebab () 
    public {
        menu = resturant.kebab;
    }
}