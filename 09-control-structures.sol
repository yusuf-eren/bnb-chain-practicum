// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract ControlStructrues {
    function ifElse(uint256 x) public pure returns (uint256) {
        if (x > 10) {
            return x + 1;
        }
        return x - 1;
    }

    function forLoop(uint256 stop) public pure returns (uint256) {
        uint256 sum = 0;

        for (uint256 i = 0; i < 10; i++) {
            sum += i;
            if (stop == i) {
                break;
            }
        }

        return sum;
    }

    function whileLoop(uint256 number) public pure returns (uint256) {
        uint256 count = 0;
        while (number != 0) {
            count++;
            number--;
        }

        return count;
    }
}