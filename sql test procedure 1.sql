Create or alter Procedure CountToTen
As 
Begin
	declare @Index int = 1;
	declare @stop int = 10;

While @Index <= @stop
	begin 
		print '@Index is ' + cast (@index as Varchar (5));
		set @Index = @Index + 1;
	end
End;
Go
EXEC CountToTen
