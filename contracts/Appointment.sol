//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;
pragma experimental ABIEncoderV2;
import {Medication} from"./Medication.sol";
contract Appointment{
    uint public visitCount=0;
 
 struct Visit{
    uint id;
    string bloodPressure;
    string pulse;
    string oxygen;
    string glucose;
    string reason;
    string diagnosis;
    Medication perscription;
    
 }

 mapping(uint=>Visit) public visits; //store patients in db aka blockchain ,treat this like a model

 function createVisit(string memory _bloodPressure,string memory _pulse, 
    string memory _oxygen,      //keyword memory temporarly stores data in vars
    string memory _glucose,string memory _reason ,
    string memory _diagnosis,Medication _perscription) public {
     visitCount++;    

     visits[visitCount]=Visit(visitCount,_bloodPressure,_pulse,_oxygen,_glucose,
     _reason,_diagnosis,_perscription);
 } 

}