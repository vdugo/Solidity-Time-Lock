// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract TimeLock
{
    error NotOwnerError();

    address public owner;

    constructor()
    {
        owner = msg.sender;
    }

    modifier onlyOwner()
    {
        if (msg.sender != owner)
        {
            revert NotOwnerError();
        }
        _; 
    }

    function queue(
        address _target,
        uint256 _value,
        string calldata _func,
        bytes calldata _data,
        uint256 _timestamp
    ) external onlyOwner
    {

    }
}