# EmployeeAttendance Smart Contract
***
## Problem Statement\
`Write a solidity code to mark attendance of employees. Once an employee enters a company premises his id is accessed through RFID tag and also when he exit from the company. Based on his workmanship an employee will be marked present(present for min 8hrs), absent (present for less than 1 hour) and half day present(present for less than 4hrs).`

## Output
### 1. Absent case scenario
#### Employee with RFID 100 before entering the company
![Before Entering the company](./public/images/absent/1.png)
#### Employee with RFID 100 enters the company
![Employee enters the company](./public/images/absent/2.png)
#### Checking whether the data is entered or not
Employee with RFID 100 entered the company at timestamp 1641794287 unix style.\
![Employee enters the company](./public/images/absent/3.png)
#### Employee with RFID 100 enters the company
The employee leaves the company at timestamp 1641797100 unix style.\
We make a transaction on blockchain stating the given condition.\
![Employee enters the company](./public/images/absent/4.png)
#### Employee with RFID 100 enters the company
We check the presentee of employee on blockchain as computed by smart contract.\
![Employee enters the company](./public/images/absent/5.png)
2. Half day scenario
[./public/images/halfday/1.png]
3. Present case scenario
[./public/images/present.png]

***
##Resources
1. (UNIX Timestamp)[https://www.unixtimestamp.com/]
2. (Remix IDE)[https://remix.ethereum.org/]
# employeeAttendance
