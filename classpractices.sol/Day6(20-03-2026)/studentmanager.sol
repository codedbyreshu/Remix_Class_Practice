// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract studentmanager {
    //owner
    address public owner;
    //constructor(runs only once)
    constructor(){
        owner = msg.sender;
    }
    //struct 
    struct student{
        uint id;
        string name;
        uint age;
    }
    //Mapping
    mapping(uint=>student)public students;
    //modifier(only owner can add student)
    modifier onlyowner{
        require(msg.sender==owner,"Not owner");
        _;
    }
    //Add student(set function)
    function Addstudent(uint _id, string memory _name, uint _age)public onlyowner{
        require(_id>0,"Invalid ID");
        students[_id]=student(_id,_name,_age);
    }
    //Get student
    function GetStudent (uint _id)public  view  returns (uint,string memory,uint){
        student memory s = students[_id];
        return (s.id,s.name,s.age);
    }
    //update student
    function updatestudent(uint _id, string memory _name,uint _age)public onlyowner{
        require(students[_id].id !=0,"Student not found");
        students[_id] =student(_id, _name, _age);    
    }    
}