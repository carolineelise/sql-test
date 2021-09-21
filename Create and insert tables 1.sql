Create table Students (
Id int not null primary key identity (1,1),
Name varchar(50) not null,
FavNumber int not null,
FavColor varchar(20) null default'18% Grey',
Milk bit null default 0
);
go 
insert into Students
(Name, FavNumber, FavColor, Milk)
Values
('Matt', 144, 'green', 1),
('Parth', 84 , 'blue', 1 ),
('Caroline', 25 , null, 0 );
go
select * from topics

Create table topics (
Id int not null primary key identity (1,1),
Description varchar(30) not null,
sequence int not null unique,
TooEasy bit not null default 1
)
select * from topics
go
Insert into topics
(Description, sequence, TooEasy) 
Values
('Git/Github', 5, 1),
('Sql Server', 8,0),
('C#', 2, 1),
('EFC', 13,0),
('Java',3,0),
('Spring',  11,1),
('HTML',  4, 0),
('CSS', 10, 0),
('Javascript',  9,1),
('Bootstrap',  7, 1),
('jQuery',  6, 0),
('Typescript',  1, 2),
('Angular',  12, 0);
