//Struct Example

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructExample {

    // Struct
    struct Student {
        uint id;
        string name;
        uint age;
    }

    // Struct variable
    Student public student;

    // Set Function
    function setStudent(uint _id, string memory _name, uint _age) public {
        student = Student(_id, _name, _age);
    }

    // Get Function
    function getStudent() public view returns(uint, string memory, uint) {
        return (student.id, student.name, student.age);
    }
}