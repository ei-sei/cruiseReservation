SELECT * FROM Activities
SELECT * FROM Cabin
SELECT * FROM Employee
SELECT * FROM PASSENGERS
SELECT * FROM Reservation
SELECT * FROM Reservation_Seaport
SELECT * FROM Seaport
SELECT * FROM Ship
SELECT * FROM Ticket
SELECT * FROM Voyage

--4a

SELECT firstName, lastName, city, country, reservationTaken
FROM Employee
WHERE reservationTaken = (
	SELECT min(reservationTaken) 
	FROM Employee)
	OR reservationTaken =(
	SELECT max(reservationTaken)
	FROM Employee)


--4b

SELECT status, COUNT(status) AS totalStatus
FROM Reservation
GROUP BY status


--4c
SELECT Available, ShipName, CabinNumber, cabinzSize, cabinClass, Deck
FROM Cabin
WHERE Available = 'Yes'


--4d

CREATE OR ALTER TRIGGER BookingTrigger
ON Cabin
	AFTER INSERT
	AS
BEGIN
	SELECT Available, ShipName, CabinNumber, cabinzSize, cabinClass, Deck
	FROM Cabin
	WHERE Available = 'Yes'
END



--4e
SELECT * FROM PASSENGERS
SELECT * FROM Reservation
SELECT * FROM Ticket
SELECT * FROM Activities

GO 
CREATE OR ALTER PROC CustomerInvoice @CustID int
AS
DECLARE
@PassengerID int, 
@firstName varchar(255),
@lastName varchar(255),
@City varchar(255),
@Country varchar(255),
@PhoneNumber varchar(255), 
@EmailAddress varchar(100), 
 
@ReservationID int, 
@_Date DATE,
@provideMeal BINARY,
@VoyageID int,

@Price varchar(255),
@PriceAfterVAT varchar(255)

declare Invoice CURSOR FOR
SELECT PASSENGERS.ReservationID, FirstName, LastName, city, country, PhoneNumber, EmailAddress, Reservation.ReservationID, _Date, provideMeal, VoyageID, Ticket.ReservationID, Price, PriceAfterVAT
FROM PASSENGERS, Reservation, Ticket
WHERE Reservation.ReservationID = @CustID AND PASSENGERS.ReservationID = Reservation.ReservationID AND Ticket.ReservationID = ticket.TicketID

BEGIN
			open Invoice
			fetch next from Invoice into @PassengerID, @firstName, @lastName, @Country, @PhoneNumber, @EmailAddress, @ReservationID, @_Date, @provideMeal, @VoyageID, @Price, @PriceAfterVAT

			print 'Invoice: ' + @firstName + ' ' + @lastName
			print ' '

			while @@FETCH_STATUS = 0
			BEGIN 
			print '*********************************'
			print cast('Passenger ID: ' as varchar(255)) + cast(@PassengerID as int) 
			print cast('Name: ' as varchar(255))+ ' ' + @firstName + ' ' + @lastName
			print cast('Addresss: ' as varchar(255)) + cast(@Country as varchar(255))
			print cast('Phone number: ' as varchar(255)) + cast(@PhoneNumber as varchar(255))
			print cast('Email: ' as varchar(255)) + cast(@EmailAddress as varchar(255))

			print '*********************************'
			print cast('Reservation ID: ' as varchar(255)) + ' ' + cast(@ReservationID as varchar(255))
			print cast('Date: ' as DATE)+ ' ' + cast(@_Date as DATE)
			print cast('Meal provided: £' as varchar(255)) + cast(@provideMeal as varchar(255))
			print cast('Voyage ID: ' as int) + cast(@VoyageID as int)

			print '*********************************'
			print cast('Price: ' as varchar(255)) + cast(@Price as varchar(255))
			print cast('@PriceAfterVAT: £' as varchar(255)) + cast(@PriceAfterVAT as varchar(255))
		

			fetch next from Invoice into @PassengerID, @firstName, @lastName, @Country, @PhoneNumber, @EmailAddress, @ReservationID, @_Date, @provideMeal, @VoyageID, @Price, @PriceAfterVAT

			end

			close Invoice
			deallocate Invoice

			end
			go
			exec CustomerInvoice @CustID = 20

