//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;
pragma experimental ABIEncoderV2;
import {Appointment} from "./Appointment.sol";
contract Healthcare{
    uint public patientCount=0;
 
 struct Patient{
    uint id;
    string name;
    uint age;
    string weight;
    string height;
    string sex;
    string bloodPressure;
    string pulse;
    string oxygen;
    string glucose;
    Appointment[] oldVisits;

 }

 mapping(uint=>Patient) public patients; //store patients in db aka blockchain ,treat this like a model
//keyword memory temporarly stores data in vars
 function createPatient(string memory _name,string memory _sex ,string memory _weight ,
    string memory _height,uint _age,
    string memory _bloodPressure,string memory _pulse, 
    string memory _oxygen, 
    string memory _glucose,   
    Appointment[] memory _oldVisits)public {
     patientCount++;    

     patients[patientCount]=Patient(patientCount,_name,_age,_weight,_height,
     _sex,_bloodPressure,_pulse,_oxygen,_glucose,_oldVisits);
 } 

}





