// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DigitalVault {

    // User Section
    string public ownerName;

    function setOwnerName(string memory _name) public {
        ownerName = _name;
    }

    function verifyOwner(string memory _name) public view returns (bool) {
        return keccak256(bytes(ownerName)) == keccak256(bytes(_name));
    }

    // Vault Balance (uint)
    uint public vaultBalance;

    function deposit(uint amount) public {
        require(isVaultOpen, "Vault is closed");
        vaultBalance += amount;
        netTransaction += int(amount);
    }

    function withdraw(uint amount) public {
        require(isVaultOpen, "Vault is closed");
        require(amount <= vaultBalance, "Insufficient balance");
        vaultBalance -= amount;
        netTransaction -= int(amount);
    }

    // Vault Status (bool)
    bool public isVaultOpen;

    constructor() {
        isVaultOpen = true;
    }

    function openVault() public {
        isVaultOpen = true;
    }

    function closeVault() public {
        isVaultOpen = false;
    }

    // Transaction Tracking (int)
    int public netTransaction;

    //  Secret Data Storage (bytes)
    bytes public secretCode;

    function setSecret(string memory _code) public {
        secretCode = bytes(_code);
    }

    function getSecretLength() public view returns (uint) {
        return secretCode.length;
    }

    function getSecretByte(uint index) public view returns (bytes1) {
        require(index < secretCode.length, "Index out of range");
        return secretCode[index];
    }

    // Final Summary Function
    function getVaultDetails() public view returns (string memory, uint, int, bool) 
    {
        return (ownerName, vaultBalance, netTransaction, isVaultOpen);
    }
}