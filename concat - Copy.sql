select CONCAT(lastname, ', ',Firstname) 
'Name',Description 'Major'
from Student s
 left join Major m
 on m.id =s.MajorId
 order by Lastname