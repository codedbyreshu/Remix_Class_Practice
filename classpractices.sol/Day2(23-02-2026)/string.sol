//*String Example*

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringExample {

    // String variable
    string public name;

    // Set string value
    function setName(string memory _name) public {
        name = _name;
    }
    
    // Get string length (convert to bytes to calculate)
    function getLength() public view returns (uint) {
        return bytes(name).length;
    }

    // Compare two strings
    function compare(string memory _other) public view returns (bool) {
        return keccak256(bytes(name)) == keccak256(bytes(_other));
    }
}