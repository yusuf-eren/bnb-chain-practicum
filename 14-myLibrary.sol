// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

library MyLibrary {
    function double(uint256[] memory nums)
        public
        pure
        returns (uint256[] memory)
    {
        uint256[] memory result = new uint256[](nums.length);

        for (uint256 i = 0; i < nums.length; i++) {
            result[i] = nums[i] * 2;
        }

        return result;
    }
}
