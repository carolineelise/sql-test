Create view ClassMajorInstruct as
select m.Code 'MajorCode', m.Description 'Major',
c.Code 'class', i.Lastname 'instructor'
from Major m
join MajorClass mc
on mc.MajorId = m.Id
join Class c
on c.Id=mc.ClassId
join Instructor i 
on i.Id= c.InstructorId
Select * from ClassMajorInstruct
where MajorCode = 'Fin'
