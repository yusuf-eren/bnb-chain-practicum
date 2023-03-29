// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

import "./MyLibrary.sol";

contract LibraryContract {
    uint256[] myNumbers = [1, 2, 3, 4, 5];

    function doubleMyNumbers() public view returns (uint[] memory) {
        return MyLibrary.double(myNumbers);
    }
}
