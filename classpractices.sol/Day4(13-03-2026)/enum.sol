//Enum Example

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnumExample {

    enum Status { Pending, Approved, Rejected }

    Status  currentStatus;

    // Set status functions
    function setPending() public {
        currentStatus = Status.Pending;
    }

    function setApproved() public {
        currentStatus = Status.Approved;
    }

    function setRejected() public {
        currentStatus = Status.Rejected;
    }

    
}



