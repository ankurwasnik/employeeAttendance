pragma solidity ^0.4.2;

contract Ankur {
    /*
    Assumption : There are 1000 employees in company
    */

    enum Status {
        ABSENT,HALD_DAY,PRESENT
    }

    struct Employee {
        uint256 id ; 
        uint inTime ;
        Status isPresent ;
    }

    Employee[1000]  public employees ;

    function employeIn (uint256 RFID ) public returns(uint) {
        employees[RFID] = Employee(RFID,block.timestamp,Status.ABSENT) ;
        return employees[RFID].inTime ;
    }

    function employeeExit( uint256 RFID ) public  returns(Status) {
        uint exitTime = block.timestamp ;
        uint workManShip = exitTime -  employees[RFID].inTime  ;
        uint onehour = 3600 ;
        if( workManShip < onehour ) {
            employees[RFID].isPresent = Status.ABSENT ;
           
        }
        if(workManShip >=onehour && workManShip < (4*onehour) ){
            employees[RFID].isPresent = Status.HALD_DAY ;
            
        }
         if(workManShip >= (8*onehour) ) {
            employees[RFID].isPresent = Status.PRESENT ;
            
        }
        return employees[RFID].isPresent ;
       
    }

    function employeesExitGivenTime( uint256 RFID , uint exitTime ) public returns(Status) {
        uint workManShip = exitTime -  employees[RFID].inTime  ;
        uint onehour = 3600 ;
        if( workManShip < onehour ) {
            employees[RFID].isPresent = Status.ABSENT ;
           
        }
        if(workManShip >=onehour && workManShip < (4*onehour) ){
            employees[RFID].isPresent = Status.HALD_DAY ;
            
        }
         if(workManShip >= (8*onehour) ) {
            employees[RFID].isPresent = Status.PRESENT ;
            
        }
        return employees[RFID].isPresent ;
    }

}