//*Address Payable with 2 Contract address Example*//

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Money {

    // Store receiver address (your wallet)
    address public receiver;

    // Constructor to set receiver address
    constructor(address _receiver) {
        receiver = _receiver;
    }

    // Function to receive money
    function getMoney() public payable {
        // Accept Ether
    }

    // Function to transfer all contract balance to receiver
    function transferMoney() public {
        uint amount = address(this).balance;
        // Convert to payable
        address payable to = payable(receiver);
        // Send Ether using call
        (bool success, ) = to.call{value: amount}("");
        require(success, "Transfer failed");
    }
}