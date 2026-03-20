// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 contract StudentData{
    struct Student {
        uint id;
        string name;
        uint marks;
    }
    mapping (uint=>Student) public  Students;
    function addStudent(uint _id,string memory _name,uint _marks) public{
        Students[_id] = Student(_id,_name,_marks);
    }
    function checkstatusResult (uint _id) public view  returns (string memory){
        if (Students[_id].marks>= 50){
            return "Pass";
        }else{
            return "Fail";
        }
        }
    }
 