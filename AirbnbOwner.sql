create table Owner(
	OwnerID int identity primary key
	,FirstName varchar(15) not null
	,LastName varchar(15) not null
	,EmailAddress varchar(30) not null unique
)

create table Type(
	TypeID int identity primary key
	,TypeName varchar(30) not null
)

create table Property(
	PropertyAddress varchar(25) primary key
	,cost int not null
	,SquareFootage int not null
	,OwnerID int not null foreign key references Owner(OwnerID)
	,TypeID int not null foreign key references Type(TypeID)
)

create table Renter(
	RenterUsername varchar(30) primary key
	,FirstName varchar(15) not null
	,LastName varchar(15) not null
	,Age int not null
	,EmailAddress varchar(20) not null unique 
	,Rating int not null
)

create table Rental(
	RentalID int primary key
	,PropertyAddress varchar(25) foreign key references Property(PropertyAddress) not null
	,Size int not null
	,CostPerNight int not null
)

create table Stay(
	StayID int identity primary key
	,RenterUsername varchar(30) foreign key references Renter (RenterUsername) not null
	,RentalID int foreign key references Rental(RentalID) not null
	,StayTime int not null 
)

-- Data Creation
--Owner
insert into Owner (FirstName, LastName, EmailAddress) 
	values ('James', 'Smith', 'jsmith123@gmail.com')
insert into Owner (FirstName, LastName, EmailAddress) 
	values ('Ashley', 'Gonzeles', 'ashgonz@gmail.com')

--Type
insert into Type (TypeName)
	values ('House')
	, ('Guesthouse')
	, ('Apartment')
	, ('Hotel')

--Property
insert into Property (PropertyAddress, Cost, SquareFootage, OwnerID, TypeID)
	values ('1234 Highaldn Stone Ct', 500000, 2717, (select OwnerID from Owner where FirstName = 'James')
	, (select TypeID from Type where TypeName = 'House'))
insert into Property (PropertyAddress, Cost, SquareFootage, OwnerID, TypeID)
	values ('6826 W. 6th St', 350000, 1500, (select OwnerID from Owner where FirstName = 'Ashley')
	, (select TypeID from Type where TypeName = 'Apartment'))

--Renter
insert into Renter (RenterUsername, FirstName, LastName, Age, EmailAddress, Rating)
	values ('Gjones', 'Grace', 'Jones', 33, 'grjones@gmail.com', 5)
insert into Renter (RenterUsername, FirstName, LastName, Age, EmailAddress, Rating)
	values ('Chrisgooo', 'Chris', 'Gu', 21, 'chrisgooo@gmail.com', 4)

--Rental
insert into Rental (RentalID, PropertyAddress, Size, CostPerNight)
	values (541345, (select PropertyAddress from Property where PropertyAddress = '1234 Highaldn Stone Ct')
	, 2717, 250)
insert into Rental (RentalID, PropertyAddress, Size, CostPerNight)
	values (846242, (select PropertyAddress from Property where PropertyAddress = '6826 W. 6th St')
	, 1500, 110)

--Stay 
--StayID is just confirmation # of the stay 
SET IDENTITY_INSERT Stay on
insert into Stay (StayID, RenterUsername, RentalID, StayTime)
	values (5526, (select RenterUsername from Renter where RenterUsername = 'Gjones')
	,(select RentalID from Rental where RentalID = 846242), 6)
insert into Stay (StayID, RenterUsername, RentalID, StayTime)
	values (9862, (select RenterUsername from Renter where RenterUsername = 'Chrisgooo')
	,(select RentalID from Rental where RentalID = 541345), 4)
