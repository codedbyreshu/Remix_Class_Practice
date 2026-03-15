// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnumExample {

    // Enum
    enum Status { Pending, Shipped, Delivered }

    // Variable
    Status public orderStatus;

    // Set Function
    function setStatus(Status _status) public {
        orderStatus = _status;
    }

    // Get Function
    function getStatus() public view returns(Status) {
        return orderStatus;
    }
}