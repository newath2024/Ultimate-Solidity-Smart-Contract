// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Test
{
    address public owner;                                           // a person who deploy the contract at blockchain

    constructor() 
    {
        owner = msg.sender;
    }

    modifier OnlyOwner()
    {
        require(msg.sender == owner, "You are not the owner!");
        _;                                                          // indicate the part where the function body is inserted
    }

    function ChangeOwner(address newOwner) public OnlyOwner
    {
        owner = newOwner;
    }
}