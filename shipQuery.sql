--Ship insertion table

/*
TicketID = PK
ReservationID = FK
CabinNumber = Fk
*/
SELECT * from Ship;
SELECT * from Seaport;

INSERT INTO Ship(ShipName, SeaportCode, ShipType, numberOfCabins, shipFullDisplacement, fuelCapacity, MaximumSpeed)
VALUES ('Golden Lion', 'ACO', 'F70', 10, 100500, 1517011, 18);

INSERT INTO Ship(ShipName, SeaportCode, ShipType, numberOfCabins, shipFullDisplacement, fuelCapacity, MaximumSpeed)
VALUES ('Agile', 'BCN', 'F70', 15, 1396950, 1114445,19);

INSERT INTO Ship(ShipName, SeaportCode, ShipType, numberOfCabins, shipFullDisplacement, fuelCapacity, MaximumSpeed)
VALUES ('Birmingham', 'BDX', 'G75', 18, 961436, 1820408,18);

INSERT INTO Ship(ShipName, SeaportCode, ShipType, numberOfCabins, shipFullDisplacement, fuelCapacity, MaximumSpeed)
VALUES ('Madagascar', 'BIO', 'I30', 24, 1156865, 1460381,18);

INSERT INTO Ship(ShipName, SeaportCode, ShipType, numberOfCabins, shipFullDisplacement, fuelCapacity, MaximumSpeed)
VALUES ('The Kilbeggan', 'CAD', 'F22', 16, 1270479, 1707978,18);

INSERT INTO Ship(ShipName, SeaportCode, ShipType, numberOfCabins, shipFullDisplacement, fuelCapacity, MaximumSpeed)
VALUES ('Henry Prize', 'LIS', 'U53', 25, 1006828, 1728295,18);

INSERT INTO Ship(ShipName, SeaportCode, ShipType, numberOfCabins, shipFullDisplacement, fuelCapacity, MaximumSpeed)
VALUES ('Scout', 'LON', 'Q89', 17, 1257838, 1102882,18);

INSERT INTO Ship(ShipName, SeaportCode, ShipType, numberOfCabins, shipFullDisplacement, fuelCapacity, MaximumSpeed)
VALUES ('The Machine', 'OPO', 'E10', 18, 1102643, 1990793,18);

INSERT INTO Ship(ShipName, SeaportCode, ShipType, numberOfCabins, shipFullDisplacement, fuelCapacity, MaximumSpeed)
VALUES ('Pearl', 'PAV', 'J21', 15, 1387772, 1669306,24);

INSERT INTO Ship(ShipName, SeaportCode, ShipType, numberOfCabins, shipFullDisplacement, fuelCapacity, MaximumSpeed)
VALUES ('Meynell', 'SML', 'L91', 18, 1383801, 1358529, 22);