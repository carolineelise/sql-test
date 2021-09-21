create table ratings (
Id int not null Primary key identity (1,1),
Stars int not null check(Stars >=1 and Stars<=5),
Comment varchar(300) null,
StudentId int not null
foreign key references Students(Id),
TopicId int not null
foreign key references topics(Id)
);
go
select * from ratings; select * from Students; select * from topics;
insert into Ratings (Stars, comment, StudentId, TopicId)
Values
(3, 'wowzers', 1, 1),
(4, null, 1, 8),
(2, null, 2, 10),
(5, 'thats hot', 3, 9),
(3, 'loves it', (select id from students where name = 'Caroline'),
(Select ID from topics where description like '%GIT%'));