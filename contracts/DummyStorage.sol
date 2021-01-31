// SPDX-License-Identifier: GPL-3.0
// Author: Uni

pragma solidity ^0.6.12;

contract DummyStorage {
    event Write(address indexed source, uint256 value);
    
    uint internal _currentValue;
    
    function get() public view returns (uint) {
        return _currentValue;
    }   
    
    function put(uint value) public {
        emit Write(msg.sender, value);
        _currentValue = value;
    }
}