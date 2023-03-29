// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Functions {
    string public stateString = "Hello world";

    // View functions are not modifying state of the blockchain
    // So it doesn't cost gas. We are just reading the data
    function viewFunction() public view returns(string memory) {
        return stateString;
    }

    // Pure functions are not interacting with blockchain in any way.
    // We also can declare that function to view but its better to use
    // pure functions instead of view in any kind of these scenarios
    function add(uint a, uint b) public pure returns(uint) {
        return a + b;
    }

}