--Ticket insertion table

/*
TicketID = PK
ReservationID = FK
CabinNumber = Fk
*/
SELECT * from Ticket;
SELECT * from Reservation;
SELECT * from Cabin;

TRUNCATE TABLE Ticket;

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (1, 1, 'Deliver', '£1485', 1095);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (2, 2,  'Collect', '£2963', 1042);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (3, 3,  'Deliver', '£2565', 997);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (4, 4,  'Collect', '£1300', 913);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (5, 5,  'Collect', '£1485', 897);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (6, 6,  'Deliver', '£1630', 870);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (7, 7, 'Deliver', '£2487', 796);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (8, 8, 'Collect', '£1826', 780);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (9, 9, 'Collect', '£2938', 654);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (10, 10, 'Deliver', '£2879', 645);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (11, 11, 'Deliver', '£2936', 531);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (12, 12, 'Deliver', '£2235', 526);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (13, 13, 'Collect', '£1383', 478);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (14, 14, 'Deliver', '£1527', 422);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (15, 15, 'Deliver', '£1223', 335);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (16, 16, 'Collect', '£1153', 325);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (17, 17, 'Deliver', '£1239', 217);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (18, 18, 'Deliver', '£1646', 207);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (19, 19, 'Collect', '£1087', 105);

INSERT INTO Ticket(TicketID, ReservationID, DeliveryType, Price, CabinNumber)
VALUES (20, 20, 'Deliver', '£1830', 101);