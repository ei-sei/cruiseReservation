GO 
CREATE OR ALTER PROC ReservationInvoice @ReserveID int
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
SELECT PASSENGERS.ReservationID, firstName, lastName, country, PhoneNumber, EmailAddress, PASSENGERS.PassengerID, provideMeal, 
		VoyageID, Ticket.ReservationID, Ticket.TicketID , Price, PriceAfterVAT, PassengerID, _Date
FROM PASSENGERS, Reservation, Ticket
WHERE PASSENGERS.ReservationID = @ReserveID AND PASSENGERS.ReservationID = Reservation.ReservationID AND Ticket.ReservationID = Ticket.TicketID

BEGIN
			open Invoice
			fetch next from Invoice into @ReservationID, @firstName, @lastName, @country, @PhoneNumber, @EmailAddress, @country, @PhoneNumber, @EmailAddress, 
			@PassengerID,  @provideMeal, @VoyageID, @Price, @PriceAfterVAT, @_Date
			
			print 'Invoice for: ' + @firstName + ' ' + @lastName
			print ' '

			while @@FETCH_STATUS = 0
			BEGIN 
			print '*********************************'
			print cast('Passenger ID: ' as varchar(255)) + cast(@PassengerID as varchar(255)) 
			print cast('Name: ' as varchar(255))+ ' ' + @firstName + ' ' + @lastName
			print cast('Addresss: ' as varchar(255)) + cast(@Country as varchar(255))
			print cast('Phone number: ' as varchar(255)) + cast(@PhoneNumber as varchar(255))
			print cast('Email: ' as varchar(255)) + cast(@EmailAddress as varchar(255))

			print '*********************************'
			print cast('Reservation ID: ' as varchar(255)) + ' ' + cast(@ReservationID as varchar(255))
			print cast('Date: ' as varchar(255))+ ' ' + cast(@_Date as varchar(255))
			print cast('Meal provided:' as varchar(255)) + cast(@provideMeal as varchar(255))
			print cast('Voyage ID: ' as varchar(255)) + cast(@VoyageID as varchar(255))

			print '*********************************'
			print cast('Price: ' as varchar(255)) + cast(@Price as varchar(255))
			print cast('PriceAfterVAT:' as varchar(255)) + cast(@PriceAfterVAT as varchar(255))
		

			fetch next from Invoice into @ReservationID, @firstName, @lastName, @country, @PhoneNumber, @EmailAddress, @country, @PhoneNumber, @EmailAddress, 
			@PassengerID,  @provideMeal, @VoyageID, @Price, @PriceAfterVAT, @_Date

			end

			close Invoice
			deallocate Invoice

			end
			go

			exec ReservationInvoice @ReserveID = 2
