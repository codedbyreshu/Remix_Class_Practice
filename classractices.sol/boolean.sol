//*Boolean Example*

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BooleanExample {

    // Boolean variable
    bool public isActive;

    constructor() {
        isActive = true;   // default value set to true
    }

    // Function to turn ON
    function activate() public {
        isActive = true;
    }

    // Function to turn OFF
    function deactivate() public {
        isActive = false;
    }

    // Function to toggle (switch true <-> false)
    function toggleStatus() public {
        isActive = !isActive;
    }

    // View current status
    function checkStatus() public view returns (bool) {
        return isActive;
    }
}