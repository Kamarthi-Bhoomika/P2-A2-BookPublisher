--Creation of database
create database Exercise2Db
use Exercise2Db

--Creation of Publisher table with Attribute PID as primary key
create table Publisher
(PID int primary key,
Publisher nvarchar(50) not null unique)

--Creation of Category table with Attribute CID as primary key
create table Category
(CID int primary key,
Category nvarchar(50) not null unique)

--Creation of Author table with Attribute AID as primary key
create table Author
(AID int primary key,
AuthorName nvarchar(50) not null unique)

--Creation of Book table with Attribute BID as primary key
--And Author,Publisher,Category as foreign key
create table Book
(BID int primary key,
BName nvarchar(50) not null,
BPrice float,
Author int foreign key references Author,
Publisher int foreign key references Publisher,
Category int foreign key references Category)

--inserting 3 records to Publisher table
insert into Publisher values(1221,'Packt Publishing')
insert into Publisher values(1222,'Learn Coding Fast')
insert into Publisher values(1223,'O′Reilly')

--inserting 3 records to Category table
insert into Category values(1,'C# Core')
insert into Category values(2,'C# Beginner Guide')
insert into Category values(3,'Advanced .net')

--inserting 4 records to Author table
insert into Author values(811,'Mark J. Price')
insert into Author values(812,'LCF Publishing')
insert into Author values(813,'Andrew Stellman')
insert into Author values(814,'Joseph Albahari')

--inserting 6 records to Book table
insert into Book values
(5001,'C# 8.0 and .NET Core 3.0',4865.00,811,1221,1),
(5002,'C#',2000.70,812,1222,2),
(5003,'Head First C#',2200.00,813,1223,3),
(5004,'C# 8.0 Pocket Reference',4700.50,814,1223,2),
(5005,'Apps and services with .net 7',2900,811,1222,3),
(5006,'c# and .net 5',5000,811,1223,3)

--Displaying the Records
select * from Book