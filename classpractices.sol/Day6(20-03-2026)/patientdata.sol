// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract PatientData{
    //Struct
    struct Patient{
        uint id;
        string name;
        string disease;
    }   
    //Mapping
    mapping(uint=>Patient) public Patients;
    //Event log
    event PatientAdded(uint id,string name, string disease);
    //set Function
    function addPatient (uint _id,string memory _name,string memory _disease) public{
        Patients[_id] = Patient(_id,_name,_disease);
    //Emit event
    emit PatientAdded (_id,_name,_disease);     
    }
    //Get function
    function GetPatient(uint _id) public view  returns (uint,string memory,string memory){
        Patient memory P = Patients[_id];
        return (P.id,P.name,P.disease);
    }
}    