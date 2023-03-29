// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Variables {
    // This is a state variable for this contract.
    // Its declared inside of the contract but not in function.
    // So its in the scope of the `Variables` contract.
    string public myStateVariable = "state example";

    function add(uint a) public pure returns (uint) {
        // `localUint` is a local variable
        // That means its just being declared when the function is called
        // and removed when the function is finished.
        // No one can access to it outside of the function.
        uint localUint = 10;
        return a + localUint;
    }

    function globalVariables() public view returns(address, uint, uint) {
        // Those are global variables of the blockchain
        return (msg.sender, block.timestamp, block.number);
    }
}