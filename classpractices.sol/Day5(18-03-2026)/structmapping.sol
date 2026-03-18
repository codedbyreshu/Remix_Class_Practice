/**StructMapping Example**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {

    // Struct
    struct Student {
        uint id;
        string name;
        uint age;
    }

    // Mapping (Key → Student ID, Value → Student Struct)
    mapping(uint => Student) public students;

    // Set Function
    function setStudent(uint _id, string memory _name, uint _age) public {
        students[_id] = Student(_id, _name, _age);
    }

    // Get Function
    function getStudent(uint _id) public view returns(uint, string memory, uint) {
        Student memory s = students[_id];
        return (s.id, s.name, s.age);
    }
}