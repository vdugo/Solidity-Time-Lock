// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract TimeLock
{
    address public owner;

    constructor()
    {
        owner = msg.sender;
    }

    function queue(
        address _target,
        uint256 _value,
        string calldata _func,
        bytes calldata _data,
        uint256 _timestamp
    ) external
    {
        
    }
}