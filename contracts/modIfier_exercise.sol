// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;
contract PausableToken
{
    address public owner;
    bool public paused;
    mapping (address=>uint) public balances;

    constructor() 
    {
        owner = msg.sender;
        paused = false;
        balances[owner] = 1000;
    }

    modifier OnlyOwner()
    {
        // 1. Implement the modifier to allow only the owner to call the function
        require(msg.sender == owner, "You dont have permiss to access this function");
        _;
    }

    // 2. Implement the modifier to check if the contract is not paused

    modifier NotPaused()
    {
        // 1. Implement the modifier to allow only the owner to call the function
        require(paused == false, "Pause is enable");
        _;
    }

    // 3. use the NotPaused modifier in this function
    function Transfer(address to, uint amount) public NotPaused
    {
        balances[msg.sender] -= amount;
        balances[to] += amount; 
    }

    // function pause() public OnlyOwner 
    // {
    //     if(paused != false)
    //     {
    //         balances[owner]++;
    //     }
    // }
}