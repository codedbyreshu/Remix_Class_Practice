//Array Example

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayExample {

    uint[] public numbers;

    function setNumber(uint _num) public {
        numbers.push(_num);
    }

    function getNumber(uint index) public view returns(uint){
        return numbers[index];
    }

    function getLength() public view returns(uint){
        return numbers.length;
    }
}