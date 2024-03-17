// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Calculator {
    uint256 result = 1;
    function add(uint256 num) public {
        result += num;
    }
    function get() public view returns (uint256) {
        return result;
    }

}