CREATE DATABASE LSBU_HOSPITAL;
-- a)

CREATE TABLE Patient (
    PatientNo int NOT NULL PRIMARY KEY,
    FullName varchar(255),
    DateOfBirth date NOT NULL,
    Address varchar(255) NOT NULL,
    PhoneNo varchar(255) NOT NULL
);

CREATE TABLE Operation (
    OperationNo int NOT NULL PRIMARY KEY,
    ProcedureName varchar(255),
    PatientNo int FOREIGN KEY REFERENCES Patient(PatientNo),
    OperationDate date,
    ResultOfProcedure varchar(255)
);

CREATE TABLE Equipment (
    EquipmentNo int NOT NULL PRIMARY KEY,
    Description varchar(max),
    DatePurchased date NOT NULL,
    DateLastSterilised date NOT NULL,
);

CREATE TABLE EquipmentUsed (
    EquipmentNo int NOT NULL, 
    OperationNo int NOT NULL,
	PRIMARY KEY (EquipmentNo, OperationNo),
	FOREIGN KEY (EquipmentNo) REFERENCES Equipment(EquipmentNo),
	FOREIGN KEY (OperationNO) REFERENCES  Operation(OperationNo)
);
-- b)
SELECT EquipmentNo, Description, DateLastSterilised
FROM EQUIPMENT
WHERE DateLastSterilised < DATEADD(month, -3, GETDATE())

-- c)
SELECT FullName FROM Patient
WHERE DateOfBirth = (SELECT Min(DateOfBirth) FROM Patient)
SELECT FullName FROM Patient
WHERE DateOfBirth = (SELECT Max(DateOfBirth) FROM Patient)

-- d)
SELECT PatientNo, Patient.Name, Doctor.Name, DoctorNo, OperationNo, OperationDate,
ProcedureName FROM Operation, Doctor, Patient WHERE Doctor = 'Enter Name'

SELECT Name, DateOfBirth
FROM PATIENT
WHERE DateOfBirth = (
    SELECT max(DateOfBirth)
    FROM PATIENT
) AND DateOfBirth = (
    SELECT min(DateOfBirth)
    FROM PATIENT
)