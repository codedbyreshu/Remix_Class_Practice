// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract patintdetails{
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    enum patientstatus{Regular,Irregular}

    struct patient{
        uint id;
        string name;
        uint age;
        string bio;
        patientstatus status;
    }

    mapping(uint=>patient)public patients;

    modifier onlyowner{
        require(msg.sender==owner);
        _;
    }
    //add patient
    function AddPatient(uint _id, string memory _name,uint _age,string memory _bio,patientstatus _status) public onlyowner{
        require (_id>0,"Invalid Id");
        patients[_id] =patient(_id,_name,_age,_bio,_status);
    }
    //Get patient
    function Getpatient(uint _id) public view returns(uint,string memory,uint,string memory,patientstatus){
        patient memory p = patients[_id];
        return (p.id,p.name,p.age,p.bio,p.status);
    }
    //update Patient
    function updatePetient(uint _id,string memory _name,uint _age,string memory _bio,patientstatus _status)public onlyowner{
        require(patients[_id].id !=0,"patient does not exist");
        patients[_id] = patient(_id,_name,_age,_bio,_status);
    }

 
}