declare @stcod varchar(2)='ky'
select id, Lastname, gpa, StateCode
from Student
where StateCode = @stcod;