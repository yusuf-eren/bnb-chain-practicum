// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Address {
    // Setting `owner` variable to msg.sender
    // address variable type is a special type
    // for just storing address data in solidity
    address private owner = msg.sender;

    function getOwner() public view returns(address) {
        return owner;
    }
}