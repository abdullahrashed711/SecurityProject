//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract Healthcare{
    uint public patientcount=0;
 
 struct Patient{
    uint id;
    string name;
    string age;
    string weight;
    string height;
    string sex;
    string[] initialMeasurements;
    string[] oldVisits;
 }

 mapping(uint=>Patient) public patients; //store patients in db aka blockchain ,treat this like a model

 function createPatient(string memory _name,string memory _sex, 
    string[] memory _initialMeasurements,      //keyword memory temporarly stores data in vars
    string[] memory _oldVisits,string memory _weight ,
    string memory _height,string memory _age) public {
     patientcount++;    

     patients[patientcount]=Patient(patientcount,_name,_age,_weight,_height,
     _sex,_initialMeasurements,_oldVisits);
 } 

}

