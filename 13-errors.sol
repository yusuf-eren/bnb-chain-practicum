// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Errors {
    uint256 storedData;

    // `require` function takes 2 parameters.
    // first one is the successful condition
    // and second one is the failure messaage.
    // if the succesful condition happens, the function will continue to execution
    // if not, the failure message will be send and transaction will be reverted.

    // as an example, we said that x must not equal to zero.
    // if its equal send "x can not be zero"
    function set(uint256 x) public {
        require(x != 0, "x can not be zero");
        storedData = x;
    }

    function get() public view returns (uint256) {
        return storedData;
    }


    // Here again, we are check the result with 2 conditions
    // if one of both is true, it will execute the `revert` function with the failure message.
    function add(uint256 x, uint256 y) public pure returns (uint256) {
        uint256 result = x + y;

        if (result < x || result < y) {
            revert("Result overflowed");
        }
        return result;
    }

    // assert is using for unexpected conditions like the example above.
    // If the condition is false, it will be giving an error and reverting.
    function divide(uint256 x, uint256 y) public pure returns (uint256) {
        assert(y != 0);
        return x / y;
    }
}
