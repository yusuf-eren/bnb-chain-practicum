// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;


// HOW TO TEST THAT?

// 1) Deploy `ContractA` and set a value.
// 2) Deploy `ContractB`
// 3) Copy the address of the deployed `ContractA`
// 4) Paste the address to `setValueOnContractA` and set your number
// 5) check `ContractA` `someValue` variable. It must be changed.

contract ContractA {
    uint256 public someValue;

    function setValue(uint256 newValue) external {
        someValue = newValue;
    }
}

interface ContractAInterface {
    function setValue(uint256) external;
}

contract ContractB {
    function setValueOnContractA(address _contractA, uint256 newValue) public {
        ContractAInterface(_contractA).setValue(newValue);
    }
}
