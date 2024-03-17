// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;
contract Array{
    uint[] public dynamicArray;
    uint[5] public fixedArray;
    function AddToDynamicArray(uint value) public {
        dynamicArray.push(value);
    }  
    function GetDynamicArrayLength() public view returns(uint){
        return dynamicArray.length;
    }
}