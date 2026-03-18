//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract AddressMapping {
    // Mapping address to balance
    mapping(address => uint) public balances;
    // Set Function
    function setBalance(uint _amount) public {
        balances[msg.sender] = _amount;
    }
    // Get Function
    function getBalance(address _user) public view returns(uint) {
        return balances[_user];
    }
}