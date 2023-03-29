// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract ControlStructrues {
    // Imagine that like a JSON
    // Left side of the operator is the key
    // right side of the operator is the value
    /*
    {
        "0x1aE0EA34a72D944a8C7603FfB3eC30a6669E454C": "Yusuf",
    }
    */
    // But the main difference is here we should declare the types.
    // As an example we said that the key type will be address
    // and value type will be string.
    // One other important point is we can not access to
    // keys of the object like JavaScript `Object.keys(names)`
    // So make sure you will have all the data without knowing the keys
    // of the mapping. Or declare an array to store everything to not lose data (not recommended)
    mapping(address => string) public names;

    function setName(string memory _name) public {
        names[msg.sender] = _name;
    }

    function getName() public view returns (string memory) {
        return names[msg.sender];
    }
}
