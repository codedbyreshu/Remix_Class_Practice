// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WelcomeToTecharaChainlearn {
    string public message;

    constructor() {
        message = "Welcome To TecharaChainlearn!";
    }

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}