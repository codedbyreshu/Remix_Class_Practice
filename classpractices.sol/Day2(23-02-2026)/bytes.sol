//*Bytes Example*

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BytesExample {

    // Dynamic bytes array
    bytes public data;

    // Set bytes value
    function setData(string memory _text) public {
        data = bytes(_text);   // convert string to bytes
    }

    // Get length of bytes
    function getLength() public view returns (uint) {
        return data.length;
    }

    // Get specific byte using index
    function getByte(uint index) public view returns (bytes1) {
        require(index < data.length, "Index out of range");
        return data[index];
    }
}