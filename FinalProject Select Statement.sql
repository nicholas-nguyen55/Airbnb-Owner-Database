-- Answering Data Questions with Select statement
-- Total amount spent on Airbnb from renters
select PropertyAddress, bedroom, Bathroom, CostPerNight, StayTime,
case
	when StayTime > 0 then (CostPerNight * StayTime)
	else NULL
end TotalAmountStay
from Rental
inner join Stay 
	on Rental.RentalID = Stay.RentalID


-- Select age of renters and what type of place they rent
select Renter.RenterUsername, Renter.Age, Rental.PropertyAddress, Rental.RentalID, Stay.StayTime
from Renter
inner join Stay on Renter.RenterUsername = Stay.RenterUsername
inner join Rental on Rental.RentalID = Stay.RentalID

--Make select statement in new query 

create TotalPaid as
	select PropertyAddress, CostPerNight from Rental

select * from Renter
select * from rental
select * from stay
select * from Property
select * from type
select * from owner