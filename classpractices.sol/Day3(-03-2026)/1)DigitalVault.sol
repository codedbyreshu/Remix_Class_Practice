// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;
 contract DigitalVault{
    string public username;
    uint public VaultBalance;
    bool public isVaultOpen;      // boo
    int public netTransaction;
    bytes public SecretCode;

constructor(){
    isVaultOpen = true;
}
function setOwnerName(string memory _name) public{
    username = _name;
}
function VerifyOwner(string memory _name) public{
    username = _name;
}
function getLength() public view returns (uint) {
        return bytes(username).length;
    }
function compareusername(string memory _other) public view returns (bool){
    return keccak256(bytes(username)) == keccak256(bytes(_other));
}

//2. Vaulkt balance (uint)
function deposit(uint _amount) public{
    require(isVaultOpen, "Vault is closed");
    VaultBalance += _amount;
}
function withdraw(uint _amount) public {
    require(isVaultOpen, "Vault is closed");
    require(VaultBalance >= _amount,"Insufficient Balance");
    VaultBalance -= _amount;
}

//3.Vault status bool
function openvault() public {
    isVaultOpen = true;
}
function closeVault() public {
    isVaultOpen = false;
}
function status (uint136) public view returns(bool){
    require(isVaultOpen, "Vault is closed");
    return isVaultOpen;
}
//Transaction Tracking(int)
function deposit(int _amount) public{
    require (_amount > 0, "deposit must be positive");
    netTransaction += int(_amount);
}
function withdraw(int _amount) public{
    require (_amount > 0, "Withdraw must be Positive");
    netTransaction -= _amount;
}
function getnetTransaction() public view returns (int){
    return netTransaction;
}

// Secret Data Storage
function setsecret(string memory _code) public{
    SecretCode = bytes(_code);
}
function getsecretlength() public view returns  (uint){
    return bytes(SecretCode).length;
}
function getSecretByte(uint index) public view returns (bytes1) {
    require (index < SecretCode.length, "Index out 0of range");
    return SecretCode[index];
}
function getVaultdetails() public view returns(string memory,uint,int,bool){
    return (username, VaultBalance,netTransaction,isVaultOpen);
}
}