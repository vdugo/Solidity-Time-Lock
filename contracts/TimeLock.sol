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

    function getTxId(
        address _target,
        uint256 _value,
        string calldata _func,
        bytes calldata _data,
        uint256 _timestamp
    ) public pure returns(bytes32 txId)
    {
        return keccak256(
            abi.encode(
                _target, _value, _func, _data, _timestamp
            )
        );
    }

    function queue(
        address _target,
        uint256 _value,
        string calldata _func,
        bytes calldata _data,
        uint256 _timestamp
    ) external onlyOwner
    {
        bytes32 txId = getTxId(_target, _value, _func, _data, _timestamp);
    }
}