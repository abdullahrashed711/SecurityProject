const Healthcare = artifacts.require("./Healthcare.sol");
const Medication = artifacts.require("./Medication.sol");
const Appointment = artifacts.require("./Appointment.sol");
module.exports = function(deployer) {
  deployer.deploy(Healthcare);
  deployer.deploy(Medication);
  deployer.deploy(Appointment);
  
};  
