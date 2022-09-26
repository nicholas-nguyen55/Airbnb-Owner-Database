-- Data Manipulation
-- Update clause to increase the cost per night of each Airbnb Rental 
update Rental
set CostPerNight = 125
where RentalID = 846242

update Rental
set CostPerNight = 255
where RentalID = 541345

-- Adding bedroom column because one of the business rules states there must be 
-- Number of bedrooms and bathrooms shown to renters
Alter table Rental
add bedroom int 

update Rental
set Bedroom = 4
where RentalID = 541345

update Rental
set Bedroom = 2
where RentalID = 846242

-- Adding bathrooms column because one of the business rules states there must be 
-- Number of bedrooms and bathrooms shown to renters
Alter table Rental
add Bathroom int 

update Rental
set Bathroom = 3
where RentalID = 541345

update Rental
set bathroom = 1
where RentalID = 846242

--Adding long term option to Stay
Alter table Stay
add LongTerm varchar(5) 

update Stay
set Longterm = 'No'
where RentalID = 846242

update Stay
set Longterm = 'No'
where RentalID = 541345

-- Extra code to put in if renter decides to change to longer stay time
select StayID, RenterUsername, RentalID, StayTime, LongTerm,
case
	when StayTime > 7 then 'Yes'
	else 'No'
end as LongTerm
from stay
