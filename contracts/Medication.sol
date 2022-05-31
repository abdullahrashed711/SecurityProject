//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;
pragma experimental ABIEncoderV2;

contract Medication{
    uint public prescriptionCount=0;
 
 struct Prescription{
    uint id;
    string[] medications;
    string[] doses;
    string[] intakePeriod;
    string followUpAppointment;
    string refferalDoctor;
    string[] labTests;
 
 }

 mapping(uint=>Prescription) public prescriptions; //store patients in db aka blockchain ,treat this like a model
//keyword memory temporarly stores data in vars
 function createPatient(string[] memory _medications,string[] memory _doses, 
    string[] memory _intakePeriod,      
    string memory _followUpAppointment,string memory _referralDoctor ,
    string[] memory _labTests) public {
     prescriptionCount++;    

     prescriptions[prescriptionCount]=Prescription(prescriptionCount,_medications,_doses,_intakePeriod,_followUpAppointment,
     _referralDoctor,_labTests);
 } 

}