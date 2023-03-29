// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Parent {
    uint256 public parentData;

    constructor(uint256 _parentData) {
        parentData = _parentData;
    }
}

contract Child is Parent {
    uint256 public childData;

    // We are declaring `_parentData` of `Parent` contract.
    // The constructor passes _parentData to the Parent constructor using Parent(_parentData) syntax.
    constructor(uint256 _parentData, uint256 _childData) Parent(_parentData) {
        childData = _childData;
    }
}
