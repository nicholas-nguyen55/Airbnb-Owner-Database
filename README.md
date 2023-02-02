# Airbnb-Owner-Database
SQL Database for Property Owners on Airbnb

Summary

Airbnb is one of the most popular vacation stay apps/companies used today. Millions of people use this app to help find the perfect home for their vacation instead of staying in a hotel. Although Airbnb is focused on its users, there is another side of the platform that could benefit greatly from an updated database. To help with the process of those renting out these rooms, homes, properties I will be creating a database to ease tracking and figuring out costs. 

Stakeholders

Property Owners
Real Estate Investors
Airbnb Board Members

Business Rules

Every property owner has to have at least 1 or more property able to rent out. 
Property owners must let renters know what type of property they will be renting. For example: house, part of the house, apartment etc. 
Each property has to be able to be rented out to at least 1 or more renters. The property owner has to state how many rooms/bathrooms are available on each property and how many guests are allowed to stay there. 
Renters can also do a long term rent of the property if the property owner allows. 

Data Questions

Who are the people buying properties to rent out?
How many properties do they own?
Who rents the properties?
How much does the average property go for per month?

Conceptual Model

![image](https://user-images.githubusercontent.com/113401627/216460018-f2318b59-776a-4fbd-8247-d4857c2869a5.png)

Logical Model 2.0

![image](https://user-images.githubusercontent.com/113401627/216460079-754be481-24ed-43f7-8937-0a2949cce923.png)

Answering Data Questions

Who are the people buying properties to rent out?
  How many properties do they own?
    Answered in implementation section

Who rents the properties?

![image](https://user-images.githubusercontent.com/113401627/216460252-ab044ea0-9aca-443d-a762-d12f9b5c690a.png)

How much does the average property go for per month?

![image](https://user-images.githubusercontent.com/113401627/216460306-068aaafa-ee1b-4f40-80e1-e5dab04af3a0.png)
With the average stay at an AirBnb being about 21 days out of the month, we can calculate that the 6th st. property would average $2,625/month while the Highaldn Stone property would average $5,355

Implementation

This is a Property Form for owners to help set their rental up for Airbnb created through Microsoft Access.

![image](https://user-images.githubusercontent.com/113401627/216460403-4920d891-bdcf-4534-8efb-3de1780ab9c9.png)

This Renter Form shows who is renting, their stay ID (confirmation #), rental ID (helps find the property) and also their stay time.

![image](https://user-images.githubusercontent.com/113401627/216460470-9f65cf51-7cd3-4090-ab5b-066535559512.png)

The following is an Owner Form that also answers the first business question.

![image](https://user-images.githubusercontent.com/113401627/216460522-9c60c09b-5fce-4767-aa50-e38de53bac44.png)


Summary

This AirBnb database will help owners of property potentially make a transition to become hosts easier. With this database they can track and log all everything they need to help track their properties and potential earnings of each rental they have. The data questions were all able to be answered with this database as well as making it easy to use. Microsoft Access helped with the front end and the reason I choose it is because of the simplicity of the software, as well as the clarity it gives to the users who choose it.


