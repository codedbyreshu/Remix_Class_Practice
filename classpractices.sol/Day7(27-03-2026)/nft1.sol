//*Backend Solidity Program*

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleNFT {

    string public name = "TecharaNFT";
    string public symbol = "TNFT";

    uint public tokenCount;

    mapping(uint => address) public ownerOf;

    event Mint(address indexed to, uint tokenId);

    function mint() public {
        tokenCount++;
        ownerOf[tokenCount] = msg.sender;

        emit Mint(msg.sender, tokenCount);
    }
}