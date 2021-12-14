Create or alter procedure StudentsGpaAdjustment
as begin
	declare @Firstname varchar (30);
	declare @Lastname varchar(30);
	Declare @GpaDelta decimal (5,2);
	declare cur Cursor For
		select Firstname, lastname, GpaDelta
			From Adjustments 
				where Completed = 0;
	Open cur;

	FETCH next from cur into @Firstname, @Lastname, @GpaDelta;
	while @@FETCH_STATUS = 0
begin
/*
update Student set GPA = GPA + @GpaDelta
where Firstname = @Firstname and Lastname = @Lastname;

select firstname, lastname, gpa, @GpaDelta, (gpa + @GpaDelta) 'New GPA'
from student 
where firstname = @Firstname and lastname = @Lastname;
Fetch next from cur into @Firstname, @Lastname, @GpaDelta;
*/
end
	Close cur;
	deallocate cur;

	update Adjustments set 
	Completed = 1 where Completed = 0;
end
go
exec StudentsGpaAdjustment 
go
