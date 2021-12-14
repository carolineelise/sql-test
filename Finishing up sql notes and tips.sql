--when iserting a row into a table MUST use insert command 
--it is easier to put them by values which isnt a command
--but it is helpful
INSERT products (PartNbm, name,Price, Unit,VendorId, Updated)
Values(PartNbm, name,Price, Unit,VendorId '2021-09-23 09:30:00.123')
--donot need time on datetime and can only use hours and minutes
--updating a set
Update products set	
description = 'eeeee'
price =123.45
--if youdont put a where a clause you will update everything on table
where Id between 1 and 5 --this includes 1 and 5
where id in (1,4,7,11) --only updates these rows
 

 --Procedures
 select * from Users;