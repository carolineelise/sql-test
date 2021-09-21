use master;	
go
drop database if exists BcDb;
go
create database BcDb;
go
Use BcDb;
go
--Create the table here
go 
--Do your inserts here
go
create table Customers(
Id int not null primary key identity (1,1),
Code varchar(10) not null unique,
Name varchar(30) not null,
Sales decimal(9,2) not null Default 0 check(sales >=0),
Active bit not null default 1,
Created datetime not null DEFAULT getdate()
)
go 
insert into Customers
(Code, Name, Sales, Active)
values
('ud2301', 'Jessica Day', 230.50, 1),
('noes29349', 'Schmitt', 12423.69, 0),
('barstu33', 'Nicholas Miller', 23.12, 1),
('winbish24', 'Winston Bishop', 86.14, 0),
('train3948', 'Coach', 67.94, 0),
('in3948', 'Cece Parekh', 76.93,1);
go
select * from Customers
go

alter table Customers
add LoftMember bit not null default 1
select * from Products
go

create table Products(
ID int not null primary key identity (1,1),
CustomerId int  not null foreign key references Customers(Id),
Object varchar(30) not null unique,
Brand varchar(30) null,
LoftMember bit not null default 1
)
go
select * from Customers
go

insert into Products
(CustomerId, Object)
Values
(1, 'Yarn'),
(2, 'Swuit'),
(4, 'CatNip'),
(5, 'Weights'),
(4, 'BunnyMoney'),
(3, 'a new box'),
(1, 'A fathers love'),
(6, 'baby clothes'),
(2, 'vineyard'),
(2, 'wedding planner');
go
select * from Customers;
select * from Products;
go
alter table products	
drop column Brand
go 
alter table Customers
drop column LoftMember