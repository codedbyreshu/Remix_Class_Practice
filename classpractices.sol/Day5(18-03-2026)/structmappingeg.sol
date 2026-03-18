// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract patientdetails {
     enum checkuptime{regular,irregular}

    struct patient{
        uint id;
        string name;
        string biodescription;
        string bloodgroup;
        checkuptime checkup;
    }
    mapping(uint => patient) public patients;

    function setPatient(uint _id,string memory _name,string memory _biodescription,string memory _bloodgroup,checkuptime _checkup) public{
        patients[_id] = patient(_id,_name,_biodescription,_bloodgroup,_checkup);
    }
    function getPatient(uint _id) public view returns (uint,string memory,string memory, string memory,checkuptime){
        patient memory p = patients[_id];
        return (p.id,p.name,p.biodescription,p.bloodgroup,p.checkup);
    }    


}