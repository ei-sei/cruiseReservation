CREATE TABLE Voyage (
    VoyageID int NOT NULL PRIMARY KEY,
    Origin varchar(255) NOT NULL,
    Destination varchar(255) NOT NULL,
    Departure DATETIME,
	Arrival DATETIME
);

DROP TABLE Voyage;
DROP TABLE Activities;
CREATE TABLE Activities (
	ActivityID int NOT NULL PRIMARY KEY,
	Theatre varchar(255),
	Music varchar(255),
	FitnessActivity varchar
);

ALTER TABLE Activities
DROP COLUMN Theatre; 

ALTER TABLE Activities
ADD FitnessActivity varchar(255)

CREATE TABLE Reservation (
    ReservationID int NOT NULL PRIMARY KEY,
    _Date date NOT NULL,
	provideMeal binary,
	paymentType char,
	VoyageID int NOT NULL FOREIGN KEY REFERENCES Voyage(VoyageID),
	ActivityID int FOREIGN KEY REFERENCES Activities(ActivityID)
);

ALTER TABLE Reservation
DROP COLUMN status; 

ALTER TABLE Reservation
ADD paymentType varchar(6); 

ALTER TABLE Reservation
ADD status varchar(255); 

UPDATE Reservation
SET status = 'Completed'
WHERE ReservationID = 2

SELECT * FROM Reservation

ALTER TABLE Reservation
DROP CONSTRAINT FK__Reservati__Voyag__3A81B327;

ALTER TABLE Reservation
ADD  VoyageID int NOT NULL FOREIGN KEY REFERENCES Voyage(VoyageID);

CREATE TABLE Seaport (
	SeaportCode char(3) NOT NULL PRIMARY KEY,
	City varchar(255) NOT NULL,
	Country varchar(255) NOT NULL,
	phoneNumber varchar(255) NOT NULL
);

ALTER TABLE Seaport
ADD City varchar(255); 

ALTER TABLE Seaport
ADD Country varchar(255); 

ALTER TABLE Seaport
ADD phoneNumber varchar(255); 

CREATE TABLE Reservation_Seaport (
    ReservationID int FOREIGN KEY REFERENCES Reservation(ReservationID),
	SeaportCode char(3) FOREIGN KEY REFERENCES Seaport(SeaportCode)
);

CREATE TABLE PASSENGERS (
    PassengerID int NOT NULL PRIMARY KEY, 
	ReservationID int NOT NULL FOREIGN KEY REFERENCES Reservation(ReservationID), 
	firstName varchar, 
	lastName varchar, 
	city varchar, 
	country varchar, 
	phoneNumber varchar, 
	EmailAddress varchar
);
SELECT * FROM PASSENGERS

CREATE TABLE Employee (
    EmployeeID int NOT NULL PRIMARY KEY, 
	SeaportCode char(3) NOT NULL FOREIGN KEY REFERENCES Seaport(SeaportCode), 
	firstName varchar NOT NULL, 
	lastName varchar NOT NULL, 
	city varchar NOT NULL, 
	country varchar NOT NULL, 
	phoneNumber varchar NOT NULL, 
	EmailAddress varchar NOT NULL
);
SELECT * from Employee;

ALTER TABLE Employee
ADD reservationTaken int; 

UPDATE Employee
SET reservationTaken = 32
WHERE EmployeeID = 20

SELECT * FROM Employee;


CREATE TABLE Ticket (
    TicketID int NOT NULL PRIMARY KEY, 
	ReservationID int NOT NULL FOREIGN KEY REFERENCES Reservation(ReservationID),
	DeliveryType Char(1), 
	CabinNumber int NOT NULL FOREIGN KEY REFERENCES Cabin(CabinNumber)
);
SELECT * from Ticket;

ALTER TABLE Ticket
ADD CabinNumber int NOT NULL FOREIGN KEY REFERENCES Cabin(CabinNumber); 

ALTER TABLE Ticket
DROP COLUMN Price;

ALTER TABLE Ticket
DROP CONSTRAINT FK__Ticket__CabinNum__5BE2A6F2;

ALTER TABLE Ticket
ADD PriceAfterVAT varchar(255); 

UPDATE Ticket
SET PriceAfterVAT = 1785
WHERE TicketID = 20
SELECT * from Ticket;

CREATE TABLE Ship (
    ShipName varchar(255) NOT NULL PRIMARY KEY, 
	SeaportCode char(3) NOT NULL FOREIGN KEY REFERENCES Seaport(SeaportCode), 
	ShipType varchar(255) NOT NULL,
	numberOfCabins int NOT NULL,
	shipFullDisplacement int NOT NULL,
	fuelCapacity int NOT NULL,
	MaximumSpeed int NOT NULL
);
SELECT * from Ship;


ALTER TABLE Ship
DROP COLUMN ShipName;

CREATE TABLE Cabin (
    CabinNumber int NOT NULL PRIMARY KEY, 
	ShipName varchar(255) NOT NULL FOREIGN KEY REFERENCES Ship(ShipName),
	cabinzSize varchar(255) NOT NULL,
	cabinClass varchar (255) NOT NULL,
	Deck varchar (255)NOT NULL
);
SELECT * from Cabin;


ALTER TABLE Cabin
DROP COLUMN CabinNumber;

ALTER TABLE Cabin
DROP CONSTRAINT PK__Cabin__DB4B1E7D1B13DEFE;

ALTER TABLE Cabin
Add Available varchar(255);

UPDATE Cabin
SET Available = 32
WHERE CabinNumber = 20
SELECT * from Cabin;


