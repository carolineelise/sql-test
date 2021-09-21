Create or alter Procedure CountToTen
As 
Begin
	declare @Index int = 1;
	declare @stop int = 10;

While @Index <= @stop
	begin 
		print '@Index is ' + cast (@index as Varchar (5))
		if @Index = 5
		begin
		print '@index is five';
		end
		set @Index = @Index + 1;
	end
End;
go 
exec CountToTen