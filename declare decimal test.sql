declare @uppergpa decimal(5,1) = 3.5;
declare @lowergpa decimal (5,1) = 2.5;

select top 15 *
from student 
where gpa >= @uppergpa
union 
select top 15 *
from Student 
where GPA <= @lowergpa
order by GPA asc;

