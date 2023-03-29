// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract DataLocations {
    // These are storage variables. Storage variables are existing
    // on the blockchain and saved to storage.
    uint256 public storedData;
    string public storedString;

    // Data locations - storage, memory and calldata

    // storage means the variable is a `state` variable
    // memory means the data is loaded onto memory
    // calldata is like memory except it can only be used for function inputs

    // NOTE:
    // calldata is not modifiable
    // it takes parameter from the input and passes it into
    // anything without copying it.
    // so that is how it saves gas :)

    // memory is copies each element in the variable
    // and creating a new variable inside the memory and
    // pass it into anywhere
    function set(uint256 x, string calldata s) public {
        storedData = x;
        storedString = s;
    }

    function get() public view returns (uint256, string memory) {
        return (storedData, storedString);
    }

    function double(uint256[] memory nums)
        public
        pure
        returns (uint256[] memory)
    {
        uint256[] memory result = new uint256[](nums.length);

        for (uint256 i = 0; i < nums.length; i++) {
            result[i] = nums[i] * 2; // stored in memory
        }

        return result; // returned from memory
    }
}
