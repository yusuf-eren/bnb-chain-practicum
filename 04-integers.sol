// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Integers {
    // unsigned integers (uint) are starting from 0
    // Difference between int and uint is the range
    // of the integer value. int can get values below 0
    // but uint can't.
    uint public number;

    int public anotherNumber;

    function setNumber(uint newNumber) public {
        number = newNumber;
    }

    function setAnotherNumber(int newAnotherNumber) public {
        anotherNumber = newAnotherNumber;
    }

    function sum() public view returns(int) {
        return anotherNumber + 5;
    }
}